unit AWS.IoT.Android;

interface

uses
  AWS.IoT, AWS.IoT.Comm, AWS.Core.Android,
  Androidapi.JNIBridge,
  Androidapi.JNI.Java.Security,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.aws.android.sdk.core,
  Androidapi.JNI.aws.android.sdk.iot;

type
  TAndroidAWSIoTService = class;
  TAndroidAWSIotTopic = class;

  TAWSIotMqttClientStatusCallback = class(TJavaLocal, JAWSIotMqttClientStatusCallback)
  private
    [weak]FService:TAndroidAWSIoTService;
  public
    procedure onStatusChanged(P1: JAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus; P2: JThrowable); cdecl;
    constructor Create(Service:TAndroidAWSIoTService);
  end;

  TAWSIotMqttNewMessageCallback = class(TJavaLocal, JAWSIotMqttNewMessageCallback)
  private
    [weak]FTopic:TAndroidAWSIotTopic;
  public
    procedure onMessageArrived(P1: JString; P2: TJavaArray<Byte>); cdecl;
    constructor Create(Topic:TAndroidAWSIotTopic);
  end;

  TAndroidAWSIotTopic = class(TAWSIotTopic)
  private
    FNewMessageCallback:TAWSIotMqttNewMessageCallback;
  public
    constructor Create(TopicConfiguration:TAWSIoTTopicConfiguration); override;
    destructor Destroy; override;
  published
    property NewMessageCallback:TAWSIotMqttNewMessageCallback read FNewMessageCallback;
  end;

  TAndroidAWSIoTService = class(TAWSIoTService)
  private
    FUUID:JString;
    FMQTTManager:JAWSIotMqttManager;
    FClientStatusCallback:TAWSIotMqttClientStatusCallback;
    FClientKeyStore:JKeyStore;
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

  function GetAWSIotMqttQos(Qos:TAWSIoTMQTTQoS):JAWSIotMqttQos;
  function GetAWSIotMqttClientStatus(AWSIotMqttClientStatus:JAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus):TAWSIotMqttClientStatus;

implementation

uses
  Androidapi.Helpers, System.IOUtils, System.SysUtils;

function GetAWSIotMqttQos(Qos:TAWSIoTMQTTQoS):JAWSIotMqttQos;
begin
  case Qos of
    AWSIoTMQTTQoSMessageDeliveryAttemptedAtMostOnce:Result:=TJAWSIotMqttQos.JavaClass.QOS0;
    AWSIoTMQTTQoSMessageDeliveryAttemptedAtLeastOnce:Result:=TJAWSIotMqttQos.JavaClass.QOS1;

  end;
end;

function GetAWSIotMqttClientStatus(AWSIotMqttClientStatus:JAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus):TAWSIotMqttClientStatus;
begin
  if AWSIotMqttClientStatus.equals(TJAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus.JavaClass.Connecting) then
    Result:=TAWSIotMqttClientStatus.AWSIotMqttConnecting
  else
  if AWSIotMqttClientStatus.equals(TJAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus.JavaClass.Connected) then
    Result:=TAWSIotMqttClientStatus.AWSIotMqttConnected
  else
  if AWSIotMqttClientStatus.equals(TJAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus.JavaClass.ConnectionLost) then
    Result:=TAWSIotMqttClientStatus.AWSIotMqttConnectionLost
  else
  if AWSIotMqttClientStatus.equals(TJAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus.JavaClass.Reconnecting) then
    Result:=TAWSIotMqttClientStatus.AWSIotMqttReconnecting;
end;
{ TAndroidAWSIoTService }

constructor TAndroidAWSIoTService.Create(
  ServiceConfiguration: TAWSIoTServiceConfiguration);
var
  Regions:JRegions;
  Region:JRegion;
  CredentialsProvider:JCognitoCachingCredentialsProvider;
  IotAndroidClient:JAWSIotClient;
begin
  inherited;
  // MQTT client IDs are required to be unique per AWS IoT account.
  // This UUID is "practically unique" but does not _guarantee_
  // uniqueness.
  FUUID := TJUUID.JavaClass.randomUUID.toString;

  Regions := GetRegions(Configuration.Region);
  // Initialize the AWS Cognito credentials provider
  CredentialsProvider := TJCognitoCachingCredentialsProvider.JavaClass.init(
          SharedActivityContext, // context
          StringToJString(Configuration.CognitoIdentityPoolId), // Identity Pool ID
          Regions // Region
  );

  Region := TJRegion.JavaClass.getRegion(Regions);

  // MQTT Client
  FMQTTManager := TJAWSIotMqttManager.JavaClass.init(FUUID, StringToJString(Configuration.IoT_EndPoint));

  // Set keepalive to 10 seconds.  Will recognize disconnects more quickly but will also send
  // MQTT pings every 10 seconds.
  FMQTTManager.setKeepAlive(10);

  // Set Last Will and Testament for MQTT.  On an unclean disconnect (loss of connection)
  // AWS IoT will publish this message to alert other clients.
//  AWSIotMqttLastWillAndTestament lwt = new AWSIotMqttLastWillAndTestament("my/lwt/topic",
//          "Android client lost connection", AWSIotMqttQos.QOS0);
//  mqttManager.setMqttLastWillAndTestament(lwt);

  // IoT Client (for creation of certificate if needed)
  IotAndroidClient := TJAWSIotClient.JavaClass.init(CredentialsProvider);
  IotAndroidClient.setRegion(region);

  FClientStatusCallback := TAWSIotMqttClientStatusCallback.Create(Self);
end;

destructor TAndroidAWSIoTService.Destroy;
begin
  FUUID=nil;
  FClientKeyStore:=nil;
  FMQTTManager:=nil;
  FClientStatusCallback.Free;
  inherited;
end;

function TAndroidAWSIoTService.DoConnect: Boolean;
var
  KeystorePath:JString;
  KeystoreName:JString;
  KeystorePassword:JString;
  CertificateId:JString;

begin
  Result:=False;
  if FClientKeyStore = nil then
  begin
    KeystorePath:=StringToJString(Configuration.KeystoreFilePath);
    KeystoreName:=StringToJString(Configuration.KeystoreName);
    KeystorePassword:=StringToJString(Configuration.KeystorePassword);
    CertificateId:=StringToJString(Configuration.CertificateId);
    if TJAWSIotKeystoreHelper.JavaClass.isKeystorePresent(keystorePath, keystoreName).booleanValue then
    begin
      if TJAWSIotKeystoreHelper.JavaClass.keystoreContainsAlias(certificateId, keystorePath, keystoreName, keystorePassword).booleanValue then
        FClientKeyStore := TJAWSIotKeystoreHelper.JavaClass.getIotKeystore(certificateId, keystorePath, keystoreName, keystorePassword);

      FMQTTManager.connect(FClientKeyStore, FClientStatusCallback);

      Result:=True;
    end;
  end
  else
  begin
    FMQTTManager.connect(FClientKeyStore, FClientStatusCallback);
    Result:=True;
  end;
end;

procedure TAndroidAWSIoTService.DoDisconnect;
begin
  FMQTTManager.disconnect;
end;

function TAndroidAWSIoTService.DoSubscribeToTopicQoSextended(
  TopicConfiguration: TAWSIoTTopicConfiguration): TAWSIotTopic;
var
  Topic:TAndroidAWSIotTopic;
begin
  Topic:=TAndroidAWSIotTopic.Create(TopicConfiguration);
  FMQTTManager.subscribeToTopic(StringToJString(TopicConfiguration.Topic), GetAWSIotMqttQos(TopicConfiguration.Qos), Topic.NewMessageCallback);
  Result:=Topic;
end;

function TAndroidAWSIoTService.DoSubscribeToTopicQoSmessage(
  TopicConfiguration: TAWSIoTTopicConfiguration): TAWSIotTopic;
var
  Topic:TAndroidAWSIotTopic;
begin
  Topic:=TAndroidAWSIotTopic.Create(TopicConfiguration);
  FMQTTManager.subscribeToTopic(StringToJString(TopicConfiguration.Topic), GetAWSIotMqttQos(TopicConfiguration.Qos), Topic.NewMessageCallback);
  Result:=Topic;
end;

procedure TAndroidAWSIoTService.DoUnsubscribeTopic(Topic: TAWSIotTopic);
begin
  FMQTTManager.unsubscribeTopic(StringToJString(Topic.Configuration.Topic));

end;

function TAndroidAWSIoTService.PublishString(
  TopicConfiguration: TAWSIoTTopicConfiguration; &message: string): Boolean;
begin
  Result:=False;
  FMQTTManager.publishString(StringToJString(&message), StringToJString(TopicConfiguration.Topic), GetAWSIotMqttQos(TopicConfiguration.Qos));
  Result:=True;
end;

{ TAWSIotMqttClientStatusCallback }

constructor TAWSIotMqttClientStatusCallback.Create(
  Service: TAndroidAWSIoTService);
begin
  inherited Create;
  FService:=Service;
end;

procedure TAWSIotMqttClientStatusCallback.onStatusChanged(
  P1: JAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus; P2: JThrowable);
var
  Status:TAWSIotMqttClientStatus;
begin
  Status:=GetAWSIotMqttClientStatus(P1);
  if FService<>nil then
  begin
    FService.DoAWSIotMqttClientStatusChanged(Status);
  end;

end;

{ TAWSIotMqttNewMessageCallback }

constructor TAWSIotMqttNewMessageCallback.Create(Topic: TAndroidAWSIotTopic);
begin
  inherited Create;
  FTopic := Topic;
end;

procedure TAWSIotMqttNewMessageCallback.onMessageArrived(P1: JString;
  P2: TJavaArray<Byte>);
var
  Paylaod:JString;
begin
  if P2<>nil then
  begin
    Paylaod:=TJString.JavaClass.init(P2, StringToJString('UTF-8'));
    if (FTopic<>nil) and Assigned(FTopic.OnAWSIoTMQTTNewMessage) then
      FTopic.OnAWSIoTMQTTNewMessage(JStringToString(Paylaod));
  end;
end;

{ TAndroidAWSIotTopic }

constructor TAndroidAWSIotTopic.Create(
  TopicConfiguration: TAWSIoTTopicConfiguration);
begin
  inherited Create(TopicConfiguration);
  FNewMessageCallback:=TAWSIotMqttNewMessageCallback.Create(Self);

end;

destructor TAndroidAWSIotTopic.Destroy;
begin
  FNewMessageCallback.Free;
  inherited;
end;

end.
