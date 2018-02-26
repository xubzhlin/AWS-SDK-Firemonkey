//====================================================
//
//  转换来自JavaOrClass2Pas(原JavaClassToDelphiUnit)
//  原始作者：ying32
//  QQ: 1444386932、396506155
//  Email：yuanfen3287@vip.qq.com
//
//  修改 By：Flying Wang & 爱吃猪头肉
//  请不要移除以上的任何信息。
//  请不要将本版本发到城通网盘，否则死全家。
//
//  Email：1765535979@qq.com
//  QQ Group：165232328
//
//  生成时间：2018/2/22 9:59:46
//  工具版本：1.0.2016.4.26
//
//====================================================
unit Androidapi.JNI.aws.android.sdk.iot;
//2.6.14

interface

uses
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.aws.android.sdk.core,
  Androidapi.JNI.Java.Security;
//  Androidapi.JNI.com.amazonaws.auth.AWSCredentialsProvider,
//  Androidapi.JNI.com.amazonaws.regions.Region,
//  Androidapi.JNI.javax.net.ssl.SSLSocketFactory,
//  Androidapi.JNI.java.net.Socket,
//  Androidapi.JNI.java.net.InetAddress,
//  Androidapi.JNI.com.amazonaws.auth.AWSCredentials,
//  Androidapi.JNI.javax.net.SocketFactory,
//  Androidapi.JNI.java.nio.ByteBuffer,
//  Androidapi.JNI.com.amazonaws.ResponseMetadata,
//  Androidapi.JNI.com.amazonaws.AmazonWebServiceRequest,
//  Androidapi.JNI.com.amazonaws.ClientConfiguration,
//  Androidapi.JNI.com.amazonaws.metrics.RequestMetricCollector,
//  Androidapi.JNI.com.amazonaws.http.HttpClient,
//  Androidapi.JNI.com.amazonaws.Request,
//  Androidapi.JNI.com.amazonaws.util.json.AwsJsonWriter,
//  Androidapi.JNI.com.amazonaws.transform.JsonUnmarshallerContext,
//  Androidapi.JNI.com.amazonaws.http.JsonErrorResponseHandler_JsonErrorResponse,
//  Androidapi.JNI.com.amazonaws.AmazonServiceException;


type
// ===== Forward declarations =====
  JAWSIotKeystoreHelper = interface;
  JAsn1Object = interface; //com.amazonaws.mobileconnectors.iot.Asn1Object
  JAWSIotClientIdHelper = interface; //com.amazonaws.mobileconnectors.iot.AWSIotClientIdHelper
  JAwsIotEndpointUtility = interface; //com.amazonaws.mobileconnectors.iot.AwsIotEndpointUtility
  JAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus = interface; //com.amazonaws.mobileconnectors.iot.AWSIotMqttClientStatusCallback$AWSIotMqttClientStatus
  JAWSIotMqttClientStatusCallback = interface; //com.amazonaws.mobileconnectors.iot.AWSIotMqttClientStatusCallback
  JAWSIotMqttLastWillAndTestament = interface; //com.amazonaws.mobileconnectors.iot.AWSIotMqttLastWillAndTestament
  JAWSIotMqttManager = interface; //com.amazonaws.mobileconnectors.iot.AWSIotMqttManager
  JAWSIotMqttMessageDeliveryCallback_MessageDeliveryStatus = interface; //com.amazonaws.mobileconnectors.iot.AWSIotMqttMessageDeliveryCallback$MessageDeliveryStatus
  JAWSIotMqttMessageDeliveryCallback = interface; //com.amazonaws.mobileconnectors.iot.AWSIotMqttMessageDeliveryCallback
  JAWSIotMqttNewMessageCallback = interface; //com.amazonaws.mobileconnectors.iot.AWSIotMqttNewMessageCallback
  JAWSIotMqttQos = interface; //com.amazonaws.mobileconnectors.iot.AWSIotMqttQos
  JAWSIotMqttQueueMessage = interface; //com.amazonaws.mobileconnectors.iot.AWSIotMqttQueueMessage
  JAWSIotMqttTopic = interface; //com.amazonaws.mobileconnectors.iot.AWSIotMqttTopic
  JAWSIotWebSocketUrlSigner = interface; //com.amazonaws.mobileconnectors.iot.AWSIotWebSocketUrlSigner
  JDerParser = interface; //com.amazonaws.mobileconnectors.iot.DerParser
  JMqttManagerConnectionState = interface; //com.amazonaws.mobileconnectors.iot.MqttManagerConnectionState
  JPEM = interface; //com.amazonaws.mobileconnectors.iot.PEM
  JPEMObject = interface; //com.amazonaws.mobileconnectors.iot.PEMObject
  JPEMObjectType = interface; //com.amazonaws.mobileconnectors.iot.PEMObjectType
  JPrivateKeyReader = interface; //com.amazonaws.mobileconnectors.iot.PrivateKeyReader
  JPublishMessageUserData = interface; //com.amazonaws.mobileconnectors.iot.PublishMessageUserData
  JRSA = interface; //com.amazonaws.mobileconnectors.iot.RSA
  JAWSIot = interface; //com.amazonaws.services.iot.AWSIot
  JAWSIotClient = interface; //com.amazonaws.services.iot.AWSIotClient
  JAcceptCertificateTransferRequest = interface; //com.amazonaws.services.iot.model.AcceptCertificateTransferRequest
  JAction = interface; //com.amazonaws.services.iot.model.Action
  JAttachPrincipalPolicyRequest = interface; //com.amazonaws.services.iot.model.AttachPrincipalPolicyRequest
  JAttachThingPrincipalRequest = interface; //com.amazonaws.services.iot.model.AttachThingPrincipalRequest
  JAttachThingPrincipalResult = interface; //com.amazonaws.services.iot.model.AttachThingPrincipalResult
  JAttributePayload = interface; //com.amazonaws.services.iot.model.AttributePayload
  JAutoRegistrationStatus = interface; //com.amazonaws.services.iot.model.AutoRegistrationStatus
  JCACertificate = interface; //com.amazonaws.services.iot.model.CACertificate
  JCACertificateDescription = interface; //com.amazonaws.services.iot.model.CACertificateDescription
  JCACertificateStatus = interface; //com.amazonaws.services.iot.model.CACertificateStatus
  JCancelCertificateTransferRequest = interface; //com.amazonaws.services.iot.model.CancelCertificateTransferRequest
  JCannedAccessControlList = interface; //com.amazonaws.services.iot.model.CannedAccessControlList
  JCertificate = interface; //com.amazonaws.services.iot.model.Certificate
  JCertificateConflictException = interface; //com.amazonaws.services.iot.model.CertificateConflictException
  JCertificateDescription = interface; //com.amazonaws.services.iot.model.CertificateDescription
  JCertificateStateException = interface; //com.amazonaws.services.iot.model.CertificateStateException
  JCertificateStatus = interface; //com.amazonaws.services.iot.model.CertificateStatus
  JCertificateValidationException = interface; //com.amazonaws.services.iot.model.CertificateValidationException
  JCloudwatchAlarmAction = interface; //com.amazonaws.services.iot.model.CloudwatchAlarmAction
  JCloudwatchMetricAction = interface; //com.amazonaws.services.iot.model.CloudwatchMetricAction
  JCreateCertificateFromCsrRequest = interface; //com.amazonaws.services.iot.model.CreateCertificateFromCsrRequest
  JCreateCertificateFromCsrResult = interface; //com.amazonaws.services.iot.model.CreateCertificateFromCsrResult
  JCreateKeysAndCertificateRequest = interface; //com.amazonaws.services.iot.model.CreateKeysAndCertificateRequest
  JCreateKeysAndCertificateResult = interface; //com.amazonaws.services.iot.model.CreateKeysAndCertificateResult
  JCreatePolicyRequest = interface; //com.amazonaws.services.iot.model.CreatePolicyRequest
  JCreatePolicyResult = interface; //com.amazonaws.services.iot.model.CreatePolicyResult
  JCreatePolicyVersionRequest = interface; //com.amazonaws.services.iot.model.CreatePolicyVersionRequest
  JCreatePolicyVersionResult = interface; //com.amazonaws.services.iot.model.CreatePolicyVersionResult
  JCreateThingRequest = interface; //com.amazonaws.services.iot.model.CreateThingRequest
  JCreateThingResult = interface; //com.amazonaws.services.iot.model.CreateThingResult
  JCreateThingTypeRequest = interface; //com.amazonaws.services.iot.model.CreateThingTypeRequest
  JCreateThingTypeResult = interface; //com.amazonaws.services.iot.model.CreateThingTypeResult
  JCreateTopicRuleRequest = interface; //com.amazonaws.services.iot.model.CreateTopicRuleRequest
  JDeleteCACertificateRequest = interface; //com.amazonaws.services.iot.model.DeleteCACertificateRequest
  JDeleteCACertificateResult = interface; //com.amazonaws.services.iot.model.DeleteCACertificateResult
  JDeleteCertificateRequest = interface; //com.amazonaws.services.iot.model.DeleteCertificateRequest
  JDeleteConflictException = interface; //com.amazonaws.services.iot.model.DeleteConflictException
  JDeletePolicyRequest = interface; //com.amazonaws.services.iot.model.DeletePolicyRequest
  JDeletePolicyVersionRequest = interface; //com.amazonaws.services.iot.model.DeletePolicyVersionRequest
  JDeleteRegistrationCodeRequest = interface; //com.amazonaws.services.iot.model.DeleteRegistrationCodeRequest
  JDeleteRegistrationCodeResult = interface; //com.amazonaws.services.iot.model.DeleteRegistrationCodeResult
  JDeleteThingRequest = interface; //com.amazonaws.services.iot.model.DeleteThingRequest
  JDeleteThingResult = interface; //com.amazonaws.services.iot.model.DeleteThingResult
  JDeleteThingTypeRequest = interface; //com.amazonaws.services.iot.model.DeleteThingTypeRequest
  JDeleteThingTypeResult = interface; //com.amazonaws.services.iot.model.DeleteThingTypeResult
  JDeleteTopicRuleRequest = interface; //com.amazonaws.services.iot.model.DeleteTopicRuleRequest
  JDeprecateThingTypeRequest = interface; //com.amazonaws.services.iot.model.DeprecateThingTypeRequest
  JDeprecateThingTypeResult = interface; //com.amazonaws.services.iot.model.DeprecateThingTypeResult
  JDescribeCACertificateRequest = interface; //com.amazonaws.services.iot.model.DescribeCACertificateRequest
  JDescribeCACertificateResult = interface; //com.amazonaws.services.iot.model.DescribeCACertificateResult
  JDescribeCertificateRequest = interface; //com.amazonaws.services.iot.model.DescribeCertificateRequest
  JDescribeCertificateResult = interface; //com.amazonaws.services.iot.model.DescribeCertificateResult
  JDescribeEndpointRequest = interface; //com.amazonaws.services.iot.model.DescribeEndpointRequest
  JDescribeEndpointResult = interface; //com.amazonaws.services.iot.model.DescribeEndpointResult
  JDescribeThingRequest = interface; //com.amazonaws.services.iot.model.DescribeThingRequest
  JDescribeThingResult = interface; //com.amazonaws.services.iot.model.DescribeThingResult
  JDescribeThingTypeRequest = interface; //com.amazonaws.services.iot.model.DescribeThingTypeRequest
  JDescribeThingTypeResult = interface; //com.amazonaws.services.iot.model.DescribeThingTypeResult
  JDetachPrincipalPolicyRequest = interface; //com.amazonaws.services.iot.model.DetachPrincipalPolicyRequest
  JDetachThingPrincipalRequest = interface; //com.amazonaws.services.iot.model.DetachThingPrincipalRequest
  JDetachThingPrincipalResult = interface; //com.amazonaws.services.iot.model.DetachThingPrincipalResult
  JDisableTopicRuleRequest = interface; //com.amazonaws.services.iot.model.DisableTopicRuleRequest
  JDynamoDBAction = interface; //com.amazonaws.services.iot.model.DynamoDBAction
  JDynamoDBv2Action = interface; //com.amazonaws.services.iot.model.DynamoDBv2Action
  JDynamoKeyType = interface; //com.amazonaws.services.iot.model.DynamoKeyType
  JElasticsearchAction = interface; //com.amazonaws.services.iot.model.ElasticsearchAction
  JEnableTopicRuleRequest = interface; //com.amazonaws.services.iot.model.EnableTopicRuleRequest
  JFirehoseAction = interface; //com.amazonaws.services.iot.model.FirehoseAction
  JGetLoggingOptionsRequest = interface; //com.amazonaws.services.iot.model.GetLoggingOptionsRequest
  JGetLoggingOptionsResult = interface; //com.amazonaws.services.iot.model.GetLoggingOptionsResult
  JGetPolicyRequest = interface; //com.amazonaws.services.iot.model.GetPolicyRequest
  JGetPolicyResult = interface; //com.amazonaws.services.iot.model.GetPolicyResult
  JGetPolicyVersionRequest = interface; //com.amazonaws.services.iot.model.GetPolicyVersionRequest
  JGetPolicyVersionResult = interface; //com.amazonaws.services.iot.model.GetPolicyVersionResult
  JGetRegistrationCodeRequest = interface; //com.amazonaws.services.iot.model.GetRegistrationCodeRequest
  JGetRegistrationCodeResult = interface; //com.amazonaws.services.iot.model.GetRegistrationCodeResult
  JGetTopicRuleRequest = interface; //com.amazonaws.services.iot.model.GetTopicRuleRequest
  JGetTopicRuleResult = interface; //com.amazonaws.services.iot.model.GetTopicRuleResult
  JInternalException = interface; //com.amazonaws.services.iot.model.InternalException
  JInternalFailureException = interface; //com.amazonaws.services.iot.model.InternalFailureException
  JInvalidRequestException = interface; //com.amazonaws.services.iot.model.InvalidRequestException
  JKeyPair = interface; //com.amazonaws.services.iot.model.KeyPair
  JKinesisAction = interface; //com.amazonaws.services.iot.model.KinesisAction
  JLambdaAction = interface; //com.amazonaws.services.iot.model.LambdaAction
  JLimitExceededException = interface; //com.amazonaws.services.iot.model.LimitExceededException
  JListCACertificatesRequest = interface; //com.amazonaws.services.iot.model.ListCACertificatesRequest
  JListCACertificatesResult = interface; //com.amazonaws.services.iot.model.ListCACertificatesResult
  JListCertificatesByCARequest = interface; //com.amazonaws.services.iot.model.ListCertificatesByCARequest
  JListCertificatesByCAResult = interface; //com.amazonaws.services.iot.model.ListCertificatesByCAResult
  JListCertificatesRequest = interface; //com.amazonaws.services.iot.model.ListCertificatesRequest
  JListCertificatesResult = interface; //com.amazonaws.services.iot.model.ListCertificatesResult
  JListOutgoingCertificatesRequest = interface; //com.amazonaws.services.iot.model.ListOutgoingCertificatesRequest
  JListOutgoingCertificatesResult = interface; //com.amazonaws.services.iot.model.ListOutgoingCertificatesResult
  JListPoliciesRequest = interface; //com.amazonaws.services.iot.model.ListPoliciesRequest
  JListPoliciesResult = interface; //com.amazonaws.services.iot.model.ListPoliciesResult
  JListPolicyPrincipalsRequest = interface; //com.amazonaws.services.iot.model.ListPolicyPrincipalsRequest
  JListPolicyPrincipalsResult = interface; //com.amazonaws.services.iot.model.ListPolicyPrincipalsResult
  JListPolicyVersionsRequest = interface; //com.amazonaws.services.iot.model.ListPolicyVersionsRequest
  JListPolicyVersionsResult = interface; //com.amazonaws.services.iot.model.ListPolicyVersionsResult
  JListPrincipalPoliciesRequest = interface; //com.amazonaws.services.iot.model.ListPrincipalPoliciesRequest
  JListPrincipalPoliciesResult = interface; //com.amazonaws.services.iot.model.ListPrincipalPoliciesResult
  JListPrincipalThingsRequest = interface; //com.amazonaws.services.iot.model.ListPrincipalThingsRequest
  JListPrincipalThingsResult = interface; //com.amazonaws.services.iot.model.ListPrincipalThingsResult
  JListThingPrincipalsRequest = interface; //com.amazonaws.services.iot.model.ListThingPrincipalsRequest
  JListThingPrincipalsResult = interface; //com.amazonaws.services.iot.model.ListThingPrincipalsResult
  JListThingsRequest = interface; //com.amazonaws.services.iot.model.ListThingsRequest
  JListThingsResult = interface; //com.amazonaws.services.iot.model.ListThingsResult
  JListThingTypesRequest = interface; //com.amazonaws.services.iot.model.ListThingTypesRequest
  JListThingTypesResult = interface; //com.amazonaws.services.iot.model.ListThingTypesResult
  JListTopicRulesRequest = interface; //com.amazonaws.services.iot.model.ListTopicRulesRequest
  JListTopicRulesResult = interface; //com.amazonaws.services.iot.model.ListTopicRulesResult
  JLoggingOptionsPayload = interface; //com.amazonaws.services.iot.model.LoggingOptionsPayload
  JLogLevel = interface; //com.amazonaws.services.iot.model.LogLevel
  JMalformedPolicyException = interface; //com.amazonaws.services.iot.model.MalformedPolicyException
  JMessageFormat = interface; //com.amazonaws.services.iot.model.MessageFormat
  JOutgoingCertificate = interface; //com.amazonaws.services.iot.model.OutgoingCertificate

  JPolicy = interface; //com.amazonaws.services.iot.model.Policy
  JPolicyVersion = interface; //com.amazonaws.services.iot.model.PolicyVersion
  JPutItemInput = interface; //com.amazonaws.services.iot.model.PutItemInput
  JRegisterCACertificateRequest = interface; //com.amazonaws.services.iot.model.RegisterCACertificateRequest
  JRegisterCACertificateResult = interface; //com.amazonaws.services.iot.model.RegisterCACertificateResult
  JRegisterCertificateRequest = interface; //com.amazonaws.services.iot.model.RegisterCertificateRequest
  JRegisterCertificateResult = interface; //com.amazonaws.services.iot.model.RegisterCertificateResult
  JRegistrationCodeValidationException = interface; //com.amazonaws.services.iot.model.RegistrationCodeValidationException
  JRejectCertificateTransferRequest = interface; //com.amazonaws.services.iot.model.RejectCertificateTransferRequest
  JReplaceTopicRuleRequest = interface; //com.amazonaws.services.iot.model.ReplaceTopicRuleRequest
  JRepublishAction = interface; //com.amazonaws.services.iot.model.RepublishAction
  JResourceAlreadyExistsException = interface; //com.amazonaws.services.iot.model.ResourceAlreadyExistsException
  JResourceNotFoundException = interface; //com.amazonaws.services.iot.model.ResourceNotFoundException
  JS3Action = interface; //com.amazonaws.services.iot.model.S3Action
  JServiceUnavailableException = interface; //com.amazonaws.services.iot.model.ServiceUnavailableException
  JSetDefaultPolicyVersionRequest = interface; //com.amazonaws.services.iot.model.SetDefaultPolicyVersionRequest
  JSetLoggingOptionsRequest = interface; //com.amazonaws.services.iot.model.SetLoggingOptionsRequest
  JSnsAction = interface; //com.amazonaws.services.iot.model.SnsAction
  JSqlParseException = interface; //com.amazonaws.services.iot.model.SqlParseException
  JSqsAction = interface; //com.amazonaws.services.iot.model.SqsAction
  JThingAttribute = interface; //com.amazonaws.services.iot.model.ThingAttribute
  JThingTypeDefinition = interface; //com.amazonaws.services.iot.model.ThingTypeDefinition
  JThingTypeMetadata = interface; //com.amazonaws.services.iot.model.ThingTypeMetadata
  JThingTypeProperties = interface; //com.amazonaws.services.iot.model.ThingTypeProperties
  JThrottlingException = interface; //com.amazonaws.services.iot.model.ThrottlingException
  JTopicRule = interface; //com.amazonaws.services.iot.model.TopicRule
  JTopicRuleListItem = interface; //com.amazonaws.services.iot.model.TopicRuleListItem
  JTopicRulePayload = interface; //com.amazonaws.services.iot.model.TopicRulePayload
  JTransferAlreadyCompletedException = interface; //com.amazonaws.services.iot.model.TransferAlreadyCompletedException
  JTransferCertificateRequest = interface; //com.amazonaws.services.iot.model.TransferCertificateRequest
  JTransferCertificateResult = interface; //com.amazonaws.services.iot.model.TransferCertificateResult
  JTransferConflictException = interface; //com.amazonaws.services.iot.model.TransferConflictException
  JTransferData = interface; //com.amazonaws.services.iot.model.TransferData
  JAcceptCertificateTransferRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.AcceptCertificateTransferRequestMarshaller
  JActionJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.ActionJsonMarshaller
  JActionJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.ActionJsonUnmarshaller
  JAttachPrincipalPolicyRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.AttachPrincipalPolicyRequestMarshaller
  JAttachThingPrincipalRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.AttachThingPrincipalRequestMarshaller
  JAttachThingPrincipalResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.AttachThingPrincipalResultJsonUnmarshaller
  JAttributePayloadJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.AttributePayloadJsonMarshaller
  JAttributePayloadJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.AttributePayloadJsonUnmarshaller
  JCACertificateDescriptionJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.CACertificateDescriptionJsonMarshaller
  JCACertificateDescriptionJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.CACertificateDescriptionJsonUnmarshaller
  JCACertificateJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.CACertificateJsonMarshaller
  JCACertificateJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.CACertificateJsonUnmarshaller
  JCancelCertificateTransferRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.CancelCertificateTransferRequestMarshaller
  JCertificateDescriptionJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.CertificateDescriptionJsonMarshaller
  JCertificateDescriptionJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.CertificateDescriptionJsonUnmarshaller
  JCertificateJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.CertificateJsonMarshaller
  JCertificateJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.CertificateJsonUnmarshaller
  JCloudwatchAlarmActionJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.CloudwatchAlarmActionJsonMarshaller
  JCloudwatchAlarmActionJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.CloudwatchAlarmActionJsonUnmarshaller
  JCloudwatchMetricActionJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.CloudwatchMetricActionJsonMarshaller
  JCloudwatchMetricActionJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.CloudwatchMetricActionJsonUnmarshaller
  JCreateCertificateFromCsrRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.CreateCertificateFromCsrRequestMarshaller
  JCreateCertificateFromCsrResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.CreateCertificateFromCsrResultJsonUnmarshaller
  JCreateKeysAndCertificateRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.CreateKeysAndCertificateRequestMarshaller
  JCreateKeysAndCertificateResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.CreateKeysAndCertificateResultJsonUnmarshaller
  JCreatePolicyRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.CreatePolicyRequestMarshaller
  JCreatePolicyResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.CreatePolicyResultJsonUnmarshaller
  JCreatePolicyVersionRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.CreatePolicyVersionRequestMarshaller
  JCreatePolicyVersionResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.CreatePolicyVersionResultJsonUnmarshaller
  JCreateThingRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.CreateThingRequestMarshaller
  JCreateThingResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.CreateThingResultJsonUnmarshaller
  JCreateThingTypeRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.CreateThingTypeRequestMarshaller
  JCreateThingTypeResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.CreateThingTypeResultJsonUnmarshaller
  JCreateTopicRuleRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.CreateTopicRuleRequestMarshaller
  JDeleteCACertificateRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.DeleteCACertificateRequestMarshaller
  JDeleteCACertificateResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.DeleteCACertificateResultJsonUnmarshaller
  JDeleteCertificateRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.DeleteCertificateRequestMarshaller
  JDeletePolicyVersionRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.DeletePolicyVersionRequestMarshaller
  JDeleteRegistrationCodeRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.DeleteRegistrationCodeRequestMarshaller
  JDeleteRegistrationCodeResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.DeleteRegistrationCodeResultJsonUnmarshaller
  JDeleteThingRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.DeleteThingRequestMarshaller
  JDeleteThingResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.DeleteThingResultJsonUnmarshaller
  JDeleteThingTypeRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.DeleteThingTypeRequestMarshaller
  JDeleteThingTypeResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.DeleteThingTypeResultJsonUnmarshaller
  JDeleteTopicRuleRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.DeleteTopicRuleRequestMarshaller
  JDeprecateThingTypeRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.DeprecateThingTypeRequestMarshaller
  JDeprecateThingTypeResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.DeprecateThingTypeResultJsonUnmarshaller
  JDescribeCACertificateRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.DescribeCACertificateRequestMarshaller
  JDescribeCACertificateResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.DescribeCACertificateResultJsonUnmarshaller
  JDescribeCertificateRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.DescribeCertificateRequestMarshaller
  JDescribeCertificateResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.DescribeCertificateResultJsonUnmarshaller
  JDescribeEndpointRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.DescribeEndpointRequestMarshaller
  JDescribeEndpointResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.DescribeEndpointResultJsonUnmarshaller
  JDescribeThingRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.DescribeThingRequestMarshaller
  JDescribeThingResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.DescribeThingResultJsonUnmarshaller
  JDescribeThingTypeRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.DescribeThingTypeRequestMarshaller
  JDescribeThingTypeResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.DescribeThingTypeResultJsonUnmarshaller
  JDetachPrincipalPolicyRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.DetachPrincipalPolicyRequestMarshaller
  JDetachThingPrincipalRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.DetachThingPrincipalRequestMarshaller
  JDetachThingPrincipalResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.DetachThingPrincipalResultJsonUnmarshaller
  JDisableTopicRuleRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.DisableTopicRuleRequestMarshaller
  JDynamoDBActionJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.DynamoDBActionJsonMarshaller
  JDynamoDBActionJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.DynamoDBActionJsonUnmarshaller
  JDynamoDBv2ActionJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.DynamoDBv2ActionJsonMarshaller
  JDynamoDBv2ActionJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.DynamoDBv2ActionJsonUnmarshaller
  JElasticsearchActionJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.ElasticsearchActionJsonMarshaller
  JElasticsearchActionJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.ElasticsearchActionJsonUnmarshaller
  JEnableTopicRuleRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.EnableTopicRuleRequestMarshaller
  JFirehoseActionJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.FirehoseActionJsonMarshaller
  JFirehoseActionJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.FirehoseActionJsonUnmarshaller
  JGetLoggingOptionsRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.GetLoggingOptionsRequestMarshaller
  JGetLoggingOptionsResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.GetLoggingOptionsResultJsonUnmarshaller
  JGetPolicyRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.GetPolicyRequestMarshaller
  JGetPolicyResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.GetPolicyResultJsonUnmarshaller
  JGetPolicyVersionRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.GetPolicyVersionRequestMarshaller
  JGetPolicyVersionResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.GetPolicyVersionResultJsonUnmarshaller
  JGetRegistrationCodeRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.GetRegistrationCodeRequestMarshaller
  JGetRegistrationCodeResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.GetRegistrationCodeResultJsonUnmarshaller
  JGetTopicRuleRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.GetTopicRuleRequestMarshaller
  JGetTopicRuleResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.GetTopicRuleResultJsonUnmarshaller
  JKeyPairJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.KeyPairJsonMarshaller
  JKeyPairJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.KeyPairJsonUnmarshaller
  JKinesisActionJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.KinesisActionJsonMarshaller
  JKinesisActionJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.KinesisActionJsonUnmarshaller
  JLambdaActionJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.LambdaActionJsonMarshaller
  JLambdaActionJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.LambdaActionJsonUnmarshaller
  JListCACertificatesRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.ListCACertificatesRequestMarshaller
  JListCACertificatesResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.ListCACertificatesResultJsonUnmarshaller
  JListCertificatesByCARequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.ListCertificatesByCARequestMarshaller
  JListCertificatesByCAResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.ListCertificatesByCAResultJsonUnmarshaller
  JListCertificatesRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.ListCertificatesRequestMarshaller
  JListCertificatesResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.ListCertificatesResultJsonUnmarshaller
  JListOutgoingCertificatesRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.ListOutgoingCertificatesRequestMarshaller
  JListOutgoingCertificatesResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.ListOutgoingCertificatesResultJsonUnmarshaller
  JListPoliciesRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.ListPoliciesRequestMarshaller
  JListPoliciesResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.ListPoliciesResultJsonUnmarshaller
  JListPolicyPrincipalsRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.ListPolicyPrincipalsRequestMarshaller
  JListPolicyPrincipalsResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.ListPolicyPrincipalsResultJsonUnmarshaller
  JListPolicyVersionsRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.ListPolicyVersionsRequestMarshaller
  JListPolicyVersionsResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.ListPolicyVersionsResultJsonUnmarshaller
  JListPrincipalPoliciesRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.ListPrincipalPoliciesRequestMarshaller
  JListPrincipalPoliciesResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.ListPrincipalPoliciesResultJsonUnmarshaller
  JListPrincipalThingsRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.ListPrincipalThingsRequestMarshaller
  JListPrincipalThingsResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.ListPrincipalThingsResultJsonUnmarshaller
  JListThingPrincipalsRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.ListThingPrincipalsRequestMarshaller
  JListThingPrincipalsResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.ListThingPrincipalsResultJsonUnmarshaller
  JListThingsRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.ListThingsRequestMarshaller
  JListThingsResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.ListThingsResultJsonUnmarshaller
  JListThingTypesRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.ListThingTypesRequestMarshaller
  JListThingTypesResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.ListThingTypesResultJsonUnmarshaller
  JListTopicRulesRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.ListTopicRulesRequestMarshaller
  JListTopicRulesResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.ListTopicRulesResultJsonUnmarshaller
  JLoggingOptionsPayloadJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.LoggingOptionsPayloadJsonMarshaller
  JLoggingOptionsPayloadJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.LoggingOptionsPayloadJsonUnmarshaller
  JOutgoingCertificateJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.OutgoingCertificateJsonMarshaller
  JOutgoingCertificateJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.OutgoingCertificateJsonUnmarshaller

  JPolicyJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.PolicyJsonMarshaller
  JPolicyJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.PolicyJsonUnmarshaller
  JPolicyVersionJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.PolicyVersionJsonMarshaller
  JPolicyVersionJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.PolicyVersionJsonUnmarshaller
  JPutItemInputJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.PutItemInputJsonMarshaller
  JPutItemInputJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.PutItemInputJsonUnmarshaller
  JRegisterCACertificateRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.RegisterCACertificateRequestMarshaller
  JRegisterCACertificateResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.RegisterCACertificateResultJsonUnmarshaller
  JRegisterCertificateRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.RegisterCertificateRequestMarshaller
  JRegisterCertificateResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.RegisterCertificateResultJsonUnmarshaller

  JRejectCertificateTransferRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.RejectCertificateTransferRequestMarshaller
  JReplaceTopicRuleRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.ReplaceTopicRuleRequestMarshaller
  JRepublishActionJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.RepublishActionJsonMarshaller
  JRepublishActionJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.RepublishActionJsonUnmarshaller
  JS3ActionJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.S3ActionJsonUnmarshaller
  JSetDefaultPolicyVersionRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.SetDefaultPolicyVersionRequestMarshaller
  JSetLoggingOptionsRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.SetLoggingOptionsRequestMarshaller
  JSnsActionJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.SnsActionJsonMarshaller
  JSnsActionJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.SnsActionJsonUnmarshaller
  JSqsActionJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.SqsActionJsonMarshaller
  JSqsActionJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.SqsActionJsonUnmarshaller
  JThingAttributeJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.ThingAttributeJsonMarshaller
  JThingAttributeJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.ThingAttributeJsonUnmarshaller
  JThingTypeDefinitionJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.ThingTypeDefinitionJsonMarshaller
  JThingTypeDefinitionJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.ThingTypeDefinitionJsonUnmarshaller
  JThingTypeMetadataJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.ThingTypeMetadataJsonMarshaller
  JThingTypeMetadataJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.ThingTypeMetadataJsonUnmarshaller
  JThingTypePropertiesJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.ThingTypePropertiesJsonMarshaller
  JThingTypePropertiesJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.ThingTypePropertiesJsonUnmarshaller
  JTopicRuleJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.TopicRuleJsonMarshaller
  JTopicRuleJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.TopicRuleJsonUnmarshaller
  JTopicRuleListItemJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.TopicRuleListItemJsonMarshaller
  JTopicRuleListItemJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.TopicRuleListItemJsonUnmarshaller
  JTopicRulePayloadJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.TopicRulePayloadJsonMarshaller
  JTopicRulePayloadJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.TopicRulePayloadJsonUnmarshaller
  JTransferCertificateRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.TransferCertificateRequestMarshaller
  JTransferCertificateResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.TransferCertificateResultJsonUnmarshaller
  JTransferDataJsonMarshaller = interface; //com.amazonaws.services.iot.model.transform.TransferDataJsonMarshaller
  JTransferDataJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.TransferDataJsonUnmarshaller
  JUpdateCACertificateRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.UpdateCACertificateRequestMarshaller
  JUpdateCertificateRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.UpdateCertificateRequestMarshaller
  JUpdateThingRequestMarshaller = interface; //com.amazonaws.services.iot.model.transform.UpdateThingRequestMarshaller
  JUpdateThingResultJsonUnmarshaller = interface; //com.amazonaws.services.iot.model.transform.UpdateThingResultJsonUnmarshaller
  JUnauthorizedException = interface; //com.amazonaws.services.iot.model.UnauthorizedException
  JUpdateCACertificateRequest = interface; //com.amazonaws.services.iot.model.UpdateCACertificateRequest
  JUpdateCertificateRequest = interface; //com.amazonaws.services.iot.model.UpdateCertificateRequest
  JUpdateThingRequest = interface; //com.amazonaws.services.iot.model.UpdateThingRequest
  JUpdateThingResult = interface; //com.amazonaws.services.iot.model.UpdateThingResult
  JVersionConflictException = interface; //com.amazonaws.services.iot.model.VersionConflictException
  JVersionsLimitExceededException = interface; //com.amazonaws.services.iot.model.VersionsLimitExceededException
  JAWSIotData = interface; //com.amazonaws.services.iotdata.AWSIotData
  JAWSIotDataClient = interface; //com.amazonaws.services.iotdata.AWSIotDataClient
  JConflictException = interface; //com.amazonaws.services.iotdata.model.ConflictException
  JDeleteThingShadowRequest = interface; //com.amazonaws.services.iotdata.model.DeleteThingShadowRequest
  JDeleteThingShadowResult = interface; //com.amazonaws.services.iotdata.model.DeleteThingShadowResult
  JGetThingShadowRequest = interface; //com.amazonaws.services.iotdata.model.GetThingShadowRequest
  JGetThingShadowResult = interface; //com.amazonaws.services.iotdata.model.GetThingShadowResult
  JInternalFailureException_481 = interface; //com.amazonaws.services.iotdata.model.InternalFailureException
  JInvalidRequestException_482 = interface; //com.amazonaws.services.iotdata.model.InvalidRequestException
  JMethodNotAllowedException = interface; //com.amazonaws.services.iotdata.model.MethodNotAllowedException
  JPublishRequest = interface; //com.amazonaws.services.iotdata.model.PublishRequest
  JRequestEntityTooLargeException = interface; //com.amazonaws.services.iotdata.model.RequestEntityTooLargeException
  JDeleteThingShadowRequestMarshaller = interface; //com.amazonaws.services.iotdata.model.transform.DeleteThingShadowRequestMarshaller
  JDeleteThingShadowResultJsonUnmarshaller = interface; //com.amazonaws.services.iotdata.model.transform.DeleteThingShadowResultJsonUnmarshaller
  JGetThingShadowRequestMarshaller = interface; //com.amazonaws.services.iotdata.model.transform.GetThingShadowRequestMarshaller
  JGetThingShadowResultJsonUnmarshaller = interface; //com.amazonaws.services.iotdata.model.transform.GetThingShadowResultJsonUnmarshaller
  JPublishRequestMarshaller = interface; //com.amazonaws.services.iotdata.model.transform.PublishRequestMarshaller
  JUpdateThingShadowRequestMarshaller = interface; //com.amazonaws.services.iotdata.model.transform.UpdateThingShadowRequestMarshaller
  JUpdateThingShadowResultJsonUnmarshaller = interface; //com.amazonaws.services.iotdata.model.transform.UpdateThingShadowResultJsonUnmarshaller
  JUnauthorizedException_508 = interface; //com.amazonaws.services.iotdata.model.UnauthorizedException
  JUnsupportedDocumentEncodingException = interface; //com.amazonaws.services.iotdata.model.UnsupportedDocumentEncodingException
  JUpdateThingShadowRequest = interface; //com.amazonaws.services.iotdata.model.UpdateThingShadowRequest
  JUpdateThingShadowResult = interface; //com.amazonaws.services.iotdata.model.UpdateThingShadowResult


// ===== Interface declarations =====
  JAWSIotKeystoreHelperClass = interface(JObjectClass)
  ['{5F05375F-87AD-40C3-A94B-2CF1C43E8D66}']
    { static Property Methods }
    {class} function _GetAWS_IOT_INTERNAL_KEYSTORE_PASSWORD: JString; //Ljava/lang/String;

    { static Methods }
    {class} function generatePrivateAndPublicKeys: JKeyPair; cdecl; //()Ljava/security/KeyPair;
    {class} procedure saveCertificateAndPrivateKey(certPem: JString; privKey: JString; keystorePath: JPrivateKey; keystoreName: JString; keystorePassword: JString; certBytes: JString); cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    {class} procedure saveCertificateAndPrivateKey(certPem: JString; keyPem: JString; keystorePath: JString; keystoreName: JString; keystorePassword: JString; privateKeyReader: JString); cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    {class} function getIotKeystore(keystorePath: JString; keystoreName: JString; keyStorePassword: JString; keystoreFileAndPath: JString): JKeyStore; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    {class} function getIotKeystore(keyStoreInputStream: JString; keyStorePassword: JInputStream; keyStore: JString): JKeyStore; cdecl; overload; //(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/KeyStore;
    {class} function isKeystorePresent(keystorePath: JString; keystoreName: JString): JBoolean; cdecl; //(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    {class} function keystoreContainsAlias(keystorePath: JString; keystoreName: JString; keystorePassword: JString; containsAlias: JString): JBoolean; cdecl; //(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    {class} procedure deleteKeystoreAlias(keystorePath: JString; keystoreName: JString; keystorePassword: JString; keystore: JString); cdecl; //(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    { static Property }
    {class} property AWS_IOT_INTERNAL_KEYSTORE_PASSWORD: JString read _GetAWS_IOT_INTERNAL_KEYSTORE_PASSWORD;
  end;

  [JavaSignature('com/amazonaws/mobileconnectors/iot/AWSIotKeystoreHelper')]
  JAWSIotKeystoreHelper = interface(JObject)
  ['{F8470CE3-87D2-41A9-9478-AF3D6B883EB3}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJAWSIotKeystoreHelper = class(TJavaGenericImport<JAWSIotKeystoreHelperClass, JAWSIotKeystoreHelper>) end;

  JAsn1ObjectClass = interface(JObjectClass)
  ['{E75CC60D-8E98-45B2-9C19-4A302A57BC59}']
    { static Property Methods }

    { static Methods }
    {class} function init(tag: Integer; length: Integer; value: TJavaArray<Byte>): JAsn1Object; cdecl; //(II[B)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/mobileconnectors/iot/Asn1Object')]
  JAsn1Object = interface(JObject)
  ['{7D446BBF-C5F6-4550-8ABA-01E70CA5C42D}']
    { Property Methods }

    { methods }
    function getType: Integer; cdecl; //()I
    function getLength: Integer; cdecl; //()I
    function getValue: TJavaArray<Byte>; cdecl; //()[B
    function isConstructed: Boolean; cdecl; //()Z
    function getParser: JDerParser; cdecl; //()Lcom/amazonaws/mobileconnectors/iot/DerParser;
    function getInteger: JBigInteger; cdecl; //()Ljava/math/BigInteger;
    function getString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJAsn1Object = class(TJavaGenericImport<JAsn1ObjectClass, JAsn1Object>) end;


  JAWSIotClientIdHelperClass = interface(JObjectClass)
  ['{EACBC8A1-4052-4878-86D4-AF24173E806A}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/mobileconnectors/iot/AWSIotClientIdHelper')]
  JAWSIotClientIdHelper = interface(JObject)
  ['{D3740BE1-6FC7-4CDA-8E9A-11CBF947233D}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJAWSIotClientIdHelper = class(TJavaGenericImport<JAWSIotClientIdHelperClass, JAWSIotClientIdHelper>) end;

  JAwsIotEndpointUtilityClass = interface(JObjectClass)
  ['{14E4CE97-9127-44DF-A3FC-40909EBAF1FA}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/mobileconnectors/iot/AwsIotEndpointUtility')]
  JAwsIotEndpointUtility = interface(JObject)
  ['{31105DA4-3994-41CA-8E25-2F039B88A588}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJAwsIotEndpointUtility = class(TJavaGenericImport<JAwsIotEndpointUtilityClass, JAwsIotEndpointUtility>) end;


  JAWSIotMqttClientStatusCallback_AWSIotMqttClientStatusClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{7585C658-3BA4-48C3-B7CA-8886FD06CA47}']
    { static Property Methods }
    {class} function _GetConnecting: JAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus; cdecl;//Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttClientStatusCallback$AWSIotMqttClientStatus;
    {class} function _GetConnected: JAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus; cdecl;//Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttClientStatusCallback$AWSIotMqttClientStatus;
    {class} function _GetConnectionLost: JAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus; cdecl;//Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttClientStatusCallback$AWSIotMqttClientStatus;
    {class} function _GetReconnecting: JAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus; cdecl;//Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttClientStatusCallback$AWSIotMqttClientStatus;

    { static Methods }
    {class} function values: TJavaObjectArray<JAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus>; cdecl; //()[Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttClientStatusCallback$AWSIotMqttClientStatus;
    {class} function valueOf(P1: JString): JAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttClientStatusCallback$AWSIotMqttClientStatus;

    { static Property }
    {class} property Connecting: JAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus read _GetConnecting;
    {class} property Connected: JAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus read _GetConnected;
    {class} property ConnectionLost: JAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus read _GetConnectionLost;
    {class} property Reconnecting: JAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus read _GetReconnecting;
  end;

  [JavaSignature('com/amazonaws/mobileconnectors/iot/AWSIotMqttClientStatusCallback$AWSIotMqttClientStatus')]
  JAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{315A8A6C-3A22-47D1-815D-8D5BF50CE4ED}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus = class(TJavaGenericImport<JAWSIotMqttClientStatusCallback_AWSIotMqttClientStatusClass, JAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus>) end;

  JAWSIotMqttClientStatusCallbackClass = interface(JObjectClass)
  ['{599C1FB8-402D-4168-86A8-E3DB0623ED0B}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/mobileconnectors/iot/AWSIotMqttClientStatusCallback')]
  JAWSIotMqttClientStatusCallback = interface(IJavaInstance)
  ['{4ABAF912-257E-43A7-98DC-1D48CDE85736}']
    { Property Methods }

    { methods }
    procedure onStatusChanged(P1: JAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus; P2: JThrowable); cdecl; //(Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttClientStatusCallback$AWSIotMqttClientStatus;Ljava/lang/Throwable;)V

    { Property }
  end;

  TJAWSIotMqttClientStatusCallback = class(TJavaGenericImport<JAWSIotMqttClientStatusCallbackClass, JAWSIotMqttClientStatusCallback>) end;

  JAWSIotMqttLastWillAndTestamentClass = interface(JObjectClass)
  ['{3C66BCB4-7FE6-44F8-ABB8-5C9933B796B8}']
    { static Property Methods }

    { static Methods }
    {class} function init(willTopic: JString; willMessage: JString; willQos: JAWSIotMqttQos): JAWSIotMqttLastWillAndTestament; cdecl; //(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttQos;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/mobileconnectors/iot/AWSIotMqttLastWillAndTestament')]
  JAWSIotMqttLastWillAndTestament = interface(JObject)
  ['{A5F0852A-42B0-4A4C-8B88-E0DD96D00DD1}']
    { Property Methods }

    { methods }
    function getTopic: JString; cdecl; //()Ljava/lang/String;
    function getMessage: JString; cdecl; //()Ljava/lang/String;
    function getQos: JAWSIotMqttQos; cdecl; //()Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttQos;

    { Property }
  end;

  TJAWSIotMqttLastWillAndTestament = class(TJavaGenericImport<JAWSIotMqttLastWillAndTestamentClass, JAWSIotMqttLastWillAndTestament>) end;

  JAWSIotMqttManagerClass = interface(JObjectClass)
  ['{C56EF8B2-05CC-42E5-8908-1EC23DE691C9}']
    { static Property Methods }
    {class} function _GetDEFAULT_MIN_RECONNECT_RETRY_TIME_SECONDS: JInteger; //Ljava/lang/Integer;
    {class} function _GetDEFAULT_MAX_RECONNECT_RETRY_TIME_SECONDS: JInteger; //Ljava/lang/Integer;
    {class} function _GetDEFAULT_AUTO_RECONNECT_ENABLED: JBoolean; //Ljava/lang/Boolean;
    {class} function _GetDEFAULT_AUTO_RECONNECT_ATTEMPTS: JInteger; //Ljava/lang/Integer;
    {class} function _GetDEFAULT_KEEP_ALIVE_SECONDS: JInteger; //Ljava/lang/Integer;
    {class} function _GetDEFAULT_OFFLINE_PUBLISH_QUEUE_ENABLED: JBoolean; //Ljava/lang/Boolean;
    {class} function _GetDEFAULT_OFFLINE_PUBLISH_QUEUE_BOUND: JInteger; //Ljava/lang/Integer;

    { static Methods }
    {class} function init(mqttClientId: JString; endpoint: JString): JAWSIotMqttManager; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;)V
    {class} function init(mqttClientId: JString; region: JRegion; accountEndpointPrefix: JString): JAWSIotMqttManager; cdecl; overload; //(Ljava/lang/String;Lcom/amazonaws/regions/Region;Ljava/lang/String;)V

    { static Property }
    {class} property DEFAULT_MIN_RECONNECT_RETRY_TIME_SECONDS: JInteger read _GetDEFAULT_MIN_RECONNECT_RETRY_TIME_SECONDS;
    {class} property DEFAULT_MAX_RECONNECT_RETRY_TIME_SECONDS: JInteger read _GetDEFAULT_MAX_RECONNECT_RETRY_TIME_SECONDS;
    {class} property DEFAULT_AUTO_RECONNECT_ENABLED: JBoolean read _GetDEFAULT_AUTO_RECONNECT_ENABLED;
    {class} property DEFAULT_AUTO_RECONNECT_ATTEMPTS: JInteger read _GetDEFAULT_AUTO_RECONNECT_ATTEMPTS;
    {class} property DEFAULT_KEEP_ALIVE_SECONDS: JInteger read _GetDEFAULT_KEEP_ALIVE_SECONDS;
    {class} property DEFAULT_OFFLINE_PUBLISH_QUEUE_ENABLED: JBoolean read _GetDEFAULT_OFFLINE_PUBLISH_QUEUE_ENABLED;
    {class} property DEFAULT_OFFLINE_PUBLISH_QUEUE_BOUND: JInteger read _GetDEFAULT_OFFLINE_PUBLISH_QUEUE_BOUND;
  end;

  [JavaSignature('com/amazonaws/mobileconnectors/iot/AWSIotMqttManager')]
  JAWSIotMqttManager = interface(JObject)
  ['{621A7A36-86BA-423B-ACD6-828B1C9E73B1}']
    { Property Methods }

    { methods }
    procedure setMetricsIsEnabled(enabled: Boolean); cdecl; //(Z)V
    function isMetricsEnabled: Boolean; cdecl; //()Z
    function getAccountEndpointPrefix: JString; cdecl; //()Ljava/lang/String;
    function isAutoReconnect: Boolean; cdecl; //()Z
    procedure setAutoReconnect(enabled: Boolean); cdecl; //(Z)V
    function getReconnectTimeout: Integer; cdecl; //Deprecated //()I
    procedure setReconnectTimeout(timeout: Integer); cdecl; //Deprecated //(I)V
    procedure setReconnectRetryLimits(minTimeout: Integer; maxTimeout: Integer); cdecl; //(II)V
    function getMinReconnectRetryTime: Integer; cdecl; //()I
    function getMaxReconnectRetryTime: Integer; cdecl; //()I
    function getMaxAutoReconnectAttempts: Integer; cdecl; //()I
    procedure setMaxAutoReconnectAttepts(attempts: Integer); cdecl; //(I)V
    procedure setConnectionStabilityTime(time: Integer); cdecl; //(I)V
    function getConnectionStabilityTime: Integer; cdecl; //()I
    function isOfflinePublishQueueEnabled: Boolean; cdecl; //()Z
    procedure setOfflinePublishQueueEnabled(enabled: Boolean); cdecl; //(Z)V
    function getOfflinePublishQueueBound: JInteger; cdecl; //()Ljava/lang/Integer;
    procedure setOfflinePublishQueueBound(bound: JInteger); cdecl; //(Ljava/lang/Integer;)V
    function getDrainingInterval: JLong; cdecl; //()Ljava/lang/Long;
    procedure setDrainingInterval(interval: JLong); cdecl; //(Ljava/lang/Long;)V
    function fullPublishQueueKeepsOldestMessages: Boolean; cdecl; //()Z
    procedure setFullQueueToKeepOldestMessages; cdecl; //()V
    procedure setFullQueueToKeepNewestMessages; cdecl; //()V
    function getKeepAlive: Integer; cdecl; //()I
    procedure setKeepAlive(keepAlive: Integer); cdecl; //(I)V
    function getMqttLastWillAndTestament: JAWSIotMqttLastWillAndTestament; cdecl; //()Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttLastWillAndTestament;
    procedure setMqttLastWillAndTestament(lwt: JAWSIotMqttLastWillAndTestament); cdecl; //(Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttLastWillAndTestament;)V
    procedure setCredentialsProvider(credentialsProvider: JAWSCredentialsProvider); cdecl; //(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    procedure setAutoResubscribe(enabled: Boolean); cdecl; //(Z)V
    procedure connect(keyStore: JKeyStore; statusCallback: JAWSIotMqttClientStatusCallback); cdecl; overload; //(Ljava/security/KeyStore;Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttClientStatusCallback;)V
    procedure connect(credentialsProvider: JAWSCredentialsProvider; statusCallback: JAWSIotMqttClientStatusCallback); cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttClientStatusCallback;)V
    function disconnect: Boolean; cdecl; //()Z
    procedure resetReconnect; cdecl; //()V
    procedure subscribeToTopic(topic: JString; qos: JAWSIotMqttQos; callback: JAWSIotMqttNewMessageCallback); cdecl; //(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttQos;Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttNewMessageCallback;)V
    procedure unsubscribeTopic(topic: JString); cdecl; //(Ljava/lang/String;)V
    procedure publishString(str: JString; topic: JString; qos: JAWSIotMqttQos); cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttQos;)V
    procedure publishString(str: JString; topic: JString; qos: JAWSIotMqttQos; cb: JAWSIotMqttMessageDeliveryCallback; userData: JObject); cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttQos;Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttMessageDeliveryCallback;Ljava/lang/Object;)V
    procedure publishData(data: TJavaArray<Byte>; topic: JString; qos: JAWSIotMqttQos); cdecl; overload; //([BLjava/lang/String;Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttQos;)V
    procedure publishData(data: TJavaArray<Byte>; topic: JString; qos: JAWSIotMqttQos; callback: JAWSIotMqttMessageDeliveryCallback; userData: JObject); cdecl; overload; //([BLjava/lang/String;Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttQos;Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttMessageDeliveryCallback;Ljava/lang/Object;)V

    { Property }
  end;

  TJAWSIotMqttManager = class(TJavaGenericImport<JAWSIotMqttManagerClass, JAWSIotMqttManager>) end;

  JAWSIotMqttMessageDeliveryCallback_MessageDeliveryStatusClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{C3F33E4A-EDB9-4F77-978C-B4BCF197809F}']
    { static Property Methods }
    {class} function _GetSuccess: JAWSIotMqttMessageDeliveryCallback_MessageDeliveryStatus; //Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttMessageDeliveryCallback$MessageDeliveryStatus;
    {class} function _GetFail: JAWSIotMqttMessageDeliveryCallback_MessageDeliveryStatus; //Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttMessageDeliveryCallback$MessageDeliveryStatus;

    { static Methods }
    {class} function values: TJavaObjectArray<JAWSIotMqttMessageDeliveryCallback_MessageDeliveryStatus>; cdecl; //()[Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttMessageDeliveryCallback$MessageDeliveryStatus;
    {class} function valueOf(P1: JString): JAWSIotMqttMessageDeliveryCallback_MessageDeliveryStatus; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttMessageDeliveryCallback$MessageDeliveryStatus;

    { static Property }
    {class} property Success: JAWSIotMqttMessageDeliveryCallback_MessageDeliveryStatus read _GetSuccess;
    {class} property Fail: JAWSIotMqttMessageDeliveryCallback_MessageDeliveryStatus read _GetFail;
  end;

  [JavaSignature('com/amazonaws/mobileconnectors/iot/AWSIotMqttMessageDeliveryCallback$MessageDeliveryStatus')]
  JAWSIotMqttMessageDeliveryCallback_MessageDeliveryStatus = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{2C28EE85-3314-4017-8BF0-38D98CD98838}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJAWSIotMqttMessageDeliveryCallback_MessageDeliveryStatus = class(TJavaGenericImport<JAWSIotMqttMessageDeliveryCallback_MessageDeliveryStatusClass, JAWSIotMqttMessageDeliveryCallback_MessageDeliveryStatus>) end;

  JAWSIotMqttMessageDeliveryCallbackClass = interface(JObjectClass)
  ['{65BB762B-9088-411F-BAD8-935E755407AD}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/mobileconnectors/iot/AWSIotMqttMessageDeliveryCallback')]
  JAWSIotMqttMessageDeliveryCallback = interface(IJavaInstance)
  ['{72C48DE9-E429-4C07-890A-8CA1EFED57E6}']
    { Property Methods }

    { methods }
    procedure statusChanged(P1: JAWSIotMqttMessageDeliveryCallback_MessageDeliveryStatus; P2: JObject); cdecl; //(Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttMessageDeliveryCallback$MessageDeliveryStatus;Ljava/lang/Object;)V

    { Property }
  end;

  TJAWSIotMqttMessageDeliveryCallback = class(TJavaGenericImport<JAWSIotMqttMessageDeliveryCallbackClass, JAWSIotMqttMessageDeliveryCallback>) end;

  JAWSIotMqttNewMessageCallbackClass = interface(JObjectClass)
  ['{71127460-D008-4AC0-B068-2938C5FFA1BC}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/mobileconnectors/iot/AWSIotMqttNewMessageCallback')]
  JAWSIotMqttNewMessageCallback = interface(IJavaInstance)
  ['{A124C5DD-2DF2-4696-8798-1B44DB3A15CC}']
    { Property Methods }

    { methods }
    procedure onMessageArrived(P1: JString; P2: TJavaArray<Byte>); cdecl; //(Ljava/lang/String;[B)V

    { Property }
  end;

  TJAWSIotMqttNewMessageCallback = class(TJavaGenericImport<JAWSIotMqttNewMessageCallbackClass, JAWSIotMqttNewMessageCallback>) end;

  JAWSIotMqttQosClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{68BC1057-5DA8-43DD-ADA9-4451D1D7A3F1}']
    { static Property Methods }
    {class} function _GetQOS0: JAWSIotMqttQos; //Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttQos;
    {class} function _GetQOS1: JAWSIotMqttQos; //Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttQos;

    { static Methods }
    {class} function values: TJavaObjectArray<JAWSIotMqttQos>; cdecl; //()[Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttQos;
    {class} function valueOf(P1: JString): JAWSIotMqttQos; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttQos;

    { static Property }
    {class} property QOS0: JAWSIotMqttQos read _GetQOS0;
    {class} property QOS1: JAWSIotMqttQos read _GetQOS1;
  end;

  [JavaSignature('com/amazonaws/mobileconnectors/iot/AWSIotMqttQos')]
  JAWSIotMqttQos = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{43CB8163-AC52-4C5F-AADE-003C3DACE594}']
    { Property Methods }

    { methods }
    function asInt: Integer; cdecl; //()I

    { Property }
  end;

  TJAWSIotMqttQos = class(TJavaGenericImport<JAWSIotMqttQosClass, JAWSIotMqttQos>) end;

  JAWSIotMqttQueueMessageClass = interface(JObjectClass)
  ['{EE263A71-6C81-4574-8662-C9CBD233702D}']
    { static Property Methods }

    { static Methods }
    {class} function init(topic: JString; amessage: TJavaArray<Byte>; qos: JAWSIotMqttQos; userData: JPublishMessageUserData): JAWSIotMqttQueueMessage; cdecl; //(Ljava/lang/String;[BLcom/amazonaws/mobileconnectors/iot/AWSIotMqttQos;Lcom/amazonaws/mobileconnectors/iot/PublishMessageUserData;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/mobileconnectors/iot/AWSIotMqttQueueMessage')]
  JAWSIotMqttQueueMessage = interface(JObject)
  ['{5E679CBF-0E15-42CD-9533-A3EF3D7FD9DC}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJAWSIotMqttQueueMessage = class(TJavaGenericImport<JAWSIotMqttQueueMessageClass, JAWSIotMqttQueueMessage>) end;

  JAWSIotMqttTopicClass = interface(JObjectClass)
  ['{F0DD719A-6B21-4A5B-969E-91CEE0613389}']
    { static Property Methods }

    { static Methods }
    {class} function init(topic: JString; qos: JAWSIotMqttQos; callback: JAWSIotMqttNewMessageCallback): JAWSIotMqttTopic; cdecl; //(Ljava/lang/String;Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttQos;Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttNewMessageCallback;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/mobileconnectors/iot/AWSIotMqttTopic')]
  JAWSIotMqttTopic = interface(JObject)
  ['{5952C81F-DF44-451D-83B6-9168DA70C66D}']
    { Property Methods }

    { methods }
    function getTopic: JString; cdecl; //()Ljava/lang/String;
    procedure setTopic(topic: JString); cdecl; //(Ljava/lang/String;)V
    function getQos: JAWSIotMqttQos; cdecl; //()Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttQos;
    procedure setQos(qos: JAWSIotMqttQos); cdecl; //(Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttQos;)V
    function getCallback: JAWSIotMqttNewMessageCallback; cdecl; //()Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttNewMessageCallback;
    procedure setCallback(callback: JAWSIotMqttNewMessageCallback); cdecl; //(Lcom/amazonaws/mobileconnectors/iot/AWSIotMqttNewMessageCallback;)V

    { Property }
  end;

  TJAWSIotMqttTopic = class(TJavaGenericImport<JAWSIotMqttTopicClass, JAWSIotMqttTopic>) end;

 
  JAWSIotWebSocketUrlSignerClass = interface(JObjectClass)
  ['{6A1D17A0-0509-479F-AEE2-92617D2CBD1C}']
    { static Property Methods }

    { static Methods }
    {class} function init(serviceName: JString): JAWSIotWebSocketUrlSigner; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/mobileconnectors/iot/AWSIotWebSocketUrlSigner')]
  JAWSIotWebSocketUrlSigner = interface(JObject)
  ['{26D929E4-D559-4D8B-95D4-58C6B176165F}']
    { Property Methods }

    { methods }
    function getSignedUrl(endpoint: JString; awsCredentials: JAWSCredentials; currentTimeInMillis: Int64): JString; cdecl; //(Ljava/lang/String;Lcom/amazonaws/auth/AWSCredentials;J)Ljava/lang/String;

    { Property }
  end;

  TJAWSIotWebSocketUrlSigner = class(TJavaGenericImport<JAWSIotWebSocketUrlSignerClass, JAWSIotWebSocketUrlSigner>) end;

  JDerParserClass = interface(JObjectClass)
  ['{977B1685-EF73-4393-A8C2-ED1F36F317CD}']
    { static Property Methods }
    {class} function _GetUNIVERSAL: Integer; //I
    {class} function _GetAPPLICATION: Integer; //I
    {class} function _GetCONTEXT: Integer; //I
    {class} function _GetPRIVATE: Integer; //I
    {class} function _GetCONSTRUCTED: Integer; //I
    {class} function _GetANY: Integer; //I
    {class} function _GetBOOLEAN: Integer; //I
    {class} function _GetINTEGER: Integer; //I
    {class} function _GetBIT_STRING: Integer; //I
    {class} function _GetOCTET_STRING: Integer; //I
    {class} function _GetNULL: Integer; //I
    {class} function _GetOBJECT_IDENTIFIER: Integer; //I
    {class} function _GetREAL: Integer; //I
    {class} function _GetENUMERATED: Integer; //I
    {class} function _GetRELATIVE_OID: Integer; //I
    {class} function _GetSEQUENCE: Integer; //I
    {class} function _GetSET: Integer; //I
    {class} function _GetNUMERIC_STRING: Integer; //I
    {class} function _GetPRINTABLE_STRING: Integer; //I
    {class} function _GetT61_STRING: Integer; //I
    {class} function _GetVIDEOTEX_STRING: Integer; //I
    {class} function _GetIA5_STRING: Integer; //I
    {class} function _GetGRAPHIC_STRING: Integer; //I
    {class} function _GetISO646_STRING: Integer; //I
    {class} function _GetGENERAL_STRING: Integer; //I
    {class} function _GetUTF8_STRING: Integer; //I
    {class} function _GetUNIVERSAL_STRING: Integer; //I
    {class} function _GetBMP_STRING: Integer; //I
    {class} function _GetUTC_TIME: Integer; //I
    {class} function _GetGENERALIZED_TIME: Integer; //I
    {class} function _GetLOWER_7_BITS: Byte; //B
    {class} function _GetBYTE_MAX: Integer; //I
    {class} function _GetMAX_NUMBER_OF_BYTES: Integer; //I

    { static Methods }
    {class} function init(ain: JInputStream): JDerParser; cdecl; overload; //(Ljava/io/InputStream;)V
    {class} function init(bytes: TJavaArray<Byte>): JDerParser; cdecl; overload; //([B)V

    { static Property }
    {class} property UNIVERSAL: Integer read _GetUNIVERSAL;
    {class} property APPLICATION: Integer read _GetAPPLICATION;
    {class} property CONTEXT: Integer read _GetCONTEXT;
    {class} property &PRIVATE: Integer read _GetPRIVATE;
    {class} property CONSTRUCTED: Integer read _GetCONSTRUCTED;
    {class} property ANY: Integer read _GetANY;
    {class} property BOOLEAN: Integer read _GetBOOLEAN;
    {class} property INTEGER: Integer read _GetINTEGER;
    {class} property BIT_STRING: Integer read _GetBIT_STRING;
    {class} property OCTET_STRING: Integer read _GetOCTET_STRING;
    {class} property NULL: Integer read _GetNULL;
    {class} property OBJECT_IDENTIFIER: Integer read _GetOBJECT_IDENTIFIER;
    {class} property REAL: Integer read _GetREAL;
    {class} property ENUMERATED: Integer read _GetENUMERATED;
    {class} property RELATIVE_OID: Integer read _GetRELATIVE_OID;
    {class} property SEQUENCE: Integer read _GetSEQUENCE;
    {class} property &SET: Integer read _GetSET;
    {class} property NUMERIC_STRING: Integer read _GetNUMERIC_STRING;
    {class} property PRINTABLE_STRING: Integer read _GetPRINTABLE_STRING;
    {class} property T61_STRING: Integer read _GetT61_STRING;
    {class} property VIDEOTEX_STRING: Integer read _GetVIDEOTEX_STRING;
    {class} property IA5_STRING: Integer read _GetIA5_STRING;
    {class} property GRAPHIC_STRING: Integer read _GetGRAPHIC_STRING;
    {class} property ISO646_STRING: Integer read _GetISO646_STRING;
    {class} property GENERAL_STRING: Integer read _GetGENERAL_STRING;
    {class} property UTF8_STRING: Integer read _GetUTF8_STRING;
    {class} property UNIVERSAL_STRING: Integer read _GetUNIVERSAL_STRING;
    {class} property BMP_STRING: Integer read _GetBMP_STRING;
    {class} property UTC_TIME: Integer read _GetUTC_TIME;
    {class} property GENERALIZED_TIME: Integer read _GetGENERALIZED_TIME;
    {class} property LOWER_7_BITS: Byte read _GetLOWER_7_BITS;
    {class} property BYTE_MAX: Integer read _GetBYTE_MAX;
    {class} property MAX_NUMBER_OF_BYTES: Integer read _GetMAX_NUMBER_OF_BYTES;
  end;

  [JavaSignature('com/amazonaws/mobileconnectors/iot/DerParser')]
  JDerParser = interface(JObject)
  ['{123711C1-9947-426C-94A9-427C7D2A8246}']
    { Property Methods }

    { methods }
    function read: JAsn1Object; cdecl; //()Lcom/amazonaws/mobileconnectors/iot/Asn1Object;

    { Property }
  end;

  TJDerParser = class(TJavaGenericImport<JDerParserClass, JDerParser>) end;

  JMqttManagerConnectionStateClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{F6409E83-8CA6-4F9E-A0C4-9568D2109FE8}']
    { static Property Methods }
    {class} function _GetConnecting: JMqttManagerConnectionState; //Lcom/amazonaws/mobileconnectors/iot/MqttManagerConnectionState;
    {class} function _GetConnected: JMqttManagerConnectionState; //Lcom/amazonaws/mobileconnectors/iot/MqttManagerConnectionState;
    {class} function _GetDisconnected: JMqttManagerConnectionState; //Lcom/amazonaws/mobileconnectors/iot/MqttManagerConnectionState;
    {class} function _GetReconnecting: JMqttManagerConnectionState; //Lcom/amazonaws/mobileconnectors/iot/MqttManagerConnectionState;

    { static Methods }
    {class} function values: TJavaObjectArray<JMqttManagerConnectionState>; cdecl; //()[Lcom/amazonaws/mobileconnectors/iot/MqttManagerConnectionState;
    {class} function valueOf(P1: JString): JMqttManagerConnectionState; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/iot/MqttManagerConnectionState;

    { static Property }
    {class} property Connecting: JMqttManagerConnectionState read _GetConnecting;
    {class} property Connected: JMqttManagerConnectionState read _GetConnected;
    {class} property Disconnected: JMqttManagerConnectionState read _GetDisconnected;
    {class} property Reconnecting: JMqttManagerConnectionState read _GetReconnecting;
  end;

  [JavaSignature('com/amazonaws/mobileconnectors/iot/MqttManagerConnectionState')]
  JMqttManagerConnectionState = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{1D670FB0-DBD0-42ED-84C0-926228C5380E}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJMqttManagerConnectionState = class(TJavaGenericImport<JMqttManagerConnectionStateClass, JMqttManagerConnectionState>) end;


  JPEM_1Class = interface(JObjectClass)
  ['{DF093024-D6DB-4A1B-99FA-DA5F5B9C589D}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/mobileconnectors/iot/PEM$1')]
  JPEM_1 = interface(JObject)
  ['{6F25CD96-B64E-4CF1-9D2F-037F3CBDF7B3}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJPEM_1 = class(TJavaGenericImport<JPEM_1Class, JPEM_1>) end;

  JPEMClass = interface(JObjectClass)
  ['{04C8FDED-8421-4A5F-853B-C8A0E2C9F17B}']
    { static Property Methods }

    { static Methods }
    {class} function readPrivateKey(objects: JInputStream): JPrivateKey; cdecl; //(Ljava/io/InputStream;)Ljava/security/PrivateKey;
    {class} function readPEMObjects(pemContents: JInputStream): JList; cdecl; //(Ljava/io/InputStream;)Ljava/util/List;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/mobileconnectors/iot/PEM')]
  JPEM = interface(JObject)
  ['{0B122E37-CAFC-4B88-8E0C-62D5D231E11B}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJPEM = class(TJavaGenericImport<JPEMClass, JPEM>) end;

  JPEMObjectClass = interface(JObjectClass)
  ['{5D762D88-1847-4A6E-A67C-49CE08DE84DB}']
    { static Property Methods }

    { static Methods }
    {class} function init(beginMarker: JString; derBytes: TJavaArray<Byte>): JPEMObject; cdecl; //(Ljava/lang/String;[B)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/mobileconnectors/iot/PEMObject')]
  JPEMObject = interface(JObject)
  ['{2FCE027A-A548-46DA-8C57-8F0699B6DABA}']
    { Property Methods }

    { methods }
    function getBeginMarker: JString; cdecl; //()Ljava/lang/String;
    function getDerBytes: TJavaArray<Byte>; cdecl; //()[B
    function getPEMObjectType: JPEMObjectType; cdecl; //()Lcom/amazonaws/mobileconnectors/iot/PEMObjectType;

    { Property }
  end;

  TJPEMObject = class(TJavaGenericImport<JPEMObjectClass, JPEMObject>) end;

  JPEMObjectTypeClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{F92DF1F1-6366-4DE3-81AE-B81BBB44A62C}']
    { static Property Methods }
    {class} function _GetPRIVATE_KEY_PKCS1: JPEMObjectType; //Lcom/amazonaws/mobileconnectors/iot/PEMObjectType;
    {class} function _GetPRIVATE_KEY_PKCS8: JPEMObjectType; //Lcom/amazonaws/mobileconnectors/iot/PEMObjectType;
    {class} function _GetPUBLIC_KEY_X509: JPEMObjectType; //Lcom/amazonaws/mobileconnectors/iot/PEMObjectType;
    {class} function _GetCERTIFICATE_X509: JPEMObjectType; //Lcom/amazonaws/mobileconnectors/iot/PEMObjectType;

    { static Methods }
    {class} function values: TJavaObjectArray<JPEMObjectType>; cdecl; //()[Lcom/amazonaws/mobileconnectors/iot/PEMObjectType;
    {class} function valueOf(P1: JString): JPEMObjectType; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/iot/PEMObjectType;
    {class} function fromBeginMarker(beginMarker: JString): JPEMObjectType; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/iot/PEMObjectType;

    { static Property }
    {class} property PRIVATE_KEY_PKCS1: JPEMObjectType read _GetPRIVATE_KEY_PKCS1;
    {class} property PRIVATE_KEY_PKCS8: JPEMObjectType read _GetPRIVATE_KEY_PKCS8;
    {class} property PUBLIC_KEY_X509: JPEMObjectType read _GetPUBLIC_KEY_X509;
    {class} property CERTIFICATE_X509: JPEMObjectType read _GetCERTIFICATE_X509;
  end;

  [JavaSignature('com/amazonaws/mobileconnectors/iot/PEMObjectType')]
  JPEMObjectType = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{52A4C24C-E48F-42AE-BA2D-527C9F92BE97}']
    { Property Methods }

    { methods }
    function getBeginMarker: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJPEMObjectType = class(TJavaGenericImport<JPEMObjectTypeClass, JPEMObjectType>) end;

  JPrivateKeyReaderClass = interface(JObjectClass)
  ['{7B6B47A1-61A5-40F5-81FA-05A3196C9C13}']
    { static Property Methods }

    { static Methods }
    {class} function init(keyPemString: JString): JPrivateKeyReader; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/mobileconnectors/iot/PrivateKeyReader')]
  JPrivateKeyReader = interface(JObject)
  ['{EF00F346-AF0D-4306-BCA2-F0776F6FEC14}']
    { Property Methods }

    { methods }
    function getPrivateKey: JPrivateKey; cdecl; //()Ljava/security/PrivateKey;

    { Property }
  end;

  TJPrivateKeyReader = class(TJavaGenericImport<JPrivateKeyReaderClass, JPrivateKeyReader>) end;

  JPublishMessageUserDataClass = interface(JObjectClass)
  ['{8804516E-9586-47F2-8269-0BD0EA569B5F}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/mobileconnectors/iot/PublishMessageUserData')]
  JPublishMessageUserData = interface(JObject)
  ['{93730EED-BAD5-4E97-84FF-87473CEC5ABC}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJPublishMessageUserData = class(TJavaGenericImport<JPublishMessageUserDataClass, JPublishMessageUserData>) end;

  JRSAClass = interface(JObjectClass)
  ['{2F73F743-9F71-4207-A3A3-5FD03866F6E4}']
    { static Property Methods }

    { static Methods }
    {class} function privateKeyFromPKCS1(privateKeySpec: TJavaArray<Byte>): JPrivateKey; cdecl; //([B)Ljava/security/PrivateKey;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/mobileconnectors/iot/RSA')]
  JRSA = interface(JObject)
  ['{5CD5A244-D7D1-422F-AC0A-15C4F9EC4524}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJRSA = class(TJavaGenericImport<JRSAClass, JRSA>) end;

  JAWSIotClass = interface(JObjectClass)
  ['{0273D4FF-0892-4E3C-9CF8-0F79C2151761}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/AWSIot')]
  JAWSIot = interface(IJavaInstance)
  ['{051335EF-0E87-4091-8082-BF838222C896}']
    { Property Methods }

    { methods }
    procedure setEndpoint(P1: JString); cdecl; //(Ljava/lang/String;)V
    procedure setRegion(P1: JRegion); cdecl; //(Lcom/amazonaws/regions/Region;)V
    procedure acceptCertificateTransfer(P1: JAcceptCertificateTransferRequest); cdecl; //(Lcom/amazonaws/services/iot/model/AcceptCertificateTransferRequest;)V
    procedure attachPrincipalPolicy(P1: JAttachPrincipalPolicyRequest); cdecl; //(Lcom/amazonaws/services/iot/model/AttachPrincipalPolicyRequest;)V
    function attachThingPrincipal(P1: JAttachThingPrincipalRequest): JAttachThingPrincipalResult; cdecl; //(Lcom/amazonaws/services/iot/model/AttachThingPrincipalRequest;)Lcom/amazonaws/services/iot/model/AttachThingPrincipalResult;
    procedure cancelCertificateTransfer(P1: JCancelCertificateTransferRequest); cdecl; //(Lcom/amazonaws/services/iot/model/CancelCertificateTransferRequest;)V
    function createCertificateFromCsr(P1: JCreateCertificateFromCsrRequest): JCreateCertificateFromCsrResult; cdecl; //(Lcom/amazonaws/services/iot/model/CreateCertificateFromCsrRequest;)Lcom/amazonaws/services/iot/model/CreateCertificateFromCsrResult;
    function createKeysAndCertificate(P1: JCreateKeysAndCertificateRequest): JCreateKeysAndCertificateResult; cdecl; //(Lcom/amazonaws/services/iot/model/CreateKeysAndCertificateRequest;)Lcom/amazonaws/services/iot/model/CreateKeysAndCertificateResult;
    function createPolicy(P1: JCreatePolicyRequest): JCreatePolicyResult; cdecl; //(Lcom/amazonaws/services/iot/model/CreatePolicyRequest;)Lcom/amazonaws/services/iot/model/CreatePolicyResult;
    function createPolicyVersion(P1: JCreatePolicyVersionRequest): JCreatePolicyVersionResult; cdecl; //(Lcom/amazonaws/services/iot/model/CreatePolicyVersionRequest;)Lcom/amazonaws/services/iot/model/CreatePolicyVersionResult;
    function createThing(P1: JCreateThingRequest): JCreateThingResult; cdecl; //(Lcom/amazonaws/services/iot/model/CreateThingRequest;)Lcom/amazonaws/services/iot/model/CreateThingResult;
    function createThingType(P1: JCreateThingTypeRequest): JCreateThingTypeResult; cdecl; //(Lcom/amazonaws/services/iot/model/CreateThingTypeRequest;)Lcom/amazonaws/services/iot/model/CreateThingTypeResult;
    procedure createTopicRule(P1: JCreateTopicRuleRequest); cdecl; //(Lcom/amazonaws/services/iot/model/CreateTopicRuleRequest;)V
    function deleteCACertificate(P1: JDeleteCACertificateRequest): JDeleteCACertificateResult; cdecl; //(Lcom/amazonaws/services/iot/model/DeleteCACertificateRequest;)Lcom/amazonaws/services/iot/model/DeleteCACertificateResult;
    procedure deleteCertificate(P1: JDeleteCertificateRequest); cdecl; //(Lcom/amazonaws/services/iot/model/DeleteCertificateRequest;)V
    procedure deletePolicy(P1: JDeletePolicyRequest); cdecl; //(Lcom/amazonaws/services/iot/model/DeletePolicyRequest;)V
    procedure deletePolicyVersion(P1: JDeletePolicyVersionRequest); cdecl; //(Lcom/amazonaws/services/iot/model/DeletePolicyVersionRequest;)V
    function deleteRegistrationCode(P1: JDeleteRegistrationCodeRequest): JDeleteRegistrationCodeResult; cdecl; //(Lcom/amazonaws/services/iot/model/DeleteRegistrationCodeRequest;)Lcom/amazonaws/services/iot/model/DeleteRegistrationCodeResult;
    function deleteThing(P1: JDeleteThingRequest): JDeleteThingResult; cdecl; //(Lcom/amazonaws/services/iot/model/DeleteThingRequest;)Lcom/amazonaws/services/iot/model/DeleteThingResult;
    function deleteThingType(P1: JDeleteThingTypeRequest): JDeleteThingTypeResult; cdecl; //(Lcom/amazonaws/services/iot/model/DeleteThingTypeRequest;)Lcom/amazonaws/services/iot/model/DeleteThingTypeResult;
    procedure deleteTopicRule(P1: JDeleteTopicRuleRequest); cdecl; //(Lcom/amazonaws/services/iot/model/DeleteTopicRuleRequest;)V
    function deprecateThingType(P1: JDeprecateThingTypeRequest): JDeprecateThingTypeResult; cdecl; //(Lcom/amazonaws/services/iot/model/DeprecateThingTypeRequest;)Lcom/amazonaws/services/iot/model/DeprecateThingTypeResult;
    function describeCACertificate(P1: JDescribeCACertificateRequest): JDescribeCACertificateResult; cdecl; //(Lcom/amazonaws/services/iot/model/DescribeCACertificateRequest;)Lcom/amazonaws/services/iot/model/DescribeCACertificateResult;
    function describeCertificate(P1: JDescribeCertificateRequest): JDescribeCertificateResult; cdecl; //(Lcom/amazonaws/services/iot/model/DescribeCertificateRequest;)Lcom/amazonaws/services/iot/model/DescribeCertificateResult;
    function describeEndpoint(P1: JDescribeEndpointRequest): JDescribeEndpointResult; cdecl; //(Lcom/amazonaws/services/iot/model/DescribeEndpointRequest;)Lcom/amazonaws/services/iot/model/DescribeEndpointResult;
    function describeThing(P1: JDescribeThingRequest): JDescribeThingResult; cdecl; //(Lcom/amazonaws/services/iot/model/DescribeThingRequest;)Lcom/amazonaws/services/iot/model/DescribeThingResult;
    function describeThingType(P1: JDescribeThingTypeRequest): JDescribeThingTypeResult; cdecl; //(Lcom/amazonaws/services/iot/model/DescribeThingTypeRequest;)Lcom/amazonaws/services/iot/model/DescribeThingTypeResult;
    procedure detachPrincipalPolicy(P1: JDetachPrincipalPolicyRequest); cdecl; //(Lcom/amazonaws/services/iot/model/DetachPrincipalPolicyRequest;)V
    function detachThingPrincipal(P1: JDetachThingPrincipalRequest): JDetachThingPrincipalResult; cdecl; //(Lcom/amazonaws/services/iot/model/DetachThingPrincipalRequest;)Lcom/amazonaws/services/iot/model/DetachThingPrincipalResult;
    procedure disableTopicRule(P1: JDisableTopicRuleRequest); cdecl; //(Lcom/amazonaws/services/iot/model/DisableTopicRuleRequest;)V
    procedure enableTopicRule(P1: JEnableTopicRuleRequest); cdecl; //(Lcom/amazonaws/services/iot/model/EnableTopicRuleRequest;)V
    function getLoggingOptions(P1: JGetLoggingOptionsRequest): JGetLoggingOptionsResult; cdecl; //(Lcom/amazonaws/services/iot/model/GetLoggingOptionsRequest;)Lcom/amazonaws/services/iot/model/GetLoggingOptionsResult;
    function getPolicy(P1: JGetPolicyRequest): JGetPolicyResult; cdecl; //(Lcom/amazonaws/services/iot/model/GetPolicyRequest;)Lcom/amazonaws/services/iot/model/GetPolicyResult;
    function getPolicyVersion(P1: JGetPolicyVersionRequest): JGetPolicyVersionResult; cdecl; //(Lcom/amazonaws/services/iot/model/GetPolicyVersionRequest;)Lcom/amazonaws/services/iot/model/GetPolicyVersionResult;
    function getRegistrationCode(P1: JGetRegistrationCodeRequest): JGetRegistrationCodeResult; cdecl; //(Lcom/amazonaws/services/iot/model/GetRegistrationCodeRequest;)Lcom/amazonaws/services/iot/model/GetRegistrationCodeResult;
    function getTopicRule(P1: JGetTopicRuleRequest): JGetTopicRuleResult; cdecl; //(Lcom/amazonaws/services/iot/model/GetTopicRuleRequest;)Lcom/amazonaws/services/iot/model/GetTopicRuleResult;
    function listCACertificates(P1: JListCACertificatesRequest): JListCACertificatesResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListCACertificatesRequest;)Lcom/amazonaws/services/iot/model/ListCACertificatesResult;
    function listCertificates(P1: JListCertificatesRequest): JListCertificatesResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListCertificatesRequest;)Lcom/amazonaws/services/iot/model/ListCertificatesResult;
    function listCertificatesByCA(P1: JListCertificatesByCARequest): JListCertificatesByCAResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListCertificatesByCARequest;)Lcom/amazonaws/services/iot/model/ListCertificatesByCAResult;
    function listOutgoingCertificates(P1: JListOutgoingCertificatesRequest): JListOutgoingCertificatesResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListOutgoingCertificatesRequest;)Lcom/amazonaws/services/iot/model/ListOutgoingCertificatesResult;
    function listPolicies(P1: JListPoliciesRequest): JListPoliciesResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListPoliciesRequest;)Lcom/amazonaws/services/iot/model/ListPoliciesResult;
    function listPolicyPrincipals(P1: JListPolicyPrincipalsRequest): JListPolicyPrincipalsResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListPolicyPrincipalsRequest;)Lcom/amazonaws/services/iot/model/ListPolicyPrincipalsResult;
    function listPolicyVersions(P1: JListPolicyVersionsRequest): JListPolicyVersionsResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListPolicyVersionsRequest;)Lcom/amazonaws/services/iot/model/ListPolicyVersionsResult;
    function listPrincipalPolicies(P1: JListPrincipalPoliciesRequest): JListPrincipalPoliciesResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListPrincipalPoliciesRequest;)Lcom/amazonaws/services/iot/model/ListPrincipalPoliciesResult;
    function listPrincipalThings(P1: JListPrincipalThingsRequest): JListPrincipalThingsResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListPrincipalThingsRequest;)Lcom/amazonaws/services/iot/model/ListPrincipalThingsResult;
    function listThingPrincipals(P1: JListThingPrincipalsRequest): JListThingPrincipalsResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListThingPrincipalsRequest;)Lcom/amazonaws/services/iot/model/ListThingPrincipalsResult;
    function listThingTypes(P1: JListThingTypesRequest): JListThingTypesResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListThingTypesRequest;)Lcom/amazonaws/services/iot/model/ListThingTypesResult;
    function listThings(P1: JListThingsRequest): JListThingsResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListThingsRequest;)Lcom/amazonaws/services/iot/model/ListThingsResult;
    function listTopicRules(P1: JListTopicRulesRequest): JListTopicRulesResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListTopicRulesRequest;)Lcom/amazonaws/services/iot/model/ListTopicRulesResult;
    function registerCACertificate(P1: JRegisterCACertificateRequest): JRegisterCACertificateResult; cdecl; //(Lcom/amazonaws/services/iot/model/RegisterCACertificateRequest;)Lcom/amazonaws/services/iot/model/RegisterCACertificateResult;
    function registerCertificate(P1: JRegisterCertificateRequest): JRegisterCertificateResult; cdecl; //(Lcom/amazonaws/services/iot/model/RegisterCertificateRequest;)Lcom/amazonaws/services/iot/model/RegisterCertificateResult;
    procedure rejectCertificateTransfer(P1: JRejectCertificateTransferRequest); cdecl; //(Lcom/amazonaws/services/iot/model/RejectCertificateTransferRequest;)V
    procedure replaceTopicRule(P1: JReplaceTopicRuleRequest); cdecl; //(Lcom/amazonaws/services/iot/model/ReplaceTopicRuleRequest;)V
    procedure setDefaultPolicyVersion(P1: JSetDefaultPolicyVersionRequest); cdecl; //(Lcom/amazonaws/services/iot/model/SetDefaultPolicyVersionRequest;)V
    procedure setLoggingOptions(P1: JSetLoggingOptionsRequest); cdecl; //(Lcom/amazonaws/services/iot/model/SetLoggingOptionsRequest;)V
    function transferCertificate(P1: JTransferCertificateRequest): JTransferCertificateResult; cdecl; //(Lcom/amazonaws/services/iot/model/TransferCertificateRequest;)Lcom/amazonaws/services/iot/model/TransferCertificateResult;
    procedure updateCACertificate(P1: JUpdateCACertificateRequest); cdecl; //(Lcom/amazonaws/services/iot/model/UpdateCACertificateRequest;)V
    procedure updateCertificate(P1: JUpdateCertificateRequest); cdecl; //(Lcom/amazonaws/services/iot/model/UpdateCertificateRequest;)V
    function updateThing(P1: JUpdateThingRequest): JUpdateThingResult; cdecl; //(Lcom/amazonaws/services/iot/model/UpdateThingRequest;)Lcom/amazonaws/services/iot/model/UpdateThingResult;
    procedure shutdown; cdecl; //()V
    function getCachedResponseMetadata(P1: JAmazonWebServiceRequest): JResponseMetadata; cdecl; //(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    { Property }
  end;

  TJAWSIot = class(TJavaGenericImport<JAWSIotClass, JAWSIot>) end;

  JAWSIotClientClass = interface(JAmazonWebServiceClientClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceClient
  ['{CA55544A-C353-47B1-8054-72649F978047}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAWSIotClient; cdecl; overload; //Deprecated //()V
    {class} function init(clientConfiguration: JClientConfiguration): JAWSIotClient; cdecl; overload; //Deprecated //(Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(awsCredentials: JAWSCredentials): JAWSIotClient; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentials;)V
    {class} function init(awsCredentials: JAWSCredentials; clientConfiguration: JClientConfiguration): JAWSIotClient; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(awsCredentialsProvider: JAWSCredentialsProvider): JAWSIotClient; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    {class} function init(awsCredentialsProvider: JAWSCredentialsProvider; clientConfiguration: JClientConfiguration): JAWSIotClient; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(awsCredentialsProvider: JAWSCredentialsProvider; clientConfiguration: JClientConfiguration; requestMetricCollector: JRequestMetricCollector): JAWSIotClient; cdecl; overload; //Deprecated //(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    {class} function init(awsCredentialsProvider: JAWSCredentialsProvider; clientConfiguration: JClientConfiguration; httpClient: JHttpClient): JAWSIotClient; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/AWSIotClient')]
  JAWSIotClient = interface(JAmazonWebServiceClient) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceClient
  ['{35625CE2-DB50-42C2-9BB6-396EB4C02691}']
    { Property Methods }

    { methods }
    procedure acceptCertificateTransfer(acceptCertificateTransferRequest: JAcceptCertificateTransferRequest); cdecl; //(Lcom/amazonaws/services/iot/model/AcceptCertificateTransferRequest;)V
    procedure attachPrincipalPolicy(attachPrincipalPolicyRequest: JAttachPrincipalPolicyRequest); cdecl; //(Lcom/amazonaws/services/iot/model/AttachPrincipalPolicyRequest;)V
    function attachThingPrincipal(attachThingPrincipalRequest: JAttachThingPrincipalRequest): JAttachThingPrincipalResult; cdecl; //(Lcom/amazonaws/services/iot/model/AttachThingPrincipalRequest;)Lcom/amazonaws/services/iot/model/AttachThingPrincipalResult;
    procedure cancelCertificateTransfer(cancelCertificateTransferRequest: JCancelCertificateTransferRequest); cdecl; //(Lcom/amazonaws/services/iot/model/CancelCertificateTransferRequest;)V
    function createCertificateFromCsr(createCertificateFromCsrRequest: JCreateCertificateFromCsrRequest): JCreateCertificateFromCsrResult; cdecl; //(Lcom/amazonaws/services/iot/model/CreateCertificateFromCsrRequest;)Lcom/amazonaws/services/iot/model/CreateCertificateFromCsrResult;
    function createKeysAndCertificate(createKeysAndCertificateRequest: JCreateKeysAndCertificateRequest): JCreateKeysAndCertificateResult; cdecl; //(Lcom/amazonaws/services/iot/model/CreateKeysAndCertificateRequest;)Lcom/amazonaws/services/iot/model/CreateKeysAndCertificateResult;
    function createPolicy(createPolicyRequest: JCreatePolicyRequest): JCreatePolicyResult; cdecl; //(Lcom/amazonaws/services/iot/model/CreatePolicyRequest;)Lcom/amazonaws/services/iot/model/CreatePolicyResult;
    function createPolicyVersion(createPolicyVersionRequest: JCreatePolicyVersionRequest): JCreatePolicyVersionResult; cdecl; //(Lcom/amazonaws/services/iot/model/CreatePolicyVersionRequest;)Lcom/amazonaws/services/iot/model/CreatePolicyVersionResult;
    function createThing(createThingRequest: JCreateThingRequest): JCreateThingResult; cdecl; //(Lcom/amazonaws/services/iot/model/CreateThingRequest;)Lcom/amazonaws/services/iot/model/CreateThingResult;
    function createThingType(createThingTypeRequest: JCreateThingTypeRequest): JCreateThingTypeResult; cdecl; //(Lcom/amazonaws/services/iot/model/CreateThingTypeRequest;)Lcom/amazonaws/services/iot/model/CreateThingTypeResult;
    procedure createTopicRule(createTopicRuleRequest: JCreateTopicRuleRequest); cdecl; //(Lcom/amazonaws/services/iot/model/CreateTopicRuleRequest;)V
    function deleteCACertificate(deleteCACertificateRequest: JDeleteCACertificateRequest): JDeleteCACertificateResult; cdecl; //(Lcom/amazonaws/services/iot/model/DeleteCACertificateRequest;)Lcom/amazonaws/services/iot/model/DeleteCACertificateResult;
    procedure deleteCertificate(deleteCertificateRequest: JDeleteCertificateRequest); cdecl; //(Lcom/amazonaws/services/iot/model/DeleteCertificateRequest;)V
    procedure deletePolicy(deletePolicyRequest: JDeletePolicyRequest); cdecl; //(Lcom/amazonaws/services/iot/model/DeletePolicyRequest;)V
    procedure deletePolicyVersion(deletePolicyVersionRequest: JDeletePolicyVersionRequest); cdecl; //(Lcom/amazonaws/services/iot/model/DeletePolicyVersionRequest;)V
    function deleteRegistrationCode(deleteRegistrationCodeRequest: JDeleteRegistrationCodeRequest): JDeleteRegistrationCodeResult; cdecl; //(Lcom/amazonaws/services/iot/model/DeleteRegistrationCodeRequest;)Lcom/amazonaws/services/iot/model/DeleteRegistrationCodeResult;
    function deleteThing(deleteThingRequest: JDeleteThingRequest): JDeleteThingResult; cdecl; //(Lcom/amazonaws/services/iot/model/DeleteThingRequest;)Lcom/amazonaws/services/iot/model/DeleteThingResult;
    function deleteThingType(deleteThingTypeRequest: JDeleteThingTypeRequest): JDeleteThingTypeResult; cdecl; //(Lcom/amazonaws/services/iot/model/DeleteThingTypeRequest;)Lcom/amazonaws/services/iot/model/DeleteThingTypeResult;
    procedure deleteTopicRule(deleteTopicRuleRequest: JDeleteTopicRuleRequest); cdecl; //(Lcom/amazonaws/services/iot/model/DeleteTopicRuleRequest;)V
    function deprecateThingType(deprecateThingTypeRequest: JDeprecateThingTypeRequest): JDeprecateThingTypeResult; cdecl; //(Lcom/amazonaws/services/iot/model/DeprecateThingTypeRequest;)Lcom/amazonaws/services/iot/model/DeprecateThingTypeResult;
    function describeCACertificate(describeCACertificateRequest: JDescribeCACertificateRequest): JDescribeCACertificateResult; cdecl; //(Lcom/amazonaws/services/iot/model/DescribeCACertificateRequest;)Lcom/amazonaws/services/iot/model/DescribeCACertificateResult;
    function describeCertificate(describeCertificateRequest: JDescribeCertificateRequest): JDescribeCertificateResult; cdecl; //(Lcom/amazonaws/services/iot/model/DescribeCertificateRequest;)Lcom/amazonaws/services/iot/model/DescribeCertificateResult;
    function describeEndpoint(describeEndpointRequest: JDescribeEndpointRequest): JDescribeEndpointResult; cdecl; //(Lcom/amazonaws/services/iot/model/DescribeEndpointRequest;)Lcom/amazonaws/services/iot/model/DescribeEndpointResult;
    function describeThing(describeThingRequest: JDescribeThingRequest): JDescribeThingResult; cdecl; //(Lcom/amazonaws/services/iot/model/DescribeThingRequest;)Lcom/amazonaws/services/iot/model/DescribeThingResult;
    function describeThingType(describeThingTypeRequest: JDescribeThingTypeRequest): JDescribeThingTypeResult; cdecl; //(Lcom/amazonaws/services/iot/model/DescribeThingTypeRequest;)Lcom/amazonaws/services/iot/model/DescribeThingTypeResult;
    procedure detachPrincipalPolicy(detachPrincipalPolicyRequest: JDetachPrincipalPolicyRequest); cdecl; //(Lcom/amazonaws/services/iot/model/DetachPrincipalPolicyRequest;)V
    function detachThingPrincipal(detachThingPrincipalRequest: JDetachThingPrincipalRequest): JDetachThingPrincipalResult; cdecl; //(Lcom/amazonaws/services/iot/model/DetachThingPrincipalRequest;)Lcom/amazonaws/services/iot/model/DetachThingPrincipalResult;
    procedure disableTopicRule(disableTopicRuleRequest: JDisableTopicRuleRequest); cdecl; //(Lcom/amazonaws/services/iot/model/DisableTopicRuleRequest;)V
    procedure enableTopicRule(enableTopicRuleRequest: JEnableTopicRuleRequest); cdecl; //(Lcom/amazonaws/services/iot/model/EnableTopicRuleRequest;)V
    function getLoggingOptions(getLoggingOptionsRequest: JGetLoggingOptionsRequest): JGetLoggingOptionsResult; cdecl; //(Lcom/amazonaws/services/iot/model/GetLoggingOptionsRequest;)Lcom/amazonaws/services/iot/model/GetLoggingOptionsResult;
    function getPolicy(getPolicyRequest: JGetPolicyRequest): JGetPolicyResult; cdecl; //(Lcom/amazonaws/services/iot/model/GetPolicyRequest;)Lcom/amazonaws/services/iot/model/GetPolicyResult;
    function getPolicyVersion(getPolicyVersionRequest: JGetPolicyVersionRequest): JGetPolicyVersionResult; cdecl; //(Lcom/amazonaws/services/iot/model/GetPolicyVersionRequest;)Lcom/amazonaws/services/iot/model/GetPolicyVersionResult;
    function getRegistrationCode(getRegistrationCodeRequest: JGetRegistrationCodeRequest): JGetRegistrationCodeResult; cdecl; //(Lcom/amazonaws/services/iot/model/GetRegistrationCodeRequest;)Lcom/amazonaws/services/iot/model/GetRegistrationCodeResult;
    function getTopicRule(getTopicRuleRequest: JGetTopicRuleRequest): JGetTopicRuleResult; cdecl; //(Lcom/amazonaws/services/iot/model/GetTopicRuleRequest;)Lcom/amazonaws/services/iot/model/GetTopicRuleResult;
    function listCACertificates(listCACertificatesRequest: JListCACertificatesRequest): JListCACertificatesResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListCACertificatesRequest;)Lcom/amazonaws/services/iot/model/ListCACertificatesResult;
    function listCertificates(listCertificatesRequest: JListCertificatesRequest): JListCertificatesResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListCertificatesRequest;)Lcom/amazonaws/services/iot/model/ListCertificatesResult;
    function listCertificatesByCA(listCertificatesByCARequest: JListCertificatesByCARequest): JListCertificatesByCAResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListCertificatesByCARequest;)Lcom/amazonaws/services/iot/model/ListCertificatesByCAResult;
    function listOutgoingCertificates(listOutgoingCertificatesRequest: JListOutgoingCertificatesRequest): JListOutgoingCertificatesResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListOutgoingCertificatesRequest;)Lcom/amazonaws/services/iot/model/ListOutgoingCertificatesResult;
    function listPolicies(listPoliciesRequest: JListPoliciesRequest): JListPoliciesResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListPoliciesRequest;)Lcom/amazonaws/services/iot/model/ListPoliciesResult;
    function listPolicyPrincipals(listPolicyPrincipalsRequest: JListPolicyPrincipalsRequest): JListPolicyPrincipalsResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListPolicyPrincipalsRequest;)Lcom/amazonaws/services/iot/model/ListPolicyPrincipalsResult;
    function listPolicyVersions(listPolicyVersionsRequest: JListPolicyVersionsRequest): JListPolicyVersionsResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListPolicyVersionsRequest;)Lcom/amazonaws/services/iot/model/ListPolicyVersionsResult;
    function listPrincipalPolicies(listPrincipalPoliciesRequest: JListPrincipalPoliciesRequest): JListPrincipalPoliciesResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListPrincipalPoliciesRequest;)Lcom/amazonaws/services/iot/model/ListPrincipalPoliciesResult;
    function listPrincipalThings(listPrincipalThingsRequest: JListPrincipalThingsRequest): JListPrincipalThingsResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListPrincipalThingsRequest;)Lcom/amazonaws/services/iot/model/ListPrincipalThingsResult;
    function listThingPrincipals(listThingPrincipalsRequest: JListThingPrincipalsRequest): JListThingPrincipalsResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListThingPrincipalsRequest;)Lcom/amazonaws/services/iot/model/ListThingPrincipalsResult;
    function listThingTypes(listThingTypesRequest: JListThingTypesRequest): JListThingTypesResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListThingTypesRequest;)Lcom/amazonaws/services/iot/model/ListThingTypesResult;
    function listThings(listThingsRequest: JListThingsRequest): JListThingsResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListThingsRequest;)Lcom/amazonaws/services/iot/model/ListThingsResult;
    function listTopicRules(listTopicRulesRequest: JListTopicRulesRequest): JListTopicRulesResult; cdecl; //(Lcom/amazonaws/services/iot/model/ListTopicRulesRequest;)Lcom/amazonaws/services/iot/model/ListTopicRulesResult;
    function registerCACertificate(registerCACertificateRequest: JRegisterCACertificateRequest): JRegisterCACertificateResult; cdecl; //(Lcom/amazonaws/services/iot/model/RegisterCACertificateRequest;)Lcom/amazonaws/services/iot/model/RegisterCACertificateResult;
    function registerCertificate(registerCertificateRequest: JRegisterCertificateRequest): JRegisterCertificateResult; cdecl; //(Lcom/amazonaws/services/iot/model/RegisterCertificateRequest;)Lcom/amazonaws/services/iot/model/RegisterCertificateResult;
    procedure rejectCertificateTransfer(rejectCertificateTransferRequest: JRejectCertificateTransferRequest); cdecl; //(Lcom/amazonaws/services/iot/model/RejectCertificateTransferRequest;)V
    procedure replaceTopicRule(replaceTopicRuleRequest: JReplaceTopicRuleRequest); cdecl; //(Lcom/amazonaws/services/iot/model/ReplaceTopicRuleRequest;)V
    procedure setDefaultPolicyVersion(setDefaultPolicyVersionRequest: JSetDefaultPolicyVersionRequest); cdecl; //(Lcom/amazonaws/services/iot/model/SetDefaultPolicyVersionRequest;)V
    procedure setLoggingOptions(setLoggingOptionsRequest: JSetLoggingOptionsRequest); cdecl; //(Lcom/amazonaws/services/iot/model/SetLoggingOptionsRequest;)V
    function transferCertificate(transferCertificateRequest: JTransferCertificateRequest): JTransferCertificateResult; cdecl; //(Lcom/amazonaws/services/iot/model/TransferCertificateRequest;)Lcom/amazonaws/services/iot/model/TransferCertificateResult;
    procedure updateCACertificate(updateCACertificateRequest: JUpdateCACertificateRequest); cdecl; //(Lcom/amazonaws/services/iot/model/UpdateCACertificateRequest;)V
    procedure updateCertificate(updateCertificateRequest: JUpdateCertificateRequest); cdecl; //(Lcom/amazonaws/services/iot/model/UpdateCertificateRequest;)V
    function updateThing(updateThingRequest: JUpdateThingRequest): JUpdateThingResult; cdecl; //(Lcom/amazonaws/services/iot/model/UpdateThingRequest;)Lcom/amazonaws/services/iot/model/UpdateThingResult;
    function getCachedResponseMetadata(request: JAmazonWebServiceRequest): JResponseMetadata; cdecl; //Deprecated //(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    { Property }
  end;

  TJAWSIotClient = class(TJavaGenericImport<JAWSIotClientClass, JAWSIotClient>) end;

  JAcceptCertificateTransferRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{6AA4AA34-0908-421A-997E-167E6DBD275E}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAcceptCertificateTransferRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/AcceptCertificateTransferRequest')]
  JAcceptCertificateTransferRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{5B89388B-5C5A-4A6D-B201-1D2A0BCA33A4}']
    { Property Methods }

    { methods }
    function getCertificateId: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateId(certificateId: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateId(certificateId: JString): JAcceptCertificateTransferRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/AcceptCertificateTransferRequest;
    function isSetAsActive: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getSetAsActive: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setSetAsActive(setAsActive: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withSetAsActive(setAsActive: JBoolean): JAcceptCertificateTransferRequest; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/AcceptCertificateTransferRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJAcceptCertificateTransferRequest = class(TJavaGenericImport<JAcceptCertificateTransferRequestClass, JAcceptCertificateTransferRequest>) end;

  JActionClass = interface(JObjectClass)
  ['{622890F4-3D8F-4412-8BD3-29A1F692C24A}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAction; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/Action')]
  JAction = interface(JObject)
  ['{018F5A59-16F1-4EF4-90F7-01DE07F52A5E}']
    { Property Methods }

    { methods }
    function getDynamoDB: JDynamoDBAction; cdecl; //()Lcom/amazonaws/services/iot/model/DynamoDBAction;
    procedure setDynamoDB(dynamoDB: JDynamoDBAction); cdecl; //(Lcom/amazonaws/services/iot/model/DynamoDBAction;)V
    function withDynamoDB(dynamoDB: JDynamoDBAction): JAction; cdecl; //(Lcom/amazonaws/services/iot/model/DynamoDBAction;)Lcom/amazonaws/services/iot/model/Action;
    function getDynamoDBv2: JDynamoDBv2Action; cdecl; //()Lcom/amazonaws/services/iot/model/DynamoDBv2Action;
    procedure setDynamoDBv2(dynamoDBv2: JDynamoDBv2Action); cdecl; //(Lcom/amazonaws/services/iot/model/DynamoDBv2Action;)V
    function withDynamoDBv2(dynamoDBv2: JDynamoDBv2Action): JAction; cdecl; //(Lcom/amazonaws/services/iot/model/DynamoDBv2Action;)Lcom/amazonaws/services/iot/model/Action;
    function getLambda: JLambdaAction; cdecl; //()Lcom/amazonaws/services/iot/model/LambdaAction;
    procedure setLambda(lambda: JLambdaAction); cdecl; //(Lcom/amazonaws/services/iot/model/LambdaAction;)V
    function withLambda(lambda: JLambdaAction): JAction; cdecl; //(Lcom/amazonaws/services/iot/model/LambdaAction;)Lcom/amazonaws/services/iot/model/Action;
    function getSns: JSnsAction; cdecl; //()Lcom/amazonaws/services/iot/model/SnsAction;
    procedure setSns(sns: JSnsAction); cdecl; //(Lcom/amazonaws/services/iot/model/SnsAction;)V
    function withSns(sns: JSnsAction): JAction; cdecl; //(Lcom/amazonaws/services/iot/model/SnsAction;)Lcom/amazonaws/services/iot/model/Action;
    function getSqs: JSqsAction; cdecl; //()Lcom/amazonaws/services/iot/model/SqsAction;
    procedure setSqs(sqs: JSqsAction); cdecl; //(Lcom/amazonaws/services/iot/model/SqsAction;)V
    function withSqs(sqs: JSqsAction): JAction; cdecl; //(Lcom/amazonaws/services/iot/model/SqsAction;)Lcom/amazonaws/services/iot/model/Action;
    function getKinesis: JKinesisAction; cdecl; //()Lcom/amazonaws/services/iot/model/KinesisAction;
    procedure setKinesis(kinesis: JKinesisAction); cdecl; //(Lcom/amazonaws/services/iot/model/KinesisAction;)V
    function withKinesis(kinesis: JKinesisAction): JAction; cdecl; //(Lcom/amazonaws/services/iot/model/KinesisAction;)Lcom/amazonaws/services/iot/model/Action;
    function getRepublish: JRepublishAction; cdecl; //()Lcom/amazonaws/services/iot/model/RepublishAction;
    procedure setRepublish(republish: JRepublishAction); cdecl; //(Lcom/amazonaws/services/iot/model/RepublishAction;)V
    function withRepublish(republish: JRepublishAction): JAction; cdecl; //(Lcom/amazonaws/services/iot/model/RepublishAction;)Lcom/amazonaws/services/iot/model/Action;
    function getS3: JS3Action; cdecl; //()Lcom/amazonaws/services/iot/model/S3Action;
    procedure setS3(s3: JS3Action); cdecl; //(Lcom/amazonaws/services/iot/model/S3Action;)V
    function withS3(s3: JS3Action): JAction; cdecl; //(Lcom/amazonaws/services/iot/model/S3Action;)Lcom/amazonaws/services/iot/model/Action;
    function getFirehose: JFirehoseAction; cdecl; //()Lcom/amazonaws/services/iot/model/FirehoseAction;
    procedure setFirehose(firehose: JFirehoseAction); cdecl; //(Lcom/amazonaws/services/iot/model/FirehoseAction;)V
    function withFirehose(firehose: JFirehoseAction): JAction; cdecl; //(Lcom/amazonaws/services/iot/model/FirehoseAction;)Lcom/amazonaws/services/iot/model/Action;
    function getCloudwatchMetric: JCloudwatchMetricAction; cdecl; //()Lcom/amazonaws/services/iot/model/CloudwatchMetricAction;
    procedure setCloudwatchMetric(cloudwatchMetric: JCloudwatchMetricAction); cdecl; //(Lcom/amazonaws/services/iot/model/CloudwatchMetricAction;)V
    function withCloudwatchMetric(cloudwatchMetric: JCloudwatchMetricAction): JAction; cdecl; //(Lcom/amazonaws/services/iot/model/CloudwatchMetricAction;)Lcom/amazonaws/services/iot/model/Action;
    function getCloudwatchAlarm: JCloudwatchAlarmAction; cdecl; //()Lcom/amazonaws/services/iot/model/CloudwatchAlarmAction;
    procedure setCloudwatchAlarm(cloudwatchAlarm: JCloudwatchAlarmAction); cdecl; //(Lcom/amazonaws/services/iot/model/CloudwatchAlarmAction;)V
    function withCloudwatchAlarm(cloudwatchAlarm: JCloudwatchAlarmAction): JAction; cdecl; //(Lcom/amazonaws/services/iot/model/CloudwatchAlarmAction;)Lcom/amazonaws/services/iot/model/Action;
    function getElasticsearch: JElasticsearchAction; cdecl; //()Lcom/amazonaws/services/iot/model/ElasticsearchAction;
    procedure setElasticsearch(elasticsearch: JElasticsearchAction); cdecl; //(Lcom/amazonaws/services/iot/model/ElasticsearchAction;)V
    function withElasticsearch(elasticsearch: JElasticsearchAction): JAction; cdecl; //(Lcom/amazonaws/services/iot/model/ElasticsearchAction;)Lcom/amazonaws/services/iot/model/Action;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJAction = class(TJavaGenericImport<JActionClass, JAction>) end;

  JAttachPrincipalPolicyRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{8E0B0A96-C8E8-4D94-9572-7096381DFDBF}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAttachPrincipalPolicyRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/AttachPrincipalPolicyRequest')]
  JAttachPrincipalPolicyRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{C095B16C-1B53-4CD5-9050-A7A382F99A4F}']
    { Property Methods }

    { methods }
    function getPolicyName: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyName(policyName: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyName(policyName: JString): JAttachPrincipalPolicyRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/AttachPrincipalPolicyRequest;
    function getPrincipal: JString; cdecl; //()Ljava/lang/String;
    procedure setPrincipal(principal: JString); cdecl; //(Ljava/lang/String;)V
    function withPrincipal(principal: JString): JAttachPrincipalPolicyRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/AttachPrincipalPolicyRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJAttachPrincipalPolicyRequest = class(TJavaGenericImport<JAttachPrincipalPolicyRequestClass, JAttachPrincipalPolicyRequest>) end;

  JAttachThingPrincipalRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{6986D19F-D910-47C2-A52A-7895753B8848}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAttachThingPrincipalRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/AttachThingPrincipalRequest')]
  JAttachThingPrincipalRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{94D84044-F06E-4A05-B1AF-68E3CADB2587}']
    { Property Methods }

    { methods }
    function getThingName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingName(thingName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingName(thingName: JString): JAttachThingPrincipalRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/AttachThingPrincipalRequest;
    function getPrincipal: JString; cdecl; //()Ljava/lang/String;
    procedure setPrincipal(principal: JString); cdecl; //(Ljava/lang/String;)V
    function withPrincipal(principal: JString): JAttachThingPrincipalRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/AttachThingPrincipalRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJAttachThingPrincipalRequest = class(TJavaGenericImport<JAttachThingPrincipalRequestClass, JAttachThingPrincipalRequest>) end;

  JAttachThingPrincipalResultClass = interface(JObjectClass)
  ['{EBBC5EBF-C172-4E21-B6CC-B430E4FA9B81}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAttachThingPrincipalResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/AttachThingPrincipalResult')]
  JAttachThingPrincipalResult = interface(JObject)
  ['{77CF2FBB-F32C-451D-A231-9AE9C4BA94D3}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJAttachThingPrincipalResult = class(TJavaGenericImport<JAttachThingPrincipalResultClass, JAttachThingPrincipalResult>) end;

  JAttributePayloadClass = interface(JObjectClass)
  ['{80D7414E-9386-4BEC-82AE-7935939498E0}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAttributePayload; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/AttributePayload')]
  JAttributePayload = interface(JObject)
  ['{3766601E-6264-49E5-9982-CC1C0CF04D84}']
    { Property Methods }

    { methods }
    function getAttributes: JMap; cdecl; //()Ljava/util/Map;
    procedure setAttributes(attributes: JMap); cdecl; //(Ljava/util/Map;)V
    function withAttributes(attributes: JMap): JAttributePayload; cdecl; //(Ljava/util/Map;)Lcom/amazonaws/services/iot/model/AttributePayload;
    function addattributesEntry(key: JString; value: JString): JAttributePayload; cdecl; //(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/iot/model/AttributePayload;
    function clearattributesEntries: JAttributePayload; cdecl; //()Lcom/amazonaws/services/iot/model/AttributePayload;
    function isMerge: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getMerge: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setMerge(merge: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withMerge(merge: JBoolean): JAttributePayload; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/AttributePayload;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJAttributePayload = class(TJavaGenericImport<JAttributePayloadClass, JAttributePayload>) end;

  JAutoRegistrationStatusClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{4ADC4C35-3353-4AFC-8C33-2B5BA02B20FD}']
    { static Property Methods }
    {class} function _GetENABLE: JAutoRegistrationStatus; //Lcom/amazonaws/services/iot/model/AutoRegistrationStatus;
    {class} function _GetDISABLE: JAutoRegistrationStatus; //Lcom/amazonaws/services/iot/model/AutoRegistrationStatus;

    { static Methods }
    {class} function values: TJavaObjectArray<JAutoRegistrationStatus>; cdecl; //()[Lcom/amazonaws/services/iot/model/AutoRegistrationStatus;
    {class} function valueOf(P1: JString): JAutoRegistrationStatus; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/AutoRegistrationStatus;
    {class} function fromValue(P1: JString): JAutoRegistrationStatus; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/AutoRegistrationStatus;

    { static Property }
    {class} property ENABLE: JAutoRegistrationStatus read _GetENABLE;
    {class} property DISABLE: JAutoRegistrationStatus read _GetDISABLE;
  end;

  [JavaSignature('com/amazonaws/services/iot/model/AutoRegistrationStatus')]
  JAutoRegistrationStatus = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{CE682036-63EA-41DA-8377-6DCC99C6E911}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJAutoRegistrationStatus = class(TJavaGenericImport<JAutoRegistrationStatusClass, JAutoRegistrationStatus>) end;

  JCACertificateClass = interface(JObjectClass)
  ['{574F59E5-570E-4685-B32B-027C773B7FE8}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCACertificate; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CACertificate')]
  JCACertificate = interface(JObject)
  ['{7B72F8BA-536E-4550-AC98-6CFBE2FA50E8}']
    { Property Methods }

    { methods }
    function getCertificateArn: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateArn(certificateArn: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateArn(certificateArn: JString): JCACertificate; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CACertificate;
    function getCertificateId: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateId(certificateId: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateId(certificateId: JString): JCACertificate; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CACertificate;
    function getStatus: JString; cdecl; //()Ljava/lang/String;
    procedure setStatus(status: JString); cdecl; overload; //(Ljava/lang/String;)V
    function withStatus(status: JString): JCACertificate; cdecl; overload; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CACertificate;
    procedure setStatus(status: JCACertificateStatus); cdecl; overload; //(Lcom/amazonaws/services/iot/model/CACertificateStatus;)V
    function withStatus(status: JCACertificateStatus): JCACertificate; cdecl; overload; //(Lcom/amazonaws/services/iot/model/CACertificateStatus;)Lcom/amazonaws/services/iot/model/CACertificate;
    function getCreationDate: JDate; cdecl; //()Ljava/util/Date;
    procedure setCreationDate(creationDate: JDate); cdecl; //(Ljava/util/Date;)V
    function withCreationDate(creationDate: JDate): JCACertificate; cdecl; //(Ljava/util/Date;)Lcom/amazonaws/services/iot/model/CACertificate;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJCACertificate = class(TJavaGenericImport<JCACertificateClass, JCACertificate>) end;

  JCACertificateDescriptionClass = interface(JObjectClass)
  ['{B45BA871-2295-4C97-B637-A351D2D5DE3C}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCACertificateDescription; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CACertificateDescription')]
  JCACertificateDescription = interface(JObject)
  ['{5C9E1B77-1D53-49D7-9AED-65237F6D4160}']
    { Property Methods }

    { methods }
    function getCertificateArn: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateArn(certificateArn: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateArn(certificateArn: JString): JCACertificateDescription; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CACertificateDescription;
    function getCertificateId: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateId(certificateId: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateId(certificateId: JString): JCACertificateDescription; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CACertificateDescription;
    function getStatus: JString; cdecl; //()Ljava/lang/String;
    procedure setStatus(status: JString); cdecl; overload; //(Ljava/lang/String;)V
    function withStatus(status: JString): JCACertificateDescription; cdecl; overload; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CACertificateDescription;
    procedure setStatus(status: JCACertificateStatus); cdecl; overload; //(Lcom/amazonaws/services/iot/model/CACertificateStatus;)V
    function withStatus(status: JCACertificateStatus): JCACertificateDescription; cdecl; overload; //(Lcom/amazonaws/services/iot/model/CACertificateStatus;)Lcom/amazonaws/services/iot/model/CACertificateDescription;
    function getCertificatePem: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificatePem(certificatePem: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificatePem(certificatePem: JString): JCACertificateDescription; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CACertificateDescription;
    function getOwnedBy: JString; cdecl; //()Ljava/lang/String;
    procedure setOwnedBy(ownedBy: JString); cdecl; //(Ljava/lang/String;)V
    function withOwnedBy(ownedBy: JString): JCACertificateDescription; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CACertificateDescription;
    function getCreationDate: JDate; cdecl; //()Ljava/util/Date;
    procedure setCreationDate(creationDate: JDate); cdecl; //(Ljava/util/Date;)V
    function withCreationDate(creationDate: JDate): JCACertificateDescription; cdecl; //(Ljava/util/Date;)Lcom/amazonaws/services/iot/model/CACertificateDescription;
    function getAutoRegistrationStatus: JString; cdecl; //()Ljava/lang/String;
    procedure setAutoRegistrationStatus(autoRegistrationStatus: JString); cdecl; overload; //(Ljava/lang/String;)V
    function withAutoRegistrationStatus(autoRegistrationStatus: JString): JCACertificateDescription; cdecl; overload; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CACertificateDescription;
    procedure setAutoRegistrationStatus(autoRegistrationStatus: JAutoRegistrationStatus); cdecl; overload; //(Lcom/amazonaws/services/iot/model/AutoRegistrationStatus;)V
    function withAutoRegistrationStatus(autoRegistrationStatus: JAutoRegistrationStatus): JCACertificateDescription; cdecl; overload; //(Lcom/amazonaws/services/iot/model/AutoRegistrationStatus;)Lcom/amazonaws/services/iot/model/CACertificateDescription;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJCACertificateDescription = class(TJavaGenericImport<JCACertificateDescriptionClass, JCACertificateDescription>) end;

  JCACertificateStatusClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{B9F849A6-8430-4E3F-9257-E126CD62F385}']
    { static Property Methods }
    {class} function _GetACTIVE: JCACertificateStatus; //Lcom/amazonaws/services/iot/model/CACertificateStatus;
    {class} function _GetINACTIVE: JCACertificateStatus; //Lcom/amazonaws/services/iot/model/CACertificateStatus;

    { static Methods }
    {class} function values: TJavaObjectArray<JCACertificateStatus>; cdecl; //()[Lcom/amazonaws/services/iot/model/CACertificateStatus;
    {class} function valueOf(P1: JString): JCACertificateStatus; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CACertificateStatus;
    {class} function fromValue(P1: JString): JCACertificateStatus; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CACertificateStatus;

    { static Property }
    {class} property ACTIVE: JCACertificateStatus read _GetACTIVE;
    {class} property INACTIVE: JCACertificateStatus read _GetINACTIVE;
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CACertificateStatus')]
  JCACertificateStatus = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{E6020F7C-1A9F-40DF-81D0-EA433B1DFEFC}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJCACertificateStatus = class(TJavaGenericImport<JCACertificateStatusClass, JCACertificateStatus>) end;

  JCancelCertificateTransferRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{01FA2B16-2A69-4F46-9B08-EC8EE5F8FEAA}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCancelCertificateTransferRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CancelCertificateTransferRequest')]
  JCancelCertificateTransferRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{FE206417-EA88-4A4C-A3DE-117207461620}']
    { Property Methods }

    { methods }
    function getCertificateId: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateId(certificateId: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateId(certificateId: JString): JCancelCertificateTransferRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CancelCertificateTransferRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJCancelCertificateTransferRequest = class(TJavaGenericImport<JCancelCertificateTransferRequestClass, JCancelCertificateTransferRequest>) end;

  JCannedAccessControlListClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{5036A5B3-DE4E-4F0B-8FAA-D36BE3D2D8B2}']
    { static Property Methods }
    {class} function _GetPrivate: JCannedAccessControlList; //Lcom/amazonaws/services/iot/model/CannedAccessControlList;
    {class} function _GetPublicRead: JCannedAccessControlList; //Lcom/amazonaws/services/iot/model/CannedAccessControlList;
    {class} function _GetPublicReadWrite: JCannedAccessControlList; //Lcom/amazonaws/services/iot/model/CannedAccessControlList;
    {class} function _GetAwsExecRead: JCannedAccessControlList; //Lcom/amazonaws/services/iot/model/CannedAccessControlList;
    {class} function _GetAuthenticatedRead: JCannedAccessControlList; //Lcom/amazonaws/services/iot/model/CannedAccessControlList;
    {class} function _GetBucketOwnerRead: JCannedAccessControlList; //Lcom/amazonaws/services/iot/model/CannedAccessControlList;
    {class} function _GetBucketOwnerFullControl: JCannedAccessControlList; //Lcom/amazonaws/services/iot/model/CannedAccessControlList;
    {class} function _GetLogDeliveryWrite: JCannedAccessControlList; //Lcom/amazonaws/services/iot/model/CannedAccessControlList;

    { static Methods }
    {class} function values: TJavaObjectArray<JCannedAccessControlList>; cdecl; //()[Lcom/amazonaws/services/iot/model/CannedAccessControlList;
    {class} function valueOf(P1: JString): JCannedAccessControlList; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CannedAccessControlList;
    {class} function fromValue(P1: JString): JCannedAccessControlList; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CannedAccessControlList;

    { static Property }
    {class} property &Private: JCannedAccessControlList read _GetPrivate;
    {class} property PublicRead: JCannedAccessControlList read _GetPublicRead;
    {class} property PublicReadWrite: JCannedAccessControlList read _GetPublicReadWrite;
    {class} property AwsExecRead: JCannedAccessControlList read _GetAwsExecRead;
    {class} property AuthenticatedRead: JCannedAccessControlList read _GetAuthenticatedRead;
    {class} property BucketOwnerRead: JCannedAccessControlList read _GetBucketOwnerRead;
    {class} property BucketOwnerFullControl: JCannedAccessControlList read _GetBucketOwnerFullControl;
    {class} property LogDeliveryWrite: JCannedAccessControlList read _GetLogDeliveryWrite;
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CannedAccessControlList')]
  JCannedAccessControlList = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{064211EA-F51C-4CD3-AD6E-05CFE62B74FD}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJCannedAccessControlList = class(TJavaGenericImport<JCannedAccessControlListClass, JCannedAccessControlList>) end;

  JCertificateClass = interface(JObjectClass)
  ['{C257C3CB-FA4A-4957-8E4E-026E7F85220C}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCertificate; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/Certificate')]
  JCertificate = interface(JObject)
  ['{C7754054-DCA7-4BD6-A414-6B933A383E9C}']
    { Property Methods }

    { methods }
    function getCertificateArn: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateArn(certificateArn: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateArn(certificateArn: JString): JCertificate; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/Certificate;
    function getCertificateId: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateId(certificateId: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateId(certificateId: JString): JCertificate; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/Certificate;
    function getStatus: JString; cdecl; //()Ljava/lang/String;
    procedure setStatus(status: JString); cdecl; overload; //(Ljava/lang/String;)V
    function withStatus(status: JString): JCertificate; cdecl; overload; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/Certificate;
    procedure setStatus(status: JCertificateStatus); cdecl; overload; //(Lcom/amazonaws/services/iot/model/CertificateStatus;)V
    function withStatus(status: JCertificateStatus): JCertificate; cdecl; overload; //(Lcom/amazonaws/services/iot/model/CertificateStatus;)Lcom/amazonaws/services/iot/model/Certificate;
    function getCreationDate: JDate; cdecl; //()Ljava/util/Date;
    procedure setCreationDate(creationDate: JDate); cdecl; //(Ljava/util/Date;)V
    function withCreationDate(creationDate: JDate): JCertificate; cdecl; //(Ljava/util/Date;)Lcom/amazonaws/services/iot/model/Certificate;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJCertificate = class(TJavaGenericImport<JCertificateClass, JCertificate>) end;

  JCertificateConflictExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{ED0EF32D-4A78-42AC-893B-5C5380149BE1}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JCertificateConflictException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CertificateConflictException')]
  JCertificateConflictException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{BF9DFFF3-FB62-4515-A5F9-4213E553E0E2}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJCertificateConflictException = class(TJavaGenericImport<JCertificateConflictExceptionClass, JCertificateConflictException>) end;

  JCertificateDescriptionClass = interface(JObjectClass)
  ['{10ADEEE9-06DC-4675-8350-50E46A484841}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCertificateDescription; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CertificateDescription')]
  JCertificateDescription = interface(JObject)
  ['{8B4C553F-02A2-4B2F-886C-4CE7ABBD5047}']
    { Property Methods }

    { methods }
    function getCertificateArn: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateArn(certificateArn: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateArn(certificateArn: JString): JCertificateDescription; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CertificateDescription;
    function getCertificateId: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateId(certificateId: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateId(certificateId: JString): JCertificateDescription; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CertificateDescription;
    function getCaCertificateId: JString; cdecl; //()Ljava/lang/String;
    procedure setCaCertificateId(caCertificateId: JString); cdecl; //(Ljava/lang/String;)V
    function withCaCertificateId(caCertificateId: JString): JCertificateDescription; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CertificateDescription;
    function getStatus: JString; cdecl; //()Ljava/lang/String;
    procedure setStatus(status: JString); cdecl; overload; //(Ljava/lang/String;)V
    function withStatus(status: JString): JCertificateDescription; cdecl; overload; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CertificateDescription;
    procedure setStatus(status: JCertificateStatus); cdecl; overload; //(Lcom/amazonaws/services/iot/model/CertificateStatus;)V
    function withStatus(status: JCertificateStatus): JCertificateDescription; cdecl; overload; //(Lcom/amazonaws/services/iot/model/CertificateStatus;)Lcom/amazonaws/services/iot/model/CertificateDescription;
    function getCertificatePem: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificatePem(certificatePem: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificatePem(certificatePem: JString): JCertificateDescription; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CertificateDescription;
    function getOwnedBy: JString; cdecl; //()Ljava/lang/String;
    procedure setOwnedBy(ownedBy: JString); cdecl; //(Ljava/lang/String;)V
    function withOwnedBy(ownedBy: JString): JCertificateDescription; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CertificateDescription;
    function getPreviousOwnedBy: JString; cdecl; //()Ljava/lang/String;
    procedure setPreviousOwnedBy(previousOwnedBy: JString); cdecl; //(Ljava/lang/String;)V
    function withPreviousOwnedBy(previousOwnedBy: JString): JCertificateDescription; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CertificateDescription;
    function getCreationDate: JDate; cdecl; //()Ljava/util/Date;
    procedure setCreationDate(creationDate: JDate); cdecl; //(Ljava/util/Date;)V
    function withCreationDate(creationDate: JDate): JCertificateDescription; cdecl; //(Ljava/util/Date;)Lcom/amazonaws/services/iot/model/CertificateDescription;
    function getLastModifiedDate: JDate; cdecl; //()Ljava/util/Date;
    procedure setLastModifiedDate(lastModifiedDate: JDate); cdecl; //(Ljava/util/Date;)V
    function withLastModifiedDate(lastModifiedDate: JDate): JCertificateDescription; cdecl; //(Ljava/util/Date;)Lcom/amazonaws/services/iot/model/CertificateDescription;
    function getTransferData: JTransferData; cdecl; //()Lcom/amazonaws/services/iot/model/TransferData;
    procedure setTransferData(transferData: JTransferData); cdecl; //(Lcom/amazonaws/services/iot/model/TransferData;)V
    function withTransferData(transferData: JTransferData): JCertificateDescription; cdecl; //(Lcom/amazonaws/services/iot/model/TransferData;)Lcom/amazonaws/services/iot/model/CertificateDescription;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJCertificateDescription = class(TJavaGenericImport<JCertificateDescriptionClass, JCertificateDescription>) end;

  JCertificateStateExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{487018B0-7D1D-417A-9D70-AAA4E613B7A0}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JCertificateStateException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CertificateStateException')]
  JCertificateStateException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{B2F81F70-305F-4912-9261-50D5C98DDDD9}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJCertificateStateException = class(TJavaGenericImport<JCertificateStateExceptionClass, JCertificateStateException>) end;

  JCertificateStatusClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{619F4A07-C58A-49C7-89CB-6A20366BF473}']
    { static Property Methods }
    {class} function _GetACTIVE: JCertificateStatus; //Lcom/amazonaws/services/iot/model/CertificateStatus;
    {class} function _GetINACTIVE: JCertificateStatus; //Lcom/amazonaws/services/iot/model/CertificateStatus;
    {class} function _GetREVOKED: JCertificateStatus; //Lcom/amazonaws/services/iot/model/CertificateStatus;
    {class} function _GetPENDING_TRANSFER: JCertificateStatus; //Lcom/amazonaws/services/iot/model/CertificateStatus;
    {class} function _GetREGISTER_INACTIVE: JCertificateStatus; //Lcom/amazonaws/services/iot/model/CertificateStatus;
    {class} function _GetPENDING_ACTIVATION: JCertificateStatus; //Lcom/amazonaws/services/iot/model/CertificateStatus;

    { static Methods }
    {class} function values: TJavaObjectArray<JCertificateStatus>; cdecl; //()[Lcom/amazonaws/services/iot/model/CertificateStatus;
    {class} function valueOf(P1: JString): JCertificateStatus; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CertificateStatus;
    {class} function fromValue(P1: JString): JCertificateStatus; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CertificateStatus;

    { static Property }
    {class} property ACTIVE: JCertificateStatus read _GetACTIVE;
    {class} property INACTIVE: JCertificateStatus read _GetINACTIVE;
    {class} property REVOKED: JCertificateStatus read _GetREVOKED;
    {class} property PENDING_TRANSFER: JCertificateStatus read _GetPENDING_TRANSFER;
    {class} property REGISTER_INACTIVE: JCertificateStatus read _GetREGISTER_INACTIVE;
    {class} property PENDING_ACTIVATION: JCertificateStatus read _GetPENDING_ACTIVATION;
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CertificateStatus')]
  JCertificateStatus = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{48F3C822-9E57-4332-B393-97F2A10B5318}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJCertificateStatus = class(TJavaGenericImport<JCertificateStatusClass, JCertificateStatus>) end;

  JCertificateValidationExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{D6DFC253-2030-456E-BCDA-E8B2E5E4A29A}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JCertificateValidationException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CertificateValidationException')]
  JCertificateValidationException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{211F5BD7-108F-4029-9A80-1C7E0E145F9E}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJCertificateValidationException = class(TJavaGenericImport<JCertificateValidationExceptionClass, JCertificateValidationException>) end;

  JCloudwatchAlarmActionClass = interface(JObjectClass)
  ['{F986E739-5E3F-4F63-88D2-6AE7560AD5EE}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCloudwatchAlarmAction; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CloudwatchAlarmAction')]
  JCloudwatchAlarmAction = interface(JObject)
  ['{31611FA0-53E6-4DA6-849D-F69E54758358}']
    { Property Methods }

    { methods }
    function getRoleArn: JString; cdecl; //()Ljava/lang/String;
    procedure setRoleArn(roleArn: JString); cdecl; //(Ljava/lang/String;)V
    function withRoleArn(roleArn: JString): JCloudwatchAlarmAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CloudwatchAlarmAction;
    function getAlarmName: JString; cdecl; //()Ljava/lang/String;
    procedure setAlarmName(alarmName: JString); cdecl; //(Ljava/lang/String;)V
    function withAlarmName(alarmName: JString): JCloudwatchAlarmAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CloudwatchAlarmAction;
    function getStateReason: JString; cdecl; //()Ljava/lang/String;
    procedure setStateReason(stateReason: JString); cdecl; //(Ljava/lang/String;)V
    function withStateReason(stateReason: JString): JCloudwatchAlarmAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CloudwatchAlarmAction;
    function getStateValue: JString; cdecl; //()Ljava/lang/String;
    procedure setStateValue(stateValue: JString); cdecl; //(Ljava/lang/String;)V
    function withStateValue(stateValue: JString): JCloudwatchAlarmAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CloudwatchAlarmAction;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJCloudwatchAlarmAction = class(TJavaGenericImport<JCloudwatchAlarmActionClass, JCloudwatchAlarmAction>) end;

  JCloudwatchMetricActionClass = interface(JObjectClass)
  ['{DB5D4013-FEA0-4AC2-BE65-C8C282BB79B6}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCloudwatchMetricAction; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CloudwatchMetricAction')]
  JCloudwatchMetricAction = interface(JObject)
  ['{B2F69F7E-8C69-44C0-9F12-00AE90862E3C}']
    { Property Methods }

    { methods }
    function getRoleArn: JString; cdecl; //()Ljava/lang/String;
    procedure setRoleArn(roleArn: JString); cdecl; //(Ljava/lang/String;)V
    function withRoleArn(roleArn: JString): JCloudwatchMetricAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CloudwatchMetricAction;
    function getMetricNamespace: JString; cdecl; //()Ljava/lang/String;
    procedure setMetricNamespace(metricNamespace: JString); cdecl; //(Ljava/lang/String;)V
    function withMetricNamespace(metricNamespace: JString): JCloudwatchMetricAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CloudwatchMetricAction;
    function getMetricName: JString; cdecl; //()Ljava/lang/String;
    procedure setMetricName(metricName: JString); cdecl; //(Ljava/lang/String;)V
    function withMetricName(metricName: JString): JCloudwatchMetricAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CloudwatchMetricAction;
    function getMetricValue: JString; cdecl; //()Ljava/lang/String;
    procedure setMetricValue(metricValue: JString); cdecl; //(Ljava/lang/String;)V
    function withMetricValue(metricValue: JString): JCloudwatchMetricAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CloudwatchMetricAction;
    function getMetricUnit: JString; cdecl; //()Ljava/lang/String;
    procedure setMetricUnit(metricUnit: JString); cdecl; //(Ljava/lang/String;)V
    function withMetricUnit(metricUnit: JString): JCloudwatchMetricAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CloudwatchMetricAction;
    function getMetricTimestamp: JString; cdecl; //()Ljava/lang/String;
    procedure setMetricTimestamp(metricTimestamp: JString); cdecl; //(Ljava/lang/String;)V
    function withMetricTimestamp(metricTimestamp: JString): JCloudwatchMetricAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CloudwatchMetricAction;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJCloudwatchMetricAction = class(TJavaGenericImport<JCloudwatchMetricActionClass, JCloudwatchMetricAction>) end;

  JCreateCertificateFromCsrRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{D7620C2F-3EDE-406A-A68D-4073E410A353}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreateCertificateFromCsrRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CreateCertificateFromCsrRequest')]
  JCreateCertificateFromCsrRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{DF7B9F28-15C8-406C-8D71-BF146892506C}']
    { Property Methods }

    { methods }
    function getCertificateSigningRequest: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateSigningRequest(certificateSigningRequest: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateSigningRequest(certificateSigningRequest: JString): JCreateCertificateFromCsrRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreateCertificateFromCsrRequest;
    function isSetAsActive: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getSetAsActive: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setSetAsActive(setAsActive: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withSetAsActive(setAsActive: JBoolean): JCreateCertificateFromCsrRequest; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/CreateCertificateFromCsrRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJCreateCertificateFromCsrRequest = class(TJavaGenericImport<JCreateCertificateFromCsrRequestClass, JCreateCertificateFromCsrRequest>) end;

  JCreateCertificateFromCsrResultClass = interface(JObjectClass)
  ['{B9640DC6-4D8D-47E7-8795-4686A6961062}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreateCertificateFromCsrResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CreateCertificateFromCsrResult')]
  JCreateCertificateFromCsrResult = interface(JObject)
  ['{96E814C2-4F68-418A-8F96-B6BAACDB4FFC}']
    { Property Methods }

    { methods }
    function getCertificateArn: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateArn(certificateArn: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateArn(certificateArn: JString): JCreateCertificateFromCsrResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreateCertificateFromCsrResult;
    function getCertificateId: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateId(certificateId: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateId(certificateId: JString): JCreateCertificateFromCsrResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreateCertificateFromCsrResult;
    function getCertificatePem: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificatePem(certificatePem: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificatePem(certificatePem: JString): JCreateCertificateFromCsrResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreateCertificateFromCsrResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJCreateCertificateFromCsrResult = class(TJavaGenericImport<JCreateCertificateFromCsrResultClass, JCreateCertificateFromCsrResult>) end;

  JCreateKeysAndCertificateRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{F338F354-F262-48F5-9894-9D98F72B800E}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreateKeysAndCertificateRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CreateKeysAndCertificateRequest')]
  JCreateKeysAndCertificateRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{36C7D565-0B99-4BCE-AA94-8FF59997E82E}']
    { Property Methods }

    { methods }
    function isSetAsActive: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getSetAsActive: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setSetAsActive(setAsActive: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withSetAsActive(setAsActive: JBoolean): JCreateKeysAndCertificateRequest; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/CreateKeysAndCertificateRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJCreateKeysAndCertificateRequest = class(TJavaGenericImport<JCreateKeysAndCertificateRequestClass, JCreateKeysAndCertificateRequest>) end;

  JCreateKeysAndCertificateResultClass = interface(JObjectClass)
  ['{DF1042D9-2BDB-4F42-B255-A16B48C4E683}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreateKeysAndCertificateResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CreateKeysAndCertificateResult')]
  JCreateKeysAndCertificateResult = interface(JObject)
  ['{FD0DBE0C-E947-4134-BA22-FF5BDB869306}']
    { Property Methods }

    { methods }
    function getCertificateArn: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateArn(certificateArn: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateArn(certificateArn: JString): JCreateKeysAndCertificateResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreateKeysAndCertificateResult;
    function getCertificateId: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateId(certificateId: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateId(certificateId: JString): JCreateKeysAndCertificateResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreateKeysAndCertificateResult;
    function getCertificatePem: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificatePem(certificatePem: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificatePem(certificatePem: JString): JCreateKeysAndCertificateResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreateKeysAndCertificateResult;
    function getKeyPair: JKeyPair; cdecl; //()Lcom/amazonaws/services/iot/model/KeyPair;
    procedure setKeyPair(keyPair: JKeyPair); cdecl; //(Lcom/amazonaws/services/iot/model/KeyPair;)V
    function withKeyPair(keyPair: JKeyPair): JCreateKeysAndCertificateResult; cdecl; //(Lcom/amazonaws/services/iot/model/KeyPair;)Lcom/amazonaws/services/iot/model/CreateKeysAndCertificateResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJCreateKeysAndCertificateResult = class(TJavaGenericImport<JCreateKeysAndCertificateResultClass, JCreateKeysAndCertificateResult>) end;

  JCreatePolicyRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{70436DAD-624C-4367-A61F-A594D8B4BE2F}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreatePolicyRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CreatePolicyRequest')]
  JCreatePolicyRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{B3585119-8558-4CA8-9D74-488B353FBA72}']
    { Property Methods }

    { methods }
    function getPolicyName: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyName(policyName: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyName(policyName: JString): JCreatePolicyRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreatePolicyRequest;
    function getPolicyDocument: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyDocument(policyDocument: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyDocument(policyDocument: JString): JCreatePolicyRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreatePolicyRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJCreatePolicyRequest = class(TJavaGenericImport<JCreatePolicyRequestClass, JCreatePolicyRequest>) end;

  JCreatePolicyResultClass = interface(JObjectClass)
  ['{47B46D2B-6138-4929-B7AE-3053AC56BBC0}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreatePolicyResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CreatePolicyResult')]
  JCreatePolicyResult = interface(JObject)
  ['{BA10DE43-F7A4-473B-B9F4-A30DBA88FD87}']
    { Property Methods }

    { methods }
    function getPolicyName: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyName(policyName: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyName(policyName: JString): JCreatePolicyResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreatePolicyResult;
    function getPolicyArn: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyArn(policyArn: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyArn(policyArn: JString): JCreatePolicyResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreatePolicyResult;
    function getPolicyDocument: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyDocument(policyDocument: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyDocument(policyDocument: JString): JCreatePolicyResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreatePolicyResult;
    function getPolicyVersionId: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyVersionId(policyVersionId: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyVersionId(policyVersionId: JString): JCreatePolicyResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreatePolicyResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJCreatePolicyResult = class(TJavaGenericImport<JCreatePolicyResultClass, JCreatePolicyResult>) end;

  JCreatePolicyVersionRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{D8B5FFBE-1122-4507-8D7B-8664F254AB67}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreatePolicyVersionRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CreatePolicyVersionRequest')]
  JCreatePolicyVersionRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{5BE646FE-F8D2-44A4-A1BE-D982B36BB5F9}']
    { Property Methods }

    { methods }
    function getPolicyName: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyName(policyName: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyName(policyName: JString): JCreatePolicyVersionRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreatePolicyVersionRequest;
    function getPolicyDocument: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyDocument(policyDocument: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyDocument(policyDocument: JString): JCreatePolicyVersionRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreatePolicyVersionRequest;
    function isSetAsDefault: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getSetAsDefault: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setSetAsDefault(setAsDefault: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withSetAsDefault(setAsDefault: JBoolean): JCreatePolicyVersionRequest; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/CreatePolicyVersionRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJCreatePolicyVersionRequest = class(TJavaGenericImport<JCreatePolicyVersionRequestClass, JCreatePolicyVersionRequest>) end;

  JCreatePolicyVersionResultClass = interface(JObjectClass)
  ['{990DF01E-A6E9-4A94-BC52-65BBD6F8876F}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreatePolicyVersionResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CreatePolicyVersionResult')]
  JCreatePolicyVersionResult = interface(JObject)
  ['{88AF6335-F4BF-46E1-98ED-BC3953A9C263}']
    { Property Methods }

    { methods }
    function getPolicyArn: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyArn(policyArn: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyArn(policyArn: JString): JCreatePolicyVersionResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreatePolicyVersionResult;
    function getPolicyDocument: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyDocument(policyDocument: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyDocument(policyDocument: JString): JCreatePolicyVersionResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreatePolicyVersionResult;
    function getPolicyVersionId: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyVersionId(policyVersionId: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyVersionId(policyVersionId: JString): JCreatePolicyVersionResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreatePolicyVersionResult;
    function isIsDefaultVersion: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getIsDefaultVersion: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setIsDefaultVersion(isDefaultVersion: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withIsDefaultVersion(isDefaultVersion: JBoolean): JCreatePolicyVersionResult; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/CreatePolicyVersionResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJCreatePolicyVersionResult = class(TJavaGenericImport<JCreatePolicyVersionResultClass, JCreatePolicyVersionResult>) end;

  JCreateThingRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{8FDC926D-B27A-4C79-A73D-8197FF488D6B}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreateThingRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CreateThingRequest')]
  JCreateThingRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{D8B20199-85F8-4273-8947-8E0399C409A0}']
    { Property Methods }

    { methods }
    function getThingName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingName(thingName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingName(thingName: JString): JCreateThingRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreateThingRequest;
    function getThingTypeName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingTypeName(thingTypeName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingTypeName(thingTypeName: JString): JCreateThingRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreateThingRequest;
    function getAttributePayload: JAttributePayload; cdecl; //()Lcom/amazonaws/services/iot/model/AttributePayload;
    procedure setAttributePayload(attributePayload: JAttributePayload); cdecl; //(Lcom/amazonaws/services/iot/model/AttributePayload;)V
    function withAttributePayload(attributePayload: JAttributePayload): JCreateThingRequest; cdecl; //(Lcom/amazonaws/services/iot/model/AttributePayload;)Lcom/amazonaws/services/iot/model/CreateThingRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJCreateThingRequest = class(TJavaGenericImport<JCreateThingRequestClass, JCreateThingRequest>) end;

  JCreateThingResultClass = interface(JObjectClass)
  ['{F54A4838-4CA5-4AE4-83BE-D252A985AD81}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreateThingResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CreateThingResult')]
  JCreateThingResult = interface(JObject)
  ['{D6BFE6B9-2A57-4897-8730-9C6F5C793EC6}']
    { Property Methods }

    { methods }
    function getThingName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingName(thingName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingName(thingName: JString): JCreateThingResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreateThingResult;
    function getThingArn: JString; cdecl; //()Ljava/lang/String;
    procedure setThingArn(thingArn: JString); cdecl; //(Ljava/lang/String;)V
    function withThingArn(thingArn: JString): JCreateThingResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreateThingResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJCreateThingResult = class(TJavaGenericImport<JCreateThingResultClass, JCreateThingResult>) end;

  JCreateThingTypeRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{F2A0F16C-47EF-4EB5-93A4-060FB8AB6505}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreateThingTypeRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CreateThingTypeRequest')]
  JCreateThingTypeRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{4021AF48-A8AB-492B-BF68-B38680666ACB}']
    { Property Methods }

    { methods }
    function getThingTypeName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingTypeName(thingTypeName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingTypeName(thingTypeName: JString): JCreateThingTypeRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreateThingTypeRequest;
    function getThingTypeProperties: JThingTypeProperties; cdecl; //()Lcom/amazonaws/services/iot/model/ThingTypeProperties;
    procedure setThingTypeProperties(thingTypeProperties: JThingTypeProperties); cdecl; //(Lcom/amazonaws/services/iot/model/ThingTypeProperties;)V
    function withThingTypeProperties(thingTypeProperties: JThingTypeProperties): JCreateThingTypeRequest; cdecl; //(Lcom/amazonaws/services/iot/model/ThingTypeProperties;)Lcom/amazonaws/services/iot/model/CreateThingTypeRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJCreateThingTypeRequest = class(TJavaGenericImport<JCreateThingTypeRequestClass, JCreateThingTypeRequest>) end;

  JCreateThingTypeResultClass = interface(JObjectClass)
  ['{470B4015-906A-4526-AD8F-4C9AB6BDA0C0}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreateThingTypeResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CreateThingTypeResult')]
  JCreateThingTypeResult = interface(JObject)
  ['{B915E553-97B0-4567-A8FC-91DC1DC39181}']
    { Property Methods }

    { methods }
    function getThingTypeName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingTypeName(thingTypeName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingTypeName(thingTypeName: JString): JCreateThingTypeResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreateThingTypeResult;
    function getThingTypeArn: JString; cdecl; //()Ljava/lang/String;
    procedure setThingTypeArn(thingTypeArn: JString); cdecl; //(Ljava/lang/String;)V
    function withThingTypeArn(thingTypeArn: JString): JCreateThingTypeResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreateThingTypeResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJCreateThingTypeResult = class(TJavaGenericImport<JCreateThingTypeResultClass, JCreateThingTypeResult>) end;

  JCreateTopicRuleRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{5E96EC6B-DFD5-4F07-BADD-C87CE0533D63}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreateTopicRuleRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/CreateTopicRuleRequest')]
  JCreateTopicRuleRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{4D6D46DE-8444-4223-BB8B-CEE5B1F64443}']
    { Property Methods }

    { methods }
    function getRuleName: JString; cdecl; //()Ljava/lang/String;
    procedure setRuleName(ruleName: JString); cdecl; //(Ljava/lang/String;)V
    function withRuleName(ruleName: JString): JCreateTopicRuleRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/CreateTopicRuleRequest;
    function getTopicRulePayload: JTopicRulePayload; cdecl; //()Lcom/amazonaws/services/iot/model/TopicRulePayload;
    procedure setTopicRulePayload(topicRulePayload: JTopicRulePayload); cdecl; //(Lcom/amazonaws/services/iot/model/TopicRulePayload;)V
    function withTopicRulePayload(topicRulePayload: JTopicRulePayload): JCreateTopicRuleRequest; cdecl; //(Lcom/amazonaws/services/iot/model/TopicRulePayload;)Lcom/amazonaws/services/iot/model/CreateTopicRuleRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJCreateTopicRuleRequest = class(TJavaGenericImport<JCreateTopicRuleRequestClass, JCreateTopicRuleRequest>) end;

  JDeleteCACertificateRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{BDD3B489-7979-4745-895C-4D8E9B62072F}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeleteCACertificateRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DeleteCACertificateRequest')]
  JDeleteCACertificateRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{79392206-7692-4B96-84C1-34D941348533}']
    { Property Methods }

    { methods }
    function getCertificateId: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateId(certificateId: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateId(certificateId: JString): JDeleteCACertificateRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DeleteCACertificateRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDeleteCACertificateRequest = class(TJavaGenericImport<JDeleteCACertificateRequestClass, JDeleteCACertificateRequest>) end;

  JDeleteCACertificateResultClass = interface(JObjectClass)
  ['{C61F0E67-8500-4409-B1CD-482159205BC2}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeleteCACertificateResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DeleteCACertificateResult')]
  JDeleteCACertificateResult = interface(JObject)
  ['{9370E000-4D52-4AB1-88E6-502AEDE23700}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDeleteCACertificateResult = class(TJavaGenericImport<JDeleteCACertificateResultClass, JDeleteCACertificateResult>) end;

  JDeleteCertificateRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{C018EDE9-CBDB-4030-9259-0CC1D6B60813}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeleteCertificateRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DeleteCertificateRequest')]
  JDeleteCertificateRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{A62B8103-0CE4-46EF-A5B3-A9C6C9A97BAF}']
    { Property Methods }

    { methods }
    function getCertificateId: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateId(certificateId: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateId(certificateId: JString): JDeleteCertificateRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DeleteCertificateRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDeleteCertificateRequest = class(TJavaGenericImport<JDeleteCertificateRequestClass, JDeleteCertificateRequest>) end;

  JDeleteConflictExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{3E3A67FE-8C31-4FB6-AA1F-6EC2FDDA34FD}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JDeleteConflictException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DeleteConflictException')]
  JDeleteConflictException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{CE10D394-0E19-4BFE-A247-7773C104BDAA}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJDeleteConflictException = class(TJavaGenericImport<JDeleteConflictExceptionClass, JDeleteConflictException>) end;

  JDeletePolicyRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{BF322953-534D-4F8B-9A03-1A511C869502}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeletePolicyRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DeletePolicyRequest')]
  JDeletePolicyRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{A487E990-6D41-487A-ABF0-DD6BFDDDC6BD}']
    { Property Methods }

    { methods }
    function getPolicyName: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyName(policyName: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyName(policyName: JString): JDeletePolicyRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DeletePolicyRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDeletePolicyRequest = class(TJavaGenericImport<JDeletePolicyRequestClass, JDeletePolicyRequest>) end;

  JDeletePolicyVersionRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{791BC7BC-5422-43E9-AA91-F8FACE90C930}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeletePolicyVersionRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DeletePolicyVersionRequest')]
  JDeletePolicyVersionRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{E2B725AB-0B9B-4219-A662-A09E235A62EB}']
    { Property Methods }

    { methods }
    function getPolicyName: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyName(policyName: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyName(policyName: JString): JDeletePolicyVersionRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DeletePolicyVersionRequest;
    function getPolicyVersionId: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyVersionId(policyVersionId: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyVersionId(policyVersionId: JString): JDeletePolicyVersionRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DeletePolicyVersionRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDeletePolicyVersionRequest = class(TJavaGenericImport<JDeletePolicyVersionRequestClass, JDeletePolicyVersionRequest>) end;

  JDeleteRegistrationCodeRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{3DABAE2A-9661-4984-BE1B-FBFED208E810}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeleteRegistrationCodeRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DeleteRegistrationCodeRequest')]
  JDeleteRegistrationCodeRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{F4E336FA-278A-476C-BA03-5A985F0EC75F}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDeleteRegistrationCodeRequest = class(TJavaGenericImport<JDeleteRegistrationCodeRequestClass, JDeleteRegistrationCodeRequest>) end;

  JDeleteRegistrationCodeResultClass = interface(JObjectClass)
  ['{C27DC266-733E-437F-9A99-13C62CE10FEC}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeleteRegistrationCodeResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DeleteRegistrationCodeResult')]
  JDeleteRegistrationCodeResult = interface(JObject)
  ['{E92FD88C-1C7D-49F1-872F-386FFE65CFEC}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDeleteRegistrationCodeResult = class(TJavaGenericImport<JDeleteRegistrationCodeResultClass, JDeleteRegistrationCodeResult>) end;

  JDeleteThingRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{44904611-5B5D-4287-847B-E0AF86B43BD3}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeleteThingRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DeleteThingRequest')]
  JDeleteThingRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{0A88C748-63B0-4074-930A-363F11464F5D}']
    { Property Methods }

    { methods }
    function getThingName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingName(thingName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingName(thingName: JString): JDeleteThingRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DeleteThingRequest;
    function getExpectedVersion: JLong; cdecl; //()Ljava/lang/Long;
    procedure setExpectedVersion(expectedVersion: JLong); cdecl; //(Ljava/lang/Long;)V
    function withExpectedVersion(expectedVersion: JLong): JDeleteThingRequest; cdecl; //(Ljava/lang/Long;)Lcom/amazonaws/services/iot/model/DeleteThingRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDeleteThingRequest = class(TJavaGenericImport<JDeleteThingRequestClass, JDeleteThingRequest>) end;

  JDeleteThingResultClass = interface(JObjectClass)
  ['{40575FB8-11DB-40F4-BE09-57C3A11DAEDC}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeleteThingResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DeleteThingResult')]
  JDeleteThingResult = interface(JObject)
  ['{B951A067-B264-4D33-A0AE-D1EB61525005}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDeleteThingResult = class(TJavaGenericImport<JDeleteThingResultClass, JDeleteThingResult>) end;

  JDeleteThingTypeRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{39B6EF38-2948-429D-B196-511D030CE0F6}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeleteThingTypeRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DeleteThingTypeRequest')]
  JDeleteThingTypeRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{F9DA398B-E532-4D28-868D-49A6D885DA32}']
    { Property Methods }

    { methods }
    function getThingTypeName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingTypeName(thingTypeName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingTypeName(thingTypeName: JString): JDeleteThingTypeRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DeleteThingTypeRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDeleteThingTypeRequest = class(TJavaGenericImport<JDeleteThingTypeRequestClass, JDeleteThingTypeRequest>) end;

  JDeleteThingTypeResultClass = interface(JObjectClass)
  ['{AE0EB6B6-77F8-430F-BFBD-797CA5D29734}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeleteThingTypeResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DeleteThingTypeResult')]
  JDeleteThingTypeResult = interface(JObject)
  ['{A2A3B2AE-F585-4D47-A343-E1B7F5890170}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDeleteThingTypeResult = class(TJavaGenericImport<JDeleteThingTypeResultClass, JDeleteThingTypeResult>) end;

  JDeleteTopicRuleRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{2586C61F-2FD7-4344-9104-D66E021553ED}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeleteTopicRuleRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DeleteTopicRuleRequest')]
  JDeleteTopicRuleRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{30003E2A-7D23-460E-B4E9-806C433AEBBE}']
    { Property Methods }

    { methods }
    function getRuleName: JString; cdecl; //()Ljava/lang/String;
    procedure setRuleName(ruleName: JString); cdecl; //(Ljava/lang/String;)V
    function withRuleName(ruleName: JString): JDeleteTopicRuleRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DeleteTopicRuleRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDeleteTopicRuleRequest = class(TJavaGenericImport<JDeleteTopicRuleRequestClass, JDeleteTopicRuleRequest>) end;

  JDeprecateThingTypeRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{25F632E4-DA4D-45B2-B0D0-DB50E47DB441}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeprecateThingTypeRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DeprecateThingTypeRequest')]
  JDeprecateThingTypeRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{73A697BF-B104-4953-9A97-367468CA8885}']
    { Property Methods }

    { methods }
    function getThingTypeName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingTypeName(thingTypeName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingTypeName(thingTypeName: JString): JDeprecateThingTypeRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DeprecateThingTypeRequest;
    function isUndoDeprecate: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getUndoDeprecate: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setUndoDeprecate(undoDeprecate: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withUndoDeprecate(undoDeprecate: JBoolean): JDeprecateThingTypeRequest; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/DeprecateThingTypeRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDeprecateThingTypeRequest = class(TJavaGenericImport<JDeprecateThingTypeRequestClass, JDeprecateThingTypeRequest>) end;

  JDeprecateThingTypeResultClass = interface(JObjectClass)
  ['{53E8D88C-58ED-4291-B9B1-CD2FCE6BA8E7}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeprecateThingTypeResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DeprecateThingTypeResult')]
  JDeprecateThingTypeResult = interface(JObject)
  ['{E48B5E58-B584-4285-B110-DDF61A3D6260}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDeprecateThingTypeResult = class(TJavaGenericImport<JDeprecateThingTypeResultClass, JDeprecateThingTypeResult>) end;

  JDescribeCACertificateRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{CFDE64E4-DE88-4C0D-8704-24DAAD9ED40F}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDescribeCACertificateRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DescribeCACertificateRequest')]
  JDescribeCACertificateRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{F8CCE78B-15B4-44A7-9969-10C1E6957049}']
    { Property Methods }

    { methods }
    function getCertificateId: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateId(certificateId: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateId(certificateId: JString): JDescribeCACertificateRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DescribeCACertificateRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDescribeCACertificateRequest = class(TJavaGenericImport<JDescribeCACertificateRequestClass, JDescribeCACertificateRequest>) end;

  JDescribeCACertificateResultClass = interface(JObjectClass)
  ['{7554EB95-C6EA-40A3-82CF-0A3A2624F78F}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDescribeCACertificateResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DescribeCACertificateResult')]
  JDescribeCACertificateResult = interface(JObject)
  ['{2306A3CC-A424-4F12-AF36-8B301AA12E46}']
    { Property Methods }

    { methods }
    function getCertificateDescription: JCACertificateDescription; cdecl; //()Lcom/amazonaws/services/iot/model/CACertificateDescription;
    procedure setCertificateDescription(certificateDescription: JCACertificateDescription); cdecl; //(Lcom/amazonaws/services/iot/model/CACertificateDescription;)V
    function withCertificateDescription(certificateDescription: JCACertificateDescription): JDescribeCACertificateResult; cdecl; //(Lcom/amazonaws/services/iot/model/CACertificateDescription;)Lcom/amazonaws/services/iot/model/DescribeCACertificateResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDescribeCACertificateResult = class(TJavaGenericImport<JDescribeCACertificateResultClass, JDescribeCACertificateResult>) end;

  JDescribeCertificateRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{0E86B0BD-C14B-4903-8224-75DB310E57BD}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDescribeCertificateRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DescribeCertificateRequest')]
  JDescribeCertificateRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{F89A7B83-2C06-4B16-989E-FD27CAAFB4B3}']
    { Property Methods }

    { methods }
    function getCertificateId: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateId(certificateId: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateId(certificateId: JString): JDescribeCertificateRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DescribeCertificateRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDescribeCertificateRequest = class(TJavaGenericImport<JDescribeCertificateRequestClass, JDescribeCertificateRequest>) end;

  JDescribeCertificateResultClass = interface(JObjectClass)
  ['{34B4AB47-8FB7-4C55-B51B-27444C2117A0}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDescribeCertificateResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DescribeCertificateResult')]
  JDescribeCertificateResult = interface(JObject)
  ['{C42C1A53-6C5F-445C-B069-D9DA2B465119}']
    { Property Methods }

    { methods }
    function getCertificateDescription: JCertificateDescription; cdecl; //()Lcom/amazonaws/services/iot/model/CertificateDescription;
    procedure setCertificateDescription(certificateDescription: JCertificateDescription); cdecl; //(Lcom/amazonaws/services/iot/model/CertificateDescription;)V
    function withCertificateDescription(certificateDescription: JCertificateDescription): JDescribeCertificateResult; cdecl; //(Lcom/amazonaws/services/iot/model/CertificateDescription;)Lcom/amazonaws/services/iot/model/DescribeCertificateResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDescribeCertificateResult = class(TJavaGenericImport<JDescribeCertificateResultClass, JDescribeCertificateResult>) end;

  JDescribeEndpointRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{C771BDC2-8DF3-4B96-8964-D97DFE51AA1F}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDescribeEndpointRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DescribeEndpointRequest')]
  JDescribeEndpointRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{B7A08A24-2499-4731-83B8-C4836569441C}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDescribeEndpointRequest = class(TJavaGenericImport<JDescribeEndpointRequestClass, JDescribeEndpointRequest>) end;

  JDescribeEndpointResultClass = interface(JObjectClass)
  ['{793BCD23-158D-4C4F-8CF5-FBD136989DEC}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDescribeEndpointResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DescribeEndpointResult')]
  JDescribeEndpointResult = interface(JObject)
  ['{4390CE6C-1FBB-4B0B-B37C-024B2CB0BCDC}']
    { Property Methods }

    { methods }
    function getEndpointAddress: JString; cdecl; //()Ljava/lang/String;
    procedure setEndpointAddress(endpointAddress: JString); cdecl; //(Ljava/lang/String;)V
    function withEndpointAddress(endpointAddress: JString): JDescribeEndpointResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DescribeEndpointResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDescribeEndpointResult = class(TJavaGenericImport<JDescribeEndpointResultClass, JDescribeEndpointResult>) end;

  JDescribeThingRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{51FBE631-F622-445E-BD2A-F24A2A9F8BB6}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDescribeThingRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DescribeThingRequest')]
  JDescribeThingRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{CCB00B56-369E-4DC8-868B-8F366880DB5D}']
    { Property Methods }

    { methods }
    function getThingName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingName(thingName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingName(thingName: JString): JDescribeThingRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DescribeThingRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDescribeThingRequest = class(TJavaGenericImport<JDescribeThingRequestClass, JDescribeThingRequest>) end;

  JDescribeThingResultClass = interface(JObjectClass)
  ['{490F9B60-CE92-48BC-975A-667667744D17}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDescribeThingResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DescribeThingResult')]
  JDescribeThingResult = interface(JObject)
  ['{E0714B9E-3CAF-4D03-ADD8-EBE3BBC7C9E7}']
    { Property Methods }

    { methods }
    function getDefaultClientId: JString; cdecl; //()Ljava/lang/String;
    procedure setDefaultClientId(defaultClientId: JString); cdecl; //(Ljava/lang/String;)V
    function withDefaultClientId(defaultClientId: JString): JDescribeThingResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DescribeThingResult;
    function getThingName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingName(thingName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingName(thingName: JString): JDescribeThingResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DescribeThingResult;
    function getThingTypeName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingTypeName(thingTypeName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingTypeName(thingTypeName: JString): JDescribeThingResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DescribeThingResult;
    function getAttributes: JMap; cdecl; //()Ljava/util/Map;
    procedure setAttributes(attributes: JMap); cdecl; //(Ljava/util/Map;)V
    function withAttributes(attributes: JMap): JDescribeThingResult; cdecl; //(Ljava/util/Map;)Lcom/amazonaws/services/iot/model/DescribeThingResult;
    function addattributesEntry(key: JString; value: JString): JDescribeThingResult; cdecl; //(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DescribeThingResult;
    function clearattributesEntries: JDescribeThingResult; cdecl; //()Lcom/amazonaws/services/iot/model/DescribeThingResult;
    function getVersion: JLong; cdecl; //()Ljava/lang/Long;
    procedure setVersion(version: JLong); cdecl; //(Ljava/lang/Long;)V
    function withVersion(version: JLong): JDescribeThingResult; cdecl; //(Ljava/lang/Long;)Lcom/amazonaws/services/iot/model/DescribeThingResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDescribeThingResult = class(TJavaGenericImport<JDescribeThingResultClass, JDescribeThingResult>) end;

  JDescribeThingTypeRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{BC758FB5-8AC8-40A8-AF9C-07F981A74DC2}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDescribeThingTypeRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DescribeThingTypeRequest')]
  JDescribeThingTypeRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{EA1D6FAF-2F51-4BA1-8541-43F4E68C6FA5}']
    { Property Methods }

    { methods }
    function getThingTypeName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingTypeName(thingTypeName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingTypeName(thingTypeName: JString): JDescribeThingTypeRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DescribeThingTypeRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDescribeThingTypeRequest = class(TJavaGenericImport<JDescribeThingTypeRequestClass, JDescribeThingTypeRequest>) end;

  JDescribeThingTypeResultClass = interface(JObjectClass)
  ['{9C06862D-F4C7-4663-84F7-FD6836E0E0E7}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDescribeThingTypeResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DescribeThingTypeResult')]
  JDescribeThingTypeResult = interface(JObject)
  ['{094174A7-C3D7-42B8-B773-4FB6B8498A68}']
    { Property Methods }

    { methods }
    function getThingTypeName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingTypeName(thingTypeName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingTypeName(thingTypeName: JString): JDescribeThingTypeResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DescribeThingTypeResult;
    function getThingTypeProperties: JThingTypeProperties; cdecl; //()Lcom/amazonaws/services/iot/model/ThingTypeProperties;
    procedure setThingTypeProperties(thingTypeProperties: JThingTypeProperties); cdecl; //(Lcom/amazonaws/services/iot/model/ThingTypeProperties;)V
    function withThingTypeProperties(thingTypeProperties: JThingTypeProperties): JDescribeThingTypeResult; cdecl; //(Lcom/amazonaws/services/iot/model/ThingTypeProperties;)Lcom/amazonaws/services/iot/model/DescribeThingTypeResult;
    function getThingTypeMetadata: JThingTypeMetadata; cdecl; //()Lcom/amazonaws/services/iot/model/ThingTypeMetadata;
    procedure setThingTypeMetadata(thingTypeMetadata: JThingTypeMetadata); cdecl; //(Lcom/amazonaws/services/iot/model/ThingTypeMetadata;)V
    function withThingTypeMetadata(thingTypeMetadata: JThingTypeMetadata): JDescribeThingTypeResult; cdecl; //(Lcom/amazonaws/services/iot/model/ThingTypeMetadata;)Lcom/amazonaws/services/iot/model/DescribeThingTypeResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDescribeThingTypeResult = class(TJavaGenericImport<JDescribeThingTypeResultClass, JDescribeThingTypeResult>) end;

  JDetachPrincipalPolicyRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{77BD3528-870F-46A3-BAEA-7B21A9B1CC06}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDetachPrincipalPolicyRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DetachPrincipalPolicyRequest')]
  JDetachPrincipalPolicyRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{FB3C306C-62B5-430A-BA3C-496404D373EC}']
    { Property Methods }

    { methods }
    function getPolicyName: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyName(policyName: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyName(policyName: JString): JDetachPrincipalPolicyRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DetachPrincipalPolicyRequest;
    function getPrincipal: JString; cdecl; //()Ljava/lang/String;
    procedure setPrincipal(principal: JString); cdecl; //(Ljava/lang/String;)V
    function withPrincipal(principal: JString): JDetachPrincipalPolicyRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DetachPrincipalPolicyRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDetachPrincipalPolicyRequest = class(TJavaGenericImport<JDetachPrincipalPolicyRequestClass, JDetachPrincipalPolicyRequest>) end;

  JDetachThingPrincipalRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{C416813D-44AF-49CE-923A-AF706CAC1097}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDetachThingPrincipalRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DetachThingPrincipalRequest')]
  JDetachThingPrincipalRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{B22D38F0-AC4B-4E90-B959-562483580C0C}']
    { Property Methods }

    { methods }
    function getThingName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingName(thingName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingName(thingName: JString): JDetachThingPrincipalRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DetachThingPrincipalRequest;
    function getPrincipal: JString; cdecl; //()Ljava/lang/String;
    procedure setPrincipal(principal: JString); cdecl; //(Ljava/lang/String;)V
    function withPrincipal(principal: JString): JDetachThingPrincipalRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DetachThingPrincipalRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDetachThingPrincipalRequest = class(TJavaGenericImport<JDetachThingPrincipalRequestClass, JDetachThingPrincipalRequest>) end;

  JDetachThingPrincipalResultClass = interface(JObjectClass)
  ['{60630708-F0E2-4391-8952-2DBDB55AC093}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDetachThingPrincipalResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DetachThingPrincipalResult')]
  JDetachThingPrincipalResult = interface(JObject)
  ['{CBFBCB07-23F1-4F03-B6CA-0902574442E1}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDetachThingPrincipalResult = class(TJavaGenericImport<JDetachThingPrincipalResultClass, JDetachThingPrincipalResult>) end;

  JDisableTopicRuleRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{A7DE19D9-3462-4981-B25E-FEF10616484E}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDisableTopicRuleRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DisableTopicRuleRequest')]
  JDisableTopicRuleRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{E7D0D9A1-8D45-4291-8094-BAFB03D00979}']
    { Property Methods }

    { methods }
    function getRuleName: JString; cdecl; //()Ljava/lang/String;
    procedure setRuleName(ruleName: JString); cdecl; //(Ljava/lang/String;)V
    function withRuleName(ruleName: JString): JDisableTopicRuleRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DisableTopicRuleRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDisableTopicRuleRequest = class(TJavaGenericImport<JDisableTopicRuleRequestClass, JDisableTopicRuleRequest>) end;

  JDynamoDBActionClass = interface(JObjectClass)
  ['{C79E984F-8598-4206-914F-1B64CD87CC47}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDynamoDBAction; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DynamoDBAction')]
  JDynamoDBAction = interface(JObject)
  ['{36BCDF7B-1793-4E5D-8061-489A804881DB}']
    { Property Methods }

    { methods }
    function getTableName: JString; cdecl; //()Ljava/lang/String;
    procedure setTableName(tableName: JString); cdecl; //(Ljava/lang/String;)V
    function withTableName(tableName: JString): JDynamoDBAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DynamoDBAction;
    function getRoleArn: JString; cdecl; //()Ljava/lang/String;
    procedure setRoleArn(roleArn: JString); cdecl; //(Ljava/lang/String;)V
    function withRoleArn(roleArn: JString): JDynamoDBAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DynamoDBAction;
    function getOperation: JString; cdecl; //()Ljava/lang/String;
    procedure setOperation(operation: JString); cdecl; //(Ljava/lang/String;)V
    function withOperation(operation: JString): JDynamoDBAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DynamoDBAction;
    function getHashKeyField: JString; cdecl; //()Ljava/lang/String;
    procedure setHashKeyField(hashKeyField: JString); cdecl; //(Ljava/lang/String;)V
    function withHashKeyField(hashKeyField: JString): JDynamoDBAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DynamoDBAction;
    function getHashKeyValue: JString; cdecl; //()Ljava/lang/String;
    procedure setHashKeyValue(hashKeyValue: JString); cdecl; //(Ljava/lang/String;)V
    function withHashKeyValue(hashKeyValue: JString): JDynamoDBAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DynamoDBAction;
    function getHashKeyType: JString; cdecl; //()Ljava/lang/String;
    procedure setHashKeyType(hashKeyType: JString); cdecl; overload; //(Ljava/lang/String;)V
    function withHashKeyType(hashKeyType: JString): JDynamoDBAction; cdecl; overload; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DynamoDBAction;
    procedure setHashKeyType(hashKeyType: JDynamoKeyType); cdecl; overload; //(Lcom/amazonaws/services/iot/model/DynamoKeyType;)V
    function withHashKeyType(hashKeyType: JDynamoKeyType): JDynamoDBAction; cdecl; overload; //(Lcom/amazonaws/services/iot/model/DynamoKeyType;)Lcom/amazonaws/services/iot/model/DynamoDBAction;
    function getRangeKeyField: JString; cdecl; //()Ljava/lang/String;
    procedure setRangeKeyField(rangeKeyField: JString); cdecl; //(Ljava/lang/String;)V
    function withRangeKeyField(rangeKeyField: JString): JDynamoDBAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DynamoDBAction;
    function getRangeKeyValue: JString; cdecl; //()Ljava/lang/String;
    procedure setRangeKeyValue(rangeKeyValue: JString); cdecl; //(Ljava/lang/String;)V
    function withRangeKeyValue(rangeKeyValue: JString): JDynamoDBAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DynamoDBAction;
    function getRangeKeyType: JString; cdecl; //()Ljava/lang/String;
    procedure setRangeKeyType(rangeKeyType: JString); cdecl; overload; //(Ljava/lang/String;)V
    function withRangeKeyType(rangeKeyType: JString): JDynamoDBAction; cdecl; overload; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DynamoDBAction;
    procedure setRangeKeyType(rangeKeyType: JDynamoKeyType); cdecl; overload; //(Lcom/amazonaws/services/iot/model/DynamoKeyType;)V
    function withRangeKeyType(rangeKeyType: JDynamoKeyType): JDynamoDBAction; cdecl; overload; //(Lcom/amazonaws/services/iot/model/DynamoKeyType;)Lcom/amazonaws/services/iot/model/DynamoDBAction;
    function getPayloadField: JString; cdecl; //()Ljava/lang/String;
    procedure setPayloadField(payloadField: JString); cdecl; //(Ljava/lang/String;)V
    function withPayloadField(payloadField: JString): JDynamoDBAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DynamoDBAction;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDynamoDBAction = class(TJavaGenericImport<JDynamoDBActionClass, JDynamoDBAction>) end;

  JDynamoDBv2ActionClass = interface(JObjectClass)
  ['{9FDAC0BB-1DD4-4191-8048-E6332485E828}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDynamoDBv2Action; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DynamoDBv2Action')]
  JDynamoDBv2Action = interface(JObject)
  ['{C8AF1E61-7D45-4279-99D2-D901DDC58FAE}']
    { Property Methods }

    { methods }
    function getRoleArn: JString; cdecl; //()Ljava/lang/String;
    procedure setRoleArn(roleArn: JString); cdecl; //(Ljava/lang/String;)V
    function withRoleArn(roleArn: JString): JDynamoDBv2Action; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DynamoDBv2Action;
    function getPutItem: JPutItemInput; cdecl; //()Lcom/amazonaws/services/iot/model/PutItemInput;
    procedure setPutItem(putItem: JPutItemInput); cdecl; //(Lcom/amazonaws/services/iot/model/PutItemInput;)V
    function withPutItem(putItem: JPutItemInput): JDynamoDBv2Action; cdecl; //(Lcom/amazonaws/services/iot/model/PutItemInput;)Lcom/amazonaws/services/iot/model/DynamoDBv2Action;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDynamoDBv2Action = class(TJavaGenericImport<JDynamoDBv2ActionClass, JDynamoDBv2Action>) end;

  JDynamoKeyTypeClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{5A70666C-B08D-498B-9504-6567F728C80C}']
    { static Property Methods }
    {class} function _GetSTRING: JDynamoKeyType; //Lcom/amazonaws/services/iot/model/DynamoKeyType;
    {class} function _GetNUMBER: JDynamoKeyType; //Lcom/amazonaws/services/iot/model/DynamoKeyType;

    { static Methods }
    {class} function values: TJavaObjectArray<JDynamoKeyType>; cdecl; //()[Lcom/amazonaws/services/iot/model/DynamoKeyType;
    {class} function valueOf(P1: JString): JDynamoKeyType; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DynamoKeyType;
    {class} function fromValue(P1: JString): JDynamoKeyType; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/DynamoKeyType;

    { static Property }
    {class} property &STRING: JDynamoKeyType read _GetSTRING;
    {class} property NUMBER: JDynamoKeyType read _GetNUMBER;
  end;

  [JavaSignature('com/amazonaws/services/iot/model/DynamoKeyType')]
  JDynamoKeyType = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{BED2E7F2-D4BB-4AC1-930B-6A145FD58F40}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJDynamoKeyType = class(TJavaGenericImport<JDynamoKeyTypeClass, JDynamoKeyType>) end;

  JElasticsearchActionClass = interface(JObjectClass)
  ['{5696C1EB-891F-4893-8BE2-169A0E5ADEF3}']
    { static Property Methods }

    { static Methods }
    {class} function init: JElasticsearchAction; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ElasticsearchAction')]
  JElasticsearchAction = interface(JObject)
  ['{C94BE393-B553-4E0E-AC70-09D95FA8FFEA}']
    { Property Methods }

    { methods }
    function getRoleArn: JString; cdecl; //()Ljava/lang/String;
    procedure setRoleArn(roleArn: JString); cdecl; //(Ljava/lang/String;)V
    function withRoleArn(roleArn: JString): JElasticsearchAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ElasticsearchAction;
    function getEndpoint: JString; cdecl; //()Ljava/lang/String;
    procedure setEndpoint(endpoint: JString); cdecl; //(Ljava/lang/String;)V
    function withEndpoint(endpoint: JString): JElasticsearchAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ElasticsearchAction;
    function getIndex: JString; cdecl; //()Ljava/lang/String;
    procedure setIndex(index: JString); cdecl; //(Ljava/lang/String;)V
    function withIndex(index: JString): JElasticsearchAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ElasticsearchAction;
    function getType: JString; cdecl; //()Ljava/lang/String;
    procedure setType(atype: JString); cdecl; //(Ljava/lang/String;)V
    function withType(atype: JString): JElasticsearchAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ElasticsearchAction;
    function getId: JString; cdecl; //()Ljava/lang/String;
    procedure setId(id: JString); cdecl; //(Ljava/lang/String;)V
    function withId(id: JString): JElasticsearchAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ElasticsearchAction;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJElasticsearchAction = class(TJavaGenericImport<JElasticsearchActionClass, JElasticsearchAction>) end;

  JEnableTopicRuleRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{BBA9ACC1-FD06-4020-92D5-C82C35B1CD66}']
    { static Property Methods }

    { static Methods }
    {class} function init: JEnableTopicRuleRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/EnableTopicRuleRequest')]
  JEnableTopicRuleRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{07A298D6-B93A-459B-BDA8-77EF8387E976}']
    { Property Methods }

    { methods }
    function getRuleName: JString; cdecl; //()Ljava/lang/String;
    procedure setRuleName(ruleName: JString); cdecl; //(Ljava/lang/String;)V
    function withRuleName(ruleName: JString): JEnableTopicRuleRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/EnableTopicRuleRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJEnableTopicRuleRequest = class(TJavaGenericImport<JEnableTopicRuleRequestClass, JEnableTopicRuleRequest>) end;

  JFirehoseActionClass = interface(JObjectClass)
  ['{D6ABA4B3-939A-42A5-810B-9690B4EE391E}']
    { static Property Methods }

    { static Methods }
    {class} function init: JFirehoseAction; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/FirehoseAction')]
  JFirehoseAction = interface(JObject)
  ['{F51754D5-C422-455F-824D-5F7CBA00B9F5}']
    { Property Methods }

    { methods }
    function getRoleArn: JString; cdecl; //()Ljava/lang/String;
    procedure setRoleArn(roleArn: JString); cdecl; //(Ljava/lang/String;)V
    function withRoleArn(roleArn: JString): JFirehoseAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/FirehoseAction;
    function getDeliveryStreamName: JString; cdecl; //()Ljava/lang/String;
    procedure setDeliveryStreamName(deliveryStreamName: JString); cdecl; //(Ljava/lang/String;)V
    function withDeliveryStreamName(deliveryStreamName: JString): JFirehoseAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/FirehoseAction;
    function getSeparator: JString; cdecl; //()Ljava/lang/String;
    procedure setSeparator(separator: JString); cdecl; //(Ljava/lang/String;)V
    function withSeparator(separator: JString): JFirehoseAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/FirehoseAction;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJFirehoseAction = class(TJavaGenericImport<JFirehoseActionClass, JFirehoseAction>) end;

  JGetLoggingOptionsRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{24BCEC76-0C2D-4DBB-A4CE-15DA9E516ABA}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetLoggingOptionsRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/GetLoggingOptionsRequest')]
  JGetLoggingOptionsRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{23AADCF0-173C-4CB2-8061-244D0A53AC35}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJGetLoggingOptionsRequest = class(TJavaGenericImport<JGetLoggingOptionsRequestClass, JGetLoggingOptionsRequest>) end;

  JGetLoggingOptionsResultClass = interface(JObjectClass)
  ['{BDC59C9A-B99A-4D66-A3CA-0851204D69FF}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetLoggingOptionsResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/GetLoggingOptionsResult')]
  JGetLoggingOptionsResult = interface(JObject)
  ['{7BC30F01-FB67-4CEC-AE00-C91370E85A94}']
    { Property Methods }

    { methods }
    function getRoleArn: JString; cdecl; //()Ljava/lang/String;
    procedure setRoleArn(roleArn: JString); cdecl; //(Ljava/lang/String;)V
    function withRoleArn(roleArn: JString): JGetLoggingOptionsResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/GetLoggingOptionsResult;
    function getLogLevel: JString; cdecl; //()Ljava/lang/String;
    procedure setLogLevel(logLevel: JString); cdecl; overload; //(Ljava/lang/String;)V
    function withLogLevel(logLevel: JString): JGetLoggingOptionsResult; cdecl; overload; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/GetLoggingOptionsResult;
    procedure setLogLevel(logLevel: JLogLevel); cdecl; overload; //(Lcom/amazonaws/services/iot/model/LogLevel;)V
    function withLogLevel(logLevel: JLogLevel): JGetLoggingOptionsResult; cdecl; overload; //(Lcom/amazonaws/services/iot/model/LogLevel;)Lcom/amazonaws/services/iot/model/GetLoggingOptionsResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJGetLoggingOptionsResult = class(TJavaGenericImport<JGetLoggingOptionsResultClass, JGetLoggingOptionsResult>) end;

  JGetPolicyRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{81319705-2A40-4744-A7F4-53F1EDB5E743}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetPolicyRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/GetPolicyRequest')]
  JGetPolicyRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{04E176E0-51B0-4ACB-8582-0ABA373238C6}']
    { Property Methods }

    { methods }
    function getPolicyName: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyName(policyName: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyName(policyName: JString): JGetPolicyRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/GetPolicyRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJGetPolicyRequest = class(TJavaGenericImport<JGetPolicyRequestClass, JGetPolicyRequest>) end;

  JGetPolicyResultClass = interface(JObjectClass)
  ['{2AA3F559-EA60-4F2D-BE0E-24AC7EE43A69}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetPolicyResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/GetPolicyResult')]
  JGetPolicyResult = interface(JObject)
  ['{0639127C-E829-41C0-A91D-CBDB9E2E517C}']
    { Property Methods }

    { methods }
    function getPolicyName: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyName(policyName: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyName(policyName: JString): JGetPolicyResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/GetPolicyResult;
    function getPolicyArn: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyArn(policyArn: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyArn(policyArn: JString): JGetPolicyResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/GetPolicyResult;
    function getPolicyDocument: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyDocument(policyDocument: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyDocument(policyDocument: JString): JGetPolicyResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/GetPolicyResult;
    function getDefaultVersionId: JString; cdecl; //()Ljava/lang/String;
    procedure setDefaultVersionId(defaultVersionId: JString); cdecl; //(Ljava/lang/String;)V
    function withDefaultVersionId(defaultVersionId: JString): JGetPolicyResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/GetPolicyResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJGetPolicyResult = class(TJavaGenericImport<JGetPolicyResultClass, JGetPolicyResult>) end;

  JGetPolicyVersionRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{6076ED2B-5194-4D8C-A24E-2E6F1D41CC12}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetPolicyVersionRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/GetPolicyVersionRequest')]
  JGetPolicyVersionRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{534C08A1-F06F-4167-BC0A-49C4420B4144}']
    { Property Methods }

    { methods }
    function getPolicyName: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyName(policyName: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyName(policyName: JString): JGetPolicyVersionRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/GetPolicyVersionRequest;
    function getPolicyVersionId: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyVersionId(policyVersionId: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyVersionId(policyVersionId: JString): JGetPolicyVersionRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/GetPolicyVersionRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJGetPolicyVersionRequest = class(TJavaGenericImport<JGetPolicyVersionRequestClass, JGetPolicyVersionRequest>) end;

  JGetPolicyVersionResultClass = interface(JObjectClass)
  ['{9E55DBF7-88CF-4AC3-8E7F-B55E88D10E8A}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetPolicyVersionResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/GetPolicyVersionResult')]
  JGetPolicyVersionResult = interface(JObject)
  ['{E8735E2F-5FB2-44FD-BC2A-21536EE2A85A}']
    { Property Methods }

    { methods }
    function getPolicyArn: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyArn(policyArn: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyArn(policyArn: JString): JGetPolicyVersionResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/GetPolicyVersionResult;
    function getPolicyName: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyName(policyName: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyName(policyName: JString): JGetPolicyVersionResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/GetPolicyVersionResult;
    function getPolicyDocument: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyDocument(policyDocument: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyDocument(policyDocument: JString): JGetPolicyVersionResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/GetPolicyVersionResult;
    function getPolicyVersionId: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyVersionId(policyVersionId: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyVersionId(policyVersionId: JString): JGetPolicyVersionResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/GetPolicyVersionResult;
    function isIsDefaultVersion: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getIsDefaultVersion: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setIsDefaultVersion(isDefaultVersion: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withIsDefaultVersion(isDefaultVersion: JBoolean): JGetPolicyVersionResult; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/GetPolicyVersionResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJGetPolicyVersionResult = class(TJavaGenericImport<JGetPolicyVersionResultClass, JGetPolicyVersionResult>) end;

  JGetRegistrationCodeRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{756797C2-9C16-4DAE-80A6-E0C64F83A0F8}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetRegistrationCodeRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/GetRegistrationCodeRequest')]
  JGetRegistrationCodeRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{9C763257-DFE8-4CA7-A432-F3C0A92EC5E9}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJGetRegistrationCodeRequest = class(TJavaGenericImport<JGetRegistrationCodeRequestClass, JGetRegistrationCodeRequest>) end;

  JGetRegistrationCodeResultClass = interface(JObjectClass)
  ['{DA52FDCC-69C0-494F-A3DC-195035D634CE}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetRegistrationCodeResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/GetRegistrationCodeResult')]
  JGetRegistrationCodeResult = interface(JObject)
  ['{DF35BAD6-69F7-436E-BF26-334764487A31}']
    { Property Methods }

    { methods }
    function getRegistrationCode: JString; cdecl; //()Ljava/lang/String;
    procedure setRegistrationCode(registrationCode: JString); cdecl; //(Ljava/lang/String;)V
    function withRegistrationCode(registrationCode: JString): JGetRegistrationCodeResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/GetRegistrationCodeResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJGetRegistrationCodeResult = class(TJavaGenericImport<JGetRegistrationCodeResultClass, JGetRegistrationCodeResult>) end;

  JGetTopicRuleRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{2558AC2E-F944-4B49-8208-5075A13C454E}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetTopicRuleRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/GetTopicRuleRequest')]
  JGetTopicRuleRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{65C88043-1CB0-4E96-9F50-1CD74B16DA65}']
    { Property Methods }

    { methods }
    function getRuleName: JString; cdecl; //()Ljava/lang/String;
    procedure setRuleName(ruleName: JString); cdecl; //(Ljava/lang/String;)V
    function withRuleName(ruleName: JString): JGetTopicRuleRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/GetTopicRuleRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJGetTopicRuleRequest = class(TJavaGenericImport<JGetTopicRuleRequestClass, JGetTopicRuleRequest>) end;

  JGetTopicRuleResultClass = interface(JObjectClass)
  ['{737E1A8E-ABC0-4A3D-A709-75AD5DCED032}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetTopicRuleResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/GetTopicRuleResult')]
  JGetTopicRuleResult = interface(JObject)
  ['{B8193A11-25EC-4A1C-A2E5-FBC8AF8472E0}']
    { Property Methods }

    { methods }
    function getRuleArn: JString; cdecl; //()Ljava/lang/String;
    procedure setRuleArn(ruleArn: JString); cdecl; //(Ljava/lang/String;)V
    function withRuleArn(ruleArn: JString): JGetTopicRuleResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/GetTopicRuleResult;
    function getRule: JTopicRule; cdecl; //()Lcom/amazonaws/services/iot/model/TopicRule;
    procedure setRule(rule: JTopicRule); cdecl; //(Lcom/amazonaws/services/iot/model/TopicRule;)V
    function withRule(rule: JTopicRule): JGetTopicRuleResult; cdecl; //(Lcom/amazonaws/services/iot/model/TopicRule;)Lcom/amazonaws/services/iot/model/GetTopicRuleResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJGetTopicRuleResult = class(TJavaGenericImport<JGetTopicRuleResultClass, JGetTopicRuleResult>) end;

  JInternalExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{29A6204A-9F2E-4CA7-91B2-E0E3F2655F14}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JInternalException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/InternalException')]
  JInternalException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{DEC70F78-6AF3-4DCE-AF9F-D8901EFFD1E5}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJInternalException = class(TJavaGenericImport<JInternalExceptionClass, JInternalException>) end;

  JInternalFailureExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{BEB01642-3E8A-411F-97E8-93B6CA9BFA7C}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JInternalFailureException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/InternalFailureException')]
  JInternalFailureException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{162876A4-0F18-4021-B9BC-9F3A83895169}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJInternalFailureException = class(TJavaGenericImport<JInternalFailureExceptionClass, JInternalFailureException>) end;

  JInvalidRequestExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{66A647E7-764C-4227-A69D-F533004802BF}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JInvalidRequestException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/InvalidRequestException')]
  JInvalidRequestException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{1C9BD2B7-CF1B-44D4-9526-445729D6A0DB}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJInvalidRequestException = class(TJavaGenericImport<JInvalidRequestExceptionClass, JInvalidRequestException>) end;

  JKeyPairClass = interface(JObjectClass)
  ['{376DB8AE-F903-405F-A042-1A5C67F1E108}']
    { static Property Methods }

    { static Methods }
    {class} function init: JKeyPair; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/KeyPair')]
  JKeyPair = interface(JObject)
  ['{FDB04939-F395-4750-AEDF-CAC4337E6D82}']
    { Property Methods }

    { methods }
    function getPublicKey: JString; cdecl; //()Ljava/lang/String;
    procedure setPublicKey(publicKey: JString); cdecl; //(Ljava/lang/String;)V
    function withPublicKey(publicKey: JString): JKeyPair; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/KeyPair;
    function getPrivateKey: JString; cdecl; //()Ljava/lang/String;
    procedure setPrivateKey(privateKey: JString); cdecl; //(Ljava/lang/String;)V
    function withPrivateKey(privateKey: JString): JKeyPair; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/KeyPair;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJKeyPair = class(TJavaGenericImport<JKeyPairClass, JKeyPair>) end;

  JKinesisActionClass = interface(JObjectClass)
  ['{983684F6-8E77-4B24-A85E-E9A9885AF17F}']
    { static Property Methods }

    { static Methods }
    {class} function init: JKinesisAction; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/KinesisAction')]
  JKinesisAction = interface(JObject)
  ['{A3B0537C-E2E4-4301-ADD3-83BE0FB6EC1C}']
    { Property Methods }

    { methods }
    function getRoleArn: JString; cdecl; //()Ljava/lang/String;
    procedure setRoleArn(roleArn: JString); cdecl; //(Ljava/lang/String;)V
    function withRoleArn(roleArn: JString): JKinesisAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/KinesisAction;
    function getStreamName: JString; cdecl; //()Ljava/lang/String;
    procedure setStreamName(streamName: JString); cdecl; //(Ljava/lang/String;)V
    function withStreamName(streamName: JString): JKinesisAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/KinesisAction;
    function getPartitionKey: JString; cdecl; //()Ljava/lang/String;
    procedure setPartitionKey(partitionKey: JString); cdecl; //(Ljava/lang/String;)V
    function withPartitionKey(partitionKey: JString): JKinesisAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/KinesisAction;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJKinesisAction = class(TJavaGenericImport<JKinesisActionClass, JKinesisAction>) end;

  JLambdaActionClass = interface(JObjectClass)
  ['{1A8CDDF7-38E6-465D-90E3-ABAD0CCCC547}']
    { static Property Methods }

    { static Methods }
    {class} function init: JLambdaAction; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/LambdaAction')]
  JLambdaAction = interface(JObject)
  ['{AFEC2D46-071D-4074-89B7-B91FBDF67C25}']
    { Property Methods }

    { methods }
    function getFunctionArn: JString; cdecl; //()Ljava/lang/String;
    procedure setFunctionArn(functionArn: JString); cdecl; //(Ljava/lang/String;)V
    function withFunctionArn(functionArn: JString): JLambdaAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/LambdaAction;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJLambdaAction = class(TJavaGenericImport<JLambdaActionClass, JLambdaAction>) end;

  JLimitExceededExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{00926ABA-5F44-4CF8-A7B6-B4754D36244D}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JLimitExceededException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/LimitExceededException')]
  JLimitExceededException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{BFD33568-5817-406E-9EDF-6C01D28998E4}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJLimitExceededException = class(TJavaGenericImport<JLimitExceededExceptionClass, JLimitExceededException>) end;

  JListCACertificatesRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{A1423ECE-3153-4AF2-B2DD-E0EC8E704020}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListCACertificatesRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListCACertificatesRequest')]
  JListCACertificatesRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{7825561E-4F4A-45C8-9800-997E4726D4FB}']
    { Property Methods }

    { methods }
    function getPageSize: JInteger; cdecl; //()Ljava/lang/Integer;
    procedure setPageSize(pageSize: JInteger); cdecl; //(Ljava/lang/Integer;)V
    function withPageSize(pageSize: JInteger): JListCACertificatesRequest; cdecl; //(Ljava/lang/Integer;)Lcom/amazonaws/services/iot/model/ListCACertificatesRequest;
    function getMarker: JString; cdecl; //()Ljava/lang/String;
    procedure setMarker(marker: JString); cdecl; //(Ljava/lang/String;)V
    function withMarker(marker: JString): JListCACertificatesRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListCACertificatesRequest;
    function isAscendingOrder: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getAscendingOrder: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setAscendingOrder(ascendingOrder: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withAscendingOrder(ascendingOrder: JBoolean): JListCACertificatesRequest; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/ListCACertificatesRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListCACertificatesRequest = class(TJavaGenericImport<JListCACertificatesRequestClass, JListCACertificatesRequest>) end;

  JListCACertificatesResultClass = interface(JObjectClass)
  ['{9A11B3B1-B068-4CFD-B57C-0A9524BAB259}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListCACertificatesResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListCACertificatesResult')]
  JListCACertificatesResult = interface(JObject)
  ['{00F68192-3DBB-47E0-AF01-6DF2936C2A11}']
    { Property Methods }

    { methods }
    function getCertificates: JList; cdecl; //()Ljava/util/List;
    procedure setCertificates(certificates: JCollection); cdecl; //(Ljava/util/Collection;)V
    function withCertificates(certificates: TJavaObjectArray<JCACertificate>): JListCACertificatesResult; cdecl; overload; //([Lcom/amazonaws/services/iot/model/CACertificate;)Lcom/amazonaws/services/iot/model/ListCACertificatesResult;
    function withCertificates(certificates: JCollection): JListCACertificatesResult; cdecl; overload; //(Ljava/util/Collection;)Lcom/amazonaws/services/iot/model/ListCACertificatesResult;
    function getNextMarker: JString; cdecl; //()Ljava/lang/String;
    procedure setNextMarker(nextMarker: JString); cdecl; //(Ljava/lang/String;)V
    function withNextMarker(nextMarker: JString): JListCACertificatesResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListCACertificatesResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListCACertificatesResult = class(TJavaGenericImport<JListCACertificatesResultClass, JListCACertificatesResult>) end;

  JListCertificatesByCARequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{9BF70D64-0A9F-4F2E-91E4-55CFD573BCCB}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListCertificatesByCARequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListCertificatesByCARequest')]
  JListCertificatesByCARequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{DA8B20EB-F7A4-4796-9428-CFE8B25A0AED}']
    { Property Methods }

    { methods }
    function getCaCertificateId: JString; cdecl; //()Ljava/lang/String;
    procedure setCaCertificateId(caCertificateId: JString); cdecl; //(Ljava/lang/String;)V
    function withCaCertificateId(caCertificateId: JString): JListCertificatesByCARequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListCertificatesByCARequest;
    function getPageSize: JInteger; cdecl; //()Ljava/lang/Integer;
    procedure setPageSize(pageSize: JInteger); cdecl; //(Ljava/lang/Integer;)V
    function withPageSize(pageSize: JInteger): JListCertificatesByCARequest; cdecl; //(Ljava/lang/Integer;)Lcom/amazonaws/services/iot/model/ListCertificatesByCARequest;
    function getMarker: JString; cdecl; //()Ljava/lang/String;
    procedure setMarker(marker: JString); cdecl; //(Ljava/lang/String;)V
    function withMarker(marker: JString): JListCertificatesByCARequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListCertificatesByCARequest;
    function isAscendingOrder: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getAscendingOrder: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setAscendingOrder(ascendingOrder: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withAscendingOrder(ascendingOrder: JBoolean): JListCertificatesByCARequest; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/ListCertificatesByCARequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListCertificatesByCARequest = class(TJavaGenericImport<JListCertificatesByCARequestClass, JListCertificatesByCARequest>) end;

  JListCertificatesByCAResultClass = interface(JObjectClass)
  ['{28E41541-5738-46E0-B091-0ABEF99C0EA5}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListCertificatesByCAResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListCertificatesByCAResult')]
  JListCertificatesByCAResult = interface(JObject)
  ['{790A5A79-1F13-4410-B967-5CA280E0DFA0}']
    { Property Methods }

    { methods }
    function getCertificates: JList; cdecl; //()Ljava/util/List;
    procedure setCertificates(certificates: JCollection); cdecl; //(Ljava/util/Collection;)V
    function withCertificates(certificates: TJavaObjectArray<JCertificate>): JListCertificatesByCAResult; cdecl; overload; //([Lcom/amazonaws/services/iot/model/Certificate;)Lcom/amazonaws/services/iot/model/ListCertificatesByCAResult;
    function withCertificates(certificates: JCollection): JListCertificatesByCAResult; cdecl; overload; //(Ljava/util/Collection;)Lcom/amazonaws/services/iot/model/ListCertificatesByCAResult;
    function getNextMarker: JString; cdecl; //()Ljava/lang/String;
    procedure setNextMarker(nextMarker: JString); cdecl; //(Ljava/lang/String;)V
    function withNextMarker(nextMarker: JString): JListCertificatesByCAResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListCertificatesByCAResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListCertificatesByCAResult = class(TJavaGenericImport<JListCertificatesByCAResultClass, JListCertificatesByCAResult>) end;

  JListCertificatesRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{37100E4F-41C2-4992-812E-38397514A694}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListCertificatesRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListCertificatesRequest')]
  JListCertificatesRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{FE77D23D-C3C8-4792-942E-C698181FC04C}']
    { Property Methods }

    { methods }
    function getPageSize: JInteger; cdecl; //()Ljava/lang/Integer;
    procedure setPageSize(pageSize: JInteger); cdecl; //(Ljava/lang/Integer;)V
    function withPageSize(pageSize: JInteger): JListCertificatesRequest; cdecl; //(Ljava/lang/Integer;)Lcom/amazonaws/services/iot/model/ListCertificatesRequest;
    function getMarker: JString; cdecl; //()Ljava/lang/String;
    procedure setMarker(marker: JString); cdecl; //(Ljava/lang/String;)V
    function withMarker(marker: JString): JListCertificatesRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListCertificatesRequest;
    function isAscendingOrder: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getAscendingOrder: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setAscendingOrder(ascendingOrder: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withAscendingOrder(ascendingOrder: JBoolean): JListCertificatesRequest; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/ListCertificatesRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListCertificatesRequest = class(TJavaGenericImport<JListCertificatesRequestClass, JListCertificatesRequest>) end;

  JListCertificatesResultClass = interface(JObjectClass)
  ['{15083D8E-D6F4-49D3-8619-88C8A15F7CE0}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListCertificatesResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListCertificatesResult')]
  JListCertificatesResult = interface(JObject)
  ['{C3D2836E-659D-4F7F-A563-9FDBCD34B811}']
    { Property Methods }

    { methods }
    function getCertificates: JList; cdecl; //()Ljava/util/List;
    procedure setCertificates(certificates: JCollection); cdecl; //(Ljava/util/Collection;)V
    function withCertificates(certificates: TJavaObjectArray<JCertificate>): JListCertificatesResult; cdecl; overload; //([Lcom/amazonaws/services/iot/model/Certificate;)Lcom/amazonaws/services/iot/model/ListCertificatesResult;
    function withCertificates(certificates: JCollection): JListCertificatesResult; cdecl; overload; //(Ljava/util/Collection;)Lcom/amazonaws/services/iot/model/ListCertificatesResult;
    function getNextMarker: JString; cdecl; //()Ljava/lang/String;
    procedure setNextMarker(nextMarker: JString); cdecl; //(Ljava/lang/String;)V
    function withNextMarker(nextMarker: JString): JListCertificatesResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListCertificatesResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListCertificatesResult = class(TJavaGenericImport<JListCertificatesResultClass, JListCertificatesResult>) end;

  JListOutgoingCertificatesRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{902A7488-EB3C-4015-9B0D-82A5E976D0DC}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListOutgoingCertificatesRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListOutgoingCertificatesRequest')]
  JListOutgoingCertificatesRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{611B05D0-C08E-43C9-B374-F7204F66FEC9}']
    { Property Methods }

    { methods }
    function getPageSize: JInteger; cdecl; //()Ljava/lang/Integer;
    procedure setPageSize(pageSize: JInteger); cdecl; //(Ljava/lang/Integer;)V
    function withPageSize(pageSize: JInteger): JListOutgoingCertificatesRequest; cdecl; //(Ljava/lang/Integer;)Lcom/amazonaws/services/iot/model/ListOutgoingCertificatesRequest;
    function getMarker: JString; cdecl; //()Ljava/lang/String;
    procedure setMarker(marker: JString); cdecl; //(Ljava/lang/String;)V
    function withMarker(marker: JString): JListOutgoingCertificatesRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListOutgoingCertificatesRequest;
    function isAscendingOrder: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getAscendingOrder: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setAscendingOrder(ascendingOrder: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withAscendingOrder(ascendingOrder: JBoolean): JListOutgoingCertificatesRequest; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/ListOutgoingCertificatesRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListOutgoingCertificatesRequest = class(TJavaGenericImport<JListOutgoingCertificatesRequestClass, JListOutgoingCertificatesRequest>) end;

  JListOutgoingCertificatesResultClass = interface(JObjectClass)
  ['{FA776AC1-A982-427E-9373-3C720FBD84E1}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListOutgoingCertificatesResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListOutgoingCertificatesResult')]
  JListOutgoingCertificatesResult = interface(JObject)
  ['{47C8395A-EDA0-4195-8FB5-11BEA84AA9C8}']
    { Property Methods }

    { methods }
    function getOutgoingCertificates: JList; cdecl; //()Ljava/util/List;
    procedure setOutgoingCertificates(outgoingCertificates: JCollection); cdecl; //(Ljava/util/Collection;)V
    function withOutgoingCertificates(outgoingCertificates: TJavaObjectArray<JOutgoingCertificate>): JListOutgoingCertificatesResult; cdecl; overload; //([Lcom/amazonaws/services/iot/model/OutgoingCertificate;)Lcom/amazonaws/services/iot/model/ListOutgoingCertificatesResult;
    function withOutgoingCertificates(outgoingCertificates: JCollection): JListOutgoingCertificatesResult; cdecl; overload; //(Ljava/util/Collection;)Lcom/amazonaws/services/iot/model/ListOutgoingCertificatesResult;
    function getNextMarker: JString; cdecl; //()Ljava/lang/String;
    procedure setNextMarker(nextMarker: JString); cdecl; //(Ljava/lang/String;)V
    function withNextMarker(nextMarker: JString): JListOutgoingCertificatesResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListOutgoingCertificatesResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListOutgoingCertificatesResult = class(TJavaGenericImport<JListOutgoingCertificatesResultClass, JListOutgoingCertificatesResult>) end;

  JListPoliciesRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{ED1DF1C0-462B-457C-A142-ED9EBEB12ABC}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListPoliciesRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListPoliciesRequest')]
  JListPoliciesRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{6644D3D5-AE1B-4758-926B-9F8FCC26632B}']
    { Property Methods }

    { methods }
    function getMarker: JString; cdecl; //()Ljava/lang/String;
    procedure setMarker(marker: JString); cdecl; //(Ljava/lang/String;)V
    function withMarker(marker: JString): JListPoliciesRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListPoliciesRequest;
    function getPageSize: JInteger; cdecl; //()Ljava/lang/Integer;
    procedure setPageSize(pageSize: JInteger); cdecl; //(Ljava/lang/Integer;)V
    function withPageSize(pageSize: JInteger): JListPoliciesRequest; cdecl; //(Ljava/lang/Integer;)Lcom/amazonaws/services/iot/model/ListPoliciesRequest;
    function isAscendingOrder: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getAscendingOrder: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setAscendingOrder(ascendingOrder: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withAscendingOrder(ascendingOrder: JBoolean): JListPoliciesRequest; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/ListPoliciesRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListPoliciesRequest = class(TJavaGenericImport<JListPoliciesRequestClass, JListPoliciesRequest>) end;

  JListPoliciesResultClass = interface(JObjectClass)
  ['{16A50707-E516-4853-B057-A0EC521FD1C2}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListPoliciesResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListPoliciesResult')]
  JListPoliciesResult = interface(JObject)
  ['{FE3F0C0A-40FD-4543-B6B1-45821D92AE44}']
    { Property Methods }

    { methods }
    function getPolicies: JList; cdecl; //()Ljava/util/List;
    procedure setPolicies(policies: JCollection); cdecl; //(Ljava/util/Collection;)V
    function withPolicies(policies: TJavaObjectArray<JPolicy>): JListPoliciesResult; cdecl; overload; //([Lcom/amazonaws/services/iot/model/Policy;)Lcom/amazonaws/services/iot/model/ListPoliciesResult;
    function withPolicies(policies: JCollection): JListPoliciesResult; cdecl; overload; //(Ljava/util/Collection;)Lcom/amazonaws/services/iot/model/ListPoliciesResult;
    function getNextMarker: JString; cdecl; //()Ljava/lang/String;
    procedure setNextMarker(nextMarker: JString); cdecl; //(Ljava/lang/String;)V
    function withNextMarker(nextMarker: JString): JListPoliciesResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListPoliciesResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListPoliciesResult = class(TJavaGenericImport<JListPoliciesResultClass, JListPoliciesResult>) end;

  JListPolicyPrincipalsRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{C0EA5D50-D131-404C-A9C0-0B566FD64F22}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListPolicyPrincipalsRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListPolicyPrincipalsRequest')]
  JListPolicyPrincipalsRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{3D7A3A61-7B01-44B0-B220-5A448387EC57}']
    { Property Methods }

    { methods }
    function getPolicyName: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyName(policyName: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyName(policyName: JString): JListPolicyPrincipalsRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListPolicyPrincipalsRequest;
    function getMarker: JString; cdecl; //()Ljava/lang/String;
    procedure setMarker(marker: JString); cdecl; //(Ljava/lang/String;)V
    function withMarker(marker: JString): JListPolicyPrincipalsRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListPolicyPrincipalsRequest;
    function getPageSize: JInteger; cdecl; //()Ljava/lang/Integer;
    procedure setPageSize(pageSize: JInteger); cdecl; //(Ljava/lang/Integer;)V
    function withPageSize(pageSize: JInteger): JListPolicyPrincipalsRequest; cdecl; //(Ljava/lang/Integer;)Lcom/amazonaws/services/iot/model/ListPolicyPrincipalsRequest;
    function isAscendingOrder: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getAscendingOrder: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setAscendingOrder(ascendingOrder: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withAscendingOrder(ascendingOrder: JBoolean): JListPolicyPrincipalsRequest; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/ListPolicyPrincipalsRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListPolicyPrincipalsRequest = class(TJavaGenericImport<JListPolicyPrincipalsRequestClass, JListPolicyPrincipalsRequest>) end;

  JListPolicyPrincipalsResultClass = interface(JObjectClass)
  ['{B3FC2162-4DD3-4C8A-B085-3F9602BD3904}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListPolicyPrincipalsResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListPolicyPrincipalsResult')]
  JListPolicyPrincipalsResult = interface(JObject)
  ['{1DE6B554-98D1-4279-BCA8-F73B18872006}']
    { Property Methods }

    { methods }
    function getPrincipals: JList; cdecl; //()Ljava/util/List;
    procedure setPrincipals(principals: JCollection); cdecl; //(Ljava/util/Collection;)V
    function withPrincipals(principals: TJavaObjectArray<JString>): JListPolicyPrincipalsResult; cdecl; overload; //([Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListPolicyPrincipalsResult;
    function withPrincipals(principals: JCollection): JListPolicyPrincipalsResult; cdecl; overload; //(Ljava/util/Collection;)Lcom/amazonaws/services/iot/model/ListPolicyPrincipalsResult;
    function getNextMarker: JString; cdecl; //()Ljava/lang/String;
    procedure setNextMarker(nextMarker: JString); cdecl; //(Ljava/lang/String;)V
    function withNextMarker(nextMarker: JString): JListPolicyPrincipalsResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListPolicyPrincipalsResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListPolicyPrincipalsResult = class(TJavaGenericImport<JListPolicyPrincipalsResultClass, JListPolicyPrincipalsResult>) end;

  JListPolicyVersionsRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{7B9BB305-AB78-497C-BC62-736DBE787FEE}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListPolicyVersionsRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListPolicyVersionsRequest')]
  JListPolicyVersionsRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{0681475C-B5C7-478F-ACE6-066B0739BAAA}']
    { Property Methods }

    { methods }
    function getPolicyName: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyName(policyName: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyName(policyName: JString): JListPolicyVersionsRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListPolicyVersionsRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListPolicyVersionsRequest = class(TJavaGenericImport<JListPolicyVersionsRequestClass, JListPolicyVersionsRequest>) end;

  JListPolicyVersionsResultClass = interface(JObjectClass)
  ['{3C9CB1EF-504A-4CDE-81F6-193C8463B0D0}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListPolicyVersionsResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListPolicyVersionsResult')]
  JListPolicyVersionsResult = interface(JObject)
  ['{D326238F-7232-4D56-9416-0EF71BB21715}']
    { Property Methods }

    { methods }
    function getPolicyVersions: JList; cdecl; //()Ljava/util/List;
    procedure setPolicyVersions(policyVersions: JCollection); cdecl; //(Ljava/util/Collection;)V
    function withPolicyVersions(policyVersions: TJavaObjectArray<JPolicyVersion>): JListPolicyVersionsResult; cdecl; overload; //([Lcom/amazonaws/services/iot/model/PolicyVersion;)Lcom/amazonaws/services/iot/model/ListPolicyVersionsResult;
    function withPolicyVersions(policyVersions: JCollection): JListPolicyVersionsResult; cdecl; overload; //(Ljava/util/Collection;)Lcom/amazonaws/services/iot/model/ListPolicyVersionsResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListPolicyVersionsResult = class(TJavaGenericImport<JListPolicyVersionsResultClass, JListPolicyVersionsResult>) end;

  JListPrincipalPoliciesRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{7B8B97CD-70DE-4AA2-8F38-C73A4A7AD371}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListPrincipalPoliciesRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListPrincipalPoliciesRequest')]
  JListPrincipalPoliciesRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{120264F5-21E6-43EC-8AA0-5F71B26EDD7A}']
    { Property Methods }

    { methods }
    function getPrincipal: JString; cdecl; //()Ljava/lang/String;
    procedure setPrincipal(principal: JString); cdecl; //(Ljava/lang/String;)V
    function withPrincipal(principal: JString): JListPrincipalPoliciesRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListPrincipalPoliciesRequest;
    function getMarker: JString; cdecl; //()Ljava/lang/String;
    procedure setMarker(marker: JString); cdecl; //(Ljava/lang/String;)V
    function withMarker(marker: JString): JListPrincipalPoliciesRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListPrincipalPoliciesRequest;
    function getPageSize: JInteger; cdecl; //()Ljava/lang/Integer;
    procedure setPageSize(pageSize: JInteger); cdecl; //(Ljava/lang/Integer;)V
    function withPageSize(pageSize: JInteger): JListPrincipalPoliciesRequest; cdecl; //(Ljava/lang/Integer;)Lcom/amazonaws/services/iot/model/ListPrincipalPoliciesRequest;
    function isAscendingOrder: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getAscendingOrder: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setAscendingOrder(ascendingOrder: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withAscendingOrder(ascendingOrder: JBoolean): JListPrincipalPoliciesRequest; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/ListPrincipalPoliciesRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListPrincipalPoliciesRequest = class(TJavaGenericImport<JListPrincipalPoliciesRequestClass, JListPrincipalPoliciesRequest>) end;

  JListPrincipalPoliciesResultClass = interface(JObjectClass)
  ['{5E8E235C-7E41-4549-A5F1-727FD07A520D}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListPrincipalPoliciesResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListPrincipalPoliciesResult')]
  JListPrincipalPoliciesResult = interface(JObject)
  ['{8D2626A8-AD97-4F61-914C-83CDDED77E27}']
    { Property Methods }

    { methods }
    function getPolicies: JList; cdecl; //()Ljava/util/List;
    procedure setPolicies(policies: JCollection); cdecl; //(Ljava/util/Collection;)V
    function withPolicies(policies: TJavaObjectArray<JPolicy>): JListPrincipalPoliciesResult; cdecl; overload; //([Lcom/amazonaws/services/iot/model/Policy;)Lcom/amazonaws/services/iot/model/ListPrincipalPoliciesResult;
    function withPolicies(policies: JCollection): JListPrincipalPoliciesResult; cdecl; overload; //(Ljava/util/Collection;)Lcom/amazonaws/services/iot/model/ListPrincipalPoliciesResult;
    function getNextMarker: JString; cdecl; //()Ljava/lang/String;
    procedure setNextMarker(nextMarker: JString); cdecl; //(Ljava/lang/String;)V
    function withNextMarker(nextMarker: JString): JListPrincipalPoliciesResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListPrincipalPoliciesResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListPrincipalPoliciesResult = class(TJavaGenericImport<JListPrincipalPoliciesResultClass, JListPrincipalPoliciesResult>) end;

  JListPrincipalThingsRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{89B27951-F98E-471A-86EF-24668CABAC3C}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListPrincipalThingsRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListPrincipalThingsRequest')]
  JListPrincipalThingsRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{6545AE9F-A5BF-453F-83F1-FCA58DA09454}']
    { Property Methods }

    { methods }
    function getNextToken: JString; cdecl; //()Ljava/lang/String;
    procedure setNextToken(nextToken: JString); cdecl; //(Ljava/lang/String;)V
    function withNextToken(nextToken: JString): JListPrincipalThingsRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListPrincipalThingsRequest;
    function getMaxResults: JInteger; cdecl; //()Ljava/lang/Integer;
    procedure setMaxResults(maxResults: JInteger); cdecl; //(Ljava/lang/Integer;)V
    function withMaxResults(maxResults: JInteger): JListPrincipalThingsRequest; cdecl; //(Ljava/lang/Integer;)Lcom/amazonaws/services/iot/model/ListPrincipalThingsRequest;
    function getPrincipal: JString; cdecl; //()Ljava/lang/String;
    procedure setPrincipal(principal: JString); cdecl; //(Ljava/lang/String;)V
    function withPrincipal(principal: JString): JListPrincipalThingsRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListPrincipalThingsRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListPrincipalThingsRequest = class(TJavaGenericImport<JListPrincipalThingsRequestClass, JListPrincipalThingsRequest>) end;

  JListPrincipalThingsResultClass = interface(JObjectClass)
  ['{7C25256E-BEEF-4BAF-AC95-589E9E35CC47}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListPrincipalThingsResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListPrincipalThingsResult')]
  JListPrincipalThingsResult = interface(JObject)
  ['{97A380DF-BC84-4FFE-8F0F-BEA12B6C88E1}']
    { Property Methods }

    { methods }
    function getThings: JList; cdecl; //()Ljava/util/List;
    procedure setThings(things: JCollection); cdecl; //(Ljava/util/Collection;)V
    function withThings(things: TJavaObjectArray<JString>): JListPrincipalThingsResult; cdecl; overload; //([Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListPrincipalThingsResult;
    function withThings(things: JCollection): JListPrincipalThingsResult; cdecl; overload; //(Ljava/util/Collection;)Lcom/amazonaws/services/iot/model/ListPrincipalThingsResult;
    function getNextToken: JString; cdecl; //()Ljava/lang/String;
    procedure setNextToken(nextToken: JString); cdecl; //(Ljava/lang/String;)V
    function withNextToken(nextToken: JString): JListPrincipalThingsResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListPrincipalThingsResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListPrincipalThingsResult = class(TJavaGenericImport<JListPrincipalThingsResultClass, JListPrincipalThingsResult>) end;

  JListThingPrincipalsRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{3F4EE087-7CC8-4A3B-B875-C46FF204586A}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListThingPrincipalsRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListThingPrincipalsRequest')]
  JListThingPrincipalsRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{F43F5501-13B0-4107-9658-9D855A38D620}']
    { Property Methods }

    { methods }
    function getThingName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingName(thingName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingName(thingName: JString): JListThingPrincipalsRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListThingPrincipalsRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListThingPrincipalsRequest = class(TJavaGenericImport<JListThingPrincipalsRequestClass, JListThingPrincipalsRequest>) end;

  JListThingPrincipalsResultClass = interface(JObjectClass)
  ['{24CCE5A5-B634-44CD-A020-906A6303358D}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListThingPrincipalsResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListThingPrincipalsResult')]
  JListThingPrincipalsResult = interface(JObject)
  ['{AB109738-C8A0-481F-8DA9-8EFCE9615D09}']
    { Property Methods }

    { methods }
    function getPrincipals: JList; cdecl; //()Ljava/util/List;
    procedure setPrincipals(principals: JCollection); cdecl; //(Ljava/util/Collection;)V
    function withPrincipals(principals: TJavaObjectArray<JString>): JListThingPrincipalsResult; cdecl; overload; //([Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListThingPrincipalsResult;
    function withPrincipals(principals: JCollection): JListThingPrincipalsResult; cdecl; overload; //(Ljava/util/Collection;)Lcom/amazonaws/services/iot/model/ListThingPrincipalsResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListThingPrincipalsResult = class(TJavaGenericImport<JListThingPrincipalsResultClass, JListThingPrincipalsResult>) end;

  JListThingsRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{561F7A75-3EDF-4805-9D09-2CE05B82457F}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListThingsRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListThingsRequest')]
  JListThingsRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{BD010888-04F0-4577-AD50-BA3B486BF173}']
    { Property Methods }

    { methods }
    function getNextToken: JString; cdecl; //()Ljava/lang/String;
    procedure setNextToken(nextToken: JString); cdecl; //(Ljava/lang/String;)V
    function withNextToken(nextToken: JString): JListThingsRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListThingsRequest;
    function getMaxResults: JInteger; cdecl; //()Ljava/lang/Integer;
    procedure setMaxResults(maxResults: JInteger); cdecl; //(Ljava/lang/Integer;)V
    function withMaxResults(maxResults: JInteger): JListThingsRequest; cdecl; //(Ljava/lang/Integer;)Lcom/amazonaws/services/iot/model/ListThingsRequest;
    function getAttributeName: JString; cdecl; //()Ljava/lang/String;
    procedure setAttributeName(attributeName: JString); cdecl; //(Ljava/lang/String;)V
    function withAttributeName(attributeName: JString): JListThingsRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListThingsRequest;
    function getAttributeValue: JString; cdecl; //()Ljava/lang/String;
    procedure setAttributeValue(attributeValue: JString); cdecl; //(Ljava/lang/String;)V
    function withAttributeValue(attributeValue: JString): JListThingsRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListThingsRequest;
    function getThingTypeName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingTypeName(thingTypeName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingTypeName(thingTypeName: JString): JListThingsRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListThingsRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListThingsRequest = class(TJavaGenericImport<JListThingsRequestClass, JListThingsRequest>) end;

  JListThingsResultClass = interface(JObjectClass)
  ['{6CB785AD-2D4E-4A8A-951C-55D469449CDC}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListThingsResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListThingsResult')]
  JListThingsResult = interface(JObject)
  ['{B4D4A191-5E33-4F2A-96FC-AD8FA72C698F}']
    { Property Methods }

    { methods }
    function getThings: JList; cdecl; //()Ljava/util/List;
    procedure setThings(things: JCollection); cdecl; //(Ljava/util/Collection;)V
    function withThings(things: TJavaObjectArray<JThingAttribute>): JListThingsResult; cdecl; overload; //([Lcom/amazonaws/services/iot/model/ThingAttribute;)Lcom/amazonaws/services/iot/model/ListThingsResult;
    function withThings(things: JCollection): JListThingsResult; cdecl; overload; //(Ljava/util/Collection;)Lcom/amazonaws/services/iot/model/ListThingsResult;
    function getNextToken: JString; cdecl; //()Ljava/lang/String;
    procedure setNextToken(nextToken: JString); cdecl; //(Ljava/lang/String;)V
    function withNextToken(nextToken: JString): JListThingsResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListThingsResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListThingsResult = class(TJavaGenericImport<JListThingsResultClass, JListThingsResult>) end;

  JListThingTypesRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{03AB0978-8C4A-411B-8F17-BCF5EB238412}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListThingTypesRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListThingTypesRequest')]
  JListThingTypesRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{1C5284F2-1A04-4BE1-B912-049A4BC02A73}']
    { Property Methods }

    { methods }
    function getNextToken: JString; cdecl; //()Ljava/lang/String;
    procedure setNextToken(nextToken: JString); cdecl; //(Ljava/lang/String;)V
    function withNextToken(nextToken: JString): JListThingTypesRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListThingTypesRequest;
    function getMaxResults: JInteger; cdecl; //()Ljava/lang/Integer;
    procedure setMaxResults(maxResults: JInteger); cdecl; //(Ljava/lang/Integer;)V
    function withMaxResults(maxResults: JInteger): JListThingTypesRequest; cdecl; //(Ljava/lang/Integer;)Lcom/amazonaws/services/iot/model/ListThingTypesRequest;
    function getThingTypeName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingTypeName(thingTypeName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingTypeName(thingTypeName: JString): JListThingTypesRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListThingTypesRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListThingTypesRequest = class(TJavaGenericImport<JListThingTypesRequestClass, JListThingTypesRequest>) end;

  JListThingTypesResultClass = interface(JObjectClass)
  ['{0733F2B9-D79B-45A5-828C-792E76F04F52}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListThingTypesResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListThingTypesResult')]
  JListThingTypesResult = interface(JObject)
  ['{3EBE9880-C9EC-4E1E-B74D-12AEF8527616}']
    { Property Methods }

    { methods }
    function getThingTypes: JList; cdecl; //()Ljava/util/List;
    procedure setThingTypes(thingTypes: JCollection); cdecl; //(Ljava/util/Collection;)V
    function withThingTypes(thingTypes: TJavaObjectArray<JThingTypeDefinition>): JListThingTypesResult; cdecl; overload; //([Lcom/amazonaws/services/iot/model/ThingTypeDefinition;)Lcom/amazonaws/services/iot/model/ListThingTypesResult;
    function withThingTypes(thingTypes: JCollection): JListThingTypesResult; cdecl; overload; //(Ljava/util/Collection;)Lcom/amazonaws/services/iot/model/ListThingTypesResult;
    function getNextToken: JString; cdecl; //()Ljava/lang/String;
    procedure setNextToken(nextToken: JString); cdecl; //(Ljava/lang/String;)V
    function withNextToken(nextToken: JString): JListThingTypesResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListThingTypesResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListThingTypesResult = class(TJavaGenericImport<JListThingTypesResultClass, JListThingTypesResult>) end;

  JListTopicRulesRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{A21E34FE-A1EE-49D7-9F9A-C15D2C013EA0}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListTopicRulesRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListTopicRulesRequest')]
  JListTopicRulesRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{E067164C-728E-4405-B178-9434C9B1C3D1}']
    { Property Methods }

    { methods }
    function getTopic: JString; cdecl; //()Ljava/lang/String;
    procedure setTopic(topic: JString); cdecl; //(Ljava/lang/String;)V
    function withTopic(topic: JString): JListTopicRulesRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListTopicRulesRequest;
    function getMaxResults: JInteger; cdecl; //()Ljava/lang/Integer;
    procedure setMaxResults(maxResults: JInteger); cdecl; //(Ljava/lang/Integer;)V
    function withMaxResults(maxResults: JInteger): JListTopicRulesRequest; cdecl; //(Ljava/lang/Integer;)Lcom/amazonaws/services/iot/model/ListTopicRulesRequest;
    function getNextToken: JString; cdecl; //()Ljava/lang/String;
    procedure setNextToken(nextToken: JString); cdecl; //(Ljava/lang/String;)V
    function withNextToken(nextToken: JString): JListTopicRulesRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListTopicRulesRequest;
    function isRuleDisabled: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getRuleDisabled: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setRuleDisabled(ruleDisabled: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withRuleDisabled(ruleDisabled: JBoolean): JListTopicRulesRequest; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/ListTopicRulesRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListTopicRulesRequest = class(TJavaGenericImport<JListTopicRulesRequestClass, JListTopicRulesRequest>) end;

  JListTopicRulesResultClass = interface(JObjectClass)
  ['{6A75BBCE-4DA6-440D-8233-8B39CD9CC36B}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListTopicRulesResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ListTopicRulesResult')]
  JListTopicRulesResult = interface(JObject)
  ['{D0E74FC2-9A03-48B1-8400-76C7F3AB0FB0}']
    { Property Methods }

    { methods }
    function getRules: JList; cdecl; //()Ljava/util/List;
    procedure setRules(rules: JCollection); cdecl; //(Ljava/util/Collection;)V
    function withRules(rules: TJavaObjectArray<JTopicRuleListItem>): JListTopicRulesResult; cdecl; overload; //([Lcom/amazonaws/services/iot/model/TopicRuleListItem;)Lcom/amazonaws/services/iot/model/ListTopicRulesResult;
    function withRules(rules: JCollection): JListTopicRulesResult; cdecl; overload; //(Ljava/util/Collection;)Lcom/amazonaws/services/iot/model/ListTopicRulesResult;
    function getNextToken: JString; cdecl; //()Ljava/lang/String;
    procedure setNextToken(nextToken: JString); cdecl; //(Ljava/lang/String;)V
    function withNextToken(nextToken: JString): JListTopicRulesResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ListTopicRulesResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJListTopicRulesResult = class(TJavaGenericImport<JListTopicRulesResultClass, JListTopicRulesResult>) end;

  JLoggingOptionsPayloadClass = interface(JObjectClass)
  ['{1C9B5768-A6F5-49C4-A908-1C6DF73BA591}']
    { static Property Methods }

    { static Methods }
    {class} function init: JLoggingOptionsPayload; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/LoggingOptionsPayload')]
  JLoggingOptionsPayload = interface(JObject)
  ['{53D632E7-1E27-42FD-BC41-38BCC66CF74B}']
    { Property Methods }

    { methods }
    function getRoleArn: JString; cdecl; //()Ljava/lang/String;
    procedure setRoleArn(roleArn: JString); cdecl; //(Ljava/lang/String;)V
    function withRoleArn(roleArn: JString): JLoggingOptionsPayload; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/LoggingOptionsPayload;
    function getLogLevel: JString; cdecl; //()Ljava/lang/String;
    procedure setLogLevel(logLevel: JString); cdecl; overload; //(Ljava/lang/String;)V
    function withLogLevel(logLevel: JString): JLoggingOptionsPayload; cdecl; overload; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/LoggingOptionsPayload;
    procedure setLogLevel(logLevel: JLogLevel); cdecl; overload; //(Lcom/amazonaws/services/iot/model/LogLevel;)V
    function withLogLevel(logLevel: JLogLevel): JLoggingOptionsPayload; cdecl; overload; //(Lcom/amazonaws/services/iot/model/LogLevel;)Lcom/amazonaws/services/iot/model/LoggingOptionsPayload;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJLoggingOptionsPayload = class(TJavaGenericImport<JLoggingOptionsPayloadClass, JLoggingOptionsPayload>) end;

  JLogLevelClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{161F1556-D9DC-4F64-8CC6-9CD81A1A79E4}']
    { static Property Methods }
    {class} function _GetDEBUG: JLogLevel; //Lcom/amazonaws/services/iot/model/LogLevel;
    {class} function _GetINFO: JLogLevel; //Lcom/amazonaws/services/iot/model/LogLevel;
    {class} function _GetERROR: JLogLevel; //Lcom/amazonaws/services/iot/model/LogLevel;
    {class} function _GetWARN: JLogLevel; //Lcom/amazonaws/services/iot/model/LogLevel;
    {class} function _GetDISABLED: JLogLevel; //Lcom/amazonaws/services/iot/model/LogLevel;

    { static Methods }
    {class} function values: TJavaObjectArray<JLogLevel>; cdecl; //()[Lcom/amazonaws/services/iot/model/LogLevel;
    {class} function valueOf(P1: JString): JLogLevel; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/LogLevel;
    {class} function fromValue(P1: JString): JLogLevel; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/LogLevel;

    { static Property }
    {class} property DEBUG: JLogLevel read _GetDEBUG;
    {class} property INFO: JLogLevel read _GetINFO;
    {class} property ERROR: JLogLevel read _GetERROR;
    {class} property WARN: JLogLevel read _GetWARN;
    {class} property DISABLED: JLogLevel read _GetDISABLED;
  end;

  [JavaSignature('com/amazonaws/services/iot/model/LogLevel')]
  JLogLevel = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{50AC69BC-9AF8-44D9-9C3D-A013FE4C7D46}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJLogLevel = class(TJavaGenericImport<JLogLevelClass, JLogLevel>) end;

  JMalformedPolicyExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{8DA7E76F-35E0-4E5E-9521-99EE9D19CE73}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JMalformedPolicyException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/MalformedPolicyException')]
  JMalformedPolicyException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{08FFDE5A-AF97-457F-9C05-A56FCBA2ECA6}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJMalformedPolicyException = class(TJavaGenericImport<JMalformedPolicyExceptionClass, JMalformedPolicyException>) end;

  JMessageFormatClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{6522D6BD-5F62-44FF-8370-31EE3E30ADA1}']
    { static Property Methods }
    {class} function _GetRAW: JMessageFormat; //Lcom/amazonaws/services/iot/model/MessageFormat;
    {class} function _GetJSON: JMessageFormat; //Lcom/amazonaws/services/iot/model/MessageFormat;

    { static Methods }
    {class} function values: TJavaObjectArray<JMessageFormat>; cdecl; //()[Lcom/amazonaws/services/iot/model/MessageFormat;
    {class} function valueOf(P1: JString): JMessageFormat; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/MessageFormat;
    {class} function fromValue(P1: JString): JMessageFormat; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/MessageFormat;

    { static Property }
    {class} property RAW: JMessageFormat read _GetRAW;
    {class} property JSON: JMessageFormat read _GetJSON;
  end;

  [JavaSignature('com/amazonaws/services/iot/model/MessageFormat')]
  JMessageFormat = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{95B2DC62-2078-435F-9BCC-8E65159D3099}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJMessageFormat = class(TJavaGenericImport<JMessageFormatClass, JMessageFormat>) end;

  JOutgoingCertificateClass = interface(JObjectClass)
  ['{7BC5583B-6D5C-4ACC-9C5D-01D6E0749C8F}']
    { static Property Methods }

    { static Methods }
    {class} function init: JOutgoingCertificate; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/OutgoingCertificate')]
  JOutgoingCertificate = interface(JObject)
  ['{DB056191-ADBE-42F0-BF05-BFD3E3336DC9}']
    { Property Methods }

    { methods }
    function getCertificateArn: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateArn(certificateArn: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateArn(certificateArn: JString): JOutgoingCertificate; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/OutgoingCertificate;
    function getCertificateId: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateId(certificateId: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateId(certificateId: JString): JOutgoingCertificate; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/OutgoingCertificate;
    function getTransferredTo: JString; cdecl; //()Ljava/lang/String;
    procedure setTransferredTo(transferredTo: JString); cdecl; //(Ljava/lang/String;)V
    function withTransferredTo(transferredTo: JString): JOutgoingCertificate; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/OutgoingCertificate;
    function getTransferDate: JDate; cdecl; //()Ljava/util/Date;
    procedure setTransferDate(transferDate: JDate); cdecl; //(Ljava/util/Date;)V
    function withTransferDate(transferDate: JDate): JOutgoingCertificate; cdecl; //(Ljava/util/Date;)Lcom/amazonaws/services/iot/model/OutgoingCertificate;
    function getTransferMessage: JString; cdecl; //()Ljava/lang/String;
    procedure setTransferMessage(transferMessage: JString); cdecl; //(Ljava/lang/String;)V
    function withTransferMessage(transferMessage: JString): JOutgoingCertificate; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/OutgoingCertificate;
    function getCreationDate: JDate; cdecl; //()Ljava/util/Date;
    procedure setCreationDate(creationDate: JDate); cdecl; //(Ljava/util/Date;)V
    function withCreationDate(creationDate: JDate): JOutgoingCertificate; cdecl; //(Ljava/util/Date;)Lcom/amazonaws/services/iot/model/OutgoingCertificate;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJOutgoingCertificate = class(TJavaGenericImport<JOutgoingCertificateClass, JOutgoingCertificate>) end;

  JPolicyClass = interface(JObjectClass)
  ['{7AF823AA-AD10-4CAB-9850-D7A2DD393140}']
    { static Property Methods }

    { static Methods }
    {class} function init: JPolicy; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/Policy')]
  JPolicy = interface(JObject)
  ['{E01CCB21-F7EE-4B81-8BED-6FC975F4A969}']
    { Property Methods }

    { methods }
    function getPolicyName: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyName(policyName: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyName(policyName: JString): JPolicy; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/Policy;
    function getPolicyArn: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyArn(policyArn: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyArn(policyArn: JString): JPolicy; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/Policy;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJPolicy = class(TJavaGenericImport<JPolicyClass, JPolicy>) end;

  JPolicyVersionClass = interface(JObjectClass)
  ['{E964676B-BDC1-47C8-8170-29409001DD49}']
    { static Property Methods }

    { static Methods }
    {class} function init: JPolicyVersion; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/PolicyVersion')]
  JPolicyVersion = interface(JObject)
  ['{F1B66E97-282F-46DE-80B2-AF4EB719C8F5}']
    { Property Methods }

    { methods }
    function getVersionId: JString; cdecl; //()Ljava/lang/String;
    procedure setVersionId(versionId: JString); cdecl; //(Ljava/lang/String;)V
    function withVersionId(versionId: JString): JPolicyVersion; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/PolicyVersion;
    function isIsDefaultVersion: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getIsDefaultVersion: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setIsDefaultVersion(isDefaultVersion: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withIsDefaultVersion(isDefaultVersion: JBoolean): JPolicyVersion; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/PolicyVersion;
    function getCreateDate: JDate; cdecl; //()Ljava/util/Date;
    procedure setCreateDate(createDate: JDate); cdecl; //(Ljava/util/Date;)V
    function withCreateDate(createDate: JDate): JPolicyVersion; cdecl; //(Ljava/util/Date;)Lcom/amazonaws/services/iot/model/PolicyVersion;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJPolicyVersion = class(TJavaGenericImport<JPolicyVersionClass, JPolicyVersion>) end;

  JPutItemInputClass = interface(JObjectClass)
  ['{1717E49F-0C23-4E44-9805-F2168E343A0D}']
    { static Property Methods }

    { static Methods }
    {class} function init: JPutItemInput; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/PutItemInput')]
  JPutItemInput = interface(JObject)
  ['{B0FF55D4-6DEA-40F6-9D90-85C2FC5EB133}']
    { Property Methods }

    { methods }
    function getTableName: JString; cdecl; //()Ljava/lang/String;
    procedure setTableName(tableName: JString); cdecl; //(Ljava/lang/String;)V
    function withTableName(tableName: JString): JPutItemInput; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/PutItemInput;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJPutItemInput = class(TJavaGenericImport<JPutItemInputClass, JPutItemInput>) end;

  JRegisterCACertificateRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{CE692D31-1F10-44B5-8917-8D6604CC1F71}']
    { static Property Methods }

    { static Methods }
    {class} function init: JRegisterCACertificateRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/RegisterCACertificateRequest')]
  JRegisterCACertificateRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{B4810A63-2393-484E-91DC-051D51F3FCAC}']
    { Property Methods }

    { methods }
    function getCaCertificate: JString; cdecl; //()Ljava/lang/String;
    procedure setCaCertificate(caCertificate: JString); cdecl; //(Ljava/lang/String;)V
    function withCaCertificate(caCertificate: JString): JRegisterCACertificateRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/RegisterCACertificateRequest;
    function getVerificationCertificate: JString; cdecl; //()Ljava/lang/String;
    procedure setVerificationCertificate(verificationCertificate: JString); cdecl; //(Ljava/lang/String;)V
    function withVerificationCertificate(verificationCertificate: JString): JRegisterCACertificateRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/RegisterCACertificateRequest;
    function isSetAsActive: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getSetAsActive: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setSetAsActive(setAsActive: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withSetAsActive(setAsActive: JBoolean): JRegisterCACertificateRequest; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/RegisterCACertificateRequest;
    function isAllowAutoRegistration: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getAllowAutoRegistration: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setAllowAutoRegistration(allowAutoRegistration: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withAllowAutoRegistration(allowAutoRegistration: JBoolean): JRegisterCACertificateRequest; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/RegisterCACertificateRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJRegisterCACertificateRequest = class(TJavaGenericImport<JRegisterCACertificateRequestClass, JRegisterCACertificateRequest>) end;

  JRegisterCACertificateResultClass = interface(JObjectClass)
  ['{7AAA2C4C-1E91-4001-AFC6-94D6A2FDF103}']
    { static Property Methods }

    { static Methods }
    {class} function init: JRegisterCACertificateResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/RegisterCACertificateResult')]
  JRegisterCACertificateResult = interface(JObject)
  ['{1D56BB3A-C93C-415D-82E3-8A82B91EF89E}']
    { Property Methods }

    { methods }
    function getCertificateArn: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateArn(certificateArn: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateArn(certificateArn: JString): JRegisterCACertificateResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/RegisterCACertificateResult;
    function getCertificateId: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateId(certificateId: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateId(certificateId: JString): JRegisterCACertificateResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/RegisterCACertificateResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJRegisterCACertificateResult = class(TJavaGenericImport<JRegisterCACertificateResultClass, JRegisterCACertificateResult>) end;

  JRegisterCertificateRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{B5993E3E-871F-4C1C-8605-25D2B580473B}']
    { static Property Methods }

    { static Methods }
    {class} function init: JRegisterCertificateRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/RegisterCertificateRequest')]
  JRegisterCertificateRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{28EF6FE4-1C3D-4C70-ADEB-3DC815672A9C}']
    { Property Methods }

    { methods }
    function getCertificatePem: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificatePem(certificatePem: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificatePem(certificatePem: JString): JRegisterCertificateRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/RegisterCertificateRequest;
    function getCaCertificatePem: JString; cdecl; //()Ljava/lang/String;
    procedure setCaCertificatePem(caCertificatePem: JString); cdecl; //(Ljava/lang/String;)V
    function withCaCertificatePem(caCertificatePem: JString): JRegisterCertificateRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/RegisterCertificateRequest;
    function isSetAsActive: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getSetAsActive: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setSetAsActive(setAsActive: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withSetAsActive(setAsActive: JBoolean): JRegisterCertificateRequest; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/RegisterCertificateRequest;
    function getStatus: JString; cdecl; //()Ljava/lang/String;
    procedure setStatus(status: JString); cdecl; overload; //(Ljava/lang/String;)V
    function withStatus(status: JString): JRegisterCertificateRequest; cdecl; overload; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/RegisterCertificateRequest;
    procedure setStatus(status: JCertificateStatus); cdecl; overload; //(Lcom/amazonaws/services/iot/model/CertificateStatus;)V
    function withStatus(status: JCertificateStatus): JRegisterCertificateRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/CertificateStatus;)Lcom/amazonaws/services/iot/model/RegisterCertificateRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJRegisterCertificateRequest = class(TJavaGenericImport<JRegisterCertificateRequestClass, JRegisterCertificateRequest>) end;

  JRegisterCertificateResultClass = interface(JObjectClass)
  ['{2EDB5570-02E6-4E0C-8321-3811455D2BCF}']
    { static Property Methods }

    { static Methods }
    {class} function init: JRegisterCertificateResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/RegisterCertificateResult')]
  JRegisterCertificateResult = interface(JObject)
  ['{8A1560CC-6FDD-47CB-A8F7-6A6E4DF69523}']
    { Property Methods }

    { methods }
    function getCertificateArn: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateArn(certificateArn: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateArn(certificateArn: JString): JRegisterCertificateResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/RegisterCertificateResult;
    function getCertificateId: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateId(certificateId: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateId(certificateId: JString): JRegisterCertificateResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/RegisterCertificateResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJRegisterCertificateResult = class(TJavaGenericImport<JRegisterCertificateResultClass, JRegisterCertificateResult>) end;

  JRegistrationCodeValidationExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{11AF3CBD-F366-4508-AFED-2922DEFBE85A}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JRegistrationCodeValidationException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/RegistrationCodeValidationException')]
  JRegistrationCodeValidationException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{DED50250-090A-4FC5-9E0F-ED0A234029C8}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJRegistrationCodeValidationException = class(TJavaGenericImport<JRegistrationCodeValidationExceptionClass, JRegistrationCodeValidationException>) end;

  JRejectCertificateTransferRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{998D331B-82B9-43A9-A5CD-DC39C93FAAE9}']
    { static Property Methods }

    { static Methods }
    {class} function init: JRejectCertificateTransferRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/RejectCertificateTransferRequest')]
  JRejectCertificateTransferRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{BCCA8269-FB1C-4D03-98FF-B85F4574908C}']
    { Property Methods }

    { methods }
    function getCertificateId: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateId(certificateId: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateId(certificateId: JString): JRejectCertificateTransferRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/RejectCertificateTransferRequest;
    function getRejectReason: JString; cdecl; //()Ljava/lang/String;
    procedure setRejectReason(rejectReason: JString); cdecl; //(Ljava/lang/String;)V
    function withRejectReason(rejectReason: JString): JRejectCertificateTransferRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/RejectCertificateTransferRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJRejectCertificateTransferRequest = class(TJavaGenericImport<JRejectCertificateTransferRequestClass, JRejectCertificateTransferRequest>) end;

  JReplaceTopicRuleRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{A06D6A4D-C979-4DB9-99BD-A9783ED007FA}']
    { static Property Methods }

    { static Methods }
    {class} function init: JReplaceTopicRuleRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ReplaceTopicRuleRequest')]
  JReplaceTopicRuleRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{E9C98193-064F-4BA5-91A3-8C155BA8D637}']
    { Property Methods }

    { methods }
    function getRuleName: JString; cdecl; //()Ljava/lang/String;
    procedure setRuleName(ruleName: JString); cdecl; //(Ljava/lang/String;)V
    function withRuleName(ruleName: JString): JReplaceTopicRuleRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ReplaceTopicRuleRequest;
    function getTopicRulePayload: JTopicRulePayload; cdecl; //()Lcom/amazonaws/services/iot/model/TopicRulePayload;
    procedure setTopicRulePayload(topicRulePayload: JTopicRulePayload); cdecl; //(Lcom/amazonaws/services/iot/model/TopicRulePayload;)V
    function withTopicRulePayload(topicRulePayload: JTopicRulePayload): JReplaceTopicRuleRequest; cdecl; //(Lcom/amazonaws/services/iot/model/TopicRulePayload;)Lcom/amazonaws/services/iot/model/ReplaceTopicRuleRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJReplaceTopicRuleRequest = class(TJavaGenericImport<JReplaceTopicRuleRequestClass, JReplaceTopicRuleRequest>) end;

  JRepublishActionClass = interface(JObjectClass)
  ['{AC5F81E3-E6EB-4094-AAD3-5AF99B4A29B0}']
    { static Property Methods }

    { static Methods }
    {class} function init: JRepublishAction; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/RepublishAction')]
  JRepublishAction = interface(JObject)
  ['{970319B2-EAD2-4484-BA7B-FAB7F3F75222}']
    { Property Methods }

    { methods }
    function getRoleArn: JString; cdecl; //()Ljava/lang/String;
    procedure setRoleArn(roleArn: JString); cdecl; //(Ljava/lang/String;)V
    function withRoleArn(roleArn: JString): JRepublishAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/RepublishAction;
    function getTopic: JString; cdecl; //()Ljava/lang/String;
    procedure setTopic(topic: JString); cdecl; //(Ljava/lang/String;)V
    function withTopic(topic: JString): JRepublishAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/RepublishAction;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJRepublishAction = class(TJavaGenericImport<JRepublishActionClass, JRepublishAction>) end;

  JResourceAlreadyExistsExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{748C8D4D-FF6A-4A04-99C7-89A32AE21839}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JResourceAlreadyExistsException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ResourceAlreadyExistsException')]
  JResourceAlreadyExistsException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{8945C06E-CBED-4E64-8091-B67522FBF162}']
    { Property Methods }

    { methods }
    function getResourceId: JString; cdecl; //()Ljava/lang/String;
    procedure setResourceId(resourceId: JString); cdecl; //(Ljava/lang/String;)V
    function getResourceArn: JString; cdecl; //()Ljava/lang/String;
    procedure setResourceArn(resourceArn: JString); cdecl; //(Ljava/lang/String;)V

    { Property }
  end;

  TJResourceAlreadyExistsException = class(TJavaGenericImport<JResourceAlreadyExistsExceptionClass, JResourceAlreadyExistsException>) end;

  JResourceNotFoundExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{46D6D101-6519-4487-9D95-9C2FBDC92D8A}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JResourceNotFoundException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ResourceNotFoundException')]
  JResourceNotFoundException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{11BD756C-2646-4B5D-8D48-3381573BC6CA}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJResourceNotFoundException = class(TJavaGenericImport<JResourceNotFoundExceptionClass, JResourceNotFoundException>) end;

  JS3ActionClass = interface(JObjectClass)
  ['{F5215321-1D3A-42B0-A950-97D2032731FC}']
    { static Property Methods }

    { static Methods }
    {class} function init: JS3Action; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/S3Action')]
  JS3Action = interface(JObject)
  ['{CB72B9A3-46F0-4B19-A598-5A57F4B0B2E4}']
    { Property Methods }

    { methods }
    function getRoleArn: JString; cdecl; //()Ljava/lang/String;
    procedure setRoleArn(roleArn: JString); cdecl; //(Ljava/lang/String;)V
    function withRoleArn(roleArn: JString): JS3Action; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/S3Action;
    function getBucketName: JString; cdecl; //()Ljava/lang/String;
    procedure setBucketName(bucketName: JString); cdecl; //(Ljava/lang/String;)V
    function withBucketName(bucketName: JString): JS3Action; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/S3Action;
    function getKey: JString; cdecl; //()Ljava/lang/String;
    procedure setKey(key: JString); cdecl; //(Ljava/lang/String;)V
    function withKey(key: JString): JS3Action; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/S3Action;
    function getCannedAcl: JString; cdecl; //()Ljava/lang/String;
    procedure setCannedAcl(cannedAcl: JString); cdecl; overload; //(Ljava/lang/String;)V
    function withCannedAcl(cannedAcl: JString): JS3Action; cdecl; overload; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/S3Action;
    procedure setCannedAcl(cannedAcl: JCannedAccessControlList); cdecl; overload; //(Lcom/amazonaws/services/iot/model/CannedAccessControlList;)V
    function withCannedAcl(cannedAcl: JCannedAccessControlList): JS3Action; cdecl; overload; //(Lcom/amazonaws/services/iot/model/CannedAccessControlList;)Lcom/amazonaws/services/iot/model/S3Action;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJS3Action = class(TJavaGenericImport<JS3ActionClass, JS3Action>) end;

  JServiceUnavailableExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{6FC1635F-CC21-4C1A-B490-AE5EA140DC60}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JServiceUnavailableException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ServiceUnavailableException')]
  JServiceUnavailableException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{8C053365-9276-425E-9C62-E7B8455F68DF}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJServiceUnavailableException = class(TJavaGenericImport<JServiceUnavailableExceptionClass, JServiceUnavailableException>) end;

  JSetDefaultPolicyVersionRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{FB53D9C2-26E7-4610-A06B-861A8CB94006}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSetDefaultPolicyVersionRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/SetDefaultPolicyVersionRequest')]
  JSetDefaultPolicyVersionRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{646E126D-89E0-4A4D-A717-06B1881589F4}']
    { Property Methods }

    { methods }
    function getPolicyName: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyName(policyName: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyName(policyName: JString): JSetDefaultPolicyVersionRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/SetDefaultPolicyVersionRequest;
    function getPolicyVersionId: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicyVersionId(policyVersionId: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicyVersionId(policyVersionId: JString): JSetDefaultPolicyVersionRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/SetDefaultPolicyVersionRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJSetDefaultPolicyVersionRequest = class(TJavaGenericImport<JSetDefaultPolicyVersionRequestClass, JSetDefaultPolicyVersionRequest>) end;

  JSetLoggingOptionsRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{DD357455-11EB-453B-AB1E-A87A0DE9D4A5}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSetLoggingOptionsRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/SetLoggingOptionsRequest')]
  JSetLoggingOptionsRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{F8D2C68E-8299-4610-83D5-E1842ACB76E2}']
    { Property Methods }

    { methods }
    function getLoggingOptionsPayload: JLoggingOptionsPayload; cdecl; //()Lcom/amazonaws/services/iot/model/LoggingOptionsPayload;
    procedure setLoggingOptionsPayload(loggingOptionsPayload: JLoggingOptionsPayload); cdecl; //(Lcom/amazonaws/services/iot/model/LoggingOptionsPayload;)V
    function withLoggingOptionsPayload(loggingOptionsPayload: JLoggingOptionsPayload): JSetLoggingOptionsRequest; cdecl; //(Lcom/amazonaws/services/iot/model/LoggingOptionsPayload;)Lcom/amazonaws/services/iot/model/SetLoggingOptionsRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJSetLoggingOptionsRequest = class(TJavaGenericImport<JSetLoggingOptionsRequestClass, JSetLoggingOptionsRequest>) end;

  JSnsActionClass = interface(JObjectClass)
  ['{D0BD8926-F3C0-487D-A964-F1A4C4E47FCF}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSnsAction; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/SnsAction')]
  JSnsAction = interface(JObject)
  ['{11DE5E2A-C590-4FB3-A85D-19475A82AB87}']
    { Property Methods }

    { methods }
    function getTargetArn: JString; cdecl; //()Ljava/lang/String;
    procedure setTargetArn(targetArn: JString); cdecl; //(Ljava/lang/String;)V
    function withTargetArn(targetArn: JString): JSnsAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/SnsAction;
    function getRoleArn: JString; cdecl; //()Ljava/lang/String;
    procedure setRoleArn(roleArn: JString); cdecl; //(Ljava/lang/String;)V
    function withRoleArn(roleArn: JString): JSnsAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/SnsAction;
    function getMessageFormat: JString; cdecl; //()Ljava/lang/String;
    procedure setMessageFormat(messageFormat: JString); cdecl; overload; //(Ljava/lang/String;)V
    function withMessageFormat(messageFormat: JString): JSnsAction; cdecl; overload; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/SnsAction;
    procedure setMessageFormat(messageFormat: JMessageFormat); cdecl; overload; //(Lcom/amazonaws/services/iot/model/MessageFormat;)V
    function withMessageFormat(messageFormat: JMessageFormat): JSnsAction; cdecl; overload; //(Lcom/amazonaws/services/iot/model/MessageFormat;)Lcom/amazonaws/services/iot/model/SnsAction;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJSnsAction = class(TJavaGenericImport<JSnsActionClass, JSnsAction>) end;

  JSqlParseExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{6D61E346-7D57-492C-82AE-71431B50ABA4}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JSqlParseException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/SqlParseException')]
  JSqlParseException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{18EDB55C-51D3-4A0D-A640-3B7AFF3E27DB}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJSqlParseException = class(TJavaGenericImport<JSqlParseExceptionClass, JSqlParseException>) end;

  JSqsActionClass = interface(JObjectClass)
  ['{EB34EE18-2FF9-4ED8-9AB1-1BC35C5BBA0A}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSqsAction; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/SqsAction')]
  JSqsAction = interface(JObject)
  ['{5DED0634-C2E0-4A14-9D57-65E226A0DB9D}']
    { Property Methods }

    { methods }
    function getRoleArn: JString; cdecl; //()Ljava/lang/String;
    procedure setRoleArn(roleArn: JString); cdecl; //(Ljava/lang/String;)V
    function withRoleArn(roleArn: JString): JSqsAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/SqsAction;
    function getQueueUrl: JString; cdecl; //()Ljava/lang/String;
    procedure setQueueUrl(queueUrl: JString); cdecl; //(Ljava/lang/String;)V
    function withQueueUrl(queueUrl: JString): JSqsAction; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/SqsAction;
    function isUseBase64: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getUseBase64: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setUseBase64(useBase64: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withUseBase64(useBase64: JBoolean): JSqsAction; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/SqsAction;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJSqsAction = class(TJavaGenericImport<JSqsActionClass, JSqsAction>) end;

  JThingAttributeClass = interface(JObjectClass)
  ['{67430F22-47D8-4D76-AAA3-D8899A0B80B0}']
    { static Property Methods }

    { static Methods }
    {class} function init: JThingAttribute; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ThingAttribute')]
  JThingAttribute = interface(JObject)
  ['{C946F350-FE2F-41CC-9DB1-B3F7F78E71B3}']
    { Property Methods }

    { methods }
    function getThingName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingName(thingName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingName(thingName: JString): JThingAttribute; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ThingAttribute;
    function getThingTypeName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingTypeName(thingTypeName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingTypeName(thingTypeName: JString): JThingAttribute; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ThingAttribute;
    function getAttributes: JMap; cdecl; //()Ljava/util/Map;
    procedure setAttributes(attributes: JMap); cdecl; //(Ljava/util/Map;)V
    function withAttributes(attributes: JMap): JThingAttribute; cdecl; //(Ljava/util/Map;)Lcom/amazonaws/services/iot/model/ThingAttribute;
    function addattributesEntry(key: JString; value: JString): JThingAttribute; cdecl; //(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ThingAttribute;
    function clearattributesEntries: JThingAttribute; cdecl; //()Lcom/amazonaws/services/iot/model/ThingAttribute;
    function getVersion: JLong; cdecl; //()Ljava/lang/Long;
    procedure setVersion(version: JLong); cdecl; //(Ljava/lang/Long;)V
    function withVersion(version: JLong): JThingAttribute; cdecl; //(Ljava/lang/Long;)Lcom/amazonaws/services/iot/model/ThingAttribute;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJThingAttribute = class(TJavaGenericImport<JThingAttributeClass, JThingAttribute>) end;

  JThingTypeDefinitionClass = interface(JObjectClass)
  ['{405265A6-5CF8-424A-B6C4-7A267EEB1EF7}']
    { static Property Methods }

    { static Methods }
    {class} function init: JThingTypeDefinition; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ThingTypeDefinition')]
  JThingTypeDefinition = interface(JObject)
  ['{BED0B0E2-238E-489C-BAD9-33F6477DC7D8}']
    { Property Methods }

    { methods }
    function getThingTypeName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingTypeName(thingTypeName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingTypeName(thingTypeName: JString): JThingTypeDefinition; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ThingTypeDefinition;
    function getThingTypeProperties: JThingTypeProperties; cdecl; //()Lcom/amazonaws/services/iot/model/ThingTypeProperties;
    procedure setThingTypeProperties(thingTypeProperties: JThingTypeProperties); cdecl; //(Lcom/amazonaws/services/iot/model/ThingTypeProperties;)V
    function withThingTypeProperties(thingTypeProperties: JThingTypeProperties): JThingTypeDefinition; cdecl; //(Lcom/amazonaws/services/iot/model/ThingTypeProperties;)Lcom/amazonaws/services/iot/model/ThingTypeDefinition;
    function getThingTypeMetadata: JThingTypeMetadata; cdecl; //()Lcom/amazonaws/services/iot/model/ThingTypeMetadata;
    procedure setThingTypeMetadata(thingTypeMetadata: JThingTypeMetadata); cdecl; //(Lcom/amazonaws/services/iot/model/ThingTypeMetadata;)V
    function withThingTypeMetadata(thingTypeMetadata: JThingTypeMetadata): JThingTypeDefinition; cdecl; //(Lcom/amazonaws/services/iot/model/ThingTypeMetadata;)Lcom/amazonaws/services/iot/model/ThingTypeDefinition;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJThingTypeDefinition = class(TJavaGenericImport<JThingTypeDefinitionClass, JThingTypeDefinition>) end;

  JThingTypeMetadataClass = interface(JObjectClass)
  ['{10888B55-1055-4D81-B7CA-978E93E1C15B}']
    { static Property Methods }

    { static Methods }
    {class} function init: JThingTypeMetadata; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ThingTypeMetadata')]
  JThingTypeMetadata = interface(JObject)
  ['{6D039332-5083-4449-90A1-426B96484857}']
    { Property Methods }

    { methods }
    function isDeprecated: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getDeprecated: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setDeprecated(deprecated: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withDeprecated(deprecated: JBoolean): JThingTypeMetadata; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/ThingTypeMetadata;
    function getDeprecationDate: JDate; cdecl; //()Ljava/util/Date;
    procedure setDeprecationDate(deprecationDate: JDate); cdecl; //(Ljava/util/Date;)V
    function withDeprecationDate(deprecationDate: JDate): JThingTypeMetadata; cdecl; //(Ljava/util/Date;)Lcom/amazonaws/services/iot/model/ThingTypeMetadata;
    function getCreationDate: JDate; cdecl; //()Ljava/util/Date;
    procedure setCreationDate(creationDate: JDate); cdecl; //(Ljava/util/Date;)V
    function withCreationDate(creationDate: JDate): JThingTypeMetadata; cdecl; //(Ljava/util/Date;)Lcom/amazonaws/services/iot/model/ThingTypeMetadata;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJThingTypeMetadata = class(TJavaGenericImport<JThingTypeMetadataClass, JThingTypeMetadata>) end;

  JThingTypePropertiesClass = interface(JObjectClass)
  ['{AD73AC27-33D0-45F8-866A-AF4A0EAA6049}']
    { static Property Methods }

    { static Methods }
    {class} function init: JThingTypeProperties; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ThingTypeProperties')]
  JThingTypeProperties = interface(JObject)
  ['{F80249EA-D8AE-4955-B7ED-71E9E10C115B}']
    { Property Methods }

    { methods }
    function getThingTypeDescription: JString; cdecl; //()Ljava/lang/String;
    procedure setThingTypeDescription(thingTypeDescription: JString); cdecl; //(Ljava/lang/String;)V
    function withThingTypeDescription(thingTypeDescription: JString): JThingTypeProperties; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ThingTypeProperties;
    function getSearchableAttributes: JList; cdecl; //()Ljava/util/List;
    procedure setSearchableAttributes(searchableAttributes: JCollection); cdecl; //(Ljava/util/Collection;)V
    function withSearchableAttributes(searchableAttributes: TJavaObjectArray<JString>): JThingTypeProperties; cdecl; overload; //([Ljava/lang/String;)Lcom/amazonaws/services/iot/model/ThingTypeProperties;
    function withSearchableAttributes(searchableAttributes: JCollection): JThingTypeProperties; cdecl; overload; //(Ljava/util/Collection;)Lcom/amazonaws/services/iot/model/ThingTypeProperties;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJThingTypeProperties = class(TJavaGenericImport<JThingTypePropertiesClass, JThingTypeProperties>) end;

  JThrottlingExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{35892E11-47F8-45E2-9EAC-E1DB16BBF316}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JThrottlingException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/ThrottlingException')]
  JThrottlingException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{03D88E18-98E0-4930-BAEE-3037FDBF663D}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJThrottlingException = class(TJavaGenericImport<JThrottlingExceptionClass, JThrottlingException>) end;

  JTopicRuleClass = interface(JObjectClass)
  ['{AC6EDFA0-9BBC-4C1A-A832-68D049CFDD94}']
    { static Property Methods }

    { static Methods }
    {class} function init: JTopicRule; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/TopicRule')]
  JTopicRule = interface(JObject)
  ['{D916C271-A579-484A-96BD-B61C9C0E9D83}']
    { Property Methods }

    { methods }
    function getRuleName: JString; cdecl; //()Ljava/lang/String;
    procedure setRuleName(ruleName: JString); cdecl; //(Ljava/lang/String;)V
    function withRuleName(ruleName: JString): JTopicRule; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/TopicRule;
    function getSql: JString; cdecl; //()Ljava/lang/String;
    procedure setSql(sql: JString); cdecl; //(Ljava/lang/String;)V
    function withSql(sql: JString): JTopicRule; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/TopicRule;
    function getDescription: JString; cdecl; //()Ljava/lang/String;
    procedure setDescription(description: JString); cdecl; //(Ljava/lang/String;)V
    function withDescription(description: JString): JTopicRule; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/TopicRule;
    function getCreatedAt: JDate; cdecl; //()Ljava/util/Date;
    procedure setCreatedAt(createdAt: JDate); cdecl; //(Ljava/util/Date;)V
    function withCreatedAt(createdAt: JDate): JTopicRule; cdecl; //(Ljava/util/Date;)Lcom/amazonaws/services/iot/model/TopicRule;
    function getActions: JList; cdecl; //()Ljava/util/List;
    procedure setActions(actions: JCollection); cdecl; //(Ljava/util/Collection;)V
    function withActions(actions: TJavaObjectArray<JAction>): JTopicRule; cdecl; overload; //([Lcom/amazonaws/services/iot/model/Action;)Lcom/amazonaws/services/iot/model/TopicRule;
    function withActions(actions: JCollection): JTopicRule; cdecl; overload; //(Ljava/util/Collection;)Lcom/amazonaws/services/iot/model/TopicRule;
    function isRuleDisabled: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getRuleDisabled: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setRuleDisabled(ruleDisabled: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withRuleDisabled(ruleDisabled: JBoolean): JTopicRule; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/TopicRule;
    function getAwsIotSqlVersion: JString; cdecl; //()Ljava/lang/String;
    procedure setAwsIotSqlVersion(awsIotSqlVersion: JString); cdecl; //(Ljava/lang/String;)V
    function withAwsIotSqlVersion(awsIotSqlVersion: JString): JTopicRule; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/TopicRule;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJTopicRule = class(TJavaGenericImport<JTopicRuleClass, JTopicRule>) end;

  JTopicRuleListItemClass = interface(JObjectClass)
  ['{1785B038-2D26-47BB-9C96-16D4F7467B58}']
    { static Property Methods }

    { static Methods }
    {class} function init: JTopicRuleListItem; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/TopicRuleListItem')]
  JTopicRuleListItem = interface(JObject)
  ['{248073B0-96D5-43EF-B569-57DFB219F1E0}']
    { Property Methods }

    { methods }
    function getRuleArn: JString; cdecl; //()Ljava/lang/String;
    procedure setRuleArn(ruleArn: JString); cdecl; //(Ljava/lang/String;)V
    function withRuleArn(ruleArn: JString): JTopicRuleListItem; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/TopicRuleListItem;
    function getRuleName: JString; cdecl; //()Ljava/lang/String;
    procedure setRuleName(ruleName: JString); cdecl; //(Ljava/lang/String;)V
    function withRuleName(ruleName: JString): JTopicRuleListItem; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/TopicRuleListItem;
    function getTopicPattern: JString; cdecl; //()Ljava/lang/String;
    procedure setTopicPattern(topicPattern: JString); cdecl; //(Ljava/lang/String;)V
    function withTopicPattern(topicPattern: JString): JTopicRuleListItem; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/TopicRuleListItem;
    function getCreatedAt: JDate; cdecl; //()Ljava/util/Date;
    procedure setCreatedAt(createdAt: JDate); cdecl; //(Ljava/util/Date;)V
    function withCreatedAt(createdAt: JDate): JTopicRuleListItem; cdecl; //(Ljava/util/Date;)Lcom/amazonaws/services/iot/model/TopicRuleListItem;
    function isRuleDisabled: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getRuleDisabled: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setRuleDisabled(ruleDisabled: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withRuleDisabled(ruleDisabled: JBoolean): JTopicRuleListItem; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/TopicRuleListItem;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJTopicRuleListItem = class(TJavaGenericImport<JTopicRuleListItemClass, JTopicRuleListItem>) end;

  JTopicRulePayloadClass = interface(JObjectClass)
  ['{D4D5DDC4-E50F-4456-9BB4-F9B001F444CB}']
    { static Property Methods }

    { static Methods }
    {class} function init: JTopicRulePayload; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/TopicRulePayload')]
  JTopicRulePayload = interface(JObject)
  ['{33ED9CE3-E430-40EE-A913-96FEC000BCC2}']
    { Property Methods }

    { methods }
    function getSql: JString; cdecl; //()Ljava/lang/String;
    procedure setSql(sql: JString); cdecl; //(Ljava/lang/String;)V
    function withSql(sql: JString): JTopicRulePayload; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/TopicRulePayload;
    function getDescription: JString; cdecl; //()Ljava/lang/String;
    procedure setDescription(description: JString); cdecl; //(Ljava/lang/String;)V
    function withDescription(description: JString): JTopicRulePayload; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/TopicRulePayload;
    function getActions: JList; cdecl; //()Ljava/util/List;
    procedure setActions(actions: JCollection); cdecl; //(Ljava/util/Collection;)V
    function withActions(actions: TJavaObjectArray<JAction>): JTopicRulePayload; cdecl; overload; //([Lcom/amazonaws/services/iot/model/Action;)Lcom/amazonaws/services/iot/model/TopicRulePayload;
    function withActions(actions: JCollection): JTopicRulePayload; cdecl; overload; //(Ljava/util/Collection;)Lcom/amazonaws/services/iot/model/TopicRulePayload;
    function isRuleDisabled: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getRuleDisabled: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setRuleDisabled(ruleDisabled: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withRuleDisabled(ruleDisabled: JBoolean): JTopicRulePayload; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/TopicRulePayload;
    function getAwsIotSqlVersion: JString; cdecl; //()Ljava/lang/String;
    procedure setAwsIotSqlVersion(awsIotSqlVersion: JString); cdecl; //(Ljava/lang/String;)V
    function withAwsIotSqlVersion(awsIotSqlVersion: JString): JTopicRulePayload; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/TopicRulePayload;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJTopicRulePayload = class(TJavaGenericImport<JTopicRulePayloadClass, JTopicRulePayload>) end;

  JTransferAlreadyCompletedExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{6408B87B-0B0D-4C68-95B8-120FD2BA7057}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JTransferAlreadyCompletedException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/TransferAlreadyCompletedException')]
  JTransferAlreadyCompletedException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{61073034-BCC5-4B14-93E9-9560A211091A}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJTransferAlreadyCompletedException = class(TJavaGenericImport<JTransferAlreadyCompletedExceptionClass, JTransferAlreadyCompletedException>) end;

  JTransferCertificateRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{D7FDB5FB-2934-442D-AA49-F49D81EA5810}']
    { static Property Methods }

    { static Methods }
    {class} function init: JTransferCertificateRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/TransferCertificateRequest')]
  JTransferCertificateRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{86634A18-B0A4-4143-9318-0C84C1BDC4DF}']
    { Property Methods }

    { methods }
    function getCertificateId: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateId(certificateId: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateId(certificateId: JString): JTransferCertificateRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/TransferCertificateRequest;
    function getTargetAwsAccount: JString; cdecl; //()Ljava/lang/String;
    procedure setTargetAwsAccount(targetAwsAccount: JString); cdecl; //(Ljava/lang/String;)V
    function withTargetAwsAccount(targetAwsAccount: JString): JTransferCertificateRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/TransferCertificateRequest;
    function getTransferMessage: JString; cdecl; //()Ljava/lang/String;
    procedure setTransferMessage(transferMessage: JString); cdecl; //(Ljava/lang/String;)V
    function withTransferMessage(transferMessage: JString): JTransferCertificateRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/TransferCertificateRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJTransferCertificateRequest = class(TJavaGenericImport<JTransferCertificateRequestClass, JTransferCertificateRequest>) end;

  JTransferCertificateResultClass = interface(JObjectClass)
  ['{5B252D74-04E5-4881-9267-DCAA50F14A80}']
    { static Property Methods }

    { static Methods }
    {class} function init: JTransferCertificateResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/TransferCertificateResult')]
  JTransferCertificateResult = interface(JObject)
  ['{F54E0341-EE16-4569-AA1B-0B40C142A23E}']
    { Property Methods }

    { methods }
    function getTransferredCertificateArn: JString; cdecl; //()Ljava/lang/String;
    procedure setTransferredCertificateArn(transferredCertificateArn: JString); cdecl; //(Ljava/lang/String;)V
    function withTransferredCertificateArn(transferredCertificateArn: JString): JTransferCertificateResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/TransferCertificateResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJTransferCertificateResult = class(TJavaGenericImport<JTransferCertificateResultClass, JTransferCertificateResult>) end;

  JTransferConflictExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{8B93F810-34AB-4BF9-8EEC-89AE63DD064E}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JTransferConflictException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/TransferConflictException')]
  JTransferConflictException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{5D96915B-4CD5-48BF-BF47-86CE62EE171D}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJTransferConflictException = class(TJavaGenericImport<JTransferConflictExceptionClass, JTransferConflictException>) end;

  JTransferDataClass = interface(JObjectClass)
  ['{62742137-F98B-4BDD-805F-74AF73B2FF25}']
    { static Property Methods }

    { static Methods }
    {class} function init: JTransferData; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/TransferData')]
  JTransferData = interface(JObject)
  ['{38594D08-595C-43F9-977B-1685C9380126}']
    { Property Methods }

    { methods }
    function getTransferMessage: JString; cdecl; //()Ljava/lang/String;
    procedure setTransferMessage(transferMessage: JString); cdecl; //(Ljava/lang/String;)V
    function withTransferMessage(transferMessage: JString): JTransferData; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/TransferData;
    function getRejectReason: JString; cdecl; //()Ljava/lang/String;
    procedure setRejectReason(rejectReason: JString); cdecl; //(Ljava/lang/String;)V
    function withRejectReason(rejectReason: JString): JTransferData; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/TransferData;
    function getTransferDate: JDate; cdecl; //()Ljava/util/Date;
    procedure setTransferDate(transferDate: JDate); cdecl; //(Ljava/util/Date;)V
    function withTransferDate(transferDate: JDate): JTransferData; cdecl; //(Ljava/util/Date;)Lcom/amazonaws/services/iot/model/TransferData;
    function getAcceptDate: JDate; cdecl; //()Ljava/util/Date;
    procedure setAcceptDate(acceptDate: JDate); cdecl; //(Ljava/util/Date;)V
    function withAcceptDate(acceptDate: JDate): JTransferData; cdecl; //(Ljava/util/Date;)Lcom/amazonaws/services/iot/model/TransferData;
    function getRejectDate: JDate; cdecl; //()Ljava/util/Date;
    procedure setRejectDate(rejectDate: JDate); cdecl; //(Ljava/util/Date;)V
    function withRejectDate(rejectDate: JDate): JTransferData; cdecl; //(Ljava/util/Date;)Lcom/amazonaws/services/iot/model/TransferData;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJTransferData = class(TJavaGenericImport<JTransferDataClass, JTransferData>) end;

  JAcceptCertificateTransferRequestMarshallerClass = interface(JObjectClass)
  ['{8760CF1D-16D5-4D1B-B228-1E022221B0F3}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAcceptCertificateTransferRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/AcceptCertificateTransferRequestMarshaller')]
  JAcceptCertificateTransferRequestMarshaller = interface(JObject)
  ['{0EA82946-F0CC-467B-A446-894EBC4ABB14}']
    { Property Methods }

    { methods }
    function marshall(acceptCertificateTransferRequest: JAcceptCertificateTransferRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/AcceptCertificateTransferRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJAcceptCertificateTransferRequestMarshaller = class(TJavaGenericImport<JAcceptCertificateTransferRequestMarshallerClass, JAcceptCertificateTransferRequestMarshaller>) end;

  JActionJsonMarshallerClass = interface(JObjectClass)
  ['{E941D43F-5006-4730-9D0D-9D5210D7860F}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JActionJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ActionJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ActionJsonMarshaller')]
  JActionJsonMarshaller = interface(JObject)
  ['{FDC85EE6-3D3A-4334-BE3F-BE83FA9BC5DC}']
    { Property Methods }

    { methods }
    procedure marshall(action: JAction; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/Action;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJActionJsonMarshaller = class(TJavaGenericImport<JActionJsonMarshallerClass, JActionJsonMarshaller>) end;

  JActionJsonUnmarshallerClass = interface(JObjectClass)
  ['{9DD7D391-5F50-4E48-A144-42B95665C953}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JActionJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ActionJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ActionJsonUnmarshaller')]
  JActionJsonUnmarshaller = interface(JObject)
  ['{91426A78-5DC6-4495-AF8C-A4BCD8C7150D}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JAction; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/Action;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJActionJsonUnmarshaller = class(TJavaGenericImport<JActionJsonUnmarshallerClass, JActionJsonUnmarshaller>) end;

  JAttachPrincipalPolicyRequestMarshallerClass = interface(JObjectClass)
  ['{A2CC79C8-A7BA-443D-9486-08E690AEE784}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAttachPrincipalPolicyRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/AttachPrincipalPolicyRequestMarshaller')]
  JAttachPrincipalPolicyRequestMarshaller = interface(JObject)
  ['{DC90CB09-B175-4D77-8553-07BE4B0ADDB5}']
    { Property Methods }

    { methods }
    function marshall(attachPrincipalPolicyRequest: JAttachPrincipalPolicyRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/AttachPrincipalPolicyRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJAttachPrincipalPolicyRequestMarshaller = class(TJavaGenericImport<JAttachPrincipalPolicyRequestMarshallerClass, JAttachPrincipalPolicyRequestMarshaller>) end;

  JAttachThingPrincipalRequestMarshallerClass = interface(JObjectClass)
  ['{ACE494FA-E945-4EE2-A759-0CBAFE5CE847}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAttachThingPrincipalRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/AttachThingPrincipalRequestMarshaller')]
  JAttachThingPrincipalRequestMarshaller = interface(JObject)
  ['{7325E874-CF2A-4EE7-B927-FAFB79FAAC34}']
    { Property Methods }

    { methods }
    function marshall(attachThingPrincipalRequest: JAttachThingPrincipalRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/AttachThingPrincipalRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJAttachThingPrincipalRequestMarshaller = class(TJavaGenericImport<JAttachThingPrincipalRequestMarshallerClass, JAttachThingPrincipalRequestMarshaller>) end;

  JAttachThingPrincipalResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{8CD04E59-564B-4BF8-B490-E54D9125A46A}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAttachThingPrincipalResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JAttachThingPrincipalResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/AttachThingPrincipalResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/AttachThingPrincipalResultJsonUnmarshaller')]
  JAttachThingPrincipalResultJsonUnmarshaller = interface(JObject)
  ['{ECD6323A-5C1E-40B4-98A1-649DB0EA5EA0}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JAttachThingPrincipalResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/AttachThingPrincipalResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJAttachThingPrincipalResultJsonUnmarshaller = class(TJavaGenericImport<JAttachThingPrincipalResultJsonUnmarshallerClass, JAttachThingPrincipalResultJsonUnmarshaller>) end;

  JAttributePayloadJsonMarshallerClass = interface(JObjectClass)
  ['{F877E59F-1D28-411A-A47B-39F97F4918B2}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JAttributePayloadJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/AttributePayloadJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/AttributePayloadJsonMarshaller')]
  JAttributePayloadJsonMarshaller = interface(JObject)
  ['{BCF598E2-42B6-493A-9D6A-02D6A20EF6A6}']
    { Property Methods }

    { methods }
    procedure marshall(attributePayload: JAttributePayload; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/AttributePayload;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJAttributePayloadJsonMarshaller = class(TJavaGenericImport<JAttributePayloadJsonMarshallerClass, JAttributePayloadJsonMarshaller>) end;

  JAttributePayloadJsonUnmarshallerClass = interface(JObjectClass)
  ['{9D8D4590-FCFA-4A95-9164-1B3AC5D29F53}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JAttributePayloadJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/AttributePayloadJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/AttributePayloadJsonUnmarshaller')]
  JAttributePayloadJsonUnmarshaller = interface(JObject)
  ['{163FEC70-F38C-4A25-B2A3-30A309D5BA61}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JAttributePayload; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/AttributePayload;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJAttributePayloadJsonUnmarshaller = class(TJavaGenericImport<JAttributePayloadJsonUnmarshallerClass, JAttributePayloadJsonUnmarshaller>) end;

  JCACertificateDescriptionJsonMarshallerClass = interface(JObjectClass)
  ['{917F77C6-DC82-444B-AB3B-C8601CAA96F2}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JCACertificateDescriptionJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/CACertificateDescriptionJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CACertificateDescriptionJsonMarshaller')]
  JCACertificateDescriptionJsonMarshaller = interface(JObject)
  ['{A46ED0CA-D38A-4F94-AC8D-00514DB83E66}']
    { Property Methods }

    { methods }
    procedure marshall(cACertificateDescription: JCACertificateDescription; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/CACertificateDescription;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJCACertificateDescriptionJsonMarshaller = class(TJavaGenericImport<JCACertificateDescriptionJsonMarshallerClass, JCACertificateDescriptionJsonMarshaller>) end;

  JCACertificateDescriptionJsonUnmarshallerClass = interface(JObjectClass)
  ['{9CD3388F-1855-4566-9406-6F9772F2AEE9}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JCACertificateDescriptionJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/CACertificateDescriptionJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CACertificateDescriptionJsonUnmarshaller')]
  JCACertificateDescriptionJsonUnmarshaller = interface(JObject)
  ['{8F48B848-4B4D-46B5-9BF9-2609EE06E6BF}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JCACertificateDescription; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/CACertificateDescription;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJCACertificateDescriptionJsonUnmarshaller = class(TJavaGenericImport<JCACertificateDescriptionJsonUnmarshallerClass, JCACertificateDescriptionJsonUnmarshaller>) end;

  JCACertificateJsonMarshallerClass = interface(JObjectClass)
  ['{0DCE5B9C-64CD-4812-AB06-0F87A225B870}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JCACertificateJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/CACertificateJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CACertificateJsonMarshaller')]
  JCACertificateJsonMarshaller = interface(JObject)
  ['{DED24255-19E6-49AE-B80A-D179CFE5E96E}']
    { Property Methods }

    { methods }
    procedure marshall(cACertificate: JCACertificate; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/CACertificate;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJCACertificateJsonMarshaller = class(TJavaGenericImport<JCACertificateJsonMarshallerClass, JCACertificateJsonMarshaller>) end;

  JCACertificateJsonUnmarshallerClass = interface(JObjectClass)
  ['{CFB091B4-6A5F-46E0-9CDE-FD61151284FA}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JCACertificateJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/CACertificateJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CACertificateJsonUnmarshaller')]
  JCACertificateJsonUnmarshaller = interface(JObject)
  ['{D59951AA-3356-43EB-9974-ADF7D3295EC5}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JCACertificate; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/CACertificate;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJCACertificateJsonUnmarshaller = class(TJavaGenericImport<JCACertificateJsonUnmarshallerClass, JCACertificateJsonUnmarshaller>) end;

  JCancelCertificateTransferRequestMarshallerClass = interface(JObjectClass)
  ['{DE076170-940B-4DE7-A44A-59FEBBDBD03F}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCancelCertificateTransferRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CancelCertificateTransferRequestMarshaller')]
  JCancelCertificateTransferRequestMarshaller = interface(JObject)
  ['{FD41916A-413F-4A05-A2D2-9072391A9C0E}']
    { Property Methods }

    { methods }
    function marshall(cancelCertificateTransferRequest: JCancelCertificateTransferRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/CancelCertificateTransferRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJCancelCertificateTransferRequestMarshaller = class(TJavaGenericImport<JCancelCertificateTransferRequestMarshallerClass, JCancelCertificateTransferRequestMarshaller>) end;

  JCertificateDescriptionJsonMarshallerClass = interface(JObjectClass)
  ['{1B374426-3CB2-48CC-9D9B-32551FE60CD5}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JCertificateDescriptionJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/CertificateDescriptionJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CertificateDescriptionJsonMarshaller')]
  JCertificateDescriptionJsonMarshaller = interface(JObject)
  ['{6F0FFD10-D368-4AF6-8B2E-D0E53F1097CC}']
    { Property Methods }

    { methods }
    procedure marshall(certificateDescription: JCertificateDescription; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/CertificateDescription;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJCertificateDescriptionJsonMarshaller = class(TJavaGenericImport<JCertificateDescriptionJsonMarshallerClass, JCertificateDescriptionJsonMarshaller>) end;

  JCertificateDescriptionJsonUnmarshallerClass = interface(JObjectClass)
  ['{26F28796-2D0C-4CFB-B513-220942B5DC32}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JCertificateDescriptionJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/CertificateDescriptionJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CertificateDescriptionJsonUnmarshaller')]
  JCertificateDescriptionJsonUnmarshaller = interface(JObject)
  ['{C70D4A39-2C0B-4001-959D-58030E7C257B}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JCertificateDescription; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/CertificateDescription;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJCertificateDescriptionJsonUnmarshaller = class(TJavaGenericImport<JCertificateDescriptionJsonUnmarshallerClass, JCertificateDescriptionJsonUnmarshaller>) end;

  JCertificateJsonMarshallerClass = interface(JObjectClass)
  ['{33EDFBF5-B0AD-4EC0-8A73-DC03E05EF54D}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JCertificateJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/CertificateJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CertificateJsonMarshaller')]
  JCertificateJsonMarshaller = interface(JObject)
  ['{5DC119C5-EAB5-475E-A54E-8BBE1E1DD521}']
    { Property Methods }

    { methods }
    procedure marshall(certificate: JCertificate; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/Certificate;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJCertificateJsonMarshaller = class(TJavaGenericImport<JCertificateJsonMarshallerClass, JCertificateJsonMarshaller>) end;

  JCertificateJsonUnmarshallerClass = interface(JObjectClass)
  ['{AF456FC1-7AC6-4B50-BF9E-49C4AD579646}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JCertificateJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/CertificateJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CertificateJsonUnmarshaller')]
  JCertificateJsonUnmarshaller = interface(JObject)
  ['{B5674E5E-7916-4B09-AF06-1B556F795368}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JCertificate; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/Certificate;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJCertificateJsonUnmarshaller = class(TJavaGenericImport<JCertificateJsonUnmarshallerClass, JCertificateJsonUnmarshaller>) end;

  
  JCloudwatchAlarmActionJsonMarshallerClass = interface(JObjectClass)
  ['{29BACCA5-C731-4257-9429-10C75F820911}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JCloudwatchAlarmActionJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/CloudwatchAlarmActionJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CloudwatchAlarmActionJsonMarshaller')]
  JCloudwatchAlarmActionJsonMarshaller = interface(JObject)
  ['{16BE35B8-6C33-4164-8D39-99FCB5A4BD27}']
    { Property Methods }

    { methods }
    procedure marshall(cloudwatchAlarmAction: JCloudwatchAlarmAction; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/CloudwatchAlarmAction;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJCloudwatchAlarmActionJsonMarshaller = class(TJavaGenericImport<JCloudwatchAlarmActionJsonMarshallerClass, JCloudwatchAlarmActionJsonMarshaller>) end;

  JCloudwatchAlarmActionJsonUnmarshallerClass = interface(JObjectClass)
  ['{FF5EF6EA-8CC2-48AC-B49B-4D8FC47C4ACD}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JCloudwatchAlarmActionJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/CloudwatchAlarmActionJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CloudwatchAlarmActionJsonUnmarshaller')]
  JCloudwatchAlarmActionJsonUnmarshaller = interface(JObject)
  ['{B25C359E-735B-49F2-BB4D-C8B4D290E189}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JCloudwatchAlarmAction; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/CloudwatchAlarmAction;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJCloudwatchAlarmActionJsonUnmarshaller = class(TJavaGenericImport<JCloudwatchAlarmActionJsonUnmarshallerClass, JCloudwatchAlarmActionJsonUnmarshaller>) end;

  JCloudwatchMetricActionJsonMarshallerClass = interface(JObjectClass)
  ['{0F28F6B8-A5A9-464C-B78B-9B9F12F8AD5A}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JCloudwatchMetricActionJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/CloudwatchMetricActionJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CloudwatchMetricActionJsonMarshaller')]
  JCloudwatchMetricActionJsonMarshaller = interface(JObject)
  ['{934C832D-736E-4AFF-AC61-5B1E381738F7}']
    { Property Methods }

    { methods }
    procedure marshall(cloudwatchMetricAction: JCloudwatchMetricAction; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/CloudwatchMetricAction;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJCloudwatchMetricActionJsonMarshaller = class(TJavaGenericImport<JCloudwatchMetricActionJsonMarshallerClass, JCloudwatchMetricActionJsonMarshaller>) end;

  JCloudwatchMetricActionJsonUnmarshallerClass = interface(JObjectClass)
  ['{6876D190-758D-4561-B8DF-544287BBCE6B}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JCloudwatchMetricActionJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/CloudwatchMetricActionJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CloudwatchMetricActionJsonUnmarshaller')]
  JCloudwatchMetricActionJsonUnmarshaller = interface(JObject)
  ['{CFE17233-C6EC-4395-B381-0240D10B6077}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JCloudwatchMetricAction; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/CloudwatchMetricAction;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJCloudwatchMetricActionJsonUnmarshaller = class(TJavaGenericImport<JCloudwatchMetricActionJsonUnmarshallerClass, JCloudwatchMetricActionJsonUnmarshaller>) end;

  JCreateCertificateFromCsrRequestMarshallerClass = interface(JObjectClass)
  ['{6DA47377-2610-4A54-AF6C-2C94018A08E0}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreateCertificateFromCsrRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CreateCertificateFromCsrRequestMarshaller')]
  JCreateCertificateFromCsrRequestMarshaller = interface(JObject)
  ['{AEADBAC6-558D-4DEA-B1D7-F1221863056C}']
    { Property Methods }

    { methods }
    function marshall(createCertificateFromCsrRequest: JCreateCertificateFromCsrRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/CreateCertificateFromCsrRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJCreateCertificateFromCsrRequestMarshaller = class(TJavaGenericImport<JCreateCertificateFromCsrRequestMarshallerClass, JCreateCertificateFromCsrRequestMarshaller>) end;

  JCreateCertificateFromCsrResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{3B4B99A1-DD99-483B-82E7-2E7FCBED06CA}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreateCertificateFromCsrResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JCreateCertificateFromCsrResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/CreateCertificateFromCsrResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CreateCertificateFromCsrResultJsonUnmarshaller')]
  JCreateCertificateFromCsrResultJsonUnmarshaller = interface(JObject)
  ['{A2D9ED81-0EED-467D-8F57-3304270521D3}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JCreateCertificateFromCsrResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/CreateCertificateFromCsrResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJCreateCertificateFromCsrResultJsonUnmarshaller = class(TJavaGenericImport<JCreateCertificateFromCsrResultJsonUnmarshallerClass, JCreateCertificateFromCsrResultJsonUnmarshaller>) end;

  JCreateKeysAndCertificateRequestMarshallerClass = interface(JObjectClass)
  ['{C6463E45-69EF-4A9E-ACCB-B43DE78969BD}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreateKeysAndCertificateRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CreateKeysAndCertificateRequestMarshaller')]
  JCreateKeysAndCertificateRequestMarshaller = interface(JObject)
  ['{897883C8-2783-4F43-A9EE-E44F42597CCE}']
    { Property Methods }

    { methods }
    function marshall(createKeysAndCertificateRequest: JCreateKeysAndCertificateRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/CreateKeysAndCertificateRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJCreateKeysAndCertificateRequestMarshaller = class(TJavaGenericImport<JCreateKeysAndCertificateRequestMarshallerClass, JCreateKeysAndCertificateRequestMarshaller>) end;

  JCreateKeysAndCertificateResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{A55F70A3-1E98-4BF3-AD60-C152375F1191}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreateKeysAndCertificateResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JCreateKeysAndCertificateResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/CreateKeysAndCertificateResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CreateKeysAndCertificateResultJsonUnmarshaller')]
  JCreateKeysAndCertificateResultJsonUnmarshaller = interface(JObject)
  ['{4C9D02E9-FB3D-4353-88AF-75D162CFAF5B}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JCreateKeysAndCertificateResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/CreateKeysAndCertificateResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJCreateKeysAndCertificateResultJsonUnmarshaller = class(TJavaGenericImport<JCreateKeysAndCertificateResultJsonUnmarshallerClass, JCreateKeysAndCertificateResultJsonUnmarshaller>) end;

  JCreatePolicyRequestMarshallerClass = interface(JObjectClass)
  ['{E2A107F6-386C-4948-9DE3-F51D9DB762C4}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreatePolicyRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CreatePolicyRequestMarshaller')]
  JCreatePolicyRequestMarshaller = interface(JObject)
  ['{50B56E75-A932-4B36-94E4-A86E9A461F8F}']
    { Property Methods }

    { methods }
    function marshall(createPolicyRequest: JCreatePolicyRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/CreatePolicyRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJCreatePolicyRequestMarshaller = class(TJavaGenericImport<JCreatePolicyRequestMarshallerClass, JCreatePolicyRequestMarshaller>) end;

  JCreatePolicyResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{FDC7380E-ECA2-42A2-99B6-83F47B7F5C3A}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreatePolicyResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JCreatePolicyResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/CreatePolicyResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CreatePolicyResultJsonUnmarshaller')]
  JCreatePolicyResultJsonUnmarshaller = interface(JObject)
  ['{1BB3F5DF-63F5-40BC-AE76-29EEFCF37CEF}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JCreatePolicyResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/CreatePolicyResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJCreatePolicyResultJsonUnmarshaller = class(TJavaGenericImport<JCreatePolicyResultJsonUnmarshallerClass, JCreatePolicyResultJsonUnmarshaller>) end;

  JCreatePolicyVersionRequestMarshallerClass = interface(JObjectClass)
  ['{A44981E4-4C0E-44A3-BAD7-1E80B95CB5E2}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreatePolicyVersionRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CreatePolicyVersionRequestMarshaller')]
  JCreatePolicyVersionRequestMarshaller = interface(JObject)
  ['{6FAFB3F1-49E4-4AA7-912C-693FBC10D9C0}']
    { Property Methods }

    { methods }
    function marshall(createPolicyVersionRequest: JCreatePolicyVersionRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/CreatePolicyVersionRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJCreatePolicyVersionRequestMarshaller = class(TJavaGenericImport<JCreatePolicyVersionRequestMarshallerClass, JCreatePolicyVersionRequestMarshaller>) end;

  JCreatePolicyVersionResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{CEE8C530-85E8-4016-B80C-1C65607A4CA9}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreatePolicyVersionResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JCreatePolicyVersionResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/CreatePolicyVersionResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CreatePolicyVersionResultJsonUnmarshaller')]
  JCreatePolicyVersionResultJsonUnmarshaller = interface(JObject)
  ['{25D886B1-CDA8-4DAC-89F9-7FF92754F903}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JCreatePolicyVersionResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/CreatePolicyVersionResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJCreatePolicyVersionResultJsonUnmarshaller = class(TJavaGenericImport<JCreatePolicyVersionResultJsonUnmarshallerClass, JCreatePolicyVersionResultJsonUnmarshaller>) end;

  JCreateThingRequestMarshallerClass = interface(JObjectClass)
  ['{67F3B0B6-BD5D-477E-B37B-879F06FA9E17}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreateThingRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CreateThingRequestMarshaller')]
  JCreateThingRequestMarshaller = interface(JObject)
  ['{0C81761F-24FE-48BA-AF88-B3E426E91FF4}']
    { Property Methods }

    { methods }
    function marshall(createThingRequest: JCreateThingRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/CreateThingRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJCreateThingRequestMarshaller = class(TJavaGenericImport<JCreateThingRequestMarshallerClass, JCreateThingRequestMarshaller>) end;

  JCreateThingResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{06EA97F7-D69B-421C-AA8C-47DDB8D5A734}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreateThingResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JCreateThingResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/CreateThingResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CreateThingResultJsonUnmarshaller')]
  JCreateThingResultJsonUnmarshaller = interface(JObject)
  ['{B3EB92CD-4E98-4486-A4D1-10868D77AD8F}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JCreateThingResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/CreateThingResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJCreateThingResultJsonUnmarshaller = class(TJavaGenericImport<JCreateThingResultJsonUnmarshallerClass, JCreateThingResultJsonUnmarshaller>) end;

  JCreateThingTypeRequestMarshallerClass = interface(JObjectClass)
  ['{C9C22FF3-0514-4B0B-B7B7-94800BA29542}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreateThingTypeRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CreateThingTypeRequestMarshaller')]
  JCreateThingTypeRequestMarshaller = interface(JObject)
  ['{3DEDBCBE-3062-4F15-B6E9-5242D2E1FD65}']
    { Property Methods }

    { methods }
    function marshall(createThingTypeRequest: JCreateThingTypeRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/CreateThingTypeRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJCreateThingTypeRequestMarshaller = class(TJavaGenericImport<JCreateThingTypeRequestMarshallerClass, JCreateThingTypeRequestMarshaller>) end;

  JCreateThingTypeResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{57BA9A9E-21F7-4268-8A9E-F4D6339C6C0B}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreateThingTypeResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JCreateThingTypeResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/CreateThingTypeResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CreateThingTypeResultJsonUnmarshaller')]
  JCreateThingTypeResultJsonUnmarshaller = interface(JObject)
  ['{8281B65C-034B-42E0-82B3-C82E2B9DBFE3}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JCreateThingTypeResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/CreateThingTypeResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJCreateThingTypeResultJsonUnmarshaller = class(TJavaGenericImport<JCreateThingTypeResultJsonUnmarshallerClass, JCreateThingTypeResultJsonUnmarshaller>) end;

  JCreateTopicRuleRequestMarshallerClass = interface(JObjectClass)
  ['{A11A828F-7686-4CA0-AC4C-C4A1EC2CB44B}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCreateTopicRuleRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/CreateTopicRuleRequestMarshaller')]
  JCreateTopicRuleRequestMarshaller = interface(JObject)
  ['{DCF87629-778A-4A4C-8502-8FB36280C749}']
    { Property Methods }

    { methods }
    function marshall(createTopicRuleRequest: JCreateTopicRuleRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/CreateTopicRuleRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJCreateTopicRuleRequestMarshaller = class(TJavaGenericImport<JCreateTopicRuleRequestMarshallerClass, JCreateTopicRuleRequestMarshaller>) end;

  JDeleteCACertificateRequestMarshallerClass = interface(JObjectClass)
  ['{230E5326-24FC-4683-AB8E-B35F2A621A2F}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeleteCACertificateRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DeleteCACertificateRequestMarshaller')]
  JDeleteCACertificateRequestMarshaller = interface(JObject)
  ['{02A0818F-699F-456F-8CBB-458B9524A71E}']
    { Property Methods }

    { methods }
    function marshall(deleteCACertificateRequest: JDeleteCACertificateRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/DeleteCACertificateRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDeleteCACertificateRequestMarshaller = class(TJavaGenericImport<JDeleteCACertificateRequestMarshallerClass, JDeleteCACertificateRequestMarshaller>) end;

  JDeleteCACertificateResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{E171ED36-C488-4725-BAC0-F993027244AC}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeleteCACertificateResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JDeleteCACertificateResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/DeleteCACertificateResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DeleteCACertificateResultJsonUnmarshaller')]
  JDeleteCACertificateResultJsonUnmarshaller = interface(JObject)
  ['{CC22A61E-E969-4E2B-BCC6-D4751DB0DB71}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JDeleteCACertificateResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/DeleteCACertificateResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDeleteCACertificateResultJsonUnmarshaller = class(TJavaGenericImport<JDeleteCACertificateResultJsonUnmarshallerClass, JDeleteCACertificateResultJsonUnmarshaller>) end;

  JDeleteCertificateRequestMarshallerClass = interface(JObjectClass)
  ['{F50D8D2F-743E-435B-8090-34DB24404FEF}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeleteCertificateRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DeleteCertificateRequestMarshaller')]
  JDeleteCertificateRequestMarshaller = interface(JObject)
  ['{FCFC1AC8-D1F2-4EF6-ACA4-E6870B56BF01}']
    { Property Methods }

    { methods }
    function marshall(deleteCertificateRequest: JDeleteCertificateRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/DeleteCertificateRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDeleteCertificateRequestMarshaller = class(TJavaGenericImport<JDeleteCertificateRequestMarshallerClass, JDeleteCertificateRequestMarshaller>) end;

  JDeletePolicyVersionRequestMarshallerClass = interface(JObjectClass)
  ['{96B03B4F-F362-4B6A-99B5-F2A4E188EEAE}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeletePolicyVersionRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DeletePolicyVersionRequestMarshaller')]
  JDeletePolicyVersionRequestMarshaller = interface(JObject)
  ['{C2DBA75F-6EEA-4CDF-B804-C9CF150CA3B3}']
    { Property Methods }

    { methods }
    function marshall(deletePolicyVersionRequest: JDeletePolicyVersionRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/DeletePolicyVersionRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDeletePolicyVersionRequestMarshaller = class(TJavaGenericImport<JDeletePolicyVersionRequestMarshallerClass, JDeletePolicyVersionRequestMarshaller>) end;

  JDeleteRegistrationCodeRequestMarshallerClass = interface(JObjectClass)
  ['{FF1175F1-72AE-4144-A6CC-4819A2922DFD}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeleteRegistrationCodeRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DeleteRegistrationCodeRequestMarshaller')]
  JDeleteRegistrationCodeRequestMarshaller = interface(JObject)
  ['{C4B58C30-EC9B-44FE-85EF-DA8679A69843}']
    { Property Methods }

    { methods }
    function marshall(deleteRegistrationCodeRequest: JDeleteRegistrationCodeRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/DeleteRegistrationCodeRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDeleteRegistrationCodeRequestMarshaller = class(TJavaGenericImport<JDeleteRegistrationCodeRequestMarshallerClass, JDeleteRegistrationCodeRequestMarshaller>) end;

  JDeleteRegistrationCodeResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{8F99D4E2-FA38-4A6A-AF4D-65EC353ACE22}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeleteRegistrationCodeResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JDeleteRegistrationCodeResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/DeleteRegistrationCodeResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DeleteRegistrationCodeResultJsonUnmarshaller')]
  JDeleteRegistrationCodeResultJsonUnmarshaller = interface(JObject)
  ['{9F2938FE-1201-4BF5-B732-E31FF631402B}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JDeleteRegistrationCodeResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/DeleteRegistrationCodeResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDeleteRegistrationCodeResultJsonUnmarshaller = class(TJavaGenericImport<JDeleteRegistrationCodeResultJsonUnmarshallerClass, JDeleteRegistrationCodeResultJsonUnmarshaller>) end;

  JDeleteThingRequestMarshallerClass = interface(JObjectClass)
  ['{5DA8993D-0CD4-4011-8E5D-C4C6B7E13450}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeleteThingRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DeleteThingRequestMarshaller')]
  JDeleteThingRequestMarshaller = interface(JObject)
  ['{DDD0A0B6-EDE9-4C23-AFD0-776ECE337FD5}']
    { Property Methods }

    { methods }
    function marshall(deleteThingRequest: JDeleteThingRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/DeleteThingRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDeleteThingRequestMarshaller = class(TJavaGenericImport<JDeleteThingRequestMarshallerClass, JDeleteThingRequestMarshaller>) end;

  JDeleteThingResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{18248BFF-930C-4A24-B2AA-57891B4CBD7C}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeleteThingResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JDeleteThingResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/DeleteThingResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DeleteThingResultJsonUnmarshaller')]
  JDeleteThingResultJsonUnmarshaller = interface(JObject)
  ['{A5F2B3EF-284E-4FB6-B1E6-855D793668E4}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JDeleteThingResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/DeleteThingResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDeleteThingResultJsonUnmarshaller = class(TJavaGenericImport<JDeleteThingResultJsonUnmarshallerClass, JDeleteThingResultJsonUnmarshaller>) end;

  JDeleteThingTypeRequestMarshallerClass = interface(JObjectClass)
  ['{9FB8DDDA-6231-4836-8BF5-98224AB6B9E0}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeleteThingTypeRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DeleteThingTypeRequestMarshaller')]
  JDeleteThingTypeRequestMarshaller = interface(JObject)
  ['{4D405D61-067C-4F17-AFDD-6F7BF856CD3D}']
    { Property Methods }

    { methods }
    function marshall(deleteThingTypeRequest: JDeleteThingTypeRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/DeleteThingTypeRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDeleteThingTypeRequestMarshaller = class(TJavaGenericImport<JDeleteThingTypeRequestMarshallerClass, JDeleteThingTypeRequestMarshaller>) end;

  JDeleteThingTypeResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{3416F35C-73B9-498D-B32E-194CBE1CAFE5}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeleteThingTypeResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JDeleteThingTypeResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/DeleteThingTypeResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DeleteThingTypeResultJsonUnmarshaller')]
  JDeleteThingTypeResultJsonUnmarshaller = interface(JObject)
  ['{8B1A9F02-D8EC-4D33-BC69-ABF7B72DB0AF}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JDeleteThingTypeResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/DeleteThingTypeResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDeleteThingTypeResultJsonUnmarshaller = class(TJavaGenericImport<JDeleteThingTypeResultJsonUnmarshallerClass, JDeleteThingTypeResultJsonUnmarshaller>) end;

  JDeleteTopicRuleRequestMarshallerClass = interface(JObjectClass)
  ['{82A2F787-F239-469C-A11C-3B715FBDC8F4}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeleteTopicRuleRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DeleteTopicRuleRequestMarshaller')]
  JDeleteTopicRuleRequestMarshaller = interface(JObject)
  ['{0ED97699-DC18-4AB1-937B-3CBB0D6D581B}']
    { Property Methods }

    { methods }
    function marshall(deleteTopicRuleRequest: JDeleteTopicRuleRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/DeleteTopicRuleRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDeleteTopicRuleRequestMarshaller = class(TJavaGenericImport<JDeleteTopicRuleRequestMarshallerClass, JDeleteTopicRuleRequestMarshaller>) end;

  JDeprecateThingTypeRequestMarshallerClass = interface(JObjectClass)
  ['{56843C0A-5274-449E-923B-5025041AA8FA}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeprecateThingTypeRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DeprecateThingTypeRequestMarshaller')]
  JDeprecateThingTypeRequestMarshaller = interface(JObject)
  ['{1C240F63-5842-4ACE-A237-978FB3BEE12E}']
    { Property Methods }

    { methods }
    function marshall(deprecateThingTypeRequest: JDeprecateThingTypeRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/DeprecateThingTypeRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDeprecateThingTypeRequestMarshaller = class(TJavaGenericImport<JDeprecateThingTypeRequestMarshallerClass, JDeprecateThingTypeRequestMarshaller>) end;

  JDeprecateThingTypeResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{681D2D0E-A97B-4CD3-A127-CC79ADBE2F2F}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeprecateThingTypeResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JDeprecateThingTypeResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/DeprecateThingTypeResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DeprecateThingTypeResultJsonUnmarshaller')]
  JDeprecateThingTypeResultJsonUnmarshaller = interface(JObject)
  ['{ACE0D64E-2CD8-4D45-97FA-D24C65D6D711}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JDeprecateThingTypeResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/DeprecateThingTypeResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDeprecateThingTypeResultJsonUnmarshaller = class(TJavaGenericImport<JDeprecateThingTypeResultJsonUnmarshallerClass, JDeprecateThingTypeResultJsonUnmarshaller>) end;

  JDescribeCACertificateRequestMarshallerClass = interface(JObjectClass)
  ['{A3B1F636-B81E-4D8E-A25C-F90831E4DBB3}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDescribeCACertificateRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DescribeCACertificateRequestMarshaller')]
  JDescribeCACertificateRequestMarshaller = interface(JObject)
  ['{E476E922-9343-454A-A5E9-95B3C462A6BC}']
    { Property Methods }

    { methods }
    function marshall(describeCACertificateRequest: JDescribeCACertificateRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/DescribeCACertificateRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDescribeCACertificateRequestMarshaller = class(TJavaGenericImport<JDescribeCACertificateRequestMarshallerClass, JDescribeCACertificateRequestMarshaller>) end;

  JDescribeCACertificateResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{21F68AAB-7E3D-4356-BED5-3D1386DA45FA}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDescribeCACertificateResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JDescribeCACertificateResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/DescribeCACertificateResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DescribeCACertificateResultJsonUnmarshaller')]
  JDescribeCACertificateResultJsonUnmarshaller = interface(JObject)
  ['{BED7ED76-B265-4699-8378-9840FEBD3F43}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JDescribeCACertificateResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/DescribeCACertificateResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDescribeCACertificateResultJsonUnmarshaller = class(TJavaGenericImport<JDescribeCACertificateResultJsonUnmarshallerClass, JDescribeCACertificateResultJsonUnmarshaller>) end;

  JDescribeCertificateRequestMarshallerClass = interface(JObjectClass)
  ['{1A60C80C-9D08-46FE-A322-C7DC3EAEDC93}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDescribeCertificateRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DescribeCertificateRequestMarshaller')]
  JDescribeCertificateRequestMarshaller = interface(JObject)
  ['{EEBA9C0B-89C0-4096-96EC-0018ADA9B41E}']
    { Property Methods }

    { methods }
    function marshall(describeCertificateRequest: JDescribeCertificateRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/DescribeCertificateRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDescribeCertificateRequestMarshaller = class(TJavaGenericImport<JDescribeCertificateRequestMarshallerClass, JDescribeCertificateRequestMarshaller>) end;

  JDescribeCertificateResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{04B5A1F0-5C29-47F3-8B6E-F04340752E1C}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDescribeCertificateResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JDescribeCertificateResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/DescribeCertificateResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DescribeCertificateResultJsonUnmarshaller')]
  JDescribeCertificateResultJsonUnmarshaller = interface(JObject)
  ['{96803173-6390-45A1-BEF6-54E8D7FD2A8F}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JDescribeCertificateResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/DescribeCertificateResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDescribeCertificateResultJsonUnmarshaller = class(TJavaGenericImport<JDescribeCertificateResultJsonUnmarshallerClass, JDescribeCertificateResultJsonUnmarshaller>) end;

  JDescribeEndpointRequestMarshallerClass = interface(JObjectClass)
  ['{8C4D964E-7FD7-42B7-9D83-D527DF9EC243}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDescribeEndpointRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DescribeEndpointRequestMarshaller')]
  JDescribeEndpointRequestMarshaller = interface(JObject)
  ['{3E6CB6FF-C1D5-4A5B-BCE0-26C037C1B7C2}']
    { Property Methods }

    { methods }
    function marshall(describeEndpointRequest: JDescribeEndpointRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/DescribeEndpointRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDescribeEndpointRequestMarshaller = class(TJavaGenericImport<JDescribeEndpointRequestMarshallerClass, JDescribeEndpointRequestMarshaller>) end;

  JDescribeEndpointResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{52E4604D-68B3-4A19-AF5E-FFECBF83AC43}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDescribeEndpointResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JDescribeEndpointResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/DescribeEndpointResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DescribeEndpointResultJsonUnmarshaller')]
  JDescribeEndpointResultJsonUnmarshaller = interface(JObject)
  ['{B2694FD4-245C-4A47-BFB6-12620ED79DC9}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JDescribeEndpointResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/DescribeEndpointResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDescribeEndpointResultJsonUnmarshaller = class(TJavaGenericImport<JDescribeEndpointResultJsonUnmarshallerClass, JDescribeEndpointResultJsonUnmarshaller>) end;

  JDescribeThingRequestMarshallerClass = interface(JObjectClass)
  ['{D2D37EC2-E584-4D8E-B869-9FB77C3160BB}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDescribeThingRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DescribeThingRequestMarshaller')]
  JDescribeThingRequestMarshaller = interface(JObject)
  ['{012451C1-743C-4DEC-9655-82CE30C4A588}']
    { Property Methods }

    { methods }
    function marshall(describeThingRequest: JDescribeThingRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/DescribeThingRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDescribeThingRequestMarshaller = class(TJavaGenericImport<JDescribeThingRequestMarshallerClass, JDescribeThingRequestMarshaller>) end;

  JDescribeThingResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{F52CEDCA-9E19-4881-A21C-901F2D954C00}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDescribeThingResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JDescribeThingResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/DescribeThingResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DescribeThingResultJsonUnmarshaller')]
  JDescribeThingResultJsonUnmarshaller = interface(JObject)
  ['{F06D4E77-240A-449B-9617-C0DCB61497FB}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JDescribeThingResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/DescribeThingResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDescribeThingResultJsonUnmarshaller = class(TJavaGenericImport<JDescribeThingResultJsonUnmarshallerClass, JDescribeThingResultJsonUnmarshaller>) end;

  JDescribeThingTypeRequestMarshallerClass = interface(JObjectClass)
  ['{5F20D251-A7A8-4007-8FDB-E071FDEBB98C}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDescribeThingTypeRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DescribeThingTypeRequestMarshaller')]
  JDescribeThingTypeRequestMarshaller = interface(JObject)
  ['{2EDABD2F-BA46-4976-B2A0-E78AA7E1F2AD}']
    { Property Methods }

    { methods }
    function marshall(describeThingTypeRequest: JDescribeThingTypeRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/DescribeThingTypeRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDescribeThingTypeRequestMarshaller = class(TJavaGenericImport<JDescribeThingTypeRequestMarshallerClass, JDescribeThingTypeRequestMarshaller>) end;

  JDescribeThingTypeResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{25D23BD8-8605-4691-861D-FB30B5FC4159}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDescribeThingTypeResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JDescribeThingTypeResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/DescribeThingTypeResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DescribeThingTypeResultJsonUnmarshaller')]
  JDescribeThingTypeResultJsonUnmarshaller = interface(JObject)
  ['{57591040-8847-4063-85E9-4223F3428AA6}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JDescribeThingTypeResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/DescribeThingTypeResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDescribeThingTypeResultJsonUnmarshaller = class(TJavaGenericImport<JDescribeThingTypeResultJsonUnmarshallerClass, JDescribeThingTypeResultJsonUnmarshaller>) end;

  JDetachPrincipalPolicyRequestMarshallerClass = interface(JObjectClass)
  ['{5EC79770-0B3D-463A-B857-C6363389CC9B}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDetachPrincipalPolicyRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DetachPrincipalPolicyRequestMarshaller')]
  JDetachPrincipalPolicyRequestMarshaller = interface(JObject)
  ['{D310FC4B-D16E-4651-BB33-27C8816417B5}']
    { Property Methods }

    { methods }
    function marshall(detachPrincipalPolicyRequest: JDetachPrincipalPolicyRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/DetachPrincipalPolicyRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDetachPrincipalPolicyRequestMarshaller = class(TJavaGenericImport<JDetachPrincipalPolicyRequestMarshallerClass, JDetachPrincipalPolicyRequestMarshaller>) end;

  JDetachThingPrincipalRequestMarshallerClass = interface(JObjectClass)
  ['{A362DC75-6E73-4424-9B11-C170DF5BA562}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDetachThingPrincipalRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DetachThingPrincipalRequestMarshaller')]
  JDetachThingPrincipalRequestMarshaller = interface(JObject)
  ['{B60874DE-603E-490D-B2F0-D90574722AE3}']
    { Property Methods }

    { methods }
    function marshall(detachThingPrincipalRequest: JDetachThingPrincipalRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/DetachThingPrincipalRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDetachThingPrincipalRequestMarshaller = class(TJavaGenericImport<JDetachThingPrincipalRequestMarshallerClass, JDetachThingPrincipalRequestMarshaller>) end;

  JDetachThingPrincipalResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{9A002820-0BF1-4E05-ADA0-A2927B36BBB1}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDetachThingPrincipalResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JDetachThingPrincipalResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/DetachThingPrincipalResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DetachThingPrincipalResultJsonUnmarshaller')]
  JDetachThingPrincipalResultJsonUnmarshaller = interface(JObject)
  ['{4D0D4E71-36AA-4D3C-A346-BA273E237044}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JDetachThingPrincipalResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/DetachThingPrincipalResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDetachThingPrincipalResultJsonUnmarshaller = class(TJavaGenericImport<JDetachThingPrincipalResultJsonUnmarshallerClass, JDetachThingPrincipalResultJsonUnmarshaller>) end;

  JDisableTopicRuleRequestMarshallerClass = interface(JObjectClass)
  ['{D1C1B2FD-76B8-4535-A32A-3804EE000E42}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDisableTopicRuleRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DisableTopicRuleRequestMarshaller')]
  JDisableTopicRuleRequestMarshaller = interface(JObject)
  ['{E8B57DE5-7D1C-460C-A63F-29A9D11D8448}']
    { Property Methods }

    { methods }
    function marshall(disableTopicRuleRequest: JDisableTopicRuleRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/DisableTopicRuleRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDisableTopicRuleRequestMarshaller = class(TJavaGenericImport<JDisableTopicRuleRequestMarshallerClass, JDisableTopicRuleRequestMarshaller>) end;

  JDynamoDBActionJsonMarshallerClass = interface(JObjectClass)
  ['{2B7DF6EB-9C07-4DEB-861A-92272CF45807}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JDynamoDBActionJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/DynamoDBActionJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DynamoDBActionJsonMarshaller')]
  JDynamoDBActionJsonMarshaller = interface(JObject)
  ['{3C5E7967-F955-4CBB-8028-46DEAACC5C92}']
    { Property Methods }

    { methods }
    procedure marshall(dynamoDBAction: JDynamoDBAction; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/DynamoDBAction;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJDynamoDBActionJsonMarshaller = class(TJavaGenericImport<JDynamoDBActionJsonMarshallerClass, JDynamoDBActionJsonMarshaller>) end;

  JDynamoDBActionJsonUnmarshallerClass = interface(JObjectClass)
  ['{0CD9AE9E-3606-4B34-AB05-354DB47E543D}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JDynamoDBActionJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/DynamoDBActionJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DynamoDBActionJsonUnmarshaller')]
  JDynamoDBActionJsonUnmarshaller = interface(JObject)
  ['{94DDB0A9-8546-4C75-92C4-4186C1DB1E52}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JDynamoDBAction; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/DynamoDBAction;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDynamoDBActionJsonUnmarshaller = class(TJavaGenericImport<JDynamoDBActionJsonUnmarshallerClass, JDynamoDBActionJsonUnmarshaller>) end;

  JDynamoDBv2ActionJsonMarshallerClass = interface(JObjectClass)
  ['{3CF0499B-E20A-43B5-B58B-DE5C8F670102}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JDynamoDBv2ActionJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/DynamoDBv2ActionJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DynamoDBv2ActionJsonMarshaller')]
  JDynamoDBv2ActionJsonMarshaller = interface(JObject)
  ['{E6C6BD2D-DADE-4DD9-BA3C-911304FC4248}']
    { Property Methods }

    { methods }
    procedure marshall(dynamoDBv2Action: JDynamoDBv2Action; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/DynamoDBv2Action;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJDynamoDBv2ActionJsonMarshaller = class(TJavaGenericImport<JDynamoDBv2ActionJsonMarshallerClass, JDynamoDBv2ActionJsonMarshaller>) end;

  JDynamoDBv2ActionJsonUnmarshallerClass = interface(JObjectClass)
  ['{13E481DC-6A2A-4BF9-96DE-98DBDE46C539}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JDynamoDBv2ActionJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/DynamoDBv2ActionJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/DynamoDBv2ActionJsonUnmarshaller')]
  JDynamoDBv2ActionJsonUnmarshaller = interface(JObject)
  ['{6877978E-5D21-4A1D-B744-F4852757F5E3}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JDynamoDBv2Action; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/DynamoDBv2Action;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDynamoDBv2ActionJsonUnmarshaller = class(TJavaGenericImport<JDynamoDBv2ActionJsonUnmarshallerClass, JDynamoDBv2ActionJsonUnmarshaller>) end;

  JElasticsearchActionJsonMarshallerClass = interface(JObjectClass)
  ['{183EC5E4-A04A-414D-A8CF-B9AA5912C892}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JElasticsearchActionJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ElasticsearchActionJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ElasticsearchActionJsonMarshaller')]
  JElasticsearchActionJsonMarshaller = interface(JObject)
  ['{21759DB9-95BC-47EA-9454-E138E126B9A9}']
    { Property Methods }

    { methods }
    procedure marshall(elasticsearchAction: JElasticsearchAction; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/ElasticsearchAction;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJElasticsearchActionJsonMarshaller = class(TJavaGenericImport<JElasticsearchActionJsonMarshallerClass, JElasticsearchActionJsonMarshaller>) end;

  JElasticsearchActionJsonUnmarshallerClass = interface(JObjectClass)
  ['{FCA705B1-49D7-4840-8479-EF8F17AE58B7}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JElasticsearchActionJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ElasticsearchActionJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ElasticsearchActionJsonUnmarshaller')]
  JElasticsearchActionJsonUnmarshaller = interface(JObject)
  ['{9E12184F-A8AA-49F7-B3CD-2813DBDACEAC}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JElasticsearchAction; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/ElasticsearchAction;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJElasticsearchActionJsonUnmarshaller = class(TJavaGenericImport<JElasticsearchActionJsonUnmarshallerClass, JElasticsearchActionJsonUnmarshaller>) end;

  JEnableTopicRuleRequestMarshallerClass = interface(JObjectClass)
  ['{DA135089-A676-4249-9928-D9FEBEA4FB3C}']
    { static Property Methods }

    { static Methods }
    {class} function init: JEnableTopicRuleRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/EnableTopicRuleRequestMarshaller')]
  JEnableTopicRuleRequestMarshaller = interface(JObject)
  ['{17151D9F-F7E1-4876-9320-C9CEFFBCA195}']
    { Property Methods }

    { methods }
    function marshall(enableTopicRuleRequest: JEnableTopicRuleRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/EnableTopicRuleRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJEnableTopicRuleRequestMarshaller = class(TJavaGenericImport<JEnableTopicRuleRequestMarshallerClass, JEnableTopicRuleRequestMarshaller>) end;

  JFirehoseActionJsonMarshallerClass = interface(JObjectClass)
  ['{5F6DECBE-BB32-4AF3-8317-CC3209F96EF6}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JFirehoseActionJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/FirehoseActionJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/FirehoseActionJsonMarshaller')]
  JFirehoseActionJsonMarshaller = interface(JObject)
  ['{6B7077A5-A8A2-4254-8CED-EE92D1C05FB5}']
    { Property Methods }

    { methods }
    procedure marshall(firehoseAction: JFirehoseAction; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/FirehoseAction;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJFirehoseActionJsonMarshaller = class(TJavaGenericImport<JFirehoseActionJsonMarshallerClass, JFirehoseActionJsonMarshaller>) end;

  JFirehoseActionJsonUnmarshallerClass = interface(JObjectClass)
  ['{F46E9DD2-839E-4661-9C57-FE290874245C}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JFirehoseActionJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/FirehoseActionJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/FirehoseActionJsonUnmarshaller')]
  JFirehoseActionJsonUnmarshaller = interface(JObject)
  ['{93E7766B-20A8-434F-AC8A-A58F17E6C34B}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JFirehoseAction; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/FirehoseAction;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJFirehoseActionJsonUnmarshaller = class(TJavaGenericImport<JFirehoseActionJsonUnmarshallerClass, JFirehoseActionJsonUnmarshaller>) end;

  JGetLoggingOptionsRequestMarshallerClass = interface(JObjectClass)
  ['{04B27045-3FA1-477E-BDA4-748D27ACBB6C}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetLoggingOptionsRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/GetLoggingOptionsRequestMarshaller')]
  JGetLoggingOptionsRequestMarshaller = interface(JObject)
  ['{977BB106-23A4-4EAD-A5DD-2B4DE96F5D67}']
    { Property Methods }

    { methods }
    function marshall(getLoggingOptionsRequest: JGetLoggingOptionsRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/GetLoggingOptionsRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJGetLoggingOptionsRequestMarshaller = class(TJavaGenericImport<JGetLoggingOptionsRequestMarshallerClass, JGetLoggingOptionsRequestMarshaller>) end;

  JGetLoggingOptionsResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{30759CEF-4E18-4074-8FBE-31C6B321D529}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetLoggingOptionsResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JGetLoggingOptionsResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/GetLoggingOptionsResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/GetLoggingOptionsResultJsonUnmarshaller')]
  JGetLoggingOptionsResultJsonUnmarshaller = interface(JObject)
  ['{DA3228D8-8988-432A-9E61-6DE5EF5FAB95}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JGetLoggingOptionsResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/GetLoggingOptionsResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJGetLoggingOptionsResultJsonUnmarshaller = class(TJavaGenericImport<JGetLoggingOptionsResultJsonUnmarshallerClass, JGetLoggingOptionsResultJsonUnmarshaller>) end;

  JGetPolicyRequestMarshallerClass = interface(JObjectClass)
  ['{A7899929-0117-4864-B2F7-0A65726E6423}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetPolicyRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/GetPolicyRequestMarshaller')]
  JGetPolicyRequestMarshaller = interface(JObject)
  ['{6EB5F31B-E560-48AC-8C1B-524DB6A5C046}']
    { Property Methods }

    { methods }
    function marshall(getPolicyRequest: JGetPolicyRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/GetPolicyRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJGetPolicyRequestMarshaller = class(TJavaGenericImport<JGetPolicyRequestMarshallerClass, JGetPolicyRequestMarshaller>) end;

  JGetPolicyResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{DD85991D-0D10-4874-B311-28BC317936EB}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetPolicyResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JGetPolicyResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/GetPolicyResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/GetPolicyResultJsonUnmarshaller')]
  JGetPolicyResultJsonUnmarshaller = interface(JObject)
  ['{F49DE757-B991-47AC-8DF6-5162B9AF1AD7}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JGetPolicyResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/GetPolicyResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJGetPolicyResultJsonUnmarshaller = class(TJavaGenericImport<JGetPolicyResultJsonUnmarshallerClass, JGetPolicyResultJsonUnmarshaller>) end;

  JGetPolicyVersionRequestMarshallerClass = interface(JObjectClass)
  ['{9FF9426A-85C9-464A-892F-58F02F97D2FF}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetPolicyVersionRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/GetPolicyVersionRequestMarshaller')]
  JGetPolicyVersionRequestMarshaller = interface(JObject)
  ['{6059A9FB-9628-4FF5-A304-B90FBC053327}']
    { Property Methods }

    { methods }
    function marshall(getPolicyVersionRequest: JGetPolicyVersionRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/GetPolicyVersionRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJGetPolicyVersionRequestMarshaller = class(TJavaGenericImport<JGetPolicyVersionRequestMarshallerClass, JGetPolicyVersionRequestMarshaller>) end;

  JGetPolicyVersionResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{E6B57C1B-0511-4D8C-94D0-165CD01B6497}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetPolicyVersionResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JGetPolicyVersionResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/GetPolicyVersionResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/GetPolicyVersionResultJsonUnmarshaller')]
  JGetPolicyVersionResultJsonUnmarshaller = interface(JObject)
  ['{FB82C6ED-B1E3-4A0E-BC6F-680D08BFC5EA}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JGetPolicyVersionResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/GetPolicyVersionResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJGetPolicyVersionResultJsonUnmarshaller = class(TJavaGenericImport<JGetPolicyVersionResultJsonUnmarshallerClass, JGetPolicyVersionResultJsonUnmarshaller>) end;

  JGetRegistrationCodeRequestMarshallerClass = interface(JObjectClass)
  ['{A4DD77B2-2127-4412-8EEE-C5FCB22CB146}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetRegistrationCodeRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/GetRegistrationCodeRequestMarshaller')]
  JGetRegistrationCodeRequestMarshaller = interface(JObject)
  ['{33BD4357-9EDF-4715-922C-6AC665B346DA}']
    { Property Methods }

    { methods }
    function marshall(getRegistrationCodeRequest: JGetRegistrationCodeRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/GetRegistrationCodeRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJGetRegistrationCodeRequestMarshaller = class(TJavaGenericImport<JGetRegistrationCodeRequestMarshallerClass, JGetRegistrationCodeRequestMarshaller>) end;

  JGetRegistrationCodeResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{9371E453-102B-43D5-AA1B-CBAF6A977179}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetRegistrationCodeResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JGetRegistrationCodeResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/GetRegistrationCodeResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/GetRegistrationCodeResultJsonUnmarshaller')]
  JGetRegistrationCodeResultJsonUnmarshaller = interface(JObject)
  ['{5BDA8853-2DC9-4C6A-81BB-F3DC5EA8B1A6}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JGetRegistrationCodeResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/GetRegistrationCodeResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJGetRegistrationCodeResultJsonUnmarshaller = class(TJavaGenericImport<JGetRegistrationCodeResultJsonUnmarshallerClass, JGetRegistrationCodeResultJsonUnmarshaller>) end;

  JGetTopicRuleRequestMarshallerClass = interface(JObjectClass)
  ['{24CEAB47-CA3B-4A03-AEE6-35216AF6105B}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetTopicRuleRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/GetTopicRuleRequestMarshaller')]
  JGetTopicRuleRequestMarshaller = interface(JObject)
  ['{F9A3F56D-B179-491E-86A7-06E3E88E6CCE}']
    { Property Methods }

    { methods }
    function marshall(getTopicRuleRequest: JGetTopicRuleRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/GetTopicRuleRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJGetTopicRuleRequestMarshaller = class(TJavaGenericImport<JGetTopicRuleRequestMarshallerClass, JGetTopicRuleRequestMarshaller>) end;

  JGetTopicRuleResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{D9024879-1454-4AE5-BBCC-F52852987DF7}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetTopicRuleResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JGetTopicRuleResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/GetTopicRuleResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/GetTopicRuleResultJsonUnmarshaller')]
  JGetTopicRuleResultJsonUnmarshaller = interface(JObject)
  ['{C5D5DBC6-7B29-42A5-AD19-0028F3C7B09A}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JGetTopicRuleResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/GetTopicRuleResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJGetTopicRuleResultJsonUnmarshaller = class(TJavaGenericImport<JGetTopicRuleResultJsonUnmarshallerClass, JGetTopicRuleResultJsonUnmarshaller>) end;

  JKeyPairJsonMarshallerClass = interface(JObjectClass)
  ['{BC1687FB-D438-4DFB-B8E4-6EFA0C49BA61}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JKeyPairJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/KeyPairJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/KeyPairJsonMarshaller')]
  JKeyPairJsonMarshaller = interface(JObject)
  ['{EA9FCED2-1395-4698-8D76-C675675ED2E7}']
    { Property Methods }

    { methods }
    procedure marshall(keyPair: JKeyPair; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/KeyPair;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJKeyPairJsonMarshaller = class(TJavaGenericImport<JKeyPairJsonMarshallerClass, JKeyPairJsonMarshaller>) end;

  JKeyPairJsonUnmarshallerClass = interface(JObjectClass)
  ['{9856CDE7-5FE5-4AC6-8CE1-7C860D23BA8A}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JKeyPairJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/KeyPairJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/KeyPairJsonUnmarshaller')]
  JKeyPairJsonUnmarshaller = interface(JObject)
  ['{1591023D-E4D0-4F67-9751-EEB48F8CB493}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JKeyPair; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/KeyPair;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJKeyPairJsonUnmarshaller = class(TJavaGenericImport<JKeyPairJsonUnmarshallerClass, JKeyPairJsonUnmarshaller>) end;

  JKinesisActionJsonMarshallerClass = interface(JObjectClass)
  ['{9F37B17C-FEBA-4D91-AD44-41A506B79F38}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JKinesisActionJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/KinesisActionJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/KinesisActionJsonMarshaller')]
  JKinesisActionJsonMarshaller = interface(JObject)
  ['{196D2566-E056-4447-84BA-4D1B62AE47D7}']
    { Property Methods }

    { methods }
    procedure marshall(kinesisAction: JKinesisAction; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/KinesisAction;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJKinesisActionJsonMarshaller = class(TJavaGenericImport<JKinesisActionJsonMarshallerClass, JKinesisActionJsonMarshaller>) end;

  JKinesisActionJsonUnmarshallerClass = interface(JObjectClass)
  ['{DE903474-056C-471D-BB4A-CCE2636201BD}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JKinesisActionJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/KinesisActionJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/KinesisActionJsonUnmarshaller')]
  JKinesisActionJsonUnmarshaller = interface(JObject)
  ['{69675B16-0F37-4D10-9CA3-EE7805A985D3}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JKinesisAction; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/KinesisAction;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJKinesisActionJsonUnmarshaller = class(TJavaGenericImport<JKinesisActionJsonUnmarshallerClass, JKinesisActionJsonUnmarshaller>) end;

  JLambdaActionJsonMarshallerClass = interface(JObjectClass)
  ['{65F9B8A2-8A14-4DEB-91F0-2F37520219A0}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JLambdaActionJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/LambdaActionJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/LambdaActionJsonMarshaller')]
  JLambdaActionJsonMarshaller = interface(JObject)
  ['{7BF0DBB8-7E2D-48CD-93C5-3009B5824222}']
    { Property Methods }

    { methods }
    procedure marshall(lambdaAction: JLambdaAction; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/LambdaAction;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJLambdaActionJsonMarshaller = class(TJavaGenericImport<JLambdaActionJsonMarshallerClass, JLambdaActionJsonMarshaller>) end;

  JLambdaActionJsonUnmarshallerClass = interface(JObjectClass)
  ['{3D263EE3-C008-4110-86EE-EDC09DBA9176}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JLambdaActionJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/LambdaActionJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/LambdaActionJsonUnmarshaller')]
  JLambdaActionJsonUnmarshaller = interface(JObject)
  ['{1B59A1DE-46A7-47B6-8BD2-6663C02F531F}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JLambdaAction; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/LambdaAction;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJLambdaActionJsonUnmarshaller = class(TJavaGenericImport<JLambdaActionJsonUnmarshallerClass, JLambdaActionJsonUnmarshaller>) end;

  JListCACertificatesRequestMarshallerClass = interface(JObjectClass)
  ['{159BA478-8A1E-421D-A712-8A84506F6CCE}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListCACertificatesRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListCACertificatesRequestMarshaller')]
  JListCACertificatesRequestMarshaller = interface(JObject)
  ['{1F83E945-8C30-4515-A0E9-A15E93B495C6}']
    { Property Methods }

    { methods }
    function marshall(listCACertificatesRequest: JListCACertificatesRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/ListCACertificatesRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListCACertificatesRequestMarshaller = class(TJavaGenericImport<JListCACertificatesRequestMarshallerClass, JListCACertificatesRequestMarshaller>) end;

  JListCACertificatesResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{047D4C24-3361-49C5-A1D4-E1D84CF35D9C}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListCACertificatesResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JListCACertificatesResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ListCACertificatesResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListCACertificatesResultJsonUnmarshaller')]
  JListCACertificatesResultJsonUnmarshaller = interface(JObject)
  ['{955B8C69-09B7-4CBF-8FBB-58383B51EBC7}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JListCACertificatesResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/ListCACertificatesResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListCACertificatesResultJsonUnmarshaller = class(TJavaGenericImport<JListCACertificatesResultJsonUnmarshallerClass, JListCACertificatesResultJsonUnmarshaller>) end;

  JListCertificatesByCARequestMarshallerClass = interface(JObjectClass)
  ['{960640E1-771E-4F6E-858A-A090A7E3EFC4}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListCertificatesByCARequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListCertificatesByCARequestMarshaller')]
  JListCertificatesByCARequestMarshaller = interface(JObject)
  ['{2E3EF5EC-F797-4188-939D-17E5DD99D50A}']
    { Property Methods }

    { methods }
    function marshall(listCertificatesByCARequest: JListCertificatesByCARequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/ListCertificatesByCARequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListCertificatesByCARequestMarshaller = class(TJavaGenericImport<JListCertificatesByCARequestMarshallerClass, JListCertificatesByCARequestMarshaller>) end;

  JListCertificatesByCAResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{C0B28966-9D09-4496-99FE-30FEE373B03B}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListCertificatesByCAResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JListCertificatesByCAResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ListCertificatesByCAResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListCertificatesByCAResultJsonUnmarshaller')]
  JListCertificatesByCAResultJsonUnmarshaller = interface(JObject)
  ['{2C1CD182-297E-46FC-A940-503785DFEDAD}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JListCertificatesByCAResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/ListCertificatesByCAResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListCertificatesByCAResultJsonUnmarshaller = class(TJavaGenericImport<JListCertificatesByCAResultJsonUnmarshallerClass, JListCertificatesByCAResultJsonUnmarshaller>) end;

  JListCertificatesRequestMarshallerClass = interface(JObjectClass)
  ['{B870F476-3384-4EC5-8FD2-053D96E7C646}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListCertificatesRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListCertificatesRequestMarshaller')]
  JListCertificatesRequestMarshaller = interface(JObject)
  ['{D1460DA5-1325-4235-91DA-E9233FCE0712}']
    { Property Methods }

    { methods }
    function marshall(listCertificatesRequest: JListCertificatesRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/ListCertificatesRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListCertificatesRequestMarshaller = class(TJavaGenericImport<JListCertificatesRequestMarshallerClass, JListCertificatesRequestMarshaller>) end;

  JListCertificatesResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{EDF6677E-979B-4E25-B4DD-1106D99F52A4}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListCertificatesResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JListCertificatesResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ListCertificatesResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListCertificatesResultJsonUnmarshaller')]
  JListCertificatesResultJsonUnmarshaller = interface(JObject)
  ['{F53E3A45-C2CD-4EE2-985E-DC9A64A3CBFD}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JListCertificatesResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/ListCertificatesResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListCertificatesResultJsonUnmarshaller = class(TJavaGenericImport<JListCertificatesResultJsonUnmarshallerClass, JListCertificatesResultJsonUnmarshaller>) end;

  JListOutgoingCertificatesRequestMarshallerClass = interface(JObjectClass)
  ['{0F6C9E77-FF40-490E-BF44-F1D27523B726}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListOutgoingCertificatesRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListOutgoingCertificatesRequestMarshaller')]
  JListOutgoingCertificatesRequestMarshaller = interface(JObject)
  ['{67AE470B-791F-4517-A7D5-FE7EC4A5029D}']
    { Property Methods }

    { methods }
    function marshall(listOutgoingCertificatesRequest: JListOutgoingCertificatesRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/ListOutgoingCertificatesRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListOutgoingCertificatesRequestMarshaller = class(TJavaGenericImport<JListOutgoingCertificatesRequestMarshallerClass, JListOutgoingCertificatesRequestMarshaller>) end;

  JListOutgoingCertificatesResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{2FE591F5-8688-4D51-A130-1705A1D0F28F}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListOutgoingCertificatesResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JListOutgoingCertificatesResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ListOutgoingCertificatesResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListOutgoingCertificatesResultJsonUnmarshaller')]
  JListOutgoingCertificatesResultJsonUnmarshaller = interface(JObject)
  ['{237280F5-B32E-4A18-831C-E207A28C4937}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JListOutgoingCertificatesResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/ListOutgoingCertificatesResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListOutgoingCertificatesResultJsonUnmarshaller = class(TJavaGenericImport<JListOutgoingCertificatesResultJsonUnmarshallerClass, JListOutgoingCertificatesResultJsonUnmarshaller>) end;

  JListPoliciesRequestMarshallerClass = interface(JObjectClass)
  ['{E9DE3E7A-3347-4E8A-B32C-D011120AE4A6}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListPoliciesRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListPoliciesRequestMarshaller')]
  JListPoliciesRequestMarshaller = interface(JObject)
  ['{DE6EEBB4-C49A-4EF8-AADC-A90D5E11B4CF}']
    { Property Methods }

    { methods }
    function marshall(listPoliciesRequest: JListPoliciesRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/ListPoliciesRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListPoliciesRequestMarshaller = class(TJavaGenericImport<JListPoliciesRequestMarshallerClass, JListPoliciesRequestMarshaller>) end;

  JListPoliciesResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{CA9E5A4A-687F-4F2A-B7E6-7A365BD0EDFE}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListPoliciesResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JListPoliciesResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ListPoliciesResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListPoliciesResultJsonUnmarshaller')]
  JListPoliciesResultJsonUnmarshaller = interface(JObject)
  ['{2CC22CFB-32A0-486A-9907-9E2B0EB5CFA8}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JListPoliciesResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/ListPoliciesResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListPoliciesResultJsonUnmarshaller = class(TJavaGenericImport<JListPoliciesResultJsonUnmarshallerClass, JListPoliciesResultJsonUnmarshaller>) end;

  JListPolicyPrincipalsRequestMarshallerClass = interface(JObjectClass)
  ['{59077877-6FC9-4AF2-8D33-821C16576D27}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListPolicyPrincipalsRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListPolicyPrincipalsRequestMarshaller')]
  JListPolicyPrincipalsRequestMarshaller = interface(JObject)
  ['{E1CA7B02-C24D-47D2-9386-016B6390059D}']
    { Property Methods }

    { methods }
    function marshall(listPolicyPrincipalsRequest: JListPolicyPrincipalsRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/ListPolicyPrincipalsRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListPolicyPrincipalsRequestMarshaller = class(TJavaGenericImport<JListPolicyPrincipalsRequestMarshallerClass, JListPolicyPrincipalsRequestMarshaller>) end;

  JListPolicyPrincipalsResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{8D22EF56-1F80-47C8-ABDA-9DE58AC3C761}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListPolicyPrincipalsResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JListPolicyPrincipalsResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ListPolicyPrincipalsResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListPolicyPrincipalsResultJsonUnmarshaller')]
  JListPolicyPrincipalsResultJsonUnmarshaller = interface(JObject)
  ['{A58A1538-674A-45E9-AA89-F3ADFCB4CBD2}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JListPolicyPrincipalsResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/ListPolicyPrincipalsResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListPolicyPrincipalsResultJsonUnmarshaller = class(TJavaGenericImport<JListPolicyPrincipalsResultJsonUnmarshallerClass, JListPolicyPrincipalsResultJsonUnmarshaller>) end;

  JListPolicyVersionsRequestMarshallerClass = interface(JObjectClass)
  ['{26A1218D-A1AD-434A-B39E-4F6B5D55CF46}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListPolicyVersionsRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListPolicyVersionsRequestMarshaller')]
  JListPolicyVersionsRequestMarshaller = interface(JObject)
  ['{7F51C881-7610-40BC-BABA-6301626D0D9E}']
    { Property Methods }

    { methods }
    function marshall(listPolicyVersionsRequest: JListPolicyVersionsRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/ListPolicyVersionsRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListPolicyVersionsRequestMarshaller = class(TJavaGenericImport<JListPolicyVersionsRequestMarshallerClass, JListPolicyVersionsRequestMarshaller>) end;

  JListPolicyVersionsResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{26EEE208-66E3-4005-9B29-825CD676F505}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListPolicyVersionsResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JListPolicyVersionsResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ListPolicyVersionsResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListPolicyVersionsResultJsonUnmarshaller')]
  JListPolicyVersionsResultJsonUnmarshaller = interface(JObject)
  ['{77040D4A-3FB5-4EE2-85BA-DF9815382415}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JListPolicyVersionsResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/ListPolicyVersionsResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListPolicyVersionsResultJsonUnmarshaller = class(TJavaGenericImport<JListPolicyVersionsResultJsonUnmarshallerClass, JListPolicyVersionsResultJsonUnmarshaller>) end;

  JListPrincipalPoliciesRequestMarshallerClass = interface(JObjectClass)
  ['{6A14B14F-2375-4F14-96B0-F2E49A89AEDD}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListPrincipalPoliciesRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListPrincipalPoliciesRequestMarshaller')]
  JListPrincipalPoliciesRequestMarshaller = interface(JObject)
  ['{DA78C5D2-7046-436C-BEED-978CC6D91C71}']
    { Property Methods }

    { methods }
    function marshall(listPrincipalPoliciesRequest: JListPrincipalPoliciesRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/ListPrincipalPoliciesRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListPrincipalPoliciesRequestMarshaller = class(TJavaGenericImport<JListPrincipalPoliciesRequestMarshallerClass, JListPrincipalPoliciesRequestMarshaller>) end;

  JListPrincipalPoliciesResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{B7868C8B-DB4C-4DA7-989A-7266AA004B90}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListPrincipalPoliciesResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JListPrincipalPoliciesResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ListPrincipalPoliciesResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListPrincipalPoliciesResultJsonUnmarshaller')]
  JListPrincipalPoliciesResultJsonUnmarshaller = interface(JObject)
  ['{8A6B676E-4AF3-4918-95B5-33DE36C37E12}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JListPrincipalPoliciesResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/ListPrincipalPoliciesResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListPrincipalPoliciesResultJsonUnmarshaller = class(TJavaGenericImport<JListPrincipalPoliciesResultJsonUnmarshallerClass, JListPrincipalPoliciesResultJsonUnmarshaller>) end;

  JListPrincipalThingsRequestMarshallerClass = interface(JObjectClass)
  ['{738D1E6B-8665-4B46-8E2E-245E86E1CC14}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListPrincipalThingsRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListPrincipalThingsRequestMarshaller')]
  JListPrincipalThingsRequestMarshaller = interface(JObject)
  ['{9ACDB2E8-718D-494B-AE5D-3549845A9F19}']
    { Property Methods }

    { methods }
    function marshall(listPrincipalThingsRequest: JListPrincipalThingsRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/ListPrincipalThingsRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListPrincipalThingsRequestMarshaller = class(TJavaGenericImport<JListPrincipalThingsRequestMarshallerClass, JListPrincipalThingsRequestMarshaller>) end;

  JListPrincipalThingsResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{E2710035-AF6F-452E-A4D0-999BA3ABC22D}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListPrincipalThingsResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JListPrincipalThingsResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ListPrincipalThingsResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListPrincipalThingsResultJsonUnmarshaller')]
  JListPrincipalThingsResultJsonUnmarshaller = interface(JObject)
  ['{67BED44E-9037-473F-9249-46ACFB19E818}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JListPrincipalThingsResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/ListPrincipalThingsResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListPrincipalThingsResultJsonUnmarshaller = class(TJavaGenericImport<JListPrincipalThingsResultJsonUnmarshallerClass, JListPrincipalThingsResultJsonUnmarshaller>) end;

  JListThingPrincipalsRequestMarshallerClass = interface(JObjectClass)
  ['{503FE092-6911-425A-A573-F40597F477BA}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListThingPrincipalsRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListThingPrincipalsRequestMarshaller')]
  JListThingPrincipalsRequestMarshaller = interface(JObject)
  ['{EE391616-7CB7-41E6-B8A1-B8F2A660AACA}']
    { Property Methods }

    { methods }
    function marshall(listThingPrincipalsRequest: JListThingPrincipalsRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/ListThingPrincipalsRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListThingPrincipalsRequestMarshaller = class(TJavaGenericImport<JListThingPrincipalsRequestMarshallerClass, JListThingPrincipalsRequestMarshaller>) end;

  JListThingPrincipalsResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{3C79DD9D-DAF4-4B2C-BF6A-2601EF92E6A5}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListThingPrincipalsResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JListThingPrincipalsResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ListThingPrincipalsResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListThingPrincipalsResultJsonUnmarshaller')]
  JListThingPrincipalsResultJsonUnmarshaller = interface(JObject)
  ['{DC1437FB-ABB9-42E1-9B91-25F340FAEF19}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JListThingPrincipalsResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/ListThingPrincipalsResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListThingPrincipalsResultJsonUnmarshaller = class(TJavaGenericImport<JListThingPrincipalsResultJsonUnmarshallerClass, JListThingPrincipalsResultJsonUnmarshaller>) end;

  JListThingsRequestMarshallerClass = interface(JObjectClass)
  ['{7956D63F-0058-48F2-9BCD-4E695BD4F286}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListThingsRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListThingsRequestMarshaller')]
  JListThingsRequestMarshaller = interface(JObject)
  ['{8FA65982-475E-4321-B53A-CEFE6FAFDCAB}']
    { Property Methods }

    { methods }
    function marshall(listThingsRequest: JListThingsRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/ListThingsRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListThingsRequestMarshaller = class(TJavaGenericImport<JListThingsRequestMarshallerClass, JListThingsRequestMarshaller>) end;

  JListThingsResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{6066D6D5-8915-427C-8312-9374D64FDE56}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListThingsResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JListThingsResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ListThingsResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListThingsResultJsonUnmarshaller')]
  JListThingsResultJsonUnmarshaller = interface(JObject)
  ['{B3CF6F4E-735B-4C77-8792-4D3937D75F54}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JListThingsResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/ListThingsResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListThingsResultJsonUnmarshaller = class(TJavaGenericImport<JListThingsResultJsonUnmarshallerClass, JListThingsResultJsonUnmarshaller>) end;

  JListThingTypesRequestMarshallerClass = interface(JObjectClass)
  ['{DA01DEA8-080E-4EB7-B857-B642DD3ADD9A}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListThingTypesRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListThingTypesRequestMarshaller')]
  JListThingTypesRequestMarshaller = interface(JObject)
  ['{FE47267C-A32B-422A-B96A-B0B6022BA428}']
    { Property Methods }

    { methods }
    function marshall(listThingTypesRequest: JListThingTypesRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/ListThingTypesRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListThingTypesRequestMarshaller = class(TJavaGenericImport<JListThingTypesRequestMarshallerClass, JListThingTypesRequestMarshaller>) end;

  JListThingTypesResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{6D211087-1A2C-48BC-9719-C6BF6FECF87F}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListThingTypesResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JListThingTypesResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ListThingTypesResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListThingTypesResultJsonUnmarshaller')]
  JListThingTypesResultJsonUnmarshaller = interface(JObject)
  ['{3FDFC673-6896-4BA5-A486-15F7168F9AA2}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JListThingTypesResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/ListThingTypesResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListThingTypesResultJsonUnmarshaller = class(TJavaGenericImport<JListThingTypesResultJsonUnmarshallerClass, JListThingTypesResultJsonUnmarshaller>) end;

  JListTopicRulesRequestMarshallerClass = interface(JObjectClass)
  ['{3FDCF100-96D8-459D-8B85-1F3CCA7F1E8C}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListTopicRulesRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListTopicRulesRequestMarshaller')]
  JListTopicRulesRequestMarshaller = interface(JObject)
  ['{C76B4421-33B4-4C36-8068-807295B725E8}']
    { Property Methods }

    { methods }
    function marshall(listTopicRulesRequest: JListTopicRulesRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/ListTopicRulesRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListTopicRulesRequestMarshaller = class(TJavaGenericImport<JListTopicRulesRequestMarshallerClass, JListTopicRulesRequestMarshaller>) end;

  JListTopicRulesResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{93C1B42D-9CE0-4561-AEB0-880C50AC86BF}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListTopicRulesResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JListTopicRulesResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ListTopicRulesResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ListTopicRulesResultJsonUnmarshaller')]
  JListTopicRulesResultJsonUnmarshaller = interface(JObject)
  ['{43C28367-A7A2-437B-ACBA-9B9F278EEDEF}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JListTopicRulesResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/ListTopicRulesResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListTopicRulesResultJsonUnmarshaller = class(TJavaGenericImport<JListTopicRulesResultJsonUnmarshallerClass, JListTopicRulesResultJsonUnmarshaller>) end;

  JLoggingOptionsPayloadJsonMarshallerClass = interface(JObjectClass)
  ['{6630C159-189E-4877-B945-7FE07F73581B}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JLoggingOptionsPayloadJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/LoggingOptionsPayloadJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/LoggingOptionsPayloadJsonMarshaller')]
  JLoggingOptionsPayloadJsonMarshaller = interface(JObject)
  ['{D58BA6DD-CC67-47BA-BE23-8F4D523A5057}']
    { Property Methods }

    { methods }
    procedure marshall(loggingOptionsPayload: JLoggingOptionsPayload; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/LoggingOptionsPayload;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJLoggingOptionsPayloadJsonMarshaller = class(TJavaGenericImport<JLoggingOptionsPayloadJsonMarshallerClass, JLoggingOptionsPayloadJsonMarshaller>) end;

  JLoggingOptionsPayloadJsonUnmarshallerClass = interface(JObjectClass)
  ['{F7730E73-44C4-4ADE-9649-3E4B11157EB6}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JLoggingOptionsPayloadJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/LoggingOptionsPayloadJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/LoggingOptionsPayloadJsonUnmarshaller')]
  JLoggingOptionsPayloadJsonUnmarshaller = interface(JObject)
  ['{78AD3922-F185-43A6-A95D-46A39D19281E}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JLoggingOptionsPayload; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/LoggingOptionsPayload;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJLoggingOptionsPayloadJsonUnmarshaller = class(TJavaGenericImport<JLoggingOptionsPayloadJsonUnmarshallerClass, JLoggingOptionsPayloadJsonUnmarshaller>) end;

  JOutgoingCertificateJsonMarshallerClass = interface(JObjectClass)
  ['{A046535D-B642-4E84-9705-4B8654F024FF}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JOutgoingCertificateJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/OutgoingCertificateJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/OutgoingCertificateJsonMarshaller')]
  JOutgoingCertificateJsonMarshaller = interface(JObject)
  ['{E8186CAC-FB65-4C79-9F63-2052A225EDC1}']
    { Property Methods }

    { methods }
    procedure marshall(outgoingCertificate: JOutgoingCertificate; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/OutgoingCertificate;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJOutgoingCertificateJsonMarshaller = class(TJavaGenericImport<JOutgoingCertificateJsonMarshallerClass, JOutgoingCertificateJsonMarshaller>) end;

  JOutgoingCertificateJsonUnmarshallerClass = interface(JObjectClass)
  ['{54A6C3F0-C6F5-4C04-BBE0-699E0B53288F}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JOutgoingCertificateJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/OutgoingCertificateJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/OutgoingCertificateJsonUnmarshaller')]
  JOutgoingCertificateJsonUnmarshaller = interface(JObject)
  ['{07DF9C0C-CBFB-47CD-99B3-2965364AACC2}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JOutgoingCertificate; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/OutgoingCertificate;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJOutgoingCertificateJsonUnmarshaller = class(TJavaGenericImport<JOutgoingCertificateJsonUnmarshallerClass, JOutgoingCertificateJsonUnmarshaller>) end;

  JPolicyJsonMarshallerClass = interface(JObjectClass)
  ['{3AC39583-A080-40CE-BD47-3B611F3ACE1D}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JPolicyJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/PolicyJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/PolicyJsonMarshaller')]
  JPolicyJsonMarshaller = interface(JObject)
  ['{0F71778F-3564-4BB8-82DF-B1B30AE9BA15}']
    { Property Methods }

    { methods }
    procedure marshall(policy: JPolicy; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/Policy;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJPolicyJsonMarshaller = class(TJavaGenericImport<JPolicyJsonMarshallerClass, JPolicyJsonMarshaller>) end;

  JPolicyJsonUnmarshallerClass = interface(JObjectClass)
  ['{5774DDC0-9004-4295-BA2B-80575A5540E0}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JPolicyJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/PolicyJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/PolicyJsonUnmarshaller')]
  JPolicyJsonUnmarshaller = interface(JObject)
  ['{2699681A-6D66-421D-847C-79EF0B212F2C}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JPolicy; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/Policy;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJPolicyJsonUnmarshaller = class(TJavaGenericImport<JPolicyJsonUnmarshallerClass, JPolicyJsonUnmarshaller>) end;

  JPolicyVersionJsonMarshallerClass = interface(JObjectClass)
  ['{FC6B60A8-8BC7-4E90-A542-D74807B75600}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JPolicyVersionJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/PolicyVersionJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/PolicyVersionJsonMarshaller')]
  JPolicyVersionJsonMarshaller = interface(JObject)
  ['{2E4EE262-5779-4D03-B399-D1FFC65522AE}']
    { Property Methods }

    { methods }
    procedure marshall(policyVersion: JPolicyVersion; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/PolicyVersion;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJPolicyVersionJsonMarshaller = class(TJavaGenericImport<JPolicyVersionJsonMarshallerClass, JPolicyVersionJsonMarshaller>) end;

  JPolicyVersionJsonUnmarshallerClass = interface(JObjectClass)
  ['{61DF32B3-95D8-4037-AAD3-A290C7D19116}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JPolicyVersionJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/PolicyVersionJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/PolicyVersionJsonUnmarshaller')]
  JPolicyVersionJsonUnmarshaller = interface(JObject)
  ['{55BE4D9B-D9ED-4123-892B-FCDC4272BA78}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JPolicyVersion; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/PolicyVersion;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJPolicyVersionJsonUnmarshaller = class(TJavaGenericImport<JPolicyVersionJsonUnmarshallerClass, JPolicyVersionJsonUnmarshaller>) end;

  JPutItemInputJsonMarshallerClass = interface(JObjectClass)
  ['{159B11AE-77C5-42ED-818D-0262A6F27611}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JPutItemInputJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/PutItemInputJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/PutItemInputJsonMarshaller')]
  JPutItemInputJsonMarshaller = interface(JObject)
  ['{702CD267-7318-441D-881D-E585A65012C9}']
    { Property Methods }

    { methods }
    procedure marshall(putItemInput: JPutItemInput; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/PutItemInput;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJPutItemInputJsonMarshaller = class(TJavaGenericImport<JPutItemInputJsonMarshallerClass, JPutItemInputJsonMarshaller>) end;

  JPutItemInputJsonUnmarshallerClass = interface(JObjectClass)
  ['{A2FC167E-C3FF-44E9-B8FE-A4CE22EAD8EF}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JPutItemInputJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/PutItemInputJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/PutItemInputJsonUnmarshaller')]
  JPutItemInputJsonUnmarshaller = interface(JObject)
  ['{BF56D131-6942-4F51-BE28-AEC04A342BB4}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JPutItemInput; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/PutItemInput;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJPutItemInputJsonUnmarshaller = class(TJavaGenericImport<JPutItemInputJsonUnmarshallerClass, JPutItemInputJsonUnmarshaller>) end;

  JRegisterCACertificateRequestMarshallerClass = interface(JObjectClass)
  ['{B7DB22EB-4ED4-4A6B-A00D-6A003431D9E5}']
    { static Property Methods }

    { static Methods }
    {class} function init: JRegisterCACertificateRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/RegisterCACertificateRequestMarshaller')]
  JRegisterCACertificateRequestMarshaller = interface(JObject)
  ['{68608712-6164-45D1-8ACD-4025B9716316}']
    { Property Methods }

    { methods }
    function marshall(registerCACertificateRequest: JRegisterCACertificateRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/RegisterCACertificateRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJRegisterCACertificateRequestMarshaller = class(TJavaGenericImport<JRegisterCACertificateRequestMarshallerClass, JRegisterCACertificateRequestMarshaller>) end;

  JRegisterCACertificateResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{D2A4DD18-39F3-4E1F-800E-14DD77E95B7C}']
    { static Property Methods }

    { static Methods }
    {class} function init: JRegisterCACertificateResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JRegisterCACertificateResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/RegisterCACertificateResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/RegisterCACertificateResultJsonUnmarshaller')]
  JRegisterCACertificateResultJsonUnmarshaller = interface(JObject)
  ['{F04026D1-4257-4DF8-ABCB-F4B3C4D4E5BB}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JRegisterCACertificateResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/RegisterCACertificateResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJRegisterCACertificateResultJsonUnmarshaller = class(TJavaGenericImport<JRegisterCACertificateResultJsonUnmarshallerClass, JRegisterCACertificateResultJsonUnmarshaller>) end;

  JRegisterCertificateRequestMarshallerClass = interface(JObjectClass)
  ['{1E856BCA-D2B8-45B2-B01C-0F07DD37BD27}']
    { static Property Methods }

    { static Methods }
    {class} function init: JRegisterCertificateRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/RegisterCertificateRequestMarshaller')]
  JRegisterCertificateRequestMarshaller = interface(JObject)
  ['{EF593A33-7BDE-462B-B94E-66DA87DD7F91}']
    { Property Methods }

    { methods }
    function marshall(registerCertificateRequest: JRegisterCertificateRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/RegisterCertificateRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJRegisterCertificateRequestMarshaller = class(TJavaGenericImport<JRegisterCertificateRequestMarshallerClass, JRegisterCertificateRequestMarshaller>) end;

  JRegisterCertificateResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{3D54E906-CAF0-4082-8749-53D36B3ACA34}']
    { static Property Methods }

    { static Methods }
    {class} function init: JRegisterCertificateResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JRegisterCertificateResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/RegisterCertificateResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/RegisterCertificateResultJsonUnmarshaller')]
  JRegisterCertificateResultJsonUnmarshaller = interface(JObject)
  ['{23BC3886-F831-4578-ACD1-D49F0A228517}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JRegisterCertificateResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/RegisterCertificateResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJRegisterCertificateResultJsonUnmarshaller = class(TJavaGenericImport<JRegisterCertificateResultJsonUnmarshallerClass, JRegisterCertificateResultJsonUnmarshaller>) end;

  JRejectCertificateTransferRequestMarshallerClass = interface(JObjectClass)
  ['{82D74EFD-F01E-42E8-8EC8-BF67D800EBC4}']
    { static Property Methods }

    { static Methods }
    {class} function init: JRejectCertificateTransferRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/RejectCertificateTransferRequestMarshaller')]
  JRejectCertificateTransferRequestMarshaller = interface(JObject)
  ['{54139EF8-0DA7-4786-9A7B-728BFCA03C98}']
    { Property Methods }

    { methods }
    function marshall(rejectCertificateTransferRequest: JRejectCertificateTransferRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/RejectCertificateTransferRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJRejectCertificateTransferRequestMarshaller = class(TJavaGenericImport<JRejectCertificateTransferRequestMarshallerClass, JRejectCertificateTransferRequestMarshaller>) end;

  JReplaceTopicRuleRequestMarshallerClass = interface(JObjectClass)
  ['{7C7B0199-0D00-46B2-92F7-2D826D2BC5F4}']
    { static Property Methods }

    { static Methods }
    {class} function init: JReplaceTopicRuleRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ReplaceTopicRuleRequestMarshaller')]
  JReplaceTopicRuleRequestMarshaller = interface(JObject)
  ['{EC6C2F8D-F28B-49E0-B78D-0F0C323CCE64}']
    { Property Methods }

    { methods }
    function marshall(replaceTopicRuleRequest: JReplaceTopicRuleRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/ReplaceTopicRuleRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJReplaceTopicRuleRequestMarshaller = class(TJavaGenericImport<JReplaceTopicRuleRequestMarshallerClass, JReplaceTopicRuleRequestMarshaller>) end;

  JRepublishActionJsonMarshallerClass = interface(JObjectClass)
  ['{96FF99E5-2802-4A70-858E-DB9212E4200C}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JRepublishActionJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/RepublishActionJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/RepublishActionJsonMarshaller')]
  JRepublishActionJsonMarshaller = interface(JObject)
  ['{F632067C-4BE3-4189-9240-FC8B8890F758}']
    { Property Methods }

    { methods }
    procedure marshall(republishAction: JRepublishAction; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/RepublishAction;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJRepublishActionJsonMarshaller = class(TJavaGenericImport<JRepublishActionJsonMarshallerClass, JRepublishActionJsonMarshaller>) end;

  JRepublishActionJsonUnmarshallerClass = interface(JObjectClass)
  ['{093F69C1-0943-4A28-AB0F-AD3F97B4FEC7}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JRepublishActionJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/RepublishActionJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/RepublishActionJsonUnmarshaller')]
  JRepublishActionJsonUnmarshaller = interface(JObject)
  ['{4477FDC7-2079-412C-804D-725EFABA0A94}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JRepublishAction; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/RepublishAction;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJRepublishActionJsonUnmarshaller = class(TJavaGenericImport<JRepublishActionJsonUnmarshallerClass, JRepublishActionJsonUnmarshaller>) end;

  JS3ActionJsonUnmarshallerClass = interface(JObjectClass)
  ['{EFB81076-53CA-42CF-98D4-2A764EA25156}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JS3ActionJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/S3ActionJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/S3ActionJsonUnmarshaller')]
  JS3ActionJsonUnmarshaller = interface(JObject)
  ['{474604D1-CBFA-4C2A-9A90-48884B0E7248}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JS3Action; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/S3Action;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJS3ActionJsonUnmarshaller = class(TJavaGenericImport<JS3ActionJsonUnmarshallerClass, JS3ActionJsonUnmarshaller>) end;

  JSetDefaultPolicyVersionRequestMarshallerClass = interface(JObjectClass)
  ['{131E7D1E-62E7-488A-BDEB-5897B9FC6CF2}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSetDefaultPolicyVersionRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/SetDefaultPolicyVersionRequestMarshaller')]
  JSetDefaultPolicyVersionRequestMarshaller = interface(JObject)
  ['{A22198CE-1FDB-46CD-92D7-B32883014F07}']
    { Property Methods }

    { methods }
    function marshall(setDefaultPolicyVersionRequest: JSetDefaultPolicyVersionRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/SetDefaultPolicyVersionRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJSetDefaultPolicyVersionRequestMarshaller = class(TJavaGenericImport<JSetDefaultPolicyVersionRequestMarshallerClass, JSetDefaultPolicyVersionRequestMarshaller>) end;

  JSetLoggingOptionsRequestMarshallerClass = interface(JObjectClass)
  ['{22657545-FE65-41CB-9A31-4C9E45C675DA}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSetLoggingOptionsRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/SetLoggingOptionsRequestMarshaller')]
  JSetLoggingOptionsRequestMarshaller = interface(JObject)
  ['{2C862685-C521-45F1-B554-FC00575AEB97}']
    { Property Methods }

    { methods }
    function marshall(setLoggingOptionsRequest: JSetLoggingOptionsRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/SetLoggingOptionsRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJSetLoggingOptionsRequestMarshaller = class(TJavaGenericImport<JSetLoggingOptionsRequestMarshallerClass, JSetLoggingOptionsRequestMarshaller>) end;

  JSnsActionJsonMarshallerClass = interface(JObjectClass)
  ['{7C8532B1-A410-465C-A10A-3CF7A63CFDB1}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JSnsActionJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/SnsActionJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/SnsActionJsonMarshaller')]
  JSnsActionJsonMarshaller = interface(JObject)
  ['{D94B3E0A-960C-4947-88B0-2248F5E6E405}']
    { Property Methods }

    { methods }
    procedure marshall(snsAction: JSnsAction; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/SnsAction;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJSnsActionJsonMarshaller = class(TJavaGenericImport<JSnsActionJsonMarshallerClass, JSnsActionJsonMarshaller>) end;

  JSnsActionJsonUnmarshallerClass = interface(JObjectClass)
  ['{D01ED8F4-45FF-4ACA-BE80-EF385A2004B0}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JSnsActionJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/SnsActionJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/SnsActionJsonUnmarshaller')]
  JSnsActionJsonUnmarshaller = interface(JObject)
  ['{29207A4E-24FB-4C2F-8628-1E8D1B243BF4}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JSnsAction; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/SnsAction;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJSnsActionJsonUnmarshaller = class(TJavaGenericImport<JSnsActionJsonUnmarshallerClass, JSnsActionJsonUnmarshaller>) end;

  JSqsActionJsonMarshallerClass = interface(JObjectClass)
  ['{59BA3875-1FA8-49AC-A839-890FCDA88B7A}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JSqsActionJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/SqsActionJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/SqsActionJsonMarshaller')]
  JSqsActionJsonMarshaller = interface(JObject)
  ['{FB97CA5B-5860-4557-9700-C856468B0FEB}']
    { Property Methods }

    { methods }
    procedure marshall(sqsAction: JSqsAction; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/SqsAction;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJSqsActionJsonMarshaller = class(TJavaGenericImport<JSqsActionJsonMarshallerClass, JSqsActionJsonMarshaller>) end;

  JSqsActionJsonUnmarshallerClass = interface(JObjectClass)
  ['{5A92ACDB-1A38-45EB-ACF5-F649D291C9D4}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JSqsActionJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/SqsActionJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/SqsActionJsonUnmarshaller')]
  JSqsActionJsonUnmarshaller = interface(JObject)
  ['{833D5413-E0E3-48BC-AE7D-372B06019E70}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JSqsAction; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/SqsAction;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJSqsActionJsonUnmarshaller = class(TJavaGenericImport<JSqsActionJsonUnmarshallerClass, JSqsActionJsonUnmarshaller>) end;

  JThingAttributeJsonMarshallerClass = interface(JObjectClass)
  ['{DC9EC0CF-0049-49D3-AC0F-8BD368491DB5}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JThingAttributeJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ThingAttributeJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ThingAttributeJsonMarshaller')]
  JThingAttributeJsonMarshaller = interface(JObject)
  ['{BA71DA2D-ED71-449D-BDD8-9B8DD90B0CA3}']
    { Property Methods }

    { methods }
    procedure marshall(thingAttribute: JThingAttribute; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/ThingAttribute;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJThingAttributeJsonMarshaller = class(TJavaGenericImport<JThingAttributeJsonMarshallerClass, JThingAttributeJsonMarshaller>) end;

  JThingAttributeJsonUnmarshallerClass = interface(JObjectClass)
  ['{85DEC453-E364-4040-A62C-6D329764F4C7}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JThingAttributeJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ThingAttributeJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ThingAttributeJsonUnmarshaller')]
  JThingAttributeJsonUnmarshaller = interface(JObject)
  ['{C3B5AD11-70E1-49FA-A416-3F09C5662482}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JThingAttribute; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/ThingAttribute;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJThingAttributeJsonUnmarshaller = class(TJavaGenericImport<JThingAttributeJsonUnmarshallerClass, JThingAttributeJsonUnmarshaller>) end;

  JThingTypeDefinitionJsonMarshallerClass = interface(JObjectClass)
  ['{437981A9-D404-43AA-B5A3-41D4DE78CA37}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JThingTypeDefinitionJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ThingTypeDefinitionJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ThingTypeDefinitionJsonMarshaller')]
  JThingTypeDefinitionJsonMarshaller = interface(JObject)
  ['{F4FFF502-E52B-4E50-8FE4-10887D7BB652}']
    { Property Methods }

    { methods }
    procedure marshall(thingTypeDefinition: JThingTypeDefinition; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/ThingTypeDefinition;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJThingTypeDefinitionJsonMarshaller = class(TJavaGenericImport<JThingTypeDefinitionJsonMarshallerClass, JThingTypeDefinitionJsonMarshaller>) end;

  JThingTypeDefinitionJsonUnmarshallerClass = interface(JObjectClass)
  ['{4354CE85-D98E-434C-8229-76DBED87C027}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JThingTypeDefinitionJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ThingTypeDefinitionJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ThingTypeDefinitionJsonUnmarshaller')]
  JThingTypeDefinitionJsonUnmarshaller = interface(JObject)
  ['{B5C8A447-8FB9-4F27-B335-4BF95614BE98}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JThingTypeDefinition; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/ThingTypeDefinition;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJThingTypeDefinitionJsonUnmarshaller = class(TJavaGenericImport<JThingTypeDefinitionJsonUnmarshallerClass, JThingTypeDefinitionJsonUnmarshaller>) end;

  JThingTypeMetadataJsonMarshallerClass = interface(JObjectClass)
  ['{55C274EF-A97E-417C-BEB7-5E755CE0420D}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JThingTypeMetadataJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ThingTypeMetadataJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ThingTypeMetadataJsonMarshaller')]
  JThingTypeMetadataJsonMarshaller = interface(JObject)
  ['{0941D3BD-63DB-463D-8497-83E6D635F34B}']
    { Property Methods }

    { methods }
    procedure marshall(thingTypeMetadata: JThingTypeMetadata; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/ThingTypeMetadata;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJThingTypeMetadataJsonMarshaller = class(TJavaGenericImport<JThingTypeMetadataJsonMarshallerClass, JThingTypeMetadataJsonMarshaller>) end;

  JThingTypeMetadataJsonUnmarshallerClass = interface(JObjectClass)
  ['{AA522B48-FA97-42FE-93B1-8DDD82A64410}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JThingTypeMetadataJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ThingTypeMetadataJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ThingTypeMetadataJsonUnmarshaller')]
  JThingTypeMetadataJsonUnmarshaller = interface(JObject)
  ['{CD6804D6-5518-4EC6-8EF9-FB1C94F9BC4A}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JThingTypeMetadata; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/ThingTypeMetadata;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJThingTypeMetadataJsonUnmarshaller = class(TJavaGenericImport<JThingTypeMetadataJsonUnmarshallerClass, JThingTypeMetadataJsonUnmarshaller>) end;

  JThingTypePropertiesJsonMarshallerClass = interface(JObjectClass)
  ['{F460B7CE-07F4-4C2F-8F95-1EE0F51A6596}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JThingTypePropertiesJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ThingTypePropertiesJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ThingTypePropertiesJsonMarshaller')]
  JThingTypePropertiesJsonMarshaller = interface(JObject)
  ['{56034F4A-EFA1-464B-BFFC-C6A76D3154E9}']
    { Property Methods }

    { methods }
    procedure marshall(thingTypeProperties: JThingTypeProperties; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/ThingTypeProperties;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJThingTypePropertiesJsonMarshaller = class(TJavaGenericImport<JThingTypePropertiesJsonMarshallerClass, JThingTypePropertiesJsonMarshaller>) end;

  JThingTypePropertiesJsonUnmarshallerClass = interface(JObjectClass)
  ['{AC4709B6-CFE9-4D0C-8694-C1DDC4161E48}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JThingTypePropertiesJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/ThingTypePropertiesJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/ThingTypePropertiesJsonUnmarshaller')]
  JThingTypePropertiesJsonUnmarshaller = interface(JObject)
  ['{6F4C8C9C-59A5-40FA-84F5-9970E2EAB111}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JThingTypeProperties; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/ThingTypeProperties;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJThingTypePropertiesJsonUnmarshaller = class(TJavaGenericImport<JThingTypePropertiesJsonUnmarshallerClass, JThingTypePropertiesJsonUnmarshaller>) end;

  JTopicRuleJsonMarshallerClass = interface(JObjectClass)
  ['{EF47F2FD-0724-4A1B-BF70-A7CC638ADC46}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JTopicRuleJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/TopicRuleJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/TopicRuleJsonMarshaller')]
  JTopicRuleJsonMarshaller = interface(JObject)
  ['{F98AC9E3-7FC6-48CF-A6A9-22426B726507}']
    { Property Methods }

    { methods }
    procedure marshall(topicRule: JTopicRule; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/TopicRule;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJTopicRuleJsonMarshaller = class(TJavaGenericImport<JTopicRuleJsonMarshallerClass, JTopicRuleJsonMarshaller>) end;

  JTopicRuleJsonUnmarshallerClass = interface(JObjectClass)
  ['{B8364E8E-6F7E-4E7B-9468-C456BBCBFC1F}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JTopicRuleJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/TopicRuleJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/TopicRuleJsonUnmarshaller')]
  JTopicRuleJsonUnmarshaller = interface(JObject)
  ['{01A26E6B-C936-46AD-B990-9188178B0AA0}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JTopicRule; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/TopicRule;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJTopicRuleJsonUnmarshaller = class(TJavaGenericImport<JTopicRuleJsonUnmarshallerClass, JTopicRuleJsonUnmarshaller>) end;

  JTopicRuleListItemJsonMarshallerClass = interface(JObjectClass)
  ['{BA27218D-86FD-4E00-8E96-DC3DEDE52C20}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JTopicRuleListItemJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/TopicRuleListItemJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/TopicRuleListItemJsonMarshaller')]
  JTopicRuleListItemJsonMarshaller = interface(JObject)
  ['{263DA0E8-067A-4519-9E2D-ED853AB77142}']
    { Property Methods }

    { methods }
    procedure marshall(topicRuleListItem: JTopicRuleListItem; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/TopicRuleListItem;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJTopicRuleListItemJsonMarshaller = class(TJavaGenericImport<JTopicRuleListItemJsonMarshallerClass, JTopicRuleListItemJsonMarshaller>) end;

  JTopicRuleListItemJsonUnmarshallerClass = interface(JObjectClass)
  ['{4C652F57-5510-41F5-8235-7FBEC9FF81A8}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JTopicRuleListItemJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/TopicRuleListItemJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/TopicRuleListItemJsonUnmarshaller')]
  JTopicRuleListItemJsonUnmarshaller = interface(JObject)
  ['{690D71D4-BB15-475E-8DF0-D6EBFA4C7367}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JTopicRuleListItem; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/TopicRuleListItem;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJTopicRuleListItemJsonUnmarshaller = class(TJavaGenericImport<JTopicRuleListItemJsonUnmarshallerClass, JTopicRuleListItemJsonUnmarshaller>) end;

  JTopicRulePayloadJsonMarshallerClass = interface(JObjectClass)
  ['{A030BD1D-155C-4AB8-9A5D-58B32272EA1D}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JTopicRulePayloadJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/TopicRulePayloadJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/TopicRulePayloadJsonMarshaller')]
  JTopicRulePayloadJsonMarshaller = interface(JObject)
  ['{72B4CF83-3DBF-4ED3-8514-BFF4F30FAB0A}']
    { Property Methods }

    { methods }
    procedure marshall(topicRulePayload: JTopicRulePayload; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/TopicRulePayload;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJTopicRulePayloadJsonMarshaller = class(TJavaGenericImport<JTopicRulePayloadJsonMarshallerClass, JTopicRulePayloadJsonMarshaller>) end;

  JTopicRulePayloadJsonUnmarshallerClass = interface(JObjectClass)
  ['{C16E2F03-4DAE-403F-BD89-745A8691CC49}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JTopicRulePayloadJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/TopicRulePayloadJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/TopicRulePayloadJsonUnmarshaller')]
  JTopicRulePayloadJsonUnmarshaller = interface(JObject)
  ['{662DF66D-0581-49D4-BE65-FC679FF4E8BE}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JTopicRulePayload; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/TopicRulePayload;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJTopicRulePayloadJsonUnmarshaller = class(TJavaGenericImport<JTopicRulePayloadJsonUnmarshallerClass, JTopicRulePayloadJsonUnmarshaller>) end;

 
  JTransferCertificateRequestMarshallerClass = interface(JObjectClass)
  ['{3B2DFC56-5B20-405F-B248-2A4216869FBC}']
    { static Property Methods }

    { static Methods }
    {class} function init: JTransferCertificateRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/TransferCertificateRequestMarshaller')]
  JTransferCertificateRequestMarshaller = interface(JObject)
  ['{CC08F098-25D7-4238-B7B3-D4EBF86ACF51}']
    { Property Methods }

    { methods }
    function marshall(transferCertificateRequest: JTransferCertificateRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/TransferCertificateRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJTransferCertificateRequestMarshaller = class(TJavaGenericImport<JTransferCertificateRequestMarshallerClass, JTransferCertificateRequestMarshaller>) end;

  JTransferCertificateResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{2E5BC457-C49F-49A2-8292-4EBEAE248BA8}']
    { static Property Methods }

    { static Methods }
    {class} function init: JTransferCertificateResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JTransferCertificateResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/TransferCertificateResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/TransferCertificateResultJsonUnmarshaller')]
  JTransferCertificateResultJsonUnmarshaller = interface(JObject)
  ['{1EC808A3-2D96-40A5-860C-A0D26FAB086B}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JTransferCertificateResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/TransferCertificateResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJTransferCertificateResultJsonUnmarshaller = class(TJavaGenericImport<JTransferCertificateResultJsonUnmarshallerClass, JTransferCertificateResultJsonUnmarshaller>) end;

 
  JTransferDataJsonMarshallerClass = interface(JObjectClass)
  ['{3EB892D7-3EA9-4FB1-8545-C3E5487F1766}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JTransferDataJsonMarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/TransferDataJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/TransferDataJsonMarshaller')]
  JTransferDataJsonMarshaller = interface(JObject)
  ['{C0D5C7E8-89A8-4F57-88E7-34A935373CCE}']
    { Property Methods }

    { methods }
    procedure marshall(transferData: JTransferData; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/iot/model/TransferData;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJTransferDataJsonMarshaller = class(TJavaGenericImport<JTransferDataJsonMarshallerClass, JTransferDataJsonMarshaller>) end;

  JTransferDataJsonUnmarshallerClass = interface(JObjectClass)
  ['{A8578860-D507-45A1-8D73-90EC97E88379}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JTransferDataJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/TransferDataJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/TransferDataJsonUnmarshaller')]
  JTransferDataJsonUnmarshaller = interface(JObject)
  ['{01AD73EE-BDE3-4FDC-B43A-76D4371F429F}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JTransferData; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/TransferData;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJTransferDataJsonUnmarshaller = class(TJavaGenericImport<JTransferDataJsonUnmarshallerClass, JTransferDataJsonUnmarshaller>) end;

 
  JUpdateCACertificateRequestMarshallerClass = interface(JObjectClass)
  ['{D897CDA2-8316-4DFA-9664-8D20F76EF111}']
    { static Property Methods }

    { static Methods }
    {class} function init: JUpdateCACertificateRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/UpdateCACertificateRequestMarshaller')]
  JUpdateCACertificateRequestMarshaller = interface(JObject)
  ['{2309AE15-9602-4765-ACDA-4007C5BE192B}']
    { Property Methods }

    { methods }
    function marshall(updateCACertificateRequest: JUpdateCACertificateRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/UpdateCACertificateRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJUpdateCACertificateRequestMarshaller = class(TJavaGenericImport<JUpdateCACertificateRequestMarshallerClass, JUpdateCACertificateRequestMarshaller>) end;

  JUpdateCertificateRequestMarshallerClass = interface(JObjectClass)
  ['{7DC10925-635B-42CB-863D-91988C510C26}']
    { static Property Methods }

    { static Methods }
    {class} function init: JUpdateCertificateRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/UpdateCertificateRequestMarshaller')]
  JUpdateCertificateRequestMarshaller = interface(JObject)
  ['{D308EB9E-BE43-45FF-9FA5-C84DA84C1F43}']
    { Property Methods }

    { methods }
    function marshall(updateCertificateRequest: JUpdateCertificateRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/UpdateCertificateRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJUpdateCertificateRequestMarshaller = class(TJavaGenericImport<JUpdateCertificateRequestMarshallerClass, JUpdateCertificateRequestMarshaller>) end;

  JUpdateThingRequestMarshallerClass = interface(JObjectClass)
  ['{98561755-145F-4F50-A840-D7047B2AC808}']
    { static Property Methods }

    { static Methods }
    {class} function init: JUpdateThingRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/UpdateThingRequestMarshaller')]
  JUpdateThingRequestMarshaller = interface(JObject)
  ['{BBCF5D4B-2850-42E7-AD7B-70D0D71FEA01}']
    { Property Methods }

    { methods }
    function marshall(updateThingRequest: JUpdateThingRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/UpdateThingRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJUpdateThingRequestMarshaller = class(TJavaGenericImport<JUpdateThingRequestMarshallerClass, JUpdateThingRequestMarshaller>) end;

  JUpdateThingResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{6DBD3E52-F304-4DF3-9E91-71910B32C592}']
    { static Property Methods }

    { static Methods }
    {class} function init: JUpdateThingResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JUpdateThingResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iot/model/transform/UpdateThingResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/transform/UpdateThingResultJsonUnmarshaller')]
  JUpdateThingResultJsonUnmarshaller = interface(JObject)
  ['{E38CAADC-7A5D-412C-8B86-C21AA6734054}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JUpdateThingResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iot/model/UpdateThingResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJUpdateThingResultJsonUnmarshaller = class(TJavaGenericImport<JUpdateThingResultJsonUnmarshallerClass, JUpdateThingResultJsonUnmarshaller>) end;

  JUnauthorizedExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{7C6CB4FC-BA80-4858-BDF1-1FC22C5B22B8}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JUnauthorizedException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/UnauthorizedException')]
  JUnauthorizedException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{C6D59365-C16B-4C4F-B849-90C8CD34E809}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJUnauthorizedException = class(TJavaGenericImport<JUnauthorizedExceptionClass, JUnauthorizedException>) end;

  JUpdateCACertificateRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{854D48EC-926A-4730-8CF4-280B299C2CEC}']
    { static Property Methods }

    { static Methods }
    {class} function init: JUpdateCACertificateRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/UpdateCACertificateRequest')]
  JUpdateCACertificateRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{2AD83102-A90D-4C73-A5AE-A5A6D3A9A829}']
    { Property Methods }

    { methods }
    function getCertificateId: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateId(certificateId: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateId(certificateId: JString): JUpdateCACertificateRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/UpdateCACertificateRequest;
    function getNewStatus: JString; cdecl; //()Ljava/lang/String;
    procedure setNewStatus(newStatus: JString); cdecl; overload; //(Ljava/lang/String;)V
    function withNewStatus(newStatus: JString): JUpdateCACertificateRequest; cdecl; overload; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/UpdateCACertificateRequest;
    procedure setNewStatus(newStatus: JCACertificateStatus); cdecl; overload; //(Lcom/amazonaws/services/iot/model/CACertificateStatus;)V
    function withNewStatus(newStatus: JCACertificateStatus): JUpdateCACertificateRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/CACertificateStatus;)Lcom/amazonaws/services/iot/model/UpdateCACertificateRequest;
    function getNewAutoRegistrationStatus: JString; cdecl; //()Ljava/lang/String;
    procedure setNewAutoRegistrationStatus(newAutoRegistrationStatus: JString); cdecl; overload; //(Ljava/lang/String;)V
    function withNewAutoRegistrationStatus(newAutoRegistrationStatus: JString): JUpdateCACertificateRequest; cdecl; overload; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/UpdateCACertificateRequest;
    procedure setNewAutoRegistrationStatus(newAutoRegistrationStatus: JAutoRegistrationStatus); cdecl; overload; //(Lcom/amazonaws/services/iot/model/AutoRegistrationStatus;)V
    function withNewAutoRegistrationStatus(newAutoRegistrationStatus: JAutoRegistrationStatus): JUpdateCACertificateRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/AutoRegistrationStatus;)Lcom/amazonaws/services/iot/model/UpdateCACertificateRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJUpdateCACertificateRequest = class(TJavaGenericImport<JUpdateCACertificateRequestClass, JUpdateCACertificateRequest>) end;

  JUpdateCertificateRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{ADCADF17-2DAD-4ED9-A689-265EB8F182DE}']
    { static Property Methods }

    { static Methods }
    {class} function init: JUpdateCertificateRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/UpdateCertificateRequest')]
  JUpdateCertificateRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{A940847E-BEB0-451F-893E-8950500D259F}']
    { Property Methods }

    { methods }
    function getCertificateId: JString; cdecl; //()Ljava/lang/String;
    procedure setCertificateId(certificateId: JString); cdecl; //(Ljava/lang/String;)V
    function withCertificateId(certificateId: JString): JUpdateCertificateRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/UpdateCertificateRequest;
    function getNewStatus: JString; cdecl; //()Ljava/lang/String;
    procedure setNewStatus(newStatus: JString); cdecl; overload; //(Ljava/lang/String;)V
    function withNewStatus(newStatus: JString): JUpdateCertificateRequest; cdecl; overload; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/UpdateCertificateRequest;
    procedure setNewStatus(newStatus: JCertificateStatus); cdecl; overload; //(Lcom/amazonaws/services/iot/model/CertificateStatus;)V
    function withNewStatus(newStatus: JCertificateStatus): JUpdateCertificateRequest; cdecl; overload; //(Lcom/amazonaws/services/iot/model/CertificateStatus;)Lcom/amazonaws/services/iot/model/UpdateCertificateRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJUpdateCertificateRequest = class(TJavaGenericImport<JUpdateCertificateRequestClass, JUpdateCertificateRequest>) end;

  JUpdateThingRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{89857D24-4CE7-48A7-8802-15CF9211CF40}']
    { static Property Methods }

    { static Methods }
    {class} function init: JUpdateThingRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/UpdateThingRequest')]
  JUpdateThingRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{C1AE19B5-3130-4624-A236-AE3F05F2BD3A}']
    { Property Methods }

    { methods }
    function getThingName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingName(thingName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingName(thingName: JString): JUpdateThingRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/UpdateThingRequest;
    function getThingTypeName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingTypeName(thingTypeName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingTypeName(thingTypeName: JString): JUpdateThingRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iot/model/UpdateThingRequest;
    function getAttributePayload: JAttributePayload; cdecl; //()Lcom/amazonaws/services/iot/model/AttributePayload;
    procedure setAttributePayload(attributePayload: JAttributePayload); cdecl; //(Lcom/amazonaws/services/iot/model/AttributePayload;)V
    function withAttributePayload(attributePayload: JAttributePayload): JUpdateThingRequest; cdecl; //(Lcom/amazonaws/services/iot/model/AttributePayload;)Lcom/amazonaws/services/iot/model/UpdateThingRequest;
    function getExpectedVersion: JLong; cdecl; //()Ljava/lang/Long;
    procedure setExpectedVersion(expectedVersion: JLong); cdecl; //(Ljava/lang/Long;)V
    function withExpectedVersion(expectedVersion: JLong): JUpdateThingRequest; cdecl; //(Ljava/lang/Long;)Lcom/amazonaws/services/iot/model/UpdateThingRequest;
    function isRemoveThingType: JBoolean; cdecl; //()Ljava/lang/Boolean;
    function getRemoveThingType: JBoolean; cdecl; //()Ljava/lang/Boolean;
    procedure setRemoveThingType(removeThingType: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withRemoveThingType(removeThingType: JBoolean): JUpdateThingRequest; cdecl; //(Ljava/lang/Boolean;)Lcom/amazonaws/services/iot/model/UpdateThingRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJUpdateThingRequest = class(TJavaGenericImport<JUpdateThingRequestClass, JUpdateThingRequest>) end;

  JUpdateThingResultClass = interface(JObjectClass)
  ['{F537778B-7371-4AE1-8977-53AE6CE4DCB5}']
    { static Property Methods }

    { static Methods }
    {class} function init: JUpdateThingResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/UpdateThingResult')]
  JUpdateThingResult = interface(JObject)
  ['{34F21AF3-0B11-4CE5-A65E-E66C0EE8BC5B}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJUpdateThingResult = class(TJavaGenericImport<JUpdateThingResultClass, JUpdateThingResult>) end;

  JVersionConflictExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{9476291D-E5E4-4179-B1D2-88DEB775B0E1}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JVersionConflictException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/VersionConflictException')]
  JVersionConflictException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{C6CCC1AD-9109-4A1B-A018-DA72C52B9582}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJVersionConflictException = class(TJavaGenericImport<JVersionConflictExceptionClass, JVersionConflictException>) end;

  JVersionsLimitExceededExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{0E670B10-81D0-403E-8E5A-49881F7D21D0}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JVersionsLimitExceededException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iot/model/VersionsLimitExceededException')]
  JVersionsLimitExceededException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{4CD22860-6EF2-44B9-947F-2FA58419F135}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJVersionsLimitExceededException = class(TJavaGenericImport<JVersionsLimitExceededExceptionClass, JVersionsLimitExceededException>) end;

  JAWSIotDataClass = interface(JObjectClass)
  ['{F54F3056-A1AD-47DA-B238-54CBF4C1BAF5}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iotdata/AWSIotData')]
  JAWSIotData = interface(IJavaInstance)
  ['{9522DE27-E29C-4AE4-B4B5-DFCA22EC4B44}']
    { Property Methods }

    { methods }
    procedure setEndpoint(P1: JString); cdecl; //(Ljava/lang/String;)V
    procedure setRegion(P1: JRegion); cdecl; //(Lcom/amazonaws/regions/Region;)V
    function deleteThingShadow(P1: JDeleteThingShadowRequest): JDeleteThingShadowResult; cdecl; //(Lcom/amazonaws/services/iotdata/model/DeleteThingShadowRequest;)Lcom/amazonaws/services/iotdata/model/DeleteThingShadowResult;
    function getThingShadow(P1: JGetThingShadowRequest): JGetThingShadowResult; cdecl; //(Lcom/amazonaws/services/iotdata/model/GetThingShadowRequest;)Lcom/amazonaws/services/iotdata/model/GetThingShadowResult;
    procedure publish(P1: JPublishRequest); cdecl; //(Lcom/amazonaws/services/iotdata/model/PublishRequest;)V
    function updateThingShadow(P1: JUpdateThingShadowRequest): JUpdateThingShadowResult; cdecl; //(Lcom/amazonaws/services/iotdata/model/UpdateThingShadowRequest;)Lcom/amazonaws/services/iotdata/model/UpdateThingShadowResult;
    procedure shutdown; cdecl; //()V
    function getCachedResponseMetadata(P1: JAmazonWebServiceRequest): JResponseMetadata; cdecl; //(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    { Property }
  end;

  TJAWSIotData = class(TJavaGenericImport<JAWSIotDataClass, JAWSIotData>) end;

  JAWSIotDataClientClass = interface(JAmazonWebServiceClientClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceClient
  ['{774DF4AB-5519-4DBB-ABB7-CE27879A6A8E}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAWSIotDataClient; cdecl; overload; //Deprecated //()V
    {class} function init(clientConfiguration: JClientConfiguration): JAWSIotDataClient; cdecl; overload; //Deprecated //(Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(awsCredentials: JAWSCredentials): JAWSIotDataClient; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentials;)V
    {class} function init(awsCredentials: JAWSCredentials; clientConfiguration: JClientConfiguration): JAWSIotDataClient; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(awsCredentialsProvider: JAWSCredentialsProvider): JAWSIotDataClient; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    {class} function init(awsCredentialsProvider: JAWSCredentialsProvider; clientConfiguration: JClientConfiguration): JAWSIotDataClient; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(awsCredentialsProvider: JAWSCredentialsProvider; clientConfiguration: JClientConfiguration; requestMetricCollector: JRequestMetricCollector): JAWSIotDataClient; cdecl; overload; //Deprecated //(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    {class} function init(awsCredentialsProvider: JAWSCredentialsProvider; clientConfiguration: JClientConfiguration; httpClient: JHttpClient): JAWSIotDataClient; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iotdata/AWSIotDataClient')]
  JAWSIotDataClient = interface(JAmazonWebServiceClient) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceClient
  ['{9F05E2E2-B910-4827-B306-D1E5110AF17F}']
    { Property Methods }

    { methods }
    function deleteThingShadow(deleteThingShadowRequest: JDeleteThingShadowRequest): JDeleteThingShadowResult; cdecl; //(Lcom/amazonaws/services/iotdata/model/DeleteThingShadowRequest;)Lcom/amazonaws/services/iotdata/model/DeleteThingShadowResult;
    function getThingShadow(getThingShadowRequest: JGetThingShadowRequest): JGetThingShadowResult; cdecl; //(Lcom/amazonaws/services/iotdata/model/GetThingShadowRequest;)Lcom/amazonaws/services/iotdata/model/GetThingShadowResult;
    procedure publish(publishRequest: JPublishRequest); cdecl; //(Lcom/amazonaws/services/iotdata/model/PublishRequest;)V
    function updateThingShadow(updateThingShadowRequest: JUpdateThingShadowRequest): JUpdateThingShadowResult; cdecl; //(Lcom/amazonaws/services/iotdata/model/UpdateThingShadowRequest;)Lcom/amazonaws/services/iotdata/model/UpdateThingShadowResult;
    function getCachedResponseMetadata(request: JAmazonWebServiceRequest): JResponseMetadata; cdecl; //Deprecated //(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    { Property }
  end;

  TJAWSIotDataClient = class(TJavaGenericImport<JAWSIotDataClientClass, JAWSIotDataClient>) end;

  JConflictExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{4F939D2F-FE5B-4B02-9D87-25048908BDDE}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JConflictException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iotdata/model/ConflictException')]
  JConflictException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{22DFFBAC-39D8-4097-9978-DABBCAAB5BB6}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJConflictException = class(TJavaGenericImport<JConflictExceptionClass, JConflictException>) end;

  JDeleteThingShadowRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{EC817771-62B2-48BE-89CD-AA2E883C1968}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeleteThingShadowRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iotdata/model/DeleteThingShadowRequest')]
  JDeleteThingShadowRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{1A5A1932-357F-4C10-AA6E-6AEC51348F7F}']
    { Property Methods }

    { methods }
    function getThingName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingName(thingName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingName(thingName: JString): JDeleteThingShadowRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iotdata/model/DeleteThingShadowRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDeleteThingShadowRequest = class(TJavaGenericImport<JDeleteThingShadowRequestClass, JDeleteThingShadowRequest>) end;

  JDeleteThingShadowResultClass = interface(JObjectClass)
  ['{EB838455-ADB6-4B52-84CA-C59140ECA071}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeleteThingShadowResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iotdata/model/DeleteThingShadowResult')]
  JDeleteThingShadowResult = interface(JObject)
  ['{8CFBAE2E-5AE1-4477-B531-7D39CD6C66D0}']
    { Property Methods }

    { methods }
    function getPayload: JByteBuffer; cdecl; //()Ljava/nio/ByteBuffer;
    procedure setPayload(payload: JByteBuffer); cdecl; //(Ljava/nio/ByteBuffer;)V
    function withPayload(payload: JByteBuffer): JDeleteThingShadowResult; cdecl; //(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/iotdata/model/DeleteThingShadowResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJDeleteThingShadowResult = class(TJavaGenericImport<JDeleteThingShadowResultClass, JDeleteThingShadowResult>) end;

  JGetThingShadowRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{B857512B-CDFE-404D-9DAC-F439AA6028BB}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetThingShadowRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iotdata/model/GetThingShadowRequest')]
  JGetThingShadowRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{8FA905C6-2837-4798-9FAD-4B408198430A}']
    { Property Methods }

    { methods }
    function getThingName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingName(thingName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingName(thingName: JString): JGetThingShadowRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iotdata/model/GetThingShadowRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJGetThingShadowRequest = class(TJavaGenericImport<JGetThingShadowRequestClass, JGetThingShadowRequest>) end;

  JGetThingShadowResultClass = interface(JObjectClass)
  ['{0391ECF1-6B15-4376-842A-B9622088D574}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetThingShadowResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iotdata/model/GetThingShadowResult')]
  JGetThingShadowResult = interface(JObject)
  ['{A32972C8-7593-403A-AEDC-AD709E07F977}']
    { Property Methods }

    { methods }
    function getPayload: JByteBuffer; cdecl; //()Ljava/nio/ByteBuffer;
    procedure setPayload(payload: JByteBuffer); cdecl; //(Ljava/nio/ByteBuffer;)V
    function withPayload(payload: JByteBuffer): JGetThingShadowResult; cdecl; //(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/iotdata/model/GetThingShadowResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJGetThingShadowResult = class(TJavaGenericImport<JGetThingShadowResultClass, JGetThingShadowResult>) end;

  JInternalFailureException_481Class = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{ABA52E3A-6C43-4A70-897B-498AB2B9A9AA}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JInternalFailureException_481; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iotdata/model/InternalFailureException')]
  JInternalFailureException_481 = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{10C194B1-A475-4B8E-ACD0-6636741DE56A}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJInternalFailureException_481 = class(TJavaGenericImport<JInternalFailureException_481Class, JInternalFailureException_481>) end;

  JInvalidRequestException_482Class = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{5A81CDF6-3771-4FA6-B913-EC1C360C94D1}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JInvalidRequestException_482; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iotdata/model/InvalidRequestException')]
  JInvalidRequestException_482 = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{B88040F8-B991-46CF-8B85-8211F68B9468}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJInvalidRequestException_482 = class(TJavaGenericImport<JInvalidRequestException_482Class, JInvalidRequestException_482>) end;

  JMethodNotAllowedExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{8771E0E7-F79E-4B9F-AB76-BA7E52062FFC}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JMethodNotAllowedException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iotdata/model/MethodNotAllowedException')]
  JMethodNotAllowedException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{B34C7614-5419-45C9-8C8B-0AC198D5B990}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJMethodNotAllowedException = class(TJavaGenericImport<JMethodNotAllowedExceptionClass, JMethodNotAllowedException>) end;

  JPublishRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{7D1A0186-963E-4E3C-8035-7A007150306F}']
    { static Property Methods }

    { static Methods }
    {class} function init: JPublishRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iotdata/model/PublishRequest')]
  JPublishRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{11E91C32-F506-4068-A953-8D6AF50F43B8}']
    { Property Methods }

    { methods }
    function getTopic: JString; cdecl; //()Ljava/lang/String;
    procedure setTopic(topic: JString); cdecl; //(Ljava/lang/String;)V
    function withTopic(topic: JString): JPublishRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iotdata/model/PublishRequest;
    function getQos: JInteger; cdecl; //()Ljava/lang/Integer;
    procedure setQos(qos: JInteger); cdecl; //(Ljava/lang/Integer;)V
    function withQos(qos: JInteger): JPublishRequest; cdecl; //(Ljava/lang/Integer;)Lcom/amazonaws/services/iotdata/model/PublishRequest;
    function getPayload: JByteBuffer; cdecl; //()Ljava/nio/ByteBuffer;
    procedure setPayload(payload: JByteBuffer); cdecl; //(Ljava/nio/ByteBuffer;)V
    function withPayload(payload: JByteBuffer): JPublishRequest; cdecl; //(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/iotdata/model/PublishRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJPublishRequest = class(TJavaGenericImport<JPublishRequestClass, JPublishRequest>) end;

  JRequestEntityTooLargeExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{7216CAAC-D94F-4057-ADAE-F5C3F49EC87C}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JRequestEntityTooLargeException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iotdata/model/RequestEntityTooLargeException')]
  JRequestEntityTooLargeException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{9EFC3D5C-3A4A-4DCB-A49C-F120B943157D}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJRequestEntityTooLargeException = class(TJavaGenericImport<JRequestEntityTooLargeExceptionClass, JRequestEntityTooLargeException>) end;

  JDeleteThingShadowRequestMarshallerClass = interface(JObjectClass)
  ['{04EBDFE2-5D14-4A8A-B153-588C7A78C04A}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeleteThingShadowRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iotdata/model/transform/DeleteThingShadowRequestMarshaller')]
  JDeleteThingShadowRequestMarshaller = interface(JObject)
  ['{F554E7C7-9079-4C4E-B776-D1398E56BA74}']
    { Property Methods }

    { methods }
    function marshall(deleteThingShadowRequest: JDeleteThingShadowRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iotdata/model/DeleteThingShadowRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDeleteThingShadowRequestMarshaller = class(TJavaGenericImport<JDeleteThingShadowRequestMarshallerClass, JDeleteThingShadowRequestMarshaller>) end;

  JDeleteThingShadowResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{F83B23D5-BAFB-4BB9-B915-06F5F9CBEC67}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeleteThingShadowResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JDeleteThingShadowResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iotdata/model/transform/DeleteThingShadowResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iotdata/model/transform/DeleteThingShadowResultJsonUnmarshaller')]
  JDeleteThingShadowResultJsonUnmarshaller = interface(JObject)
  ['{776A1C36-B984-4BD1-8E60-88BE6189A280}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JDeleteThingShadowResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iotdata/model/DeleteThingShadowResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJDeleteThingShadowResultJsonUnmarshaller = class(TJavaGenericImport<JDeleteThingShadowResultJsonUnmarshallerClass, JDeleteThingShadowResultJsonUnmarshaller>) end;

  JGetThingShadowRequestMarshallerClass = interface(JObjectClass)
  ['{450DD5C2-4933-4EC1-B51E-0B33BAB5BC5E}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetThingShadowRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iotdata/model/transform/GetThingShadowRequestMarshaller')]
  JGetThingShadowRequestMarshaller = interface(JObject)
  ['{E006922F-1D07-496B-BAF4-EA5A21810734}']
    { Property Methods }

    { methods }
    function marshall(getThingShadowRequest: JGetThingShadowRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iotdata/model/GetThingShadowRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJGetThingShadowRequestMarshaller = class(TJavaGenericImport<JGetThingShadowRequestMarshallerClass, JGetThingShadowRequestMarshaller>) end;

  JGetThingShadowResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{CA627511-46EF-476A-8084-1B1838E98878}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetThingShadowResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JGetThingShadowResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iotdata/model/transform/GetThingShadowResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iotdata/model/transform/GetThingShadowResultJsonUnmarshaller')]
  JGetThingShadowResultJsonUnmarshaller = interface(JObject)
  ['{357ED130-948E-4A5D-ABF0-6981E096B643}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JGetThingShadowResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iotdata/model/GetThingShadowResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJGetThingShadowResultJsonUnmarshaller = class(TJavaGenericImport<JGetThingShadowResultJsonUnmarshallerClass, JGetThingShadowResultJsonUnmarshaller>) end;

  JPublishRequestMarshallerClass = interface(JObjectClass)
  ['{2F08AE4E-44A3-4F3C-AE77-C84BE1057FE6}']
    { static Property Methods }

    { static Methods }
    {class} function init: JPublishRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iotdata/model/transform/PublishRequestMarshaller')]
  JPublishRequestMarshaller = interface(JObject)
  ['{795FB8C7-0A8F-460C-9380-E4C8AD134318}']
    { Property Methods }

    { methods }
    function marshall(publishRequest: JPublishRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iotdata/model/PublishRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJPublishRequestMarshaller = class(TJavaGenericImport<JPublishRequestMarshallerClass, JPublishRequestMarshaller>) end;

 
  JUpdateThingShadowRequestMarshallerClass = interface(JObjectClass)
  ['{D8B5F53E-7DAD-4779-ACB2-6F3FBE4E8F6F}']
    { static Property Methods }

    { static Methods }
    {class} function init: JUpdateThingShadowRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iotdata/model/transform/UpdateThingShadowRequestMarshaller')]
  JUpdateThingShadowRequestMarshaller = interface(JObject)
  ['{42D8854A-AD5A-43FC-B098-BFBFBBBC59BA}']
    { Property Methods }

    { methods }
    function marshall(updateThingShadowRequest: JUpdateThingShadowRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/iotdata/model/UpdateThingShadowRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJUpdateThingShadowRequestMarshaller = class(TJavaGenericImport<JUpdateThingShadowRequestMarshallerClass, JUpdateThingShadowRequestMarshaller>) end;

  JUpdateThingShadowResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{8FAA36E5-A4DD-47F0-8687-5D8964AF3BAB}']
    { static Property Methods }

    { static Methods }
    {class} function init: JUpdateThingShadowResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JUpdateThingShadowResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/iotdata/model/transform/UpdateThingShadowResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iotdata/model/transform/UpdateThingShadowResultJsonUnmarshaller')]
  JUpdateThingShadowResultJsonUnmarshaller = interface(JObject)
  ['{7AA5041E-47EB-4B55-B961-B62BB582204C}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JUpdateThingShadowResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/iotdata/model/UpdateThingShadowResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJUpdateThingShadowResultJsonUnmarshaller = class(TJavaGenericImport<JUpdateThingShadowResultJsonUnmarshallerClass, JUpdateThingShadowResultJsonUnmarshaller>) end;

  JUnauthorizedException_508Class = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{028CECBE-48BD-4BBF-81DD-4D66E69EC941}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JUnauthorizedException_508; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iotdata/model/UnauthorizedException')]
  JUnauthorizedException_508 = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{F13FE014-3750-4EC5-BFD2-9851D4AF9FDD}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJUnauthorizedException_508 = class(TJavaGenericImport<JUnauthorizedException_508Class, JUnauthorizedException_508>) end;

  JUnsupportedDocumentEncodingExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{73CB0857-C33B-4795-BFE8-2A3AF71DE91A}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JUnsupportedDocumentEncodingException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iotdata/model/UnsupportedDocumentEncodingException')]
  JUnsupportedDocumentEncodingException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{118D9D6D-F6FF-4742-9955-D989F78BC3AB}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJUnsupportedDocumentEncodingException = class(TJavaGenericImport<JUnsupportedDocumentEncodingExceptionClass, JUnsupportedDocumentEncodingException>) end;

  JUpdateThingShadowRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{A87CDAE1-5036-4554-B2E0-17492AD1CD26}']
    { static Property Methods }

    { static Methods }
    {class} function init: JUpdateThingShadowRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iotdata/model/UpdateThingShadowRequest')]
  JUpdateThingShadowRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{00E6C161-EEC5-4FD8-891E-DF6890E416BA}']
    { Property Methods }

    { methods }
    function getThingName: JString; cdecl; //()Ljava/lang/String;
    procedure setThingName(thingName: JString); cdecl; //(Ljava/lang/String;)V
    function withThingName(thingName: JString): JUpdateThingShadowRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/iotdata/model/UpdateThingShadowRequest;
    function getPayload: JByteBuffer; cdecl; //()Ljava/nio/ByteBuffer;
    procedure setPayload(payload: JByteBuffer); cdecl; //(Ljava/nio/ByteBuffer;)V
    function withPayload(payload: JByteBuffer): JUpdateThingShadowRequest; cdecl; //(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/iotdata/model/UpdateThingShadowRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJUpdateThingShadowRequest = class(TJavaGenericImport<JUpdateThingShadowRequestClass, JUpdateThingShadowRequest>) end;

  JUpdateThingShadowResultClass = interface(JObjectClass)
  ['{E79AFA08-8607-45BB-B3D5-B3CC08295BDE}']
    { static Property Methods }

    { static Methods }
    {class} function init: JUpdateThingShadowResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/iotdata/model/UpdateThingShadowResult')]
  JUpdateThingShadowResult = interface(JObject)
  ['{2A8EAFD1-DC0B-4FAE-AD04-C79C59F55E7E}']
    { Property Methods }

    { methods }
    function getPayload: JByteBuffer; cdecl; //()Ljava/nio/ByteBuffer;
    procedure setPayload(payload: JByteBuffer); cdecl; //(Ljava/nio/ByteBuffer;)V
    function withPayload(payload: JByteBuffer): JUpdateThingShadowResult; cdecl; //(Ljava/nio/ByteBuffer;)Lcom/amazonaws/services/iotdata/model/UpdateThingShadowResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJUpdateThingShadowResult = class(TJavaGenericImport<JUpdateThingShadowResultClass, JUpdateThingShadowResult>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAsn1Object',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAsn1Object));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAWSIotClientIdHelper',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAWSIotClientIdHelper));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAwsIotEndpointUtility',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAwsIotEndpointUtility));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAWSIotMqttClientStatusCallback_AWSIotMqttClientStatus));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAWSIotMqttClientStatusCallback',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAWSIotMqttClientStatusCallback));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAWSIotMqttLastWillAndTestament',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAWSIotMqttLastWillAndTestament));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAWSIotMqttManager',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAWSIotMqttManager));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAWSIotMqttMessageDeliveryCallback_MessageDeliveryStatus',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAWSIotMqttMessageDeliveryCallback_MessageDeliveryStatus));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAWSIotMqttMessageDeliveryCallback',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAWSIotMqttMessageDeliveryCallback));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAWSIotMqttNewMessageCallback',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAWSIotMqttNewMessageCallback));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAWSIotMqttQos',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAWSIotMqttQos));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAWSIotMqttQueueMessage',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAWSIotMqttQueueMessage));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAWSIotMqttTopic',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAWSIotMqttTopic));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAWSIotWebSocketUrlSigner',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAWSIotWebSocketUrlSigner));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDerParser',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDerParser));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JMqttManagerConnectionState',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JMqttManagerConnectionState));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JPEM_1',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JPEM_1));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JPEM',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JPEM));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JPEMObject',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JPEMObject));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JPEMObjectType',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JPEMObjectType));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JPrivateKeyReader',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JPrivateKeyReader));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JPublishMessageUserData',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JPublishMessageUserData));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JRSA',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JRSA));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAWSIot',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAWSIot));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAWSIotClient',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAWSIotClient));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAcceptCertificateTransferRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAcceptCertificateTransferRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAction',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAction));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAttachPrincipalPolicyRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAttachPrincipalPolicyRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAttachThingPrincipalRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAttachThingPrincipalRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAttachThingPrincipalResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAttachThingPrincipalResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAttributePayload',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAttributePayload));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAutoRegistrationStatus',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAutoRegistrationStatus));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCACertificate',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCACertificate));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCACertificateDescription',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCACertificateDescription));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCACertificateStatus',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCACertificateStatus));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCancelCertificateTransferRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCancelCertificateTransferRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCannedAccessControlList',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCannedAccessControlList));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCertificate',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCertificate));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCertificateConflictException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCertificateConflictException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCertificateDescription',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCertificateDescription));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCertificateStateException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCertificateStateException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCertificateStatus',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCertificateStatus));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCertificateValidationException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCertificateValidationException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCloudwatchAlarmAction',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCloudwatchAlarmAction));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCloudwatchMetricAction',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCloudwatchMetricAction));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreateCertificateFromCsrRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreateCertificateFromCsrRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreateCertificateFromCsrResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreateCertificateFromCsrResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreateKeysAndCertificateRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreateKeysAndCertificateRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreateKeysAndCertificateResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreateKeysAndCertificateResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreatePolicyRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreatePolicyRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreatePolicyResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreatePolicyResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreatePolicyVersionRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreatePolicyVersionRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreatePolicyVersionResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreatePolicyVersionResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreateThingRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreateThingRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreateThingResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreateThingResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreateThingTypeRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreateThingTypeRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreateThingTypeResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreateThingTypeResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreateTopicRuleRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreateTopicRuleRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteCACertificateRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteCACertificateRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteCACertificateResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteCACertificateResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteCertificateRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteCertificateRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteConflictException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteConflictException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeletePolicyRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeletePolicyRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeletePolicyVersionRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeletePolicyVersionRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteRegistrationCodeRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteRegistrationCodeRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteRegistrationCodeResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteRegistrationCodeResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteThingRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteThingRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteThingResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteThingResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteThingTypeRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteThingTypeRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteThingTypeResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteThingTypeResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteTopicRuleRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteTopicRuleRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeprecateThingTypeRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeprecateThingTypeRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeprecateThingTypeResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeprecateThingTypeResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDescribeCACertificateRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDescribeCACertificateRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDescribeCACertificateResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDescribeCACertificateResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDescribeCertificateRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDescribeCertificateRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDescribeCertificateResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDescribeCertificateResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDescribeEndpointRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDescribeEndpointRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDescribeEndpointResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDescribeEndpointResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDescribeThingRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDescribeThingRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDescribeThingResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDescribeThingResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDescribeThingTypeRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDescribeThingTypeRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDescribeThingTypeResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDescribeThingTypeResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDetachPrincipalPolicyRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDetachPrincipalPolicyRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDetachThingPrincipalRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDetachThingPrincipalRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDetachThingPrincipalResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDetachThingPrincipalResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDisableTopicRuleRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDisableTopicRuleRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDynamoDBAction',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDynamoDBAction));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDynamoDBv2Action',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDynamoDBv2Action));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDynamoKeyType',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDynamoKeyType));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JElasticsearchAction',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JElasticsearchAction));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JEnableTopicRuleRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JEnableTopicRuleRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JFirehoseAction',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JFirehoseAction));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JGetLoggingOptionsRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JGetLoggingOptionsRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JGetLoggingOptionsResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JGetLoggingOptionsResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JGetPolicyRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JGetPolicyRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JGetPolicyResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JGetPolicyResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JGetPolicyVersionRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JGetPolicyVersionRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JGetPolicyVersionResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JGetPolicyVersionResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JGetRegistrationCodeRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JGetRegistrationCodeRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JGetRegistrationCodeResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JGetRegistrationCodeResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JGetTopicRuleRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JGetTopicRuleRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JGetTopicRuleResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JGetTopicRuleResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JInternalException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JInternalException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JInternalFailureException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JInternalFailureException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JInvalidRequestException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JInvalidRequestException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JKeyPair',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JKeyPair));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JKinesisAction',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JKinesisAction));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JLambdaAction',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JLambdaAction));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JLimitExceededException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JLimitExceededException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListCACertificatesRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListCACertificatesRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListCACertificatesResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListCACertificatesResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListCertificatesByCARequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListCertificatesByCARequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListCertificatesByCAResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListCertificatesByCAResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListCertificatesRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListCertificatesRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListCertificatesResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListCertificatesResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListOutgoingCertificatesRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListOutgoingCertificatesRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListOutgoingCertificatesResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListOutgoingCertificatesResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListPoliciesRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListPoliciesRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListPoliciesResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListPoliciesResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListPolicyPrincipalsRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListPolicyPrincipalsRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListPolicyPrincipalsResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListPolicyPrincipalsResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListPolicyVersionsRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListPolicyVersionsRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListPolicyVersionsResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListPolicyVersionsResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListPrincipalPoliciesRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListPrincipalPoliciesRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListPrincipalPoliciesResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListPrincipalPoliciesResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListPrincipalThingsRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListPrincipalThingsRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListPrincipalThingsResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListPrincipalThingsResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListThingPrincipalsRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListThingPrincipalsRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListThingPrincipalsResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListThingPrincipalsResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListThingsRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListThingsRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListThingsResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListThingsResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListThingTypesRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListThingTypesRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListThingTypesResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListThingTypesResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListTopicRulesRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListTopicRulesRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListTopicRulesResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListTopicRulesResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JLoggingOptionsPayload',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JLoggingOptionsPayload));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JLogLevel',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JLogLevel));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JMalformedPolicyException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JMalformedPolicyException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JMessageFormat',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JMessageFormat));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JOutgoingCertificate',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JOutgoingCertificate));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JPolicy',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JPolicy));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JPolicyVersion',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JPolicyVersion));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JPutItemInput',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JPutItemInput));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JRegisterCACertificateRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JRegisterCACertificateRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JRegisterCACertificateResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JRegisterCACertificateResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JRegisterCertificateRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JRegisterCertificateRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JRegisterCertificateResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JRegisterCertificateResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JRegistrationCodeValidationException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JRegistrationCodeValidationException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JRejectCertificateTransferRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JRejectCertificateTransferRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JReplaceTopicRuleRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JReplaceTopicRuleRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JRepublishAction',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JRepublishAction));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JResourceAlreadyExistsException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JResourceAlreadyExistsException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JResourceNotFoundException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JResourceNotFoundException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JS3Action',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JS3Action));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JServiceUnavailableException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JServiceUnavailableException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JSetDefaultPolicyVersionRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JSetDefaultPolicyVersionRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JSetLoggingOptionsRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JSetLoggingOptionsRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JSnsAction',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JSnsAction));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JSqlParseException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JSqlParseException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JSqsAction',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JSqsAction));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JThingAttribute',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JThingAttribute));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JThingTypeDefinition',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JThingTypeDefinition));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JThingTypeMetadata',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JThingTypeMetadata));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JThingTypeProperties',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JThingTypeProperties));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JThrottlingException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JThrottlingException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JTopicRule',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JTopicRule));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JTopicRuleListItem',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JTopicRuleListItem));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JTopicRulePayload',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JTopicRulePayload));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JTransferAlreadyCompletedException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JTransferAlreadyCompletedException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JTransferCertificateRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JTransferCertificateRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JTransferCertificateResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JTransferCertificateResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JTransferConflictException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JTransferConflictException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JTransferData',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JTransferData));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAcceptCertificateTransferRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAcceptCertificateTransferRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JActionJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JActionJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JActionJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JActionJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAttachPrincipalPolicyRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAttachPrincipalPolicyRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAttachThingPrincipalRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAttachThingPrincipalRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAttachThingPrincipalResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAttachThingPrincipalResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAttributePayloadJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAttributePayloadJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAttributePayloadJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAttributePayloadJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCACertificateDescriptionJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCACertificateDescriptionJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCACertificateDescriptionJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCACertificateDescriptionJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCACertificateJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCACertificateJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCACertificateJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCACertificateJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCancelCertificateTransferRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCancelCertificateTransferRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCertificateDescriptionJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCertificateDescriptionJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCertificateDescriptionJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCertificateDescriptionJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCertificateJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCertificateJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCertificateJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCertificateJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCloudwatchAlarmActionJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCloudwatchAlarmActionJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCloudwatchAlarmActionJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCloudwatchAlarmActionJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCloudwatchMetricActionJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCloudwatchMetricActionJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCloudwatchMetricActionJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCloudwatchMetricActionJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreateCertificateFromCsrRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreateCertificateFromCsrRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreateCertificateFromCsrResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreateCertificateFromCsrResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreateKeysAndCertificateRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreateKeysAndCertificateRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreateKeysAndCertificateResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreateKeysAndCertificateResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreatePolicyRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreatePolicyRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreatePolicyResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreatePolicyResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreatePolicyVersionRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreatePolicyVersionRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreatePolicyVersionResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreatePolicyVersionResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreateThingRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreateThingRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreateThingResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreateThingResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreateThingTypeRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreateThingTypeRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreateThingTypeResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreateThingTypeResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JCreateTopicRuleRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JCreateTopicRuleRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteCACertificateRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteCACertificateRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteCACertificateResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteCACertificateResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteCertificateRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteCertificateRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeletePolicyVersionRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeletePolicyVersionRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteRegistrationCodeRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteRegistrationCodeRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteRegistrationCodeResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteRegistrationCodeResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteThingRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteThingRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteThingResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteThingResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteThingTypeRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteThingTypeRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteThingTypeResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteThingTypeResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteTopicRuleRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteTopicRuleRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeprecateThingTypeRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeprecateThingTypeRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeprecateThingTypeResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeprecateThingTypeResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDescribeCACertificateRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDescribeCACertificateRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDescribeCACertificateResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDescribeCACertificateResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDescribeCertificateRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDescribeCertificateRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDescribeCertificateResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDescribeCertificateResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDescribeEndpointRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDescribeEndpointRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDescribeEndpointResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDescribeEndpointResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDescribeThingRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDescribeThingRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDescribeThingResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDescribeThingResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDescribeThingTypeRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDescribeThingTypeRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDescribeThingTypeResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDescribeThingTypeResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDetachPrincipalPolicyRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDetachPrincipalPolicyRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDetachThingPrincipalRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDetachThingPrincipalRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDetachThingPrincipalResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDetachThingPrincipalResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDisableTopicRuleRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDisableTopicRuleRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDynamoDBActionJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDynamoDBActionJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDynamoDBActionJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDynamoDBActionJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDynamoDBv2ActionJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDynamoDBv2ActionJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDynamoDBv2ActionJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDynamoDBv2ActionJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JElasticsearchActionJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JElasticsearchActionJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JElasticsearchActionJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JElasticsearchActionJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JEnableTopicRuleRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JEnableTopicRuleRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JFirehoseActionJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JFirehoseActionJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JFirehoseActionJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JFirehoseActionJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JGetLoggingOptionsRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JGetLoggingOptionsRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JGetLoggingOptionsResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JGetLoggingOptionsResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JGetPolicyRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JGetPolicyRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JGetPolicyResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JGetPolicyResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JGetPolicyVersionRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JGetPolicyVersionRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JGetPolicyVersionResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JGetPolicyVersionResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JGetRegistrationCodeRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JGetRegistrationCodeRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JGetRegistrationCodeResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JGetRegistrationCodeResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JGetTopicRuleRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JGetTopicRuleRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JGetTopicRuleResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JGetTopicRuleResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JKeyPairJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JKeyPairJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JKeyPairJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JKeyPairJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JKinesisActionJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JKinesisActionJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JKinesisActionJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JKinesisActionJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JLambdaActionJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JLambdaActionJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JLambdaActionJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JLambdaActionJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListCACertificatesRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListCACertificatesRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListCACertificatesResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListCACertificatesResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListCertificatesByCARequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListCertificatesByCARequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListCertificatesByCAResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListCertificatesByCAResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListCertificatesRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListCertificatesRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListCertificatesResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListCertificatesResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListOutgoingCertificatesRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListOutgoingCertificatesRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListOutgoingCertificatesResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListOutgoingCertificatesResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListPoliciesRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListPoliciesRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListPoliciesResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListPoliciesResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListPolicyPrincipalsRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListPolicyPrincipalsRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListPolicyPrincipalsResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListPolicyPrincipalsResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListPolicyVersionsRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListPolicyVersionsRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListPolicyVersionsResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListPolicyVersionsResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListPrincipalPoliciesRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListPrincipalPoliciesRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListPrincipalPoliciesResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListPrincipalPoliciesResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListPrincipalThingsRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListPrincipalThingsRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListPrincipalThingsResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListPrincipalThingsResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListThingPrincipalsRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListThingPrincipalsRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListThingPrincipalsResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListThingPrincipalsResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListThingsRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListThingsRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListThingsResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListThingsResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListThingTypesRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListThingTypesRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListThingTypesResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListThingTypesResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListTopicRulesRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListTopicRulesRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JListTopicRulesResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JListTopicRulesResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JLoggingOptionsPayloadJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JLoggingOptionsPayloadJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JLoggingOptionsPayloadJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JLoggingOptionsPayloadJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JOutgoingCertificateJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JOutgoingCertificateJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JOutgoingCertificateJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JOutgoingCertificateJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JPolicyJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JPolicyJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JPolicyJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JPolicyJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JPolicyVersionJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JPolicyVersionJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JPolicyVersionJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JPolicyVersionJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JPutItemInputJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JPutItemInputJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JPutItemInputJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JPutItemInputJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JRegisterCACertificateRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JRegisterCACertificateRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JRegisterCACertificateResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JRegisterCACertificateResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JRegisterCertificateRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JRegisterCertificateRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JRegisterCertificateResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JRegisterCertificateResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JRejectCertificateTransferRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JRejectCertificateTransferRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JReplaceTopicRuleRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JReplaceTopicRuleRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JRepublishActionJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JRepublishActionJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JRepublishActionJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JRepublishActionJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JS3ActionJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JS3ActionJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JSetDefaultPolicyVersionRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JSetDefaultPolicyVersionRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JSetLoggingOptionsRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JSetLoggingOptionsRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JSnsActionJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JSnsActionJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JSnsActionJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JSnsActionJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JSqsActionJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JSqsActionJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JSqsActionJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JSqsActionJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JThingAttributeJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JThingAttributeJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JThingAttributeJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JThingAttributeJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JThingTypeDefinitionJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JThingTypeDefinitionJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JThingTypeDefinitionJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JThingTypeDefinitionJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JThingTypeMetadataJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JThingTypeMetadataJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JThingTypeMetadataJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JThingTypeMetadataJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JThingTypePropertiesJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JThingTypePropertiesJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JThingTypePropertiesJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JThingTypePropertiesJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JTopicRuleJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JTopicRuleJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JTopicRuleJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JTopicRuleJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JTopicRuleListItemJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JTopicRuleListItemJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JTopicRuleListItemJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JTopicRuleListItemJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JTopicRulePayloadJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JTopicRulePayloadJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JTopicRulePayloadJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JTopicRulePayloadJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JTransferCertificateRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JTransferCertificateRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JTransferCertificateResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JTransferCertificateResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JTransferDataJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JTransferDataJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JTransferDataJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JTransferDataJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JUpdateCACertificateRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JUpdateCACertificateRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JUpdateCertificateRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JUpdateCertificateRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JUpdateThingRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JUpdateThingRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JUpdateThingResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JUpdateThingResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JUnauthorizedException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JUnauthorizedException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JUpdateCACertificateRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JUpdateCACertificateRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JUpdateCertificateRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JUpdateCertificateRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JUpdateThingRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JUpdateThingRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JUpdateThingResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JUpdateThingResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JVersionConflictException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JVersionConflictException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JVersionsLimitExceededException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JVersionsLimitExceededException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAWSIotData',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAWSIotData));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAWSIotDataClient',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAWSIotDataClient));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JConflictException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JConflictException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteThingShadowRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteThingShadowRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteThingShadowResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteThingShadowResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JGetThingShadowRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JGetThingShadowRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JGetThingShadowResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JGetThingShadowResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JInternalFailureException_481',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JInternalFailureException_481));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JInvalidRequestException_482',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JInvalidRequestException_482));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JMethodNotAllowedException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JMethodNotAllowedException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JPublishRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JPublishRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JRequestEntityTooLargeException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JRequestEntityTooLargeException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteThingShadowRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteThingShadowRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JDeleteThingShadowResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JDeleteThingShadowResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JGetThingShadowRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JGetThingShadowRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JGetThingShadowResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JGetThingShadowResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JPublishRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JPublishRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JUpdateThingShadowRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JUpdateThingShadowRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JUpdateThingShadowResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JUpdateThingShadowResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JUnauthorizedException_508',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JUnauthorizedException_508));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JUnsupportedDocumentEncodingException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JUnsupportedDocumentEncodingException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JUpdateThingShadowRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JUpdateThingShadowRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JUpdateThingShadowResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JUpdateThingShadowResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.iot.JAWSIotKeystoreHelper',
    TypeInfo(Androidapi.JNI.aws.android.sdk.iot.JAWSIotKeystoreHelper));

end;


initialization
  RegisterTypes;

end.
