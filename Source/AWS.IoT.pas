unit AWS.IoT;

interface

uses
  System.SysUtils,
  System.Generics.Collections,
  AWS.IoT.Comm,
  AWS.Core;

type
  TAWSIotTopic = class(TObject)
  private
    FConfiguration:TAWSIoTTopicConfiguration;
    FOnAWSIoTMQTTNewMessage:TOnAWSIoTMQTTNewMessage;
  public
    property Configuration:TAWSIoTTopicConfiguration read FConfiguration write FConfiguration;
    property OnAWSIoTMQTTNewMessage:TOnAWSIoTMQTTNewMessage read FOnAWSIoTMQTTNewMessage write FOnAWSIoTMQTTNewMessage;
    constructor Create(TopicConfiguration:TAWSIoTTopicConfiguration); virtual;
  end;


  TAWSIoTService = class(TObject)
  private
    FTopics:TDictionary<string, TAWSIoTTopic>;
    FConfiguration:TAWSIoTServiceConfiguration;
    FOnAWSIotMqttClientStatus:TOnAWSIotMqttClientStatus;
    FConnected:Boolean;
    FStatus:TAWSIotMqttClientStatus;
    procedure SetConnected(const Value: Boolean);
  protected
    procedure DoAWSIotMqttClientStatusChanged(NewStatus:TAWSIotMqttClientStatus);
    function DoConnect:Boolean; virtual;
    procedure DoDisconnect; virtual;
    function DoSubscribeToTopicQoSmessage(TopicConfiguration:TAWSIoTTopicConfiguration):TAWSIotTopic; virtual;
    function DoSubscribeToTopicQoSextended(TopicConfiguration:TAWSIoTTopicConfiguration):TAWSIotTopic; virtual;
    procedure DoUnsubscribeTopic(Topic:TAWSIotTopic); virtual;
  public
    constructor Create(ServiceConfiguration:TAWSIoTServiceConfiguration); virtual;
    destructor Destroy; override;
    function PublishString(TopicConfiguration:TAWSIoTTopicConfiguration; &message:string):Boolean; virtual;
    function SubscribeToTopicQoSmessage(TopicConfiguration:TAWSIoTTopicConfiguration):TAWSIotTopic;
    function SubscribeToTopicQoSextended(TopicConfiguration:TAWSIoTTopicConfiguration):TAWSIotTopic;
    procedure UnsubscribeTopic(Topic:TAWSIotTopic);
  published
    property Connected:Boolean read FConnected write SetConnected;
    property Status:TAWSIotMqttClientStatus read FStatus;
    property Configuration:TAWSIoTServiceConfiguration read FConfiguration write FConfiguration;
    property OnAWSIotMqttClientStatus:TOnAWSIotMqttClientStatus read FOnAWSIotMqttClientStatus write FOnAWSIotMqttClientStatus;
  end;

  TAWSIoTServiceManager = class(TObject)
  private
    FServices:TDictionary<string, TAWSIoTService>;
  public
    /// <summary> 创建 AWS IoT Service </summary>
    /// <summary> 根据 Configuration 中的 CognitoIdentityPoolId 来区分服务  </summary>
    /// <summary> 如果 CognitoIdentityPoolId 重复返回 nil </summary>
    function CreateServiceByConfiguration(Configuration:TAWSIoTServiceConfiguration):TAWSIoTService;
    /// <summary> 释放 AWS IoT Service </summary>
    procedure DestoryService(Service:TAWSIoTService);

    constructor Create;
    destructor Destroy; override;
  end;

var
  AWSIoTServiceManager:TAWSIoTServiceManager;

implementation

{$IFDEF iOS}
uses
  AWS.IoT.iOS;
{$ENDIF}

{$IFDEF Android}
uses
  AWS.IoT.Android;
{$ENDIF}
{ TAWSIoT }

destructor TAWSIoTService.Destroy;
var
  Topics:TAWSIoTTopic;
begin
  for Topics in FTopics.Values do
    Topics.Free;
  FTopics.Clear;
  FTopics.Free;
  inherited;
end;

procedure TAWSIoTService.DoAWSIotMqttClientStatusChanged(
  NewStatus: TAWSIotMqttClientStatus);
begin
  FStatus:=NewStatus;
  if Assigned(FOnAWSIotMqttClientStatus) then
    FOnAWSIotMqttClientStatus(Status);
end;

function TAWSIoTService.DoConnect:Boolean;
begin
  Result:=False;
end;

procedure TAWSIoTService.DoDisconnect;
begin

end;

function TAWSIoTService.DoSubscribeToTopicQoSextended(
  TopicConfiguration: TAWSIoTTopicConfiguration): TAWSIotTopic;
begin
  result:=nil;
end;

function TAWSIoTService.DoSubscribeToTopicQoSmessage(
  TopicConfiguration: TAWSIoTTopicConfiguration): TAWSIotTopic;
begin
  result:=nil;
end;

procedure TAWSIoTService.DoUnsubscribeTopic(Topic: TAWSIotTopic);
begin

end;

function TAWSIoTService.PublishString(
  TopicConfiguration: TAWSIoTTopicConfiguration; message: string): Boolean;
begin
  Result:=False;
end;

constructor TAWSIoTService.Create(ServiceConfiguration:TAWSIoTServiceConfiguration);
begin
  inherited Create;
  FConnected:=False;
  FTopics:=TDictionary<string, TAWSIoTTopic>.Create;
  FConfiguration:=ServiceConfiguration;
end;


procedure TAWSIoTService.SetConnected(const Value: Boolean);
begin
  if not FConnected then
    FConnected := DoConnect
  else
  begin
    DoDisconnect;
    FConnected:=False;
  end;
end;


function TAWSIoTService.SubscribeToTopicQoSextended(
  TopicConfiguration: TAWSIoTTopicConfiguration): TAWSIotTopic;
var
  Topic:TAWSIotTopic;
begin
  if not FTopics.TryGetValue(TopicConfiguration.Topic, Topic) then
  begin
    Result:=DoSubscribeToTopicQoSextended(TopicConfiguration);
    if Result <>nil then
      FTopics.Add(TopicConfiguration.Topic, Result);
  end
  else
    Result:=nil;

end;

function TAWSIoTService.SubscribeToTopicQoSmessage(TopicConfiguration: TAWSIoTTopicConfiguration):TAWSIotTopic;
var
  Topic:TAWSIotTopic;
begin
  if not FTopics.TryGetValue(TopicConfiguration.Topic, Topic) then
  begin
    Result:=DoSubscribeToTopicQoSmessage(TopicConfiguration);
    if Result <>nil then
      FTopics.Add(TopicConfiguration.Topic, Result);
  end
  else
    Result:=nil;
end;

procedure TAWSIoTService.UnsubscribeTopic(Topic: TAWSIotTopic);
begin
  DoUnsubscribeTopic(Topic);
  FTopics.Remove(Topic.Configuration.Topic);
  Topic.Free;
end;

{ TAWSIoTServiceManager }

constructor TAWSIoTServiceManager.Create;
begin
  inherited Create;
  FServices :=  TDictionary<string, TAWSIoTService>.Create;
end;

function TAWSIoTServiceManager.CreateServiceByConfiguration(
  Configuration: TAWSIoTServiceConfiguration): TAWSIoTService;
var
  Service:TAWSIoTService;
begin
  if not FServices.TryGetValue(Configuration.CognitoIdentityPoolId, Service) then
  begin
  {$IFDEF iOS}
    Service := TiOSAWSIoTService.Create(Configuration);
  {$ENDIF}
  {$IFDEF Android}
    Service := TAndroidAWSIoTService.Create(Configuration);
  {$ENDIF}
    FServices.Add(Configuration.CognitoIdentityPoolId, Service);
  end;
  Result:=Service;
end;

procedure TAWSIoTServiceManager.DestoryService(Service: TAWSIoTService);
begin
  FServices.Remove(Service.Configuration.CognitoIdentityPoolId);
  Service.Free;
end;

destructor TAWSIoTServiceManager.Destroy;
var
  Service:TAWSIoTService;
begin
  for Service in FServices.Values do
    Service.Free;
  FServices.Clear;
  FServices.Free;
  inherited;
end;

{ TAWSIotTopic }

constructor TAWSIotTopic.Create(TopicConfiguration: TAWSIoTTopicConfiguration);
begin
  inherited Create;
  Configuration := TopicConfiguration;
end;

initialization
  AWSIoTServiceManager := TAWSIoTServiceManager.Create;

finalization
  AWSIoTServiceManager.Free;

end.
