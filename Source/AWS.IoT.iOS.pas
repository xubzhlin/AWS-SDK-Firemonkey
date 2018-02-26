unit AWS.IoT.iOS;



interface

uses
  AWS.IoT, AWS.IoT.Comm,
  iOSapi.Foundation,
  iOSapi.AWSCore,
  iOSapi.AWSIoT;

type
  TiOSAWSIotTopic = class(TAWSIotTopic)
  private
    procedure DoAWSIoTMQTTNewMessageBlock(param1: NSData);
    procedure DoAWSIoTMQTTExtendedNewMessageBlock(param1: NSObject; param2: NSString; param3: NSData);
  end;

  TiOSAWSIoTService = class(TAWSIoTService)
  private
    FUUID:NSString;
    FCertificateId:NSString;
    procedure DoMQTTEventCallback(status:AWSIoTMQTTStatus);
  protected
    function DoConnect:Boolean; override;
    procedure DoDisconnect; override;
    function DoSubscribeToTopicQoSmessage(TopicConfiguration:TAWSIoTTopicConfiguration):TAWSIotTopic; override;
    function DoSubscribeToTopicQoSextended(TopicConfiguration:TAWSIoTTopicConfiguration):TAWSIotTopic; override;
    procedure DoUnsubscribeTopic(Topic:TAWSIotTopic); override;
  public
    function PublishString(TopicConfiguration:TAWSIoTTopicConfiguration; &message:string):Boolean; override;

    constructor Create(ServiceConfiguration:TAWSIoTServiceConfiguration); override;
    destructor Destroy; override;
  end;

implementation

uses
  Macapi.Helpers, Macapi.ObjectiveC, system.SysUtils, System.IOUtils;



function TiOSAWSIoTService.DoConnect:Boolean;
var
  Data:NSData;
  IotDataManager:AWSIoTDataManager;
begin
  Result:=False;
  IotDataManager :=  TAWSIoTDataManager.OCClass.IoTDataManagerForKey(StrToNSStr(Configuration.DataManagerKey));

  if FCertificateId = nil then
  begin

    FCertificateId:=StrToNSStr(Configuration.P12FilePath);
    data:=TNSData.Wrap(TNSData.OCClass.dataWithContentsOfFile(FCertificateId));

    if TAWSIoTManager.OCClass.importIdentityFromPKCS12DatapassPhrasecertificateId(data, StrTONSStr(Configuration.P12FilePath), FCertificateId) then
    begin
      Result := IotDataManager.connectWithClientIdcleanSessioncertificateIdstatusCallback(FUUID, True, FCertificateId, DoMQTTEventCallback);
    end;
  end
  else
    Result := IotDataManager.connectWithClientIdcleanSessioncertificateIdstatusCallback(FUUID, True, FCertificateId, DoMQTTEventCallback);

end;

procedure TiOSAWSIoTService.DoDisconnect;
var
  IotDataManager:AWSIoTDataManager;
begin
  IotDataManager :=  TAWSIoTDataManager.OCClass.IoTDataManagerForKey(StrToNSStr(Configuration.DataManagerKey));
  IotDataManager.disconnect;
end;

constructor TiOSAWSIoTService.Create(ServiceConfiguration:TAWSIoTServiceConfiguration);
var
  ACredentialsProvider:AWSCognitoCredentialsProvider;
  AEndpoint:AWSEndpoint;
  AConfiguration:AWSServiceConfiguration;
  ADataConfiguration:AWSServiceConfiguration;

  FIoTManager:AWSIoTManager;
  FIotDataManager:AWSIoTDataManager;
  FIoT:AWSIoT;
begin
  inherited Create(ServiceConfiguration);
  FUUID:=TNSUUID.Wrap(TNSUUID.OCClass.alloc).UUIDString;
  // Init IOT
  // Set up Cognito
  ACredentialsProvider :=  TAWSCognitoCredentialsProvider.Wrap(TAWSCognitoCredentialsProvider.OCClass.alloc);
  ACredentialsProvider.initWithRegionTypeIdentityPoolId(Ord(Configuration.Region), StrToNSStr(Configuration.CognitoIdentityPoolId));

  AEndpoint := TAWSEndpoint.Wrap(TAWSEndpoint.OCClass.alloc);
  AEndpoint.initWithURL(StrToNSUrl(Configuration.IOT_ENDPOINT));

  // Configuration for AWSIoT control plane APIs
  AConfiguration := TAWSServiceConfiguration.Wrap(TAWSServiceConfiguration.OCClass.alloc);
  AConfiguration.initWithRegionCredentialsProvider(Ord(Configuration.Region), (ACredentialsProvider as ILocalObject).GetObjectID);

  // Configuration for AWSIoT data plane APIs
  ADataConfiguration := TAWSServiceConfiguration.Wrap(TAWSServiceConfiguration.OCClass.alloc);
  ADataConfiguration.initWithRegionEndpointCredentialsProvider(Ord(Configuration.Region), AEndpoint, (ACredentialsProvider as ILocalObject).GetObjectID);

  TAWSServiceManager.Wrap(TAWSServiceManager.OCClass.defaultServiceManager).setDefaultServiceConfiguration(AConfiguration);
  FIoTManager := TAWSIoTManager.Wrap(TAWSIoTManager.OCClass.defaultIoTManager);

  FIoT := TAWSIoT.Wrap(TAWSIoT.OCClass.defaultIoT);

  TAWSIoTDataManager.OCClass.registerIoTDataManagerWithConfigurationforKey(ADataConfiguration, StrToNSStr(Configuration.DataManagerKey));
end;

destructor TiOSAWSIoTService.Destroy;
begin
  FUUID:=nil;
  FCertificateId:=nil;
  TAWSIoTDataManager.OCClass.removeIoTDataManagerForKey(NSStrToStr(Configuration.DataManagerKey));
  inherited;
end;



procedure TiOSAWSIoTService.DoMQTTEventCallback(status: AWSIoTMQTTStatus);
begin
  DoAWSIotMqttClientStatusChanged(TOnAWSIotMqttClientStatus(Status));
end;

function TiOSAWSIoTService.PublishString(TopicConfiguration:TAWSIoTTopicConfiguration; &message:string):Boolean;
var
  IotDataManager:AWSIoTDataManager;
begin
  IotDataManager := TAWSIoTDataManager.OCClass.IoTDataManagerForKey(StrToNSStr(Configuration.DataManagerKey));
  Result:=IotDataManager.publishStringonTopicQoS(StrToNSStr(&message), StrToNSStr(TopicConfiguration.Topic), Ord(TopicConfiguration.Qos));
end;


function TiOSAWSIoTService.DoSubscribeToTopicQoSextended(
  TopicConfiguration: TAWSIoTTopicConfiguration): TAWSIotTopic;
var
  IotDataManager:AWSIoTDataManager;
  Topic:TiOSAWSIotTopic;
begin
  Topic:=TiOSAWSIotTopic.Create(TopicConfiguration);
  IotDataManager := TAWSIoTDataManager.OCClass.IoTDataManagerForKey(StrToNSStr(Configuration.DataManagerKey));
  if IotDataManager.subscribeToTopicQoSextendedCallback(StrToNSStr(TopicConfiguration.Topic), Ord(TopicConfiguration.Qos), Topic.DoAWSIoTMQTTExtendedNewMessageBlock) then
    Result:=Topic
  else
  begin
    Topic.Free;
    Result:=nil;
  end;

end;

function TiOSAWSIoTService.DoSubscribeToTopicQoSmessage(
  TopicConfiguration: TAWSIoTTopicConfiguration): TAWSIotTopic;
var
  IotDataManager:AWSIoTDataManager;
  Topic:TiOSAWSIotTopic;
begin
  Topic:=TiOSAWSIotTopic.Create(TopicConfiguration);
  IotDataManager := TAWSIoTDataManager.OCClass.IoTDataManagerForKey(StrToNSStr(Configuration.DataManagerKey));
  if IotDataManager.subscribeToTopicQoSmessageCallback(StrToNSStr(TopicConfiguration.Topic), Ord(TopicConfiguration.Qos), Topic.DoAWSIoTMQTTNewMessageBlock) then
    Result:=Topic
  else
  begin
    Topic.Free;
    Result:=nil;
  end;

end;

procedure TiOSAWSIoTService.DoUnsubscribeTopic(Topic: TAWSIotTopic);
var
  IotDataManager:AWSIoTDataManager;
begin
  IotDataManager := TAWSIoTDataManager.OCClass.IoTDataManagerForKey(StrToNSStr(Configuration.DataManagerKey));
  IotDataManager.unsubscribeTopic(StrToNSStr(Topic.Configuration.Topic));
end;

{ TiOSAWSIotTopic }

procedure TiOSAWSIotTopic.DoAWSIoTMQTTExtendedNewMessageBlock(param1: NSObject;
  param2: NSString; param3: NSData);
var
  Paylaod:NSString;
  NewMessage:string;
begin
  if param1<>nil then
  begin
    Paylaod:=TNSString.Wrap(TNSString.Wrap(TNSString.OCClass.alloc).initWithData(param3, NSUTF8StringEncoding));
    NewMessage := NSStrToStr(Paylaod);
    if Assigned(OnAWSIoTMQTTNewMessage) then
      OnAWSIoTMQTTNewMessage(NewMessage);
  end;
end;


procedure TiOSAWSIotTopic.DoAWSIoTMQTTNewMessageBlock(param1: NSData);
var
  Paylaod:NSString;
begin
  if param1<>nil then
  begin
    Paylaod:=TNSString.Wrap(TNSString.Wrap(TNSString.OCClass.alloc).initWithData(param1, NSUTF8StringEncoding));
    if Assigned(OnAWSIoTMQTTNewMessage) then
      OnAWSIoTMQTTNewMessage(NSStrToStr(Paylaod));
  end;
end;

end.
