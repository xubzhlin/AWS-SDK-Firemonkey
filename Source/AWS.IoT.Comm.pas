unit AWS.IoT.Comm;

interface

uses
  System.SysUtils,
  System.Generics.Collections,
  AWS.Core;

type



  TAWSIoTMQTTQoS = (AWSIoTMQTTQoSMessageDeliveryAttemptedAtMostOnce, AWSIoTMQTTQoSMessageDeliveryAttemptedAtLeastOnce);
                    //最多一次 、至少一次
  TAWSIotMqttClientStatus = (AWSIotMqttUnknown, AWSIotMqttConnecting, AWSIotMqttConnected, AWSIotMqttConnectionLost, AWSIotMqttReconnecting, AWSIotMqttConnectionError, AWSIotMqttProtocolError);

  TOnAWSIoTMQTTNewMessage = procedure(NewMessage:string) of object;

  TOnAWSIotMqttClientStatus = procedure(Status:TAWSIotMqttClientStatus) of object;
  /// <summary> AWS IoT Service Configuration </summary>
  /// <summary> Android 凭证 Keystore </summary>
  /// <summary> Android 凭证 P12 </summary>
  TAWSIoTServiceConfiguration = record
    /// <summary> Service CognitoIdentity 凭证 </summary>
    CognitoIdentityPoolId:string;
    /// <summary> Service Iot endpoint 节点</summary>
    IoT_EndPoint:string;
    /// <summary> Service Data Key 数据Key</summary>
    DataManagerKey:string;
    /// <summary> Service Region 区域</summary>
    Region:TAWSAWSRegionType;
  {$IFDEF iOS}
    /// <summary> Service P12 File Path P12文件路径</summary>
    P12FilePath:string;
    /// <summary> Service P12 PassPhrase P12密码</summary>
    P12PassPhrase:string;
  {$ENDIF}
  {$IFDEF Android}
    /// <summary> Service Keystore File Path Keystore文件路径</summary>
    KeystoreFilePath:string;
    /// <summary> Service Keystore PassPhrase Keystore文件名称</summary>
    KeystoreName:string;
    /// <summary> Service Keystore PassPhrase Keystore密码</summary>
    KeystorePassword:string;
    /// <summary> Service Keystore Certificate and aliases</summary>
    CertificateId:string;
  {$ENDIF}
  end;
  /// <summary> AWS IoT Topic Configuration </summary>
  TAWSIoTTopicConfiguration = record
    /// <summary> AWS IoT Topic 主题 </summary>
    Topic:string;
    /// <summary> AWS IoT Topic Qos 类型 </summary>
    Qos:TAWSIoTMQTTQoS;
  end;



implementation



end.
