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
//  生成时间：2018/2/22 10:28:09
//  工具版本：1.0.2016.4.26
//
//====================================================
unit Androidapi.JNI.aws.android.sdk.core;
//2.6.14

interface

uses
  Androidapi.JNIBridge, 
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Java.Net,
  Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.Java.Security;


type
// ===== Forward declarations =====

  JAbortedException = interface; //com.amazonaws.AbortedException
  JAmazonClientException = interface; //com.amazonaws.AmazonClientException
  JAmazonServiceException_ErrorType = interface; //com.amazonaws.AmazonServiceException$ErrorType
  JAmazonServiceException = interface; //com.amazonaws.AmazonServiceException
  JAmazonWebServiceClient = interface; //com.amazonaws.AmazonWebServiceClient
  JAmazonWebServiceRequest = interface; //com.amazonaws.AmazonWebServiceRequest
  JAmazonWebServiceResponse = interface; //com.amazonaws.AmazonWebServiceResponse
  JAbstractAWSSigner = interface; //com.amazonaws.auth.AbstractAWSSigner
  JAnonymousAWSCredentials = interface; //com.amazonaws.auth.AnonymousAWSCredentials
  JAWS3Signer = interface; //com.amazonaws.auth.AWS3Signer
  JAWS4Signer_HeaderSigningResult = interface; //com.amazonaws.auth.AWS4Signer$HeaderSigningResult
  JAWS4Signer = interface; //com.amazonaws.auth.AWS4Signer
  JAWSAbstractCognitoDeveloperIdentityProvider = interface; //com.amazonaws.auth.AWSAbstractCognitoDeveloperIdentityProvider
  JAWSAbstractCognitoIdentityProvider = interface; //com.amazonaws.auth.AWSAbstractCognitoIdentityProvider
  JAWSBasicCognitoIdentityProvider = interface; //com.amazonaws.auth.AWSBasicCognitoIdentityProvider
  JAWSCognitoIdentityProvider = interface; //com.amazonaws.auth.AWSCognitoIdentityProvider
  JAWSCredentials = interface; //com.amazonaws.auth.AWSCredentials
  JAWSCredentialsProvider = interface; //com.amazonaws.auth.AWSCredentialsProvider
  JAWSCredentialsProviderChain = interface; //com.amazonaws.auth.AWSCredentialsProviderChain
  JAWSEnhancedCognitoIdentityProvider = interface; //com.amazonaws.auth.AWSEnhancedCognitoIdentityProvider
  JAWSIdentityProvider = interface; //com.amazonaws.auth.AWSIdentityProvider
  JAWSRefreshableSessionCredentials = interface; //com.amazonaws.auth.AWSRefreshableSessionCredentials
  JAWSSessionCredentials = interface; //com.amazonaws.auth.AWSSessionCredentials
  JBasicAWSCredentials = interface; //com.amazonaws.auth.BasicAWSCredentials
  JBasicSessionCredentials = interface; //com.amazonaws.auth.BasicSessionCredentials
  JClasspathPropertiesFileCredentialsProvider = interface; //com.amazonaws.auth.ClasspathPropertiesFileCredentialsProvider
  JCognitoCachingCredentialsProvider = interface; //com.amazonaws.auth.CognitoCachingCredentialsProvider
  JCognitoCredentialsProvider = interface; //com.amazonaws.auth.CognitoCredentialsProvider
  JDefaultAWSCredentialsProviderChain = interface; //com.amazonaws.auth.DefaultAWSCredentialsProviderChain
  JIdentityChangedListener = interface; //com.amazonaws.auth.IdentityChangedListener
  JNoOpSigner = interface; //com.amazonaws.auth.NoOpSigner
  JNoSessionSupportCredentials = interface; //com.amazonaws.auth.NoSessionSupportCredentials
  JAction = interface; //com.amazonaws.auth.policy.Action

  JSecurityTokenServiceActions = interface; //com.amazonaws.auth.policy.actions.SecurityTokenServiceActions
  JCondition = interface; //com.amazonaws.auth.policy.Condition
  JArnCondition_ArnComparisonType = interface; //com.amazonaws.auth.policy.conditions.ArnCondition$ArnComparisonType
  JArnCondition = interface; //com.amazonaws.auth.policy.conditions.ArnCondition
  JBooleanCondition = interface; //com.amazonaws.auth.policy.conditions.BooleanCondition
  JConditionFactory = interface; //com.amazonaws.auth.policy.conditions.ConditionFactory
  JDateCondition_DateComparisonType = interface; //com.amazonaws.auth.policy.conditions.DateCondition$DateComparisonType
  JDateCondition = interface; //com.amazonaws.auth.policy.conditions.DateCondition
  JIpAddressCondition_IpAddressComparisonType = interface; //com.amazonaws.auth.policy.conditions.IpAddressCondition$IpAddressComparisonType
  JIpAddressCondition = interface; //com.amazonaws.auth.policy.conditions.IpAddressCondition
  JNumericCondition_NumericComparisonType = interface; //com.amazonaws.auth.policy.conditions.NumericCondition$NumericComparisonType
  JNumericCondition = interface; //com.amazonaws.auth.policy.conditions.NumericCondition
  JStringCondition_StringComparisonType = interface; //com.amazonaws.auth.policy.conditions.StringCondition$StringComparisonType
  JStringCondition = interface; //com.amazonaws.auth.policy.conditions.StringCondition
  JJsonDocumentFields = interface; //com.amazonaws.auth.policy.internal.JsonDocumentFields
  JJsonPolicyReader_NamedAction = interface; //com.amazonaws.auth.policy.internal.JsonPolicyReader$NamedAction
  JJsonPolicyReader = interface; //com.amazonaws.auth.policy.internal.JsonPolicyReader
  JJsonPolicyWriter_ConditionsByKey = interface; //com.amazonaws.auth.policy.internal.JsonPolicyWriter$ConditionsByKey
  JJsonPolicyWriter = interface; //com.amazonaws.auth.policy.internal.JsonPolicyWriter
  JPolicy = interface; //com.amazonaws.auth.policy.Policy
  JPrincipal_Services = interface; //com.amazonaws.auth.policy.Principal$Services
  JPrincipal_WebIdentityProviders = interface; //com.amazonaws.auth.policy.Principal$WebIdentityProviders
  JPrincipal = interface; //com.amazonaws.auth.policy.Principal
  JResource = interface; //com.amazonaws.auth.policy.Resource
  JStatement_Effect = interface; //com.amazonaws.auth.policy.Statement$Effect
  JStatement = interface; //com.amazonaws.auth.policy.Statement
  JSTSActions = interface; //com.amazonaws.auth.policy.STSActions
  JPresigner = interface; //com.amazonaws.auth.Presigner
  JPropertiesCredentials = interface; //com.amazonaws.auth.PropertiesCredentials
  JPropertiesFileCredentialsProvider = interface; //com.amazonaws.auth.PropertiesFileCredentialsProvider
  JQueryStringSigner = interface; //com.amazonaws.auth.QueryStringSigner
  JRegionAwareSigner = interface; //com.amazonaws.auth.RegionAwareSigner
  JServiceAwareSigner = interface; //com.amazonaws.auth.ServiceAwareSigner
  JSessionCredentialsProviderFactory_Key = interface; //com.amazonaws.auth.SessionCredentialsProviderFactory$Key
  JSessionCredentialsProviderFactory = interface; //com.amazonaws.auth.SessionCredentialsProviderFactory
  JSignatureVersion = interface; //com.amazonaws.auth.SignatureVersion
  JSigner = interface; //com.amazonaws.auth.Signer
  JSignerFactory = interface; //com.amazonaws.auth.SignerFactory
  JSigningAlgorithm = interface; //com.amazonaws.auth.SigningAlgorithm
  JSTSAssumeRoleSessionCredentialsProvider = interface; //com.amazonaws.auth.STSAssumeRoleSessionCredentialsProvider
  JSTSSessionCredentials = interface; //com.amazonaws.auth.STSSessionCredentials
  JSTSSessionCredentialsProvider = interface; //com.amazonaws.auth.STSSessionCredentialsProvider
  JSystemPropertiesCredentialsProvider = interface; //com.amazonaws.auth.SystemPropertiesCredentialsProvider
  JWebIdentityFederationSessionCredentialsProvider = interface; //com.amazonaws.auth.WebIdentityFederationSessionCredentialsProvider
  JClientConfiguration = interface; //com.amazonaws.ClientConfiguration
  JConfigurationConstant = interface; //com.amazonaws.cognito.clientcontext.data.ConfigurationConstant
  JUserContextDataProvider_ContextDataJsonKeys = interface; //com.amazonaws.cognito.clientcontext.data.UserContextDataProvider$ContextDataJsonKeys
  JUserContextDataProvider_InstanceHolder = interface; //com.amazonaws.cognito.clientcontext.data.UserContextDataProvider$InstanceHolder
  JUserContextDataProvider = interface; //com.amazonaws.cognito.clientcontext.data.UserContextDataProvider
  JApplicationDataCollector = interface; //com.amazonaws.cognito.clientcontext.datacollection.ApplicationDataCollector
  JBuildDataCollector = interface; //com.amazonaws.cognito.clientcontext.datacollection.BuildDataCollector
  JContextDataAggregator_InstanceHolder = interface; //com.amazonaws.cognito.clientcontext.datacollection.ContextDataAggregator$InstanceHolder
  JContextDataAggregator = interface; //com.amazonaws.cognito.clientcontext.datacollection.ContextDataAggregator
  JDataCollector = interface; //com.amazonaws.cognito.clientcontext.datacollection.DataCollector
  JDataRecordKey = interface; //com.amazonaws.cognito.clientcontext.datacollection.DataRecordKey
  JDeviceDataCollector = interface; //com.amazonaws.cognito.clientcontext.datacollection.DeviceDataCollector
  JTelephonyDataCollector = interface; //com.amazonaws.cognito.clientcontext.datacollection.TelephonyDataCollector
  JSignatureGenerator = interface; //com.amazonaws.cognito.clientcontext.util.SignatureGenerator
  JDefaultRequest = interface; //com.amazonaws.DefaultRequest
  JProgressEvent = interface; //com.amazonaws.event.ProgressEvent
  JProgressListener = interface; //com.amazonaws.event.ProgressListener
  JProgressListenerCallbackExecutor = interface; //com.amazonaws.event.ProgressListenerCallbackExecutor
  JProgressListenerChain_ProgressEventFilter = interface; //com.amazonaws.event.ProgressListenerChain$ProgressEventFilter
  JProgressListenerChain = interface; //com.amazonaws.event.ProgressListenerChain
  JProgressReportingInputStream = interface; //com.amazonaws.event.ProgressReportingInputStream
  JAbstractRequestHandler = interface; //com.amazonaws.handlers.AbstractRequestHandler
  JAsyncHandler = interface; //com.amazonaws.handlers.AsyncHandler
  JCredentialsRequestHandler = interface; //com.amazonaws.handlers.CredentialsRequestHandler
  JHandlerChainFactory = interface; //com.amazonaws.handlers.HandlerChainFactory
  JRequestHandler = interface; //com.amazonaws.handlers.RequestHandler
  JRequestHandler2 = interface; //com.amazonaws.handlers.RequestHandler2
  JRequestHandler2Adaptor = interface; //com.amazonaws.handlers.RequestHandler2Adaptor
  JAmazonHttpClient = interface; //com.amazonaws.http.AmazonHttpClient
  JApacheHttpClient = interface; //com.amazonaws.http.ApacheHttpClient
  JClientConnectionManagerFactory_Handler = interface; //com.amazonaws.http.conn.ClientConnectionManagerFactory$Handler
  JClientConnectionRequestFactory_Handler = interface; //com.amazonaws.http.conn.ClientConnectionRequestFactory$Handler
  JClientConnectionRequestFactory = interface; //com.amazonaws.http.conn.ClientConnectionRequestFactory
  JWrapped = interface; //com.amazonaws.http.conn.Wrapped
  JDefaultErrorResponseHandler = interface; //com.amazonaws.http.DefaultErrorResponseHandler
  JExecutionContext = interface; //com.amazonaws.http.ExecutionContext
  JHttpClient = interface; //com.amazonaws.http.HttpClient
  JHttpClientFactory = interface; //com.amazonaws.http.HttpClientFactory
  JHttpHeader = interface; //com.amazonaws.http.HttpHeader
  JHttpMethodName = interface; //com.amazonaws.http.HttpMethodName
  JHttpRequest = interface; //com.amazonaws.http.HttpRequest
  JHttpRequestFactory = interface; //com.amazonaws.http.HttpRequestFactory
  JHttpResponse_1 = interface; //com.amazonaws.http.HttpResponse$1
  JHttpResponse_Builder = interface; //com.amazonaws.http.HttpResponse$Builder
  JHttpResponse = interface; //com.amazonaws.http.HttpResponse
  JHttpResponseHandler = interface; //com.amazonaws.http.HttpResponseHandler
  JJsonErrorResponseHandler_JsonErrorResponse = interface; //com.amazonaws.http.JsonErrorResponseHandler$JsonErrorResponse
  JJsonErrorResponseHandler = interface; //com.amazonaws.http.JsonErrorResponseHandler
  JStaxResponseHandler = interface; //com.amazonaws.http.StaxResponseHandler
  JUrlHttpClient_CurlBuilder = interface; //com.amazonaws.http.UrlHttpClient$CurlBuilder
  JUrlHttpClient = interface; //com.amazonaws.http.UrlHttpClient
  JHttpMethod = interface; //com.amazonaws.HttpMethod
  JHostRegexToRegionMapping = interface; //com.amazonaws.internal.config.HostRegexToRegionMapping
  JHttpClientConfig = interface; //com.amazonaws.internal.config.HttpClientConfig
  JInternalConfig_Factory = interface; //com.amazonaws.internal.config.InternalConfig$Factory
  JInternalConfig = interface; //com.amazonaws.internal.config.InternalConfig
  JSignerConfig = interface; //com.amazonaws.internal.config.SignerConfig
  JCRC32MismatchException = interface; //com.amazonaws.internal.CRC32MismatchException
  JCustomBackoffStrategy = interface; //com.amazonaws.internal.CustomBackoffStrategy
  JDynamoDBBackoffStrategy = interface; //com.amazonaws.internal.DynamoDBBackoffStrategy
  JListWithAutoConstructFlag = interface; //com.amazonaws.internal.ListWithAutoConstructFlag
  JMetricAware = interface; //com.amazonaws.internal.MetricAware
  JReleasable = interface; //com.amazonaws.internal.Releasable
  JReleasableInputStream = interface; //com.amazonaws.internal.ReleasableInputStream
  JResettableInputStream = interface; //com.amazonaws.internal.ResettableInputStream
  JSdkFilterInputStream = interface; //com.amazonaws.internal.SdkFilterInputStream
  JSdkFilterOutputStream = interface; //com.amazonaws.internal.SdkFilterOutputStream
  JSdkInputStream = interface; //com.amazonaws.internal.SdkInputStream
  JStaticCredentialsProvider = interface; //com.amazonaws.internal.StaticCredentialsProvider
  JAwsSdkMetrics_MetricRegistry = interface; //com.amazonaws.metrics.AwsSdkMetrics$MetricRegistry
  JAwsSdkMetrics = interface; //com.amazonaws.metrics.AwsSdkMetrics
  JByteThroughputProvider = interface; //com.amazonaws.metrics.ByteThroughputProvider
  JServiceMetricTypeGuesser = interface; //com.amazonaws.metrics.internal.ServiceMetricTypeGuesser
  JMetricCollector_Factory = interface; //com.amazonaws.metrics.MetricCollector$Factory
  JMetricCollector = interface; //com.amazonaws.metrics.MetricCollector
  JMetricFilterInputStream = interface; //com.amazonaws.metrics.MetricFilterInputStream
  JMetricType = interface; //com.amazonaws.metrics.MetricType
  JRequestMetricCollector_Factory = interface; //com.amazonaws.metrics.RequestMetricCollector$Factory
  JRequestMetricCollector = interface; //com.amazonaws.metrics.RequestMetricCollector
  JRequestMetricType = interface; //com.amazonaws.metrics.RequestMetricType
  JServiceLatencyProvider = interface; //com.amazonaws.metrics.ServiceLatencyProvider
  JServiceMetricCollector_Factory = interface; //com.amazonaws.metrics.ServiceMetricCollector$Factory
  JServiceMetricCollector = interface; //com.amazonaws.metrics.ServiceMetricCollector
  JServiceMetricType = interface; //com.amazonaws.metrics.ServiceMetricType
  JSimpleMetricType = interface; //com.amazonaws.metrics.SimpleMetricType
  JSimpleServiceMetricType = interface; //com.amazonaws.metrics.SimpleServiceMetricType
  JSimpleThroughputMetricType = interface; //com.amazonaws.metrics.SimpleThroughputMetricType
  JThroughputMetricType = interface; //com.amazonaws.metrics.ThroughputMetricType
  JAWSConfigurable = interface; //com.amazonaws.mobile.config.AWSConfigurable
  JAWSConfiguration = interface; //com.amazonaws.mobile.config.AWSConfiguration
  JProtocol = interface; //com.amazonaws.Protocol
  JRegion = interface; //com.amazonaws.regions.Region
  JRegionDefaults = interface; //com.amazonaws.regions.RegionDefaults
  JRegionMetadata = interface; //com.amazonaws.regions.RegionMetadata
  JRegionMetadataParser = interface; //com.amazonaws.regions.RegionMetadataParser
  JRegions = interface; //com.amazonaws.regions.Regions
  JRegionUtils = interface; //com.amazonaws.regions.RegionUtils
  JServiceAbbreviations = interface; //com.amazonaws.regions.ServiceAbbreviations
  JRequest = interface; //com.amazonaws.Request
  JRequestClientOptions_Marker = interface; //com.amazonaws.RequestClientOptions$Marker
  JRequestClientOptions = interface; //com.amazonaws.RequestClientOptions
  JResponse = interface; //com.amazonaws.Response
  JResponseMetadata = interface; //com.amazonaws.ResponseMetadata
  JPredefinedRetryPolicies_SDKDefaultBackoffStrategy = interface; //com.amazonaws.retry.PredefinedRetryPolicies$SDKDefaultBackoffStrategy
  JPredefinedRetryPolicies_SDKDefaultRetryCondition = interface; //com.amazonaws.retry.PredefinedRetryPolicies$SDKDefaultRetryCondition
  JPredefinedRetryPolicies = interface; //com.amazonaws.retry.PredefinedRetryPolicies
  JRetryPolicy_BackoffStrategy = interface; //com.amazonaws.retry.RetryPolicy$BackoffStrategy
  JRetryPolicy_RetryCondition = interface; //com.amazonaws.retry.RetryPolicy$RetryCondition
  JRetryPolicy = interface; //com.amazonaws.retry.RetryPolicy
  JRetryUtils = interface; //com.amazonaws.retry.RetryUtils
  JSDKGlobalConfiguration = interface; //com.amazonaws.SDKGlobalConfiguration
  JServiceNameFactory = interface; //com.amazonaws.ServiceNameFactory
  JAmazonCognitoIdentity = interface; //com.amazonaws.services.cognitoidentity.AmazonCognitoIdentity
  JAmazonCognitoIdentityClient = interface; //com.amazonaws.services.cognitoidentity.AmazonCognitoIdentityClient
  JCredentials = interface; //com.amazonaws.services.cognitoidentity.model.Credentials
  JExternalServiceException = interface; //com.amazonaws.services.cognitoidentity.model.ExternalServiceException
  JGetCredentialsForIdentityRequest = interface; //com.amazonaws.services.cognitoidentity.model.GetCredentialsForIdentityRequest
  JGetCredentialsForIdentityResult = interface; //com.amazonaws.services.cognitoidentity.model.GetCredentialsForIdentityResult
  JGetIdRequest = interface; //com.amazonaws.services.cognitoidentity.model.GetIdRequest
  JGetIdResult = interface; //com.amazonaws.services.cognitoidentity.model.GetIdResult
  JGetOpenIdTokenRequest = interface; //com.amazonaws.services.cognitoidentity.model.GetOpenIdTokenRequest
  JGetOpenIdTokenResult = interface; //com.amazonaws.services.cognitoidentity.model.GetOpenIdTokenResult
  JInternalErrorException = interface; //com.amazonaws.services.cognitoidentity.model.InternalErrorException
  JInvalidIdentityPoolConfigurationException = interface; //com.amazonaws.services.cognitoidentity.model.InvalidIdentityPoolConfigurationException
  JInvalidParameterException = interface; //com.amazonaws.services.cognitoidentity.model.InvalidParameterException
  JLimitExceededException = interface; //com.amazonaws.services.cognitoidentity.model.LimitExceededException
  JNotAuthorizedException = interface; //com.amazonaws.services.cognitoidentity.model.NotAuthorizedException
  JResourceConflictException = interface; //com.amazonaws.services.cognitoidentity.model.ResourceConflictException
  JResourceNotFoundException = interface; //com.amazonaws.services.cognitoidentity.model.ResourceNotFoundException
  JTooManyRequestsException = interface; //com.amazonaws.services.cognitoidentity.model.TooManyRequestsException
  JCredentialsJsonMarshaller = interface; //com.amazonaws.services.cognitoidentity.model.transform.CredentialsJsonMarshaller
  JCredentialsJsonUnmarshaller = interface; //com.amazonaws.services.cognitoidentity.model.transform.CredentialsJsonUnmarshaller
  JGetCredentialsForIdentityRequestMarshaller = interface; //com.amazonaws.services.cognitoidentity.model.transform.GetCredentialsForIdentityRequestMarshaller
  JGetCredentialsForIdentityResultJsonUnmarshaller = interface; //com.amazonaws.services.cognitoidentity.model.transform.GetCredentialsForIdentityResultJsonUnmarshaller
  JGetIdRequestMarshaller = interface; //com.amazonaws.services.cognitoidentity.model.transform.GetIdRequestMarshaller
  JGetIdResultJsonUnmarshaller = interface; //com.amazonaws.services.cognitoidentity.model.transform.GetIdResultJsonUnmarshaller
  JGetOpenIdTokenRequestMarshaller = interface; //com.amazonaws.services.cognitoidentity.model.transform.GetOpenIdTokenRequestMarshaller
  JGetOpenIdTokenResultJsonUnmarshaller = interface; //com.amazonaws.services.cognitoidentity.model.transform.GetOpenIdTokenResultJsonUnmarshaller
  JAWSSecurityTokenService = interface; //com.amazonaws.services.securitytoken.AWSSecurityTokenService
  JAWSSecurityTokenServiceClient = interface; //com.amazonaws.services.securitytoken.AWSSecurityTokenServiceClient
  JAssumedRoleUser = interface; //com.amazonaws.services.securitytoken.model.AssumedRoleUser
  JAssumeRoleRequest = interface; //com.amazonaws.services.securitytoken.model.AssumeRoleRequest
  JAssumeRoleResult = interface; //com.amazonaws.services.securitytoken.model.AssumeRoleResult
  JAssumeRoleWithWebIdentityRequest = interface; //com.amazonaws.services.securitytoken.model.AssumeRoleWithWebIdentityRequest
  JAssumeRoleWithWebIdentityResult = interface; //com.amazonaws.services.securitytoken.model.AssumeRoleWithWebIdentityResult
  JExpiredTokenException = interface; //com.amazonaws.services.securitytoken.model.ExpiredTokenException
  JFederatedUser = interface; //com.amazonaws.services.securitytoken.model.FederatedUser
  JGetCallerIdentityRequest = interface; //com.amazonaws.services.securitytoken.model.GetCallerIdentityRequest
  JGetCallerIdentityResult = interface; //com.amazonaws.services.securitytoken.model.GetCallerIdentityResult
  JGetFederationTokenRequest = interface; //com.amazonaws.services.securitytoken.model.GetFederationTokenRequest
  JGetFederationTokenResult = interface; //com.amazonaws.services.securitytoken.model.GetFederationTokenResult
  JGetSessionTokenRequest = interface; //com.amazonaws.services.securitytoken.model.GetSessionTokenRequest
  JGetSessionTokenResult = interface; //com.amazonaws.services.securitytoken.model.GetSessionTokenResult
  JIDPCommunicationErrorException = interface; //com.amazonaws.services.securitytoken.model.IDPCommunicationErrorException
  JIDPRejectedClaimException = interface; //com.amazonaws.services.securitytoken.model.IDPRejectedClaimException
  JInvalidIdentityTokenException = interface; //com.amazonaws.services.securitytoken.model.InvalidIdentityTokenException
  JMalformedPolicyDocumentException = interface; //com.amazonaws.services.securitytoken.model.MalformedPolicyDocumentException
  JPackedPolicyTooLargeException = interface; //com.amazonaws.services.securitytoken.model.PackedPolicyTooLargeException
  JRegionDisabledException = interface; //com.amazonaws.services.securitytoken.model.RegionDisabledException
  JAssumedRoleUserStaxMarshaller = interface; //com.amazonaws.services.securitytoken.model.transform.AssumedRoleUserStaxMarshaller
  JAssumeRoleRequestMarshaller = interface; //com.amazonaws.services.securitytoken.model.transform.AssumeRoleRequestMarshaller
  JAssumeRoleWithWebIdentityRequestMarshaller = interface; //com.amazonaws.services.securitytoken.model.transform.AssumeRoleWithWebIdentityRequestMarshaller
  JCredentialsStaxMarshaller = interface; //com.amazonaws.services.securitytoken.model.transform.CredentialsStaxMarshaller
  JFederatedUserStaxMarshaller = interface; //com.amazonaws.services.securitytoken.model.transform.FederatedUserStaxMarshaller
  JGetCallerIdentityRequestMarshaller = interface; //com.amazonaws.services.securitytoken.model.transform.GetCallerIdentityRequestMarshaller
  JJsonUnmarshallerContext = interface; //com.amazonaws.transform.JsonUnmarshallerContext
  JListUnmarshaller = interface; //com.amazonaws.transform.ListUnmarshaller
  JMapEntry = interface; //com.amazonaws.transform.MapEntry
  JMapUnmarshaller = interface; //com.amazonaws.transform.MapUnmarshaller
  JMarshaller = interface; //com.amazonaws.transform.Marshaller
  JSimpleTypeJsonUnmarshallers_BigIntegerJsonUnmarshaller = interface; //com.amazonaws.transform.SimpleTypeJsonUnmarshallers$BigIntegerJsonUnmarshaller
  JSimpleTypeJsonUnmarshallers_BooleanJsonUnmarshaller = interface; //com.amazonaws.transform.SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller
  JSimpleTypeJsonUnmarshallers_ByteBufferJsonUnmarshaller = interface; //com.amazonaws.transform.SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller
  JSimpleTypeJsonUnmarshallers_ByteJsonUnmarshaller = interface; //com.amazonaws.transform.SimpleTypeJsonUnmarshallers$ByteJsonUnmarshaller
  JSimpleTypeJsonUnmarshallers_DateJsonUnmarshaller = interface; //com.amazonaws.transform.SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller
  JSimpleTypeJsonUnmarshallers_DoubleJsonUnmarshaller = interface; //com.amazonaws.transform.SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller
  JSimpleTypeJsonUnmarshallers_FloatJsonUnmarshaller = interface; //com.amazonaws.transform.SimpleTypeJsonUnmarshallers$FloatJsonUnmarshaller
  JSimpleTypeJsonUnmarshallers_IntegerJsonUnmarshaller = interface; //com.amazonaws.transform.SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller
  JSimpleTypeJsonUnmarshallers_LongJsonUnmarshaller = interface; //com.amazonaws.transform.SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller
  JSimpleTypeJsonUnmarshallers_StringJsonUnmarshaller = interface; //com.amazonaws.transform.SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller
  JSimpleTypeJsonUnmarshallers = interface; //com.amazonaws.transform.SimpleTypeJsonUnmarshallers
  JSimpleTypeStaxUnmarshallers = interface; //com.amazonaws.transform.SimpleTypeStaxUnmarshallers
  JStaxUnmarshallerContext_MetadataExpression = interface; //com.amazonaws.transform.StaxUnmarshallerContext$MetadataExpression
  JUnmarshaller = interface; //com.amazonaws.transform.Unmarshaller
  JVoidJsonUnmarshaller = interface; //com.amazonaws.transform.VoidJsonUnmarshaller
  JAbstractBase32Codec = interface; //com.amazonaws.util.AbstractBase32Codec
  JAwsHostNameUtils = interface; //com.amazonaws.util.AwsHostNameUtils
  JAWSRequestMetrics_Field = interface; //com.amazonaws.util.AWSRequestMetrics$Field
  JAWSRequestMetrics = interface; //com.amazonaws.util.AWSRequestMetrics
  JAWSRequestMetricsFullSupport = interface; //com.amazonaws.util.AWSRequestMetricsFullSupport
  JAWSServiceMetrics = interface; //com.amazonaws.util.AWSServiceMetrics
  JBase16 = interface; //com.amazonaws.util.Base16
  JBase16Codec_LazyHolder = interface; //com.amazonaws.util.Base16Codec$LazyHolder
  JBase16Codec = interface; //com.amazonaws.util.Base16Codec
  JBase32 = interface; //com.amazonaws.util.Base32
  JBase32Codec_LazyHolder = interface; //com.amazonaws.util.Base32Codec$LazyHolder
  JBase32Codec = interface; //com.amazonaws.util.Base32Codec
  JBase64 = interface; //com.amazonaws.util.Base64
  JBase64Codec_LazyHolder = interface; //com.amazonaws.util.Base64Codec$LazyHolder
  JBase64Codec = interface; //com.amazonaws.util.Base64Codec
  JBinaryUtils = interface; //com.amazonaws.util.BinaryUtils
  JClassLoaderHelper = interface; //com.amazonaws.util.ClassLoaderHelper
  JCodec = interface; //com.amazonaws.util.Codec
  JCodecUtils = interface; //com.amazonaws.util.CodecUtils
  JCountingInputStream = interface; //com.amazonaws.util.CountingInputStream
  JCRC32ChecksumCalculatingInputStream = interface; //com.amazonaws.util.CRC32ChecksumCalculatingInputStream
  JGetSessionTokenRequestMarshaller = interface; //com.amazonaws.services.securitytoken.model.transform.GetSessionTokenRequestMarshaller
  JDateUtils = interface; //com.amazonaws.util.DateUtils
  JEncodingScheme = interface; //com.amazonaws.util.EncodingScheme
  JEncodingSchemeEnum = interface; //com.amazonaws.util.EncodingSchemeEnum
  JHttpClientWrappingInputStream = interface; //com.amazonaws.util.HttpClientWrappingInputStream
  JHttpUtils = interface; //com.amazonaws.util.HttpUtils
  JImmutableMapParameter_Builder = interface; //com.amazonaws.util.ImmutableMapParameter$Builder
  JImmutableMapParameter = interface; //com.amazonaws.util.ImmutableMapParameter
  JAwsJsonFactory = interface; //com.amazonaws.util.json.AwsJsonFactory
  JAwsJsonReader = interface; //com.amazonaws.util.json.AwsJsonReader
  JAwsJsonToken = interface; //com.amazonaws.util.json.AwsJsonToken
  JAwsJsonWriter = interface; //com.amazonaws.util.json.AwsJsonWriter
  JGsonFactory_GsonReader = interface; //com.amazonaws.util.json.GsonFactory$GsonReader
  JGsonFactory_GsonWriter = interface; //com.amazonaws.util.json.GsonFactory$GsonWriter
  JGsonFactory = interface; //com.amazonaws.util.json.GsonFactory
  JJacksonFactory = interface; //com.amazonaws.util.json.JacksonFactory
  JJsonUtils_JsonEngine = interface; //com.amazonaws.util.json.JsonUtils$JsonEngine
  JJsonUtils = interface; //com.amazonaws.util.json.JsonUtils
  JLengthCheckInputStream = interface; //com.amazonaws.util.LengthCheckInputStream
  JMd5Utils = interface; //com.amazonaws.util.Md5Utils
  JNamespaceRemovingInputStream_StringPrefixSlicer = interface; //com.amazonaws.util.NamespaceRemovingInputStream$StringPrefixSlicer
  JNamespaceRemovingInputStream = interface; //com.amazonaws.util.NamespaceRemovingInputStream
  JResponseMetadataCache = interface; //com.amazonaws.util.ResponseMetadataCache
  JRuntimeHttpUtils = interface; //com.amazonaws.util.RuntimeHttpUtils
  JServiceClientHolderInputStream = interface; //com.amazonaws.util.ServiceClientHolderInputStream
  JStringInputStream = interface; //com.amazonaws.util.StringInputStream
  JThrowables = interface; //com.amazonaws.util.Throwables
  JTimingInfo = interface; //com.amazonaws.util.TimingInfo
  JTimingInfoFullSupport = interface; //com.amazonaws.util.TimingInfoFullSupport
  JTimingInfoUnmodifiable = interface; //com.amazonaws.util.TimingInfoUnmodifiable
  JValidationUtils = interface; //com.amazonaws.util.ValidationUtils
  JVersionInfoUtils = interface; //com.amazonaws.util.VersionInfoUtils

// ===== Interface declarations =====

  JAmazonClientExceptionClass = interface(JRuntimeExceptionClass) // or JObjectClass // SuperSignature: java/lang/RuntimeException
  ['{A811C2F8-8ACA-4E59-9D51-2B524FAF4C8B}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString; t: JThrowable): JAmazonClientException; cdecl; overload; //(Ljava/lang/String;Ljava/lang/Throwable;)V
    {class} function init(amessage: JString): JAmazonClientException; cdecl; overload; //(Ljava/lang/String;)V
    {class} function init(throwable: JThrowable): JAmazonClientException; cdecl; overload; //(Ljava/lang/Throwable;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/AmazonClientException')]
  JAmazonClientException = interface(JRuntimeException) // or JObject // SuperSignature: java/lang/RuntimeException
  ['{78FD1889-ADD0-49FA-9BFF-7CA8E3508A81}']
    { Property Methods }

    { methods }
    function isRetryable: Boolean; cdecl; //()Z

    { Property }
  end;

  TJAmazonClientException = class(TJavaGenericImport<JAmazonClientExceptionClass, JAmazonClientException>) end;


  JAbortedExceptionClass = interface(JAmazonClientExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonClientException
  ['{55D4AB01-3A57-4DA5-AAE0-D137637D75E6}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString; t: JThrowable): JAbortedException; cdecl; overload; //(Ljava/lang/String;Ljava/lang/Throwable;)V
    {class} function init(t: JThrowable): JAbortedException; cdecl; overload; //(Ljava/lang/Throwable;)V
    {class} function init(amessage: JString): JAbortedException; cdecl; overload; //(Ljava/lang/String;)V
    {class} function init: JAbortedException; cdecl; overload; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/AbortedException')]
  JAbortedException = interface(JAmazonClientException) // or JObject // SuperSignature: com/amazonaws/AmazonClientException
  ['{61945999-6B90-4F24-B925-DB0266809E3A}']
    { Property Methods }

    { methods }
    function isRetryable: Boolean; cdecl; //()Z

    { Property }
  end;

  TJAbortedException = class(TJavaGenericImport<JAbortedExceptionClass, JAbortedException>) end;

  JAmazonServiceException_ErrorTypeClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{FA41BE4B-4005-47E4-B359-4C8A1DA7B7FF}']
    { static Property Methods }
    {class} function _GetClient: JAmazonServiceException_ErrorType; //Lcom/amazonaws/AmazonServiceException$ErrorType;
    {class} function _GetService: JAmazonServiceException_ErrorType; //Lcom/amazonaws/AmazonServiceException$ErrorType;
    {class} function _GetUnknown: JAmazonServiceException_ErrorType; //Lcom/amazonaws/AmazonServiceException$ErrorType;

    { static Methods }
    {class} function values: TJavaObjectArray<JAmazonServiceException_ErrorType>; cdecl; //()[Lcom/amazonaws/AmazonServiceException$ErrorType;
    {class} function valueOf(P1: JString): JAmazonServiceException_ErrorType; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/AmazonServiceException$ErrorType;

    { static Property }
    {class} property Client: JAmazonServiceException_ErrorType read _GetClient;
    {class} property Service: JAmazonServiceException_ErrorType read _GetService;
    {class} property Unknown: JAmazonServiceException_ErrorType read _GetUnknown;
  end;

  [JavaSignature('com/amazonaws/AmazonServiceException$ErrorType')]
  JAmazonServiceException_ErrorType = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{935CF3B9-6111-4DBC-93DE-68E792301A93}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJAmazonServiceException_ErrorType = class(TJavaGenericImport<JAmazonServiceException_ErrorTypeClass, JAmazonServiceException_ErrorType>) end;

  JAmazonServiceExceptionClass = interface(JAmazonClientExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonClientException
  ['{DD2E2464-0A53-419D-A397-1A3E335542DC}']
    { static Property Methods }

    { static Methods }
    {class} function init(errorMessage: JString): JAmazonServiceException; cdecl; overload; //(Ljava/lang/String;)V
    {class} function init(errorMessage: JString; cause: JException): JAmazonServiceException; cdecl; overload; //(Ljava/lang/String;Ljava/lang/Exception;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/AmazonServiceException')]
  JAmazonServiceException = interface(JAmazonClientException) // or JObject // SuperSignature: com/amazonaws/AmazonClientException
  ['{A5AFECF5-C95E-4946-8465-D6FDA620DD09}']
    { Property Methods }

    { methods }
    procedure setRequestId(requestId: JString); cdecl; //(Ljava/lang/String;)V
    function getRequestId: JString; cdecl; //()Ljava/lang/String;
    procedure setServiceName(serviceName: JString); cdecl; //(Ljava/lang/String;)V
    function getServiceName: JString; cdecl; //()Ljava/lang/String;
    procedure setErrorCode(errorCode: JString); cdecl; //(Ljava/lang/String;)V
    function getErrorCode: JString; cdecl; //()Ljava/lang/String;
    procedure setErrorType(errorType: JAmazonServiceException_ErrorType); cdecl; //(Lcom/amazonaws/AmazonServiceException$ErrorType;)V
    function getErrorType: JAmazonServiceException_ErrorType; cdecl; //()Lcom/amazonaws/AmazonServiceException$ErrorType;
    function getErrorMessage: JString; cdecl; //()Ljava/lang/String;
    procedure setStatusCode(statusCode: Integer); cdecl; //(I)V
    function getStatusCode: Integer; cdecl; //()I
    function getMessage: JString; cdecl; //()Ljava/lang/String;
    procedure setErrorMessage(errorMessage: JString); cdecl; //(Ljava/lang/String;)V

    { Property }
  end;

  TJAmazonServiceException = class(TJavaGenericImport<JAmazonServiceExceptionClass, JAmazonServiceException>) end;

  JAmazonWebServiceClientClass = interface(JObjectClass)
  ['{52095357-37AF-489D-B580-3A86B1A5A2E3}']
    { static Property Methods }
    {class} function _GetLOGGING_AWS_REQUEST_METRIC: Boolean; //Z

    { static Methods }

    { static Property }
    {class} property LOGGING_AWS_REQUEST_METRIC: Boolean read _GetLOGGING_AWS_REQUEST_METRIC;
  end;

  [JavaSignature('com/amazonaws/AmazonWebServiceClient')]
  JAmazonWebServiceClient = interface(JObject)
  ['{7FCF6D09-D8F2-49E4-A243-95914C2169E0}']
    { Property Methods }

    { methods }
    procedure setEndpoint(endpoint: JString); cdecl; overload; //(Ljava/lang/String;)V
    function getEndpoint: JString; cdecl; //()Ljava/lang/String;
    function getEndpointPrefix: JString; cdecl; //()Ljava/lang/String;
    procedure setEndpoint(endpoint: JString; serviceName: JString; regionId: JString); cdecl; overload; //Deprecated //(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    function getSignerByURI(uri: JURI): JSigner; cdecl; //(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;
    procedure setRegion(region: JRegion); cdecl; //(Lcom/amazonaws/regions/Region;)V
    procedure setConfiguration(clientConfiguration: JClientConfiguration); cdecl; //Deprecated //(Lcom/amazonaws/ClientConfiguration;)V
    procedure shutdown; cdecl; //()V
    procedure addRequestHandler(requestHandler: JRequestHandler); cdecl; overload; //Deprecated //(Lcom/amazonaws/handlers/RequestHandler;)V
    procedure addRequestHandler(requestHandler2: JRequestHandler2); cdecl; overload; //(Lcom/amazonaws/handlers/RequestHandler2;)V
    procedure removeRequestHandler(requestHandler: JRequestHandler); cdecl; overload; //Deprecated //(Lcom/amazonaws/handlers/RequestHandler;)V
    procedure removeRequestHandler(requestHandler2: JRequestHandler2); cdecl; overload; //(Lcom/amazonaws/handlers/RequestHandler2;)V
    procedure setTimeOffset(timeOffset: Integer); cdecl; //(I)V
    function withTimeOffset(timeOffset: Integer): JAmazonWebServiceClient; cdecl; //(I)Lcom/amazonaws/AmazonWebServiceClient;
    function getTimeOffset: Integer; cdecl; //()I
    function getRequestMetricsCollector: JRequestMetricCollector; cdecl; //Deprecated //()Lcom/amazonaws/metrics/RequestMetricCollector;
    function getServiceName: JString; cdecl; //()Ljava/lang/String;
    procedure setServiceNameIntern(serviceName: JString); cdecl; //(Ljava/lang/String;)V
    function getSignerRegionOverride: JString; cdecl; //()Ljava/lang/String;
    procedure setSignerRegionOverride(signerRegionOverride: JString); cdecl; //(Ljava/lang/String;)V

    { Property }
  end;

  TJAmazonWebServiceClient = class(TJavaGenericImport<JAmazonWebServiceClientClass, JAmazonWebServiceClient>) end;

  JAmazonWebServiceRequestClass = interface(JObjectClass)
  ['{37181237-7CE3-4B1A-9C63-57719EA925C7}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAmazonWebServiceRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/AmazonWebServiceRequest')]
  JAmazonWebServiceRequest = interface(JObject)
  ['{28F4F3E6-DF0E-4BAD-9491-C65FA86AFD3B}']
    { Property Methods }

    { methods }
    procedure setRequestCredentials(credentials: JAWSCredentials); cdecl; //(Lcom/amazonaws/auth/AWSCredentials;)V
    function getRequestCredentials: JAWSCredentials; cdecl; //()Lcom/amazonaws/auth/AWSCredentials;
    function getRequestClientOptions: JRequestClientOptions; cdecl; //()Lcom/amazonaws/RequestClientOptions;
    function getRequestMetricCollector: JRequestMetricCollector; cdecl; //Deprecated //()Lcom/amazonaws/metrics/RequestMetricCollector;
    procedure setRequestMetricCollector(requestMetricCollector: JRequestMetricCollector); cdecl; //Deprecated //(Lcom/amazonaws/metrics/RequestMetricCollector;)V
    function withRequestMetricCollector(metricCollector: JRequestMetricCollector): JAmazonWebServiceRequest; cdecl; //Deprecated //(Lcom/amazonaws/metrics/RequestMetricCollector;)Lcom/amazonaws/AmazonWebServiceRequest;
    procedure setGeneralProgressListener(generalProgressListener: JProgressListener); cdecl; //(Lcom/amazonaws/event/ProgressListener;)V
    function getGeneralProgressListener: JProgressListener; cdecl; //()Lcom/amazonaws/event/ProgressListener;
    function withGeneralProgressListener(generalProgressListener: JProgressListener): JAmazonWebServiceRequest; cdecl; //(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/AmazonWebServiceRequest;
    function getCloneSource: JAmazonWebServiceRequest; cdecl; //()Lcom/amazonaws/AmazonWebServiceRequest;
    function getCloneRoot: JAmazonWebServiceRequest; cdecl; //()Lcom/amazonaws/AmazonWebServiceRequest;
    function clone: JAmazonWebServiceRequest; cdecl; //overload; //()Lcom/amazonaws/AmazonWebServiceRequest;
    //function clone: JObject; cdecl; overload; //()Ljava/lang/Object;

    { Property }
  end;

  TJAmazonWebServiceRequest = class(TJavaGenericImport<JAmazonWebServiceRequestClass, JAmazonWebServiceRequest>) end;

  JAmazonWebServiceResponseClass = interface(JObjectClass)
  ['{D171D06D-C5DE-4B66-A594-D94F473CCF29}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAmazonWebServiceResponse; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/AmazonWebServiceResponse')]
  JAmazonWebServiceResponse = interface(JObject)
  ['{AF5651BA-9705-4B7D-A9EA-3AC9FCE03DBA}']
    { Property Methods }

    { methods }
    function getResult: JObject; cdecl; //()Ljava/lang/Object;
    procedure setResult(result: JObject); cdecl; //(Ljava/lang/Object;)V
    procedure setResponseMetadata(responseMetadata: JResponseMetadata); cdecl; //(Lcom/amazonaws/ResponseMetadata;)V
    function getResponseMetadata: JResponseMetadata; cdecl; //()Lcom/amazonaws/ResponseMetadata;
    function getRequestId: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJAmazonWebServiceResponse = class(TJavaGenericImport<JAmazonWebServiceResponseClass, JAmazonWebServiceResponse>) end;

  JAbstractAWSSignerClass = interface(JObjectClass)
  ['{D791EAE9-5B34-4F90-8456-3E265EB47FBA}']
    { static Property Methods }
    {class} function _GetEMPTY_STRING_SHA256_HEX: JString; //Ljava/lang/String;

    { static Methods }
    {class} function init: JAbstractAWSSigner; cdecl; //()V

    { static Property }
    {class} property EMPTY_STRING_SHA256_HEX: JString read _GetEMPTY_STRING_SHA256_HEX;
  end;

  [JavaSignature('com/amazonaws/auth/AbstractAWSSigner')]
  JAbstractAWSSigner = interface(JObject)
  ['{F3D53784-23DB-45F1-B7F2-D0C38B826CB0}']
    { Property Methods }

    { methods }
    function sign(stringData: JString; key: TJavaArray<Byte>; algorithm: JSigningAlgorithm): TJavaArray<Byte>; cdecl; //(Ljava/lang/String;[BLcom/amazonaws/auth/SigningAlgorithm;)[B
    function hash(text: JString): TJavaArray<Byte>; cdecl; overload; //(Ljava/lang/String;)[B
    function hash(data: TJavaArray<Byte>): TJavaArray<Byte>; cdecl; overload; //([B)[B

    { Property }
  end;

  TJAbstractAWSSigner = class(TJavaGenericImport<JAbstractAWSSignerClass, JAbstractAWSSigner>) end;

  JAnonymousAWSCredentialsClass = interface(JObjectClass)
  ['{14274A85-A4E7-42A1-BF7D-0F4D64531BD4}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAnonymousAWSCredentials; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/AnonymousAWSCredentials')]
  JAnonymousAWSCredentials = interface(JObject)
  ['{362A8049-A28B-4799-9119-2F7A83073BEA}']
    { Property Methods }

    { methods }
    function getAWSAccessKeyId: JString; cdecl; //()Ljava/lang/String;
    function getAWSSecretKey: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJAnonymousAWSCredentials = class(TJavaGenericImport<JAnonymousAWSCredentialsClass, JAnonymousAWSCredentials>) end;

  JAWS3SignerClass = interface(JAbstractAWSSignerClass) // or JObjectClass // SuperSignature: com/amazonaws/auth/AbstractAWSSigner
  ['{4ED81E6D-1817-4186-A237-E1E86B03E93C}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAWS3Signer; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/AWS3Signer')]
  JAWS3Signer = interface(JAbstractAWSSigner) // or JObject // SuperSignature: com/amazonaws/auth/AbstractAWSSigner
  ['{79ABA31D-BB05-42D0-8ED9-0BB04E9812A2}']
    { Property Methods }

    { methods }
    procedure sign(request: JRequest; credentials: JAWSCredentials); cdecl; //(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V

    { Property }
  end;

  TJAWS3Signer = class(TJavaGenericImport<JAWS3SignerClass, JAWS3Signer>) end;

  JAWS4Signer_HeaderSigningResultClass = interface(JObjectClass)
  ['{44D56A78-7119-474E-82F0-6A67A4D0EF18}']
    { static Property Methods }

    { static Methods }
    {class} function init(dateTime: JString; scope: JString; kSigning: TJavaArray<Byte>; signature: TJavaArray<Byte>): JAWS4Signer_HeaderSigningResult; cdecl; //(Ljava/lang/String;Ljava/lang/String;[B[B)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/AWS4Signer$HeaderSigningResult')]
  JAWS4Signer_HeaderSigningResult = interface(JObject)
  ['{6716C537-9EC4-42C3-A83E-40A21D80A4A2}']
    { Property Methods }

    { methods }
    function getDateTime: JString; cdecl; //()Ljava/lang/String;
    function getScope: JString; cdecl; //()Ljava/lang/String;
    function getKSigning: TJavaArray<Byte>; cdecl; //()[B
    function getSignature: TJavaArray<Byte>; cdecl; //()[B

    { Property }
  end;

  TJAWS4Signer_HeaderSigningResult = class(TJavaGenericImport<JAWS4Signer_HeaderSigningResultClass, JAWS4Signer_HeaderSigningResult>) end;

  JAWS4SignerClass = interface(JAbstractAWSSignerClass) // or JObjectClass // SuperSignature: com/amazonaws/auth/AbstractAWSSigner
  ['{B2D3AE7A-1B4F-4A61-91A4-32257D304703}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAWS4Signer; cdecl; overload; //()V
    {class} function init(doubleUrlEncoding: Boolean): JAWS4Signer; cdecl; overload; //(Z)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/AWS4Signer')]
  JAWS4Signer = interface(JAbstractAWSSigner) // or JObject // SuperSignature: com/amazonaws/auth/AbstractAWSSigner
  ['{7F0464BE-7A5F-4EDD-885A-49E195F4CCC6}']
    { Property Methods }

    { methods }
    procedure sign(request: JRequest; credentials: JAWSCredentials); cdecl; //(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V
    procedure setServiceName(serviceName: JString); cdecl; //(Ljava/lang/String;)V
    procedure setRegionName(regionName: JString); cdecl; //(Ljava/lang/String;)V
    procedure presignRequest(request: JRequest; credentials: JAWSCredentials; expiration: JDate); cdecl; //(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;Ljava/util/Date;)V

    { Property }
  end;

  TJAWS4Signer = class(TJavaGenericImport<JAWS4SignerClass, JAWS4Signer>) end;

  JAWSAbstractCognitoIdentityProviderClass = interface(JObjectClass)
  ['{133460B0-EB79-4043-B72B-28D31E298E62}']
    { static Property Methods }

    { static Methods }
    {class} function init(accountId: JString; identityPoolId: JString; cibClient: JAmazonCognitoIdentity): JAWSAbstractCognitoIdentityProvider; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;)V
    {class} function init(accountId: JString; identityPoolId: JString; clientConfiguration: JClientConfiguration): JAWSAbstractCognitoIdentityProvider; cdecl; overload; //Deprecated //(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(accountId: JString; identityPoolId: JString; clientConfiguration: JClientConfiguration; region: JRegions): JAWSAbstractCognitoIdentityProvider; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/regions/Regions;)V
    {class} function init(accountId: JString; identityPoolId: JString): JAWSAbstractCognitoIdentityProvider; cdecl; overload; //Deprecated //(Ljava/lang/String;Ljava/lang/String;)V
    {class} function init(accountId: JString; identityPoolId: JString; region: JRegions): JAWSAbstractCognitoIdentityProvider; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/AWSAbstractCognitoIdentityProvider')]
  JAWSAbstractCognitoIdentityProvider = interface(JObject)
  ['{AA79E244-2379-4DDC-B12C-5C766EBD3A9F}']
    { Property Methods }

    { methods }
    function getProviderName: JString; cdecl; //()Ljava/lang/String;
    function getIdentityId: JString; cdecl; //()Ljava/lang/String;
    function getToken: JString; cdecl; //()Ljava/lang/String;
    function getIdentityPoolId: JString; cdecl; //()Ljava/lang/String;
    function getAccountId: JString; cdecl; //()Ljava/lang/String;
    function getLogins: JMap; cdecl; //()Ljava/util/Map;
    procedure setLogins(logins: JMap); cdecl; //(Ljava/util/Map;)V
    function isAuthenticated: Boolean; cdecl; //()Z
    procedure unregisterIdentityChangedListener(listener: JIdentityChangedListener); cdecl; //(Lcom/amazonaws/auth/IdentityChangedListener;)V
    procedure registerIdentityChangedListener(listener: JIdentityChangedListener); cdecl; //(Lcom/amazonaws/auth/IdentityChangedListener;)V
    procedure identityChanged(newIdentityId: JString); cdecl; //(Ljava/lang/String;)V
    procedure clearListeners; cdecl; //()V
    function refresh: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJAWSAbstractCognitoIdentityProvider = class(TJavaGenericImport<JAWSAbstractCognitoIdentityProviderClass, JAWSAbstractCognitoIdentityProvider>) end;


  JAWSAbstractCognitoDeveloperIdentityProviderClass = interface(JAWSAbstractCognitoIdentityProviderClass) // or JObjectClass // SuperSignature: com/amazonaws/auth/AWSAbstractCognitoIdentityProvider
  ['{4F9FA1F8-FE5F-40D0-9B1B-66CE912783D4}']
    { static Property Methods }

    { static Methods }
    {class} function init(accountId: JString; identityPoolId: JString): JAWSAbstractCognitoDeveloperIdentityProvider; cdecl; overload; //Deprecated //(Ljava/lang/String;Ljava/lang/String;)V
    {class} function init(accountId: JString; identityPoolId: JString; region: JRegions): JAWSAbstractCognitoDeveloperIdentityProvider; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;)V
    {class} function init(accountId: JString; identityPoolId: JString; clientConfiguration: JClientConfiguration): JAWSAbstractCognitoDeveloperIdentityProvider; cdecl; overload; //Deprecated //(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(accountId: JString; identityPoolId: JString; clientConfiguration: JClientConfiguration; region: JRegions): JAWSAbstractCognitoDeveloperIdentityProvider; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/regions/Regions;)V
    {class} function init(accountId: JString; identityPoolId: JString; cibClient: JAmazonCognitoIdentity): JAWSAbstractCognitoDeveloperIdentityProvider; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/AWSAbstractCognitoDeveloperIdentityProvider')]
  JAWSAbstractCognitoDeveloperIdentityProvider = interface(JAWSAbstractCognitoIdentityProvider) // or JObject // SuperSignature: com/amazonaws/auth/AWSAbstractCognitoIdentityProvider
  ['{1983FC87-D235-4980-80E8-EF4E67BFD8B2}']
    { Property Methods }

    { methods }
    function getProviderName: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJAWSAbstractCognitoDeveloperIdentityProvider = class(TJavaGenericImport<JAWSAbstractCognitoDeveloperIdentityProviderClass, JAWSAbstractCognitoDeveloperIdentityProvider>) end;


  JAWSBasicCognitoIdentityProviderClass = interface(JAWSAbstractCognitoIdentityProviderClass) // or JObjectClass // SuperSignature: com/amazonaws/auth/AWSAbstractCognitoIdentityProvider
  ['{6852DADD-482E-448A-9488-96A5734177DA}']
    { static Property Methods }

    { static Methods }
    {class} function init(accountId: JString; identityPoolId: JString): JAWSBasicCognitoIdentityProvider; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;)V
    {class} function init(accountId: JString; identityPoolId: JString; clientConfiguration: JClientConfiguration): JAWSBasicCognitoIdentityProvider; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(accountId: JString; identityPoolId: JString; cibClient: JAmazonCognitoIdentity): JAWSBasicCognitoIdentityProvider; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/AWSBasicCognitoIdentityProvider')]
  JAWSBasicCognitoIdentityProvider = interface(JAWSAbstractCognitoIdentityProvider) // or JObject // SuperSignature: com/amazonaws/auth/AWSAbstractCognitoIdentityProvider
  ['{8201A3DA-F344-45F0-BC83-5114B80EAA55}']
    { Property Methods }

    { methods }
    function getProviderName: JString; cdecl; //()Ljava/lang/String;
    function refresh: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJAWSBasicCognitoIdentityProvider = class(TJavaGenericImport<JAWSBasicCognitoIdentityProviderClass, JAWSBasicCognitoIdentityProvider>) end;

  JAWSCognitoIdentityProviderClass = interface(JObjectClass)
  ['{B48E6636-ACAB-421F-844E-A51E95BC6DB1}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/AWSCognitoIdentityProvider')]
  JAWSCognitoIdentityProvider = interface(IJavaInstance)
  ['{1AAE3B82-4F07-432A-A323-A159E5F976BB}']
    { Property Methods }

    { methods }
    function getIdentityId: JString; cdecl; //()Ljava/lang/String;
    function getIdentityPoolId: JString; cdecl; //()Ljava/lang/String;
    procedure setLogins(P1: JMap); cdecl; //(Ljava/util/Map;)V
    function getLogins: JMap; cdecl; //()Ljava/util/Map;
    function isAuthenticated: Boolean; cdecl; //()Z
    procedure registerIdentityChangedListener(P1: JIdentityChangedListener); cdecl; //(Lcom/amazonaws/auth/IdentityChangedListener;)V
    procedure unregisterIdentityChangedListener(P1: JIdentityChangedListener); cdecl; //(Lcom/amazonaws/auth/IdentityChangedListener;)V
    procedure identityChanged(P1: JString); cdecl; //(Ljava/lang/String;)V
    procedure clearListeners; cdecl; //()V

    { Property }
  end;

  TJAWSCognitoIdentityProvider = class(TJavaGenericImport<JAWSCognitoIdentityProviderClass, JAWSCognitoIdentityProvider>) end;

  JAWSCredentialsClass = interface(JObjectClass)
  ['{A44A0A90-F8C9-41DB-B594-1EB2D9254687}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/AWSCredentials')]
  JAWSCredentials = interface(IJavaInstance)
  ['{001F049F-E35F-4345-9440-B12D723B75BB}']
    { Property Methods }

    { methods }
    function getAWSAccessKeyId: JString; cdecl; //()Ljava/lang/String;
    function getAWSSecretKey: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJAWSCredentials = class(TJavaGenericImport<JAWSCredentialsClass, JAWSCredentials>) end;

  JAWSCredentialsProviderClass = interface(JObjectClass)
  ['{6D058879-32EC-41CE-A81E-48AFED539CF4}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/AWSCredentialsProvider')]
  JAWSCredentialsProvider = interface(IJavaInstance)
  ['{9572FB49-1E47-48B6-9669-D5008F456EFE}']
    { Property Methods }

    { methods }
    function getCredentials: JAWSCredentials; cdecl; //()Lcom/amazonaws/auth/AWSCredentials;
    procedure refresh; cdecl; //()V

    { Property }
  end;

  TJAWSCredentialsProvider = class(TJavaGenericImport<JAWSCredentialsProviderClass, JAWSCredentialsProvider>) end;

  JAWSCredentialsProviderChainClass = interface(JObjectClass)
  ['{D8FBFCBE-5448-42B9-A5C4-8986F4225B60}']
    { static Property Methods }

    { static Methods }
    {class} function init(credentialsProviders: TJavaObjectArray<JAWSCredentialsProvider>): JAWSCredentialsProviderChain; cdecl; //([Lcom/amazonaws/auth/AWSCredentialsProvider;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/AWSCredentialsProviderChain')]
  JAWSCredentialsProviderChain = interface(JObject)
  ['{24F8329C-D805-4F11-9113-FFFDB9ED4109}']
    { Property Methods }

    { methods }
    function getReuseLastProvider: Boolean; cdecl; //()Z
    procedure setReuseLastProvider(b: Boolean); cdecl; //(Z)V
    function getCredentials: JAWSCredentials; cdecl; //()Lcom/amazonaws/auth/AWSCredentials;
    procedure refresh; cdecl; //()V

    { Property }
  end;

  TJAWSCredentialsProviderChain = class(TJavaGenericImport<JAWSCredentialsProviderChainClass, JAWSCredentialsProviderChain>) end;

  JAWSEnhancedCognitoIdentityProviderClass = interface(JAWSAbstractCognitoIdentityProviderClass) // or JObjectClass // SuperSignature: com/amazonaws/auth/AWSAbstractCognitoIdentityProvider
  ['{8C28E85D-2FE0-4F32-96A1-9B0875A2D35A}']
    { static Property Methods }

    { static Methods }
    {class} function init(accountId: JString; identityPoolId: JString): JAWSEnhancedCognitoIdentityProvider; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;)V
    {class} function init(accountId: JString; identityPoolId: JString; clientConfiguration: JClientConfiguration): JAWSEnhancedCognitoIdentityProvider; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(accountId: JString; identityPoolId: JString; cibClient: JAmazonCognitoIdentity): JAWSEnhancedCognitoIdentityProvider; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentity;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/AWSEnhancedCognitoIdentityProvider')]
  JAWSEnhancedCognitoIdentityProvider = interface(JAWSAbstractCognitoIdentityProvider) // or JObject // SuperSignature: com/amazonaws/auth/AWSAbstractCognitoIdentityProvider
  ['{88D62A8A-30FD-4A27-A25A-C888B55C9FA6}']
    { Property Methods }

    { methods }
    function getProviderName: JString; cdecl; //()Ljava/lang/String;
    function refresh: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJAWSEnhancedCognitoIdentityProvider = class(TJavaGenericImport<JAWSEnhancedCognitoIdentityProviderClass, JAWSEnhancedCognitoIdentityProvider>) end;

  JAWSIdentityProviderClass = interface(JObjectClass)
  ['{83CEA236-8CF2-4373-B3BB-043EDFD5C0D6}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/AWSIdentityProvider')]
  JAWSIdentityProvider = interface(IJavaInstance)
  ['{34CBF7E5-A9A2-4B7E-B35B-B5F587160599}']
    { Property Methods }

    { methods }
    function getToken: JString; cdecl; //()Ljava/lang/String;
    function refresh: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJAWSIdentityProvider = class(TJavaGenericImport<JAWSIdentityProviderClass, JAWSIdentityProvider>) end;

  JAWSRefreshableSessionCredentialsClass = interface(JObjectClass)
  ['{263A2847-E11B-4BC8-BC2F-71721C002A69}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/AWSRefreshableSessionCredentials')]
  JAWSRefreshableSessionCredentials = interface(IJavaInstance)
  ['{AE41E90D-B840-4D9A-9B15-74426C7E6393}']
    { Property Methods }

    { methods }
    procedure refreshCredentials; cdecl; //()V

    { Property }
  end;

  TJAWSRefreshableSessionCredentials = class(TJavaGenericImport<JAWSRefreshableSessionCredentialsClass, JAWSRefreshableSessionCredentials>) end;

  JAWSSessionCredentialsClass = interface(JObjectClass)
  ['{8A3F5082-B843-49B7-8059-A099F50B3E20}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/AWSSessionCredentials')]
  JAWSSessionCredentials = interface(IJavaInstance)
  ['{F71FCEA9-BD34-44F7-A315-430EBBAA0F92}']
    { Property Methods }

    { methods }
    function getSessionToken: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJAWSSessionCredentials = class(TJavaGenericImport<JAWSSessionCredentialsClass, JAWSSessionCredentials>) end;

  JBasicAWSCredentialsClass = interface(JObjectClass)
  ['{22DE433A-5495-4405-B3F4-9F16136A48B4}']
    { static Property Methods }

    { static Methods }
    {class} function init(accessKey: JString; secretKey: JString): JBasicAWSCredentials; cdecl; //(Ljava/lang/String;Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/BasicAWSCredentials')]
  JBasicAWSCredentials = interface(JObject)
  ['{ADBA1005-8D34-43E5-9E5B-E5ADF04824ED}']
    { Property Methods }

    { methods }
    function getAWSAccessKeyId: JString; cdecl; //()Ljava/lang/String;
    function getAWSSecretKey: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJBasicAWSCredentials = class(TJavaGenericImport<JBasicAWSCredentialsClass, JBasicAWSCredentials>) end;

  JBasicSessionCredentialsClass = interface(JObjectClass)
  ['{B711411F-4601-4065-8B87-4CB531897D18}']
    { static Property Methods }

    { static Methods }
    {class} function init(awsAccessKey: JString; awsSecretKey: JString; sessionToken: JString): JBasicSessionCredentials; cdecl; //(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/BasicSessionCredentials')]
  JBasicSessionCredentials = interface(JObject)
  ['{136A9536-3E81-431C-AD00-D9911915AEAF}']
    { Property Methods }

    { methods }
    function getAWSAccessKeyId: JString; cdecl; //()Ljava/lang/String;
    function getAWSSecretKey: JString; cdecl; //()Ljava/lang/String;
    function getSessionToken: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJBasicSessionCredentials = class(TJavaGenericImport<JBasicSessionCredentialsClass, JBasicSessionCredentials>) end;

  JClasspathPropertiesFileCredentialsProviderClass = interface(JObjectClass)
  ['{D2AA9A8E-1ED4-40AC-88E9-BDB4B48B7A0F}']
    { static Property Methods }

    { static Methods }
    {class} function init: JClasspathPropertiesFileCredentialsProvider; cdecl; overload; //()V
    {class} function init(credentialsFilePath: JString): JClasspathPropertiesFileCredentialsProvider; cdecl; overload; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/ClasspathPropertiesFileCredentialsProvider')]
  JClasspathPropertiesFileCredentialsProvider = interface(JObject)
  ['{D1593462-5496-4B79-AED1-FD47D7C1E951}']
    { Property Methods }

    { methods }
    function getCredentials: JAWSCredentials; cdecl; //()Lcom/amazonaws/auth/AWSCredentials;
    procedure refresh; cdecl; //()V
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJClasspathPropertiesFileCredentialsProvider = class(TJavaGenericImport<JClasspathPropertiesFileCredentialsProviderClass, JClasspathPropertiesFileCredentialsProvider>) end;


  JCognitoCredentialsProviderClass = interface(JAWSCredentialsProviderClass)
  ['{E04962AF-46BE-471B-A000-CEE86996F7A9}']
    { static Property Methods }
    {class} function _GetDEFAULT_DURATION_SECONDS: Integer; //I
    {class} function _GetDEFAULT_THRESHOLD_SECONDS: Integer; //I

    { static Methods }
    {class} function init(accountId: JString; identityPoolId: JString; unauthRoleArn: JString; P4: JString; region: JRegions): JCognitoCredentialsProvider; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;)V
    {class} function init(accountId: JString; identityPoolId: JString; unauthRoleArn: JString; P4: JString; region: JRegions; clientConfiguration: JClientConfiguration): JCognitoCredentialsProvider; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(awsConfiguration: JAWSConfiguration): JCognitoCredentialsProvider; cdecl; overload; //(Lcom/amazonaws/mobile/config/AWSConfiguration;)V
    {class} function init(identityPoolId: JString; region: JRegions): JCognitoCredentialsProvider; cdecl; overload; //(Ljava/lang/String;Lcom/amazonaws/regions/Regions;)V
    {class} function init(identityPoolId: JString; region: JRegions; clientConfiguration: JClientConfiguration): JCognitoCredentialsProvider; cdecl; overload; //(Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(accountId: JString; identityPoolId: JString; unauthRoleArn: JString; P4: JString; cibClient: JAmazonCognitoIdentityClient; stsClient: JAWSSecurityTokenService): JCognitoCredentialsProvider; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V
    {class} function init(provider: JAWSCognitoIdentityProvider; unauthArn: JString; P3: JString): JCognitoCredentialsProvider; cdecl; overload; //(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;)V
    {class} function init(provider: JAWSCognitoIdentityProvider; unauthArn: JString; P3: JString; stsClient: JAWSSecurityTokenService): JCognitoCredentialsProvider; cdecl; overload; //(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V
    {class} function init(provider: JAWSCognitoIdentityProvider; region: JRegions): JCognitoCredentialsProvider; cdecl; overload; //(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;)V
    {class} function init(provider: JAWSCognitoIdentityProvider; region: JRegions; clientConfiguration: JClientConfiguration): JCognitoCredentialsProvider; cdecl; overload; //(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(provider: JAWSCognitoIdentityProvider; cib: JAmazonCognitoIdentityClient): JCognitoCredentialsProvider; cdecl; overload; //(Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;)V

    { static Property }
    {class} property DEFAULT_DURATION_SECONDS: Integer read _GetDEFAULT_DURATION_SECONDS;
    {class} property DEFAULT_THRESHOLD_SECONDS: Integer read _GetDEFAULT_THRESHOLD_SECONDS;
  end;

  [JavaSignature('com/amazonaws/auth/CognitoCredentialsProvider')]
  JCognitoCredentialsProvider = interface(JAWSCredentialsProvider)
  ['{C00BD9A5-524D-4475-B758-C27938EFB8CA}']
    { Property Methods }

    { methods }
    function getIdentityId: JString; cdecl; //()Ljava/lang/String;
    function getToken: JString; cdecl; //()Ljava/lang/String;
    function getIdentityProvider: JAWSIdentityProvider; cdecl; //()Lcom/amazonaws/auth/AWSIdentityProvider;
    procedure setSessionCredentialsExpiration(expiration: JDate); cdecl; //(Ljava/util/Date;)V
    function getSessionCredentitalsExpiration: JDate; cdecl; //()Ljava/util/Date;
    function getIdentityPoolId: JString; cdecl; //()Ljava/lang/String;
    function getCredentials: JAWSSessionCredentials; cdecl; overload; //()Lcom/amazonaws/auth/AWSSessionCredentials;
    procedure setSessionDuration(sessionDuration: Integer); cdecl; //(I)V
    function withSessionDuration(sessionDuration: Integer): JCognitoCredentialsProvider; cdecl; //(I)Lcom/amazonaws/auth/CognitoCredentialsProvider;
    function getSessionDuration: Integer; cdecl; //()I
    procedure setRefreshThreshold(refreshThreshold: Integer); cdecl; //(I)V
    function withRefreshThreshold(refreshThreshold: Integer): JCognitoCredentialsProvider; cdecl; //(I)Lcom/amazonaws/auth/CognitoCredentialsProvider;
    function getRefreshThreshold: Integer; cdecl; //()I
    procedure setLogins(logins: JMap); cdecl; //(Ljava/util/Map;)V
    function getCustomRoleArn: JString; cdecl; //()Ljava/lang/String;
    procedure setCustomRoleArn(customRoleArn: JString); cdecl; //(Ljava/lang/String;)V
    function withLogins(logins: JMap): JAWSCredentialsProvider; cdecl; //(Ljava/util/Map;)Lcom/amazonaws/auth/AWSCredentialsProvider;
    function getLogins: JMap; cdecl; //()Ljava/util/Map;
    procedure refresh; cdecl; //()V
    procedure clear; cdecl; //()V
    procedure clearCredentials; cdecl; //()V
    procedure registerIdentityChangedListener(listener: JIdentityChangedListener); cdecl; //(Lcom/amazonaws/auth/IdentityChangedListener;)V
    procedure unregisterIdentityChangedListener(listener: JIdentityChangedListener); cdecl; //(Lcom/amazonaws/auth/IdentityChangedListener;)V
    //function getCredentials: JAWSCredentials; cdecl; overload; //()Lcom/amazonaws/auth/AWSCredentials;

    { Property }
  end;

  TJCognitoCredentialsProvider = class(TJavaGenericImport<JCognitoCredentialsProviderClass, JCognitoCredentialsProvider>) end;

  JCognitoCachingCredentialsProviderClass = interface(JCognitoCredentialsProviderClass) // or JObjectClass // SuperSignature: com/amazonaws/auth/CognitoCredentialsProvider
  ['{CBB568AC-DBD9-4E99-8955-7E32E98791DF}']
    { static Property Methods }

    { static Methods }
    {class} function init(context: JContext; accountId: JString; identityPoolId: JString; unauthRoleArn: JString; P5: JString; region: JRegions): JCognitoCachingCredentialsProvider; cdecl; overload; //(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;)V
    {class} function init(context: JContext; accountId: JString; identityPoolId: JString; unauthRoleArn: JString; P5: JString; region: JRegions; clientConfiguration: JClientConfiguration): JCognitoCachingCredentialsProvider; cdecl; overload; //(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(context: JContext; identityPoolId: JString; region: JRegions): JCognitoCachingCredentialsProvider; cdecl; overload; //(Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/regions/Regions;)V
    {class} function init(context: JContext; awsConfiguration: JAWSConfiguration): JCognitoCachingCredentialsProvider; cdecl; overload; //(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;)V
    {class} function init(context: JContext; identityPoolId: JString; region: JRegions; clientConfiguration: JClientConfiguration): JCognitoCachingCredentialsProvider; cdecl; overload; //(Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(context: JContext; accountId: JString; identityPoolId: JString; unauthArn: JString; P5: JString; cibClient: JAmazonCognitoIdentityClient; stsClient: JAWSSecurityTokenService): JCognitoCachingCredentialsProvider; cdecl; overload; //(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V
    {class} function init(context: JContext; provider: JAWSCognitoIdentityProvider; unauthArn: JString; P4: JString): JCognitoCachingCredentialsProvider; cdecl; overload; //(Landroid/content/Context;Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;)V
    {class} function init(context: JContext; provider: JAWSCognitoIdentityProvider; unauthArn: JString; P4: JString; stsClient: JAWSSecurityTokenService): JCognitoCachingCredentialsProvider; cdecl; overload; //(Landroid/content/Context;Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V
    {class} function init(context: JContext; provider: JAWSCognitoIdentityProvider; region: JRegions): JCognitoCachingCredentialsProvider; cdecl; overload; //(Landroid/content/Context;Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;)V
    {class} function init(context: JContext; provider: JAWSCognitoIdentityProvider; region: JRegions; clientConfiguration: JClientConfiguration): JCognitoCachingCredentialsProvider; cdecl; overload; //(Landroid/content/Context;Lcom/amazonaws/auth/AWSCognitoIdentityProvider;Lcom/amazonaws/regions/Regions;Lcom/amazonaws/ClientConfiguration;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/CognitoCachingCredentialsProvider')]
  JCognitoCachingCredentialsProvider = interface(JCognitoCredentialsProvider) // or JObject // SuperSignature: com/amazonaws/auth/CognitoCredentialsProvider
  ['{161821E7-C3D3-417F-B41A-6CFC31D3175D}']
    { Property Methods }

    { methods }
    function getIdentityId: JString; cdecl; //()Ljava/lang/String;
    function getCredentials: JAWSSessionCredentials; cdecl; overload; //()Lcom/amazonaws/auth/AWSSessionCredentials;
    procedure refresh; cdecl; //()V
    procedure setLogins(logins: JMap); cdecl; //(Ljava/util/Map;)V
    procedure clear; cdecl; //()V
    procedure clearCredentials; cdecl; //()V
    function getCachedIdentityId: JString; cdecl; //()Ljava/lang/String;
    //function getCredentials: JAWSCredentials; cdecl; overload; //()Lcom/amazonaws/auth/AWSCredentials;

    { Property }
  end;

  TJCognitoCachingCredentialsProvider = class(TJavaGenericImport<JCognitoCachingCredentialsProviderClass, JCognitoCachingCredentialsProvider>) end;

  JDefaultAWSCredentialsProviderChainClass = interface(JAWSCredentialsProviderChainClass) // or JObjectClass // SuperSignature: com/amazonaws/auth/AWSCredentialsProviderChain
  ['{F1C2F2EA-3815-45C2-8E70-840F79FE78FA}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDefaultAWSCredentialsProviderChain; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/DefaultAWSCredentialsProviderChain')]
  JDefaultAWSCredentialsProviderChain = interface(JAWSCredentialsProviderChain) // or JObject // SuperSignature: com/amazonaws/auth/AWSCredentialsProviderChain
  ['{E509904D-909E-4891-8051-C8246CCE5DEA}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJDefaultAWSCredentialsProviderChain = class(TJavaGenericImport<JDefaultAWSCredentialsProviderChainClass, JDefaultAWSCredentialsProviderChain>) end;

  JIdentityChangedListenerClass = interface(JObjectClass)
  ['{494DD3DF-1BF8-43E0-B867-7A5B4DD2235E}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/IdentityChangedListener')]
  JIdentityChangedListener = interface(IJavaInstance)
  ['{6B676E49-ABBF-4293-A94D-EA8535492340}']
    { Property Methods }

    { methods }
    procedure identityChanged(P1: JString; P2: JString); cdecl; //(Ljava/lang/String;Ljava/lang/String;)V

    { Property }
  end;

  TJIdentityChangedListener = class(TJavaGenericImport<JIdentityChangedListenerClass, JIdentityChangedListener>) end;

  JNoOpSignerClass = interface(JObjectClass)
  ['{1DD3FD78-626B-48C2-9E69-337B2ED7CD22}']
    { static Property Methods }

    { static Methods }
    {class} function init: JNoOpSigner; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/NoOpSigner')]
  JNoOpSigner = interface(JObject)
  ['{9F45B712-8ACD-4C66-AB96-3106A7201176}']
    { Property Methods }

    { methods }
    procedure sign(request: JRequest; credentials: JAWSCredentials); cdecl; //(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V

    { Property }
  end;

  TJNoOpSigner = class(TJavaGenericImport<JNoOpSignerClass, JNoOpSigner>) end;

  JNoSessionSupportCredentialsClass = interface(JObjectClass)
  ['{854740AD-FE88-456B-9D5B-4536EA641639}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/NoSessionSupportCredentials')]
  JNoSessionSupportCredentials = interface(IJavaInstance)
  ['{305A87C7-99E6-4AB9-AD31-780BE84B19DC}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJNoSessionSupportCredentials = class(TJavaGenericImport<JNoSessionSupportCredentialsClass, JNoSessionSupportCredentials>) end;

  JActionClass = interface(JObjectClass)
  ['{868CAE9E-159D-4BF8-BB37-05A48C859C0F}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/policy/Action')]
  JAction = interface(IJavaInstance)
  ['{42F48B7D-4E44-485E-937C-C5C42C4CB89B}']
    { Property Methods }

    { methods }
    function getActionName: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJAction = class(TJavaGenericImport<JActionClass, JAction>) end;

  JSecurityTokenServiceActionsClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{3CF670A6-3C95-4D7E-AA07-3D3D861E2C3F}']
    { static Property Methods }
    {class} function _GetAllSecurityTokenServiceActions: JSecurityTokenServiceActions; //Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;
    {class} function _GetAssumeRole: JSecurityTokenServiceActions; //Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;
    {class} function _GetAssumeRoleWithWebIdentity: JSecurityTokenServiceActions; //Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;
    {class} function _GetGetCallerIdentity: JSecurityTokenServiceActions; //Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;
    {class} function _GetGetFederationToken: JSecurityTokenServiceActions; //Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;
    {class} function _GetGetSessionToken: JSecurityTokenServiceActions; //Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    { static Methods }
    {class} function values: TJavaObjectArray<JSecurityTokenServiceActions>; cdecl; //()[Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;
    {class} function valueOf(P1: JString): JSecurityTokenServiceActions; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/auth/policy/actions/SecurityTokenServiceActions;

    { static Property }
    {class} property AllSecurityTokenServiceActions: JSecurityTokenServiceActions read _GetAllSecurityTokenServiceActions;
    {class} property AssumeRole: JSecurityTokenServiceActions read _GetAssumeRole;
    {class} property AssumeRoleWithWebIdentity: JSecurityTokenServiceActions read _GetAssumeRoleWithWebIdentity;
    {class} property GetCallerIdentity: JSecurityTokenServiceActions read _GetGetCallerIdentity;
    {class} property GetFederationToken: JSecurityTokenServiceActions read _GetGetFederationToken;
    {class} property GetSessionToken: JSecurityTokenServiceActions read _GetGetSessionToken;
  end;

  [JavaSignature('com/amazonaws/auth/policy/actions/SecurityTokenServiceActions')]
  JSecurityTokenServiceActions = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{89A180B4-E5E4-444B-901B-2409ABB77A9D}']
    { Property Methods }

    { methods }
    function getActionName: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJSecurityTokenServiceActions = class(TJavaGenericImport<JSecurityTokenServiceActionsClass, JSecurityTokenServiceActions>) end;

  JConditionClass = interface(JObjectClass)
  ['{19BFA7B7-A29A-436F-97F5-C0F1ED8D6234}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCondition; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/policy/Condition')]
  JCondition = interface(JObject)
  ['{B086C090-F697-4993-8C9D-6F6D0420DC8E}']
    { Property Methods }

    { methods }
    function getType: JString; cdecl; //()Ljava/lang/String;
    procedure setType(atype: JString); cdecl; //(Ljava/lang/String;)V
    function getConditionKey: JString; cdecl; //()Ljava/lang/String;
    procedure setConditionKey(conditionKey: JString); cdecl; //(Ljava/lang/String;)V
    function getValues: JList; cdecl; //()Ljava/util/List;
    procedure setValues(values: JList); cdecl; //(Ljava/util/List;)V
    function withType(atype: JString): JCondition; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;
    function withConditionKey(key: JString): JCondition; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;
    function withValues(values: TJavaObjectArray<JString>): JCondition; cdecl; overload; //([Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;
    function withValues(values: JList): JCondition; cdecl; overload; //(Ljava/util/List;)Lcom/amazonaws/auth/policy/Condition;

    { Property }
  end;

  TJCondition = class(TJavaGenericImport<JConditionClass, JCondition>) end;

  JArnCondition_ArnComparisonTypeClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{6DDDF606-5A21-4C46-8C57-6BDF79BDE1E7}']
    { static Property Methods }
    {class} function _GetArnEquals: JArnCondition_ArnComparisonType; //Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;
    {class} function _GetArnLike: JArnCondition_ArnComparisonType; //Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;
    {class} function _GetArnNotEquals: JArnCondition_ArnComparisonType; //Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;
    {class} function _GetArnNotLike: JArnCondition_ArnComparisonType; //Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    { static Methods }
    {class} function values: TJavaObjectArray<JArnCondition_ArnComparisonType>; cdecl; //()[Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;
    {class} function valueOf(P1: JString): JArnCondition_ArnComparisonType; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;

    { static Property }
    {class} property ArnEquals: JArnCondition_ArnComparisonType read _GetArnEquals;
    {class} property ArnLike: JArnCondition_ArnComparisonType read _GetArnLike;
    {class} property ArnNotEquals: JArnCondition_ArnComparisonType read _GetArnNotEquals;
    {class} property ArnNotLike: JArnCondition_ArnComparisonType read _GetArnNotLike;
  end;

  [JavaSignature('com/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType')]
  JArnCondition_ArnComparisonType = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{8B0CA3C9-A23D-4CDF-A902-4849B3888C4A}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJArnCondition_ArnComparisonType = class(TJavaGenericImport<JArnCondition_ArnComparisonTypeClass, JArnCondition_ArnComparisonType>) end;

  JArnConditionClass = interface(JConditionClass) // or JObjectClass // SuperSignature: com/amazonaws/auth/policy/Condition
  ['{BFFBD187-0399-4A58-8B14-ECEA86E4F2D7}']
    { static Property Methods }

    { static Methods }
    {class} function init(atype: JArnCondition_ArnComparisonType; key: JString; value: JString): JArnCondition; cdecl; //(Lcom/amazonaws/auth/policy/conditions/ArnCondition$ArnComparisonType;Ljava/lang/String;Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/policy/conditions/ArnCondition')]
  JArnCondition = interface(JCondition) // or JObject // SuperSignature: com/amazonaws/auth/policy/Condition
  ['{4BEBC699-084A-4057-818C-CA5E3B5EEB81}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJArnCondition = class(TJavaGenericImport<JArnConditionClass, JArnCondition>) end;

  JBooleanConditionClass = interface(JConditionClass) // or JObjectClass // SuperSignature: com/amazonaws/auth/policy/Condition
  ['{256C4E3C-A923-43EA-ACD0-E28C48F66099}']
    { static Property Methods }

    { static Methods }
    {class} function init(key: JString; value: Boolean): JBooleanCondition; cdecl; //(Ljava/lang/String;Z)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/policy/conditions/BooleanCondition')]
  JBooleanCondition = interface(JCondition) // or JObject // SuperSignature: com/amazonaws/auth/policy/Condition
  ['{4724CACF-56F0-4EBB-B0A2-62FC8B6EA15D}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJBooleanCondition = class(TJavaGenericImport<JBooleanConditionClass, JBooleanCondition>) end;

  JConditionFactoryClass = interface(JObjectClass)
  ['{62E1BFE5-06B3-419D-A797-8E62DD3905DB}']
    { static Property Methods }
    {class} function _GetCURRENT_TIME_CONDITION_KEY: JString; //Ljava/lang/String;
    {class} function _GetSECURE_TRANSPORT_CONDITION_KEY: JString; //Ljava/lang/String;
    {class} function _GetSOURCE_IP_CONDITION_KEY: JString; //Ljava/lang/String;
    {class} function _GetUSER_AGENT_CONDITION_KEY: JString; //Ljava/lang/String;
    {class} function _GetEPOCH_TIME_CONDITION_KEY: JString; //Ljava/lang/String;
    {class} function _GetREFERER_CONDITION_KEY: JString; //Ljava/lang/String;
    {class} function _GetSOURCE_ARN_CONDITION_KEY: JString; //Ljava/lang/String;

    { static Methods }
    {class} function newSourceArnCondition(P1: JString): JCondition; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;
    {class} function newSecureTransportCondition: JCondition; cdecl; //()Lcom/amazonaws/auth/policy/Condition;
    {class} function newUserAgentCondition(value: JStringCondition_StringComparisonType; P2: JString): JCondition; cdecl; //(Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;
    {class} function newRefererCondition(value: JStringCondition_StringComparisonType; P2: JString): JCondition; cdecl; //(Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;Ljava/lang/String;)Lcom/amazonaws/auth/policy/Condition;

    { static Property }
    {class} property CURRENT_TIME_CONDITION_KEY: JString read _GetCURRENT_TIME_CONDITION_KEY;
    {class} property SECURE_TRANSPORT_CONDITION_KEY: JString read _GetSECURE_TRANSPORT_CONDITION_KEY;
    {class} property SOURCE_IP_CONDITION_KEY: JString read _GetSOURCE_IP_CONDITION_KEY;
    {class} property USER_AGENT_CONDITION_KEY: JString read _GetUSER_AGENT_CONDITION_KEY;
    {class} property EPOCH_TIME_CONDITION_KEY: JString read _GetEPOCH_TIME_CONDITION_KEY;
    {class} property REFERER_CONDITION_KEY: JString read _GetREFERER_CONDITION_KEY;
    {class} property SOURCE_ARN_CONDITION_KEY: JString read _GetSOURCE_ARN_CONDITION_KEY;
  end;

  [JavaSignature('com/amazonaws/auth/policy/conditions/ConditionFactory')]
  JConditionFactory = interface(JObject)
  ['{25509561-9675-42BD-A624-FBECD1D5ACB6}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJConditionFactory = class(TJavaGenericImport<JConditionFactoryClass, JConditionFactory>) end;

  JDateCondition_DateComparisonTypeClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{ED35A6F7-5093-40D1-B700-CC2C046CE68C}']
    { static Property Methods }
    {class} function _GetDateEquals: JDateCondition_DateComparisonType; //Lcom/amazonaws/auth/policy/conditions/DateCondition$DateComparisonType;
    {class} function _GetDateGreaterThan: JDateCondition_DateComparisonType; //Lcom/amazonaws/auth/policy/conditions/DateCondition$DateComparisonType;
    {class} function _GetDateGreaterThanEquals: JDateCondition_DateComparisonType; //Lcom/amazonaws/auth/policy/conditions/DateCondition$DateComparisonType;
    {class} function _GetDateLessThan: JDateCondition_DateComparisonType; //Lcom/amazonaws/auth/policy/conditions/DateCondition$DateComparisonType;
    {class} function _GetDateLessThanEquals: JDateCondition_DateComparisonType; //Lcom/amazonaws/auth/policy/conditions/DateCondition$DateComparisonType;
    {class} function _GetDateNotEquals: JDateCondition_DateComparisonType; //Lcom/amazonaws/auth/policy/conditions/DateCondition$DateComparisonType;

    { static Methods }
    {class} function values: TJavaObjectArray<JDateCondition_DateComparisonType>; cdecl; //()[Lcom/amazonaws/auth/policy/conditions/DateCondition$DateComparisonType;
    {class} function valueOf(P1: JString): JDateCondition_DateComparisonType; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/auth/policy/conditions/DateCondition$DateComparisonType;

    { static Property }
    {class} property DateEquals: JDateCondition_DateComparisonType read _GetDateEquals;
    {class} property DateGreaterThan: JDateCondition_DateComparisonType read _GetDateGreaterThan;
    {class} property DateGreaterThanEquals: JDateCondition_DateComparisonType read _GetDateGreaterThanEquals;
    {class} property DateLessThan: JDateCondition_DateComparisonType read _GetDateLessThan;
    {class} property DateLessThanEquals: JDateCondition_DateComparisonType read _GetDateLessThanEquals;
    {class} property DateNotEquals: JDateCondition_DateComparisonType read _GetDateNotEquals;
  end;

  [JavaSignature('com/amazonaws/auth/policy/conditions/DateCondition$DateComparisonType')]
  JDateCondition_DateComparisonType = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{B60B2CA6-1516-48A0-B878-71B7F04EBA0E}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJDateCondition_DateComparisonType = class(TJavaGenericImport<JDateCondition_DateComparisonTypeClass, JDateCondition_DateComparisonType>) end;

  JDateConditionClass = interface(JConditionClass) // or JObjectClass // SuperSignature: com/amazonaws/auth/policy/Condition
  ['{EA92604E-6304-4E88-B109-F43D7794E754}']
    { static Property Methods }

    { static Methods }
    {class} function init(atype: JDateCondition_DateComparisonType; date: JDate): JDateCondition; cdecl; //(Lcom/amazonaws/auth/policy/conditions/DateCondition$DateComparisonType;Ljava/util/Date;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/policy/conditions/DateCondition')]
  JDateCondition = interface(JCondition) // or JObject // SuperSignature: com/amazonaws/auth/policy/Condition
  ['{D228B21B-89F6-47A2-87EB-1C5D273360DB}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJDateCondition = class(TJavaGenericImport<JDateConditionClass, JDateCondition>) end;

  JIpAddressCondition_IpAddressComparisonTypeClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{407527C7-6128-41AA-BC29-6FE167C5A776}']
    { static Property Methods }
    {class} function _GetIpAddress: JIpAddressCondition_IpAddressComparisonType; //Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;
    {class} function _GetNotIpAddress: JIpAddressCondition_IpAddressComparisonType; //Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;

    { static Methods }
    {class} function values: TJavaObjectArray<JIpAddressCondition_IpAddressComparisonType>; cdecl; //()[Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;
    {class} function valueOf(P1: JString): JIpAddressCondition_IpAddressComparisonType; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;

    { static Property }
    {class} property IpAddress: JIpAddressCondition_IpAddressComparisonType read _GetIpAddress;
    {class} property NotIpAddress: JIpAddressCondition_IpAddressComparisonType read _GetNotIpAddress;
  end;

  [JavaSignature('com/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType')]
  JIpAddressCondition_IpAddressComparisonType = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{CEBB8237-885A-45D4-9CC2-E1039D012B75}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIpAddressCondition_IpAddressComparisonType = class(TJavaGenericImport<JIpAddressCondition_IpAddressComparisonTypeClass, JIpAddressCondition_IpAddressComparisonType>) end;

  JIpAddressConditionClass = interface(JConditionClass) // or JObjectClass // SuperSignature: com/amazonaws/auth/policy/Condition
  ['{04FD3FE8-87D3-4B93-BDE9-054A30C047E7}']
    { static Property Methods }

    { static Methods }
    {class} function init(ipAddressRange: JString): JIpAddressCondition; cdecl; overload; //(Ljava/lang/String;)V
    {class} function init(atype: JIpAddressCondition_IpAddressComparisonType; ipAddressRange: JString): JIpAddressCondition; cdecl; overload; //(Lcom/amazonaws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/policy/conditions/IpAddressCondition')]
  JIpAddressCondition = interface(JCondition) // or JObject // SuperSignature: com/amazonaws/auth/policy/Condition
  ['{ACEC1364-E9BA-4E2F-9B56-B4E1DC98BA82}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIpAddressCondition = class(TJavaGenericImport<JIpAddressConditionClass, JIpAddressCondition>) end;

  JNumericCondition_NumericComparisonTypeClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{A7B28D6E-0394-4374-A457-BE9E25307218}']
    { static Property Methods }
    {class} function _GetNumericEquals: JNumericCondition_NumericComparisonType; //Lcom/amazonaws/auth/policy/conditions/NumericCondition$NumericComparisonType;
    {class} function _GetNumericGreaterThan: JNumericCondition_NumericComparisonType; //Lcom/amazonaws/auth/policy/conditions/NumericCondition$NumericComparisonType;
    {class} function _GetNumericGreaterThanEquals: JNumericCondition_NumericComparisonType; //Lcom/amazonaws/auth/policy/conditions/NumericCondition$NumericComparisonType;
    {class} function _GetNumericLessThan: JNumericCondition_NumericComparisonType; //Lcom/amazonaws/auth/policy/conditions/NumericCondition$NumericComparisonType;
    {class} function _GetNumericLessThanEquals: JNumericCondition_NumericComparisonType; //Lcom/amazonaws/auth/policy/conditions/NumericCondition$NumericComparisonType;
    {class} function _GetNumericNotEquals: JNumericCondition_NumericComparisonType; //Lcom/amazonaws/auth/policy/conditions/NumericCondition$NumericComparisonType;

    { static Methods }
    {class} function values: TJavaObjectArray<JNumericCondition_NumericComparisonType>; cdecl; //()[Lcom/amazonaws/auth/policy/conditions/NumericCondition$NumericComparisonType;
    {class} function valueOf(P1: JString): JNumericCondition_NumericComparisonType; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/auth/policy/conditions/NumericCondition$NumericComparisonType;

    { static Property }
    {class} property NumericEquals: JNumericCondition_NumericComparisonType read _GetNumericEquals;
    {class} property NumericGreaterThan: JNumericCondition_NumericComparisonType read _GetNumericGreaterThan;
    {class} property NumericGreaterThanEquals: JNumericCondition_NumericComparisonType read _GetNumericGreaterThanEquals;
    {class} property NumericLessThan: JNumericCondition_NumericComparisonType read _GetNumericLessThan;
    {class} property NumericLessThanEquals: JNumericCondition_NumericComparisonType read _GetNumericLessThanEquals;
    {class} property NumericNotEquals: JNumericCondition_NumericComparisonType read _GetNumericNotEquals;
  end;

  [JavaSignature('com/amazonaws/auth/policy/conditions/NumericCondition$NumericComparisonType')]
  JNumericCondition_NumericComparisonType = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{502A8F47-F482-4EE2-8F2D-33F46FD915D4}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJNumericCondition_NumericComparisonType = class(TJavaGenericImport<JNumericCondition_NumericComparisonTypeClass, JNumericCondition_NumericComparisonType>) end;

  JNumericConditionClass = interface(JConditionClass) // or JObjectClass // SuperSignature: com/amazonaws/auth/policy/Condition
  ['{344768A6-B469-423F-948E-E00811A5B6BE}']
    { static Property Methods }

    { static Methods }
    {class} function init(atype: JNumericCondition_NumericComparisonType; key: JString; value: JString): JNumericCondition; cdecl; //(Lcom/amazonaws/auth/policy/conditions/NumericCondition$NumericComparisonType;Ljava/lang/String;Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/policy/conditions/NumericCondition')]
  JNumericCondition = interface(JCondition) // or JObject // SuperSignature: com/amazonaws/auth/policy/Condition
  ['{BD5B6DB4-DC67-40AD-B295-E417F4CB7B72}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJNumericCondition = class(TJavaGenericImport<JNumericConditionClass, JNumericCondition>) end;

  JStringCondition_StringComparisonTypeClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{32A51DD5-E7F8-4B11-868D-02E76B64D613}']
    { static Property Methods }
    {class} function _GetStringEquals: JStringCondition_StringComparisonType; //Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;
    {class} function _GetStringEqualsIgnoreCase: JStringCondition_StringComparisonType; //Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;
    {class} function _GetStringLike: JStringCondition_StringComparisonType; //Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;
    {class} function _GetStringNotEquals: JStringCondition_StringComparisonType; //Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;
    {class} function _GetStringNotEqualsIgnoreCase: JStringCondition_StringComparisonType; //Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;
    {class} function _GetStringNotLike: JStringCondition_StringComparisonType; //Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    { static Methods }
    {class} function values: TJavaObjectArray<JStringCondition_StringComparisonType>; cdecl; //()[Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;
    {class} function valueOf(P1: JString): JStringCondition_StringComparisonType; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;

    { static Property }
    {class} property StringEquals: JStringCondition_StringComparisonType read _GetStringEquals;
    {class} property StringEqualsIgnoreCase: JStringCondition_StringComparisonType read _GetStringEqualsIgnoreCase;
    {class} property StringLike: JStringCondition_StringComparisonType read _GetStringLike;
    {class} property StringNotEquals: JStringCondition_StringComparisonType read _GetStringNotEquals;
    {class} property StringNotEqualsIgnoreCase: JStringCondition_StringComparisonType read _GetStringNotEqualsIgnoreCase;
    {class} property StringNotLike: JStringCondition_StringComparisonType read _GetStringNotLike;
  end;

  [JavaSignature('com/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType')]
  JStringCondition_StringComparisonType = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{A449CBE6-C0D7-4FFC-8E17-FA83B5277D53}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJStringCondition_StringComparisonType = class(TJavaGenericImport<JStringCondition_StringComparisonTypeClass, JStringCondition_StringComparisonType>) end;

  JStringConditionClass = interface(JConditionClass) // or JObjectClass // SuperSignature: com/amazonaws/auth/policy/Condition
  ['{21B0ADBB-C2E6-4404-83D0-00AF33D75ECD}']
    { static Property Methods }

    { static Methods }
    {class} function init(atype: JStringCondition_StringComparisonType; key: JString; value: JString): JStringCondition; cdecl; //(Lcom/amazonaws/auth/policy/conditions/StringCondition$StringComparisonType;Ljava/lang/String;Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/policy/conditions/StringCondition')]
  JStringCondition = interface(JCondition) // or JObject // SuperSignature: com/amazonaws/auth/policy/Condition
  ['{BEC323C3-8BC7-411C-A28E-AF9BC0C22570}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJStringCondition = class(TJavaGenericImport<JStringConditionClass, JStringCondition>) end;

  JJsonDocumentFieldsClass = interface(JObjectClass)
  ['{34387E98-F075-4FE2-B544-8BE31A01BEF4}']
    { static Property Methods }
    {class} function _GetVERSION: JString; //Ljava/lang/String;
    {class} function _GetPOLICY_ID: JString; //Ljava/lang/String;
    {class} function _GetSTATEMENT: JString; //Ljava/lang/String;
    {class} function _GetSTATEMENT_EFFECT: JString; //Ljava/lang/String;
    {class} function _GetEFFECT_VALUE_ALLOW: JString; //Ljava/lang/String;
    {class} function _GetSTATEMENT_ID: JString; //Ljava/lang/String;
    {class} function _GetPRINCIPAL: JString; //Ljava/lang/String;
    {class} function _GetACTION: JString; //Ljava/lang/String;
    {class} function _GetRESOURCE: JString; //Ljava/lang/String;
    {class} function _GetCONDITION: JString; //Ljava/lang/String;

    { static Methods }
    {class} function init: JJsonDocumentFields; cdecl; //()V

    { static Property }
    {class} property VERSION: JString read _GetVERSION;
    {class} property POLICY_ID: JString read _GetPOLICY_ID;
    {class} property STATEMENT: JString read _GetSTATEMENT;
    {class} property STATEMENT_EFFECT: JString read _GetSTATEMENT_EFFECT;
    {class} property EFFECT_VALUE_ALLOW: JString read _GetEFFECT_VALUE_ALLOW;
    {class} property STATEMENT_ID: JString read _GetSTATEMENT_ID;
    {class} property PRINCIPAL: JString read _GetPRINCIPAL;
    {class} property ACTION: JString read _GetACTION;
    {class} property RESOURCE: JString read _GetRESOURCE;
    {class} property CONDITION: JString read _GetCONDITION;
  end;

  [JavaSignature('com/amazonaws/auth/policy/internal/JsonDocumentFields')]
  JJsonDocumentFields = interface(JObject)
  ['{07AAB304-8882-4790-AC0D-D7BF40CA80A9}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJJsonDocumentFields = class(TJavaGenericImport<JJsonDocumentFieldsClass, JJsonDocumentFields>) end;

  JJsonPolicyReader_NamedActionClass = interface(JObjectClass)
  ['{975EFA2A-335A-400E-B0E8-311C8CF5F878}']
    { static Property Methods }

    { static Methods }
    {class} function init(actionName: JString): JJsonPolicyReader_NamedAction; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/policy/internal/JsonPolicyReader$NamedAction')]
  JJsonPolicyReader_NamedAction = interface(JObject)
  ['{71E8656A-5117-4BCA-B896-6681B00AADC3}']
    { Property Methods }

    { methods }
    function getActionName: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJJsonPolicyReader_NamedAction = class(TJavaGenericImport<JJsonPolicyReader_NamedActionClass, JJsonPolicyReader_NamedAction>) end;

  JJsonPolicyReaderClass = interface(JObjectClass)
  ['{D39F4E51-4C20-47CD-A035-D64216186899}']
    { static Property Methods }

    { static Methods }
    {class} function init: JJsonPolicyReader; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/policy/internal/JsonPolicyReader')]
  JJsonPolicyReader = interface(JObject)
  ['{840920B5-ABAD-4867-A155-8FC8A6589487}']
    { Property Methods }

    { methods }
    function createPolicyFromJsonString(jsonString: JString): JPolicy; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Policy;

    { Property }
  end;

  TJJsonPolicyReader = class(TJavaGenericImport<JJsonPolicyReaderClass, JJsonPolicyReader>) end;

  JJsonPolicyWriter_ConditionsByKeyClass = interface(JObjectClass)
  ['{784C5F11-0313-4B20-863E-77D895F13311}']
    { static Property Methods }

    { static Methods }
    {class} function init: JJsonPolicyWriter_ConditionsByKey; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/policy/internal/JsonPolicyWriter$ConditionsByKey')]
  JJsonPolicyWriter_ConditionsByKey = interface(JObject)
  ['{912E7D1D-A75A-4842-9D8A-22A62CCB5509}']
    { Property Methods }

    { methods }
    function getConditionsByKey: JMap; cdecl; overload; //()Ljava/util/Map;
    procedure setConditionsByKey(conditionsByKey: JMap); cdecl; //(Ljava/util/Map;)V
    function containsKey(key: JString): Boolean; cdecl; //(Ljava/lang/String;)Z
    function getConditionsByKey(key: JString): JList; cdecl; overload; //(Ljava/lang/String;)Ljava/util/List;
    function keySet: JSet; cdecl; //()Ljava/util/Set;
    procedure addValuesToKey(key: JString; values: JList); cdecl; //(Ljava/lang/String;Ljava/util/List;)V

    { Property }
  end;

  TJJsonPolicyWriter_ConditionsByKey = class(TJavaGenericImport<JJsonPolicyWriter_ConditionsByKeyClass, JJsonPolicyWriter_ConditionsByKey>) end;

  JJsonPolicyWriterClass = interface(JObjectClass)
  ['{06DE9E59-F330-4882-85B5-E8D2A525A8F4}']
    { static Property Methods }

    { static Methods }
    {class} function init: JJsonPolicyWriter; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/policy/internal/JsonPolicyWriter')]
  JJsonPolicyWriter = interface(JObject)
  ['{91A7D6C5-53AB-4CEF-911B-3BD68316B46A}']
    { Property Methods }

    { methods }
    function writePolicyToString(policy: JPolicy): JString; cdecl; //(Lcom/amazonaws/auth/policy/Policy;)Ljava/lang/String;

    { Property }
  end;

  TJJsonPolicyWriter = class(TJavaGenericImport<JJsonPolicyWriterClass, JJsonPolicyWriter>) end;

  JPolicyClass = interface(JObjectClass)
  ['{7A287CD4-850D-47BF-9E47-872312AAE74E}']
    { static Property Methods }

    { static Methods }
    {class} function init: JPolicy; cdecl; overload; //()V
    {class} function init(id: JString): JPolicy; cdecl; overload; //(Ljava/lang/String;)V
    {class} function init(id: JString; statements: JCollection): JPolicy; cdecl; overload; //(Ljava/lang/String;Ljava/util/Collection;)V
    {class} function fromJson(P1: JString): JPolicy; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Policy;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/policy/Policy')]
  JPolicy = interface(JObject)
  ['{15956074-3D9A-40E3-9AB6-3A9A1ACD783E}']
    { Property Methods }

    { methods }
    function getId: JString; cdecl; //()Ljava/lang/String;
    procedure setId(id: JString); cdecl; //(Ljava/lang/String;)V
    function withId(id: JString): JPolicy; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Policy;
    function getVersion: JString; cdecl; //()Ljava/lang/String;
    function getStatements: JCollection; cdecl; //()Ljava/util/Collection;
    procedure setStatements(statements: JCollection); cdecl; //(Ljava/util/Collection;)V
    function withStatements(statements: TJavaObjectArray<JStatement>): JPolicy; cdecl; //([Lcom/amazonaws/auth/policy/Statement;)Lcom/amazonaws/auth/policy/Policy;
    function toJson: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJPolicy = class(TJavaGenericImport<JPolicyClass, JPolicy>) end;

  JPrincipal_ServicesClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{8D94A654-AB39-4765-B74A-46960F6FAD22}']
    { static Property Methods }
    {class} function _GetAWSDataPipeline: JPrincipal_Services; //Lcom/amazonaws/auth/policy/Principal$Services;
    {class} function _GetAmazonElasticTranscoder: JPrincipal_Services; //Lcom/amazonaws/auth/policy/Principal$Services;
    {class} function _GetAmazonEC2: JPrincipal_Services; //Lcom/amazonaws/auth/policy/Principal$Services;
    {class} function _GetAWSOpsWorks: JPrincipal_Services; //Lcom/amazonaws/auth/policy/Principal$Services;
    {class} function _GetAWSCloudHSM: JPrincipal_Services; //Lcom/amazonaws/auth/policy/Principal$Services;
    {class} function _GetAllServices: JPrincipal_Services; //Lcom/amazonaws/auth/policy/Principal$Services;

    { static Methods }
    {class} function values: TJavaObjectArray<JPrincipal_Services>; cdecl; //()[Lcom/amazonaws/auth/policy/Principal$Services;
    {class} function valueOf(P1: JString): JPrincipal_Services; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal$Services;
    {class} function fromString(serviceId: JString): JPrincipal_Services; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal$Services;

    { static Property }
    {class} property AWSDataPipeline: JPrincipal_Services read _GetAWSDataPipeline;
    {class} property AmazonElasticTranscoder: JPrincipal_Services read _GetAmazonElasticTranscoder;
    {class} property AmazonEC2: JPrincipal_Services read _GetAmazonEC2;
    {class} property AWSOpsWorks: JPrincipal_Services read _GetAWSOpsWorks;
    {class} property AWSCloudHSM: JPrincipal_Services read _GetAWSCloudHSM;
    {class} property AllServices: JPrincipal_Services read _GetAllServices;
  end;

  [JavaSignature('com/amazonaws/auth/policy/Principal$Services')]
  JPrincipal_Services = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{E0273DC2-E641-40CE-865A-E9E1657EB980}']
    { Property Methods }

    { methods }
    function getServiceId: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJPrincipal_Services = class(TJavaGenericImport<JPrincipal_ServicesClass, JPrincipal_Services>) end;

  JPrincipal_WebIdentityProvidersClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{0E0D973C-1AB3-4B07-A0C0-91A59E28AAC8}']
    { static Property Methods }
    {class} function _GetFacebook: JPrincipal_WebIdentityProviders; //Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;
    {class} function _GetGoogle: JPrincipal_WebIdentityProviders; //Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;
    {class} function _GetAmazon: JPrincipal_WebIdentityProviders; //Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;
    {class} function _GetAllProviders: JPrincipal_WebIdentityProviders; //Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    { static Methods }
    {class} function values: TJavaObjectArray<JPrincipal_WebIdentityProviders>; cdecl; //()[Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;
    {class} function valueOf(P1: JString): JPrincipal_WebIdentityProviders; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;
    {class} function fromString(webIdentityProvider: JString): JPrincipal_WebIdentityProviders; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;

    { static Property }
    {class} property Facebook: JPrincipal_WebIdentityProviders read _GetFacebook;
    {class} property Google: JPrincipal_WebIdentityProviders read _GetGoogle;
    {class} property Amazon: JPrincipal_WebIdentityProviders read _GetAmazon;
    {class} property AllProviders: JPrincipal_WebIdentityProviders read _GetAllProviders;
  end;

  [JavaSignature('com/amazonaws/auth/policy/Principal$WebIdentityProviders')]
  JPrincipal_WebIdentityProviders = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{64E1117D-D929-4401-B44A-09254C56DD53}']
    { Property Methods }

    { methods }
    function getWebIdentityProvider: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJPrincipal_WebIdentityProviders = class(TJavaGenericImport<JPrincipal_WebIdentityProvidersClass, JPrincipal_WebIdentityProviders>) end;

  JPrincipalClass = interface(JObjectClass)
  ['{50B55C03-E948-43B1-A533-D3D7B10C6F13}']
    { static Property Methods }
    {class} function _GetAllUsers: JPrincipal; //Lcom/amazonaws/auth/policy/Principal;
    {class} function _GetAllServices: JPrincipal; //Lcom/amazonaws/auth/policy/Principal;
    {class} function _GetAllWebProviders: JPrincipal; //Lcom/amazonaws/auth/policy/Principal;
    {class} function _GetAll: JPrincipal; //Lcom/amazonaws/auth/policy/Principal;

    { static Methods }
    {class} function init(service: JPrincipal_Services): JPrincipal; cdecl; overload; //(Lcom/amazonaws/auth/policy/Principal$Services;)V
    {class} function init(provider: JString; id: JString): JPrincipal; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;)V
    {class} function init(accountId: JString): JPrincipal; cdecl; overload; //(Ljava/lang/String;)V
    {class} function init(webIdentityProvider: JPrincipal_WebIdentityProviders): JPrincipal; cdecl; overload; //(Lcom/amazonaws/auth/policy/Principal$WebIdentityProviders;)V

    { static Property }
    {class} property AllUsers: JPrincipal read _GetAllUsers;
    {class} property AllServices: JPrincipal read _GetAllServices;
    {class} property AllWebProviders: JPrincipal read _GetAllWebProviders;
    {class} property All: JPrincipal read _GetAll;
  end;

  [JavaSignature('com/amazonaws/auth/policy/Principal')]
  JPrincipal = interface(JObject)
  ['{122DD74C-6DFE-4DEB-A134-0066E68A3482}']
    { Property Methods }

    { methods }
    function getProvider: JString; cdecl; //()Ljava/lang/String;
    function getId: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(principal: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJPrincipal = class(TJavaGenericImport<JPrincipalClass, JPrincipal>) end;

  JResourceClass = interface(JObjectClass)
  ['{C4928800-2C22-430F-81F3-4293FFACC482}']
    { static Property Methods }

    { static Methods }
    {class} function init(resource: JString): JResource; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/policy/Resource')]
  JResource = interface(JObject)
  ['{169D82B1-7C35-44AC-8BB5-AF6C8A207D39}']
    { Property Methods }

    { methods }
    function getId: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJResource = class(TJavaGenericImport<JResourceClass, JResource>) end;

  JStatement_EffectClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{8041148E-3F29-4738-90EF-6AE3A56654F9}']
    { static Property Methods }
    {class} function _GetAllow: JStatement_Effect; //Lcom/amazonaws/auth/policy/Statement$Effect;
    {class} function _GetDeny: JStatement_Effect; //Lcom/amazonaws/auth/policy/Statement$Effect;

    { static Methods }
    {class} function values: TJavaObjectArray<JStatement_Effect>; cdecl; //()[Lcom/amazonaws/auth/policy/Statement$Effect;
    {class} function valueOf(P1: JString): JStatement_Effect; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Statement$Effect;

    { static Property }
    {class} property Allow: JStatement_Effect read _GetAllow;
    {class} property Deny: JStatement_Effect read _GetDeny;
  end;

  [JavaSignature('com/amazonaws/auth/policy/Statement$Effect')]
  JStatement_Effect = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{DE2B6BCD-8B8B-4239-AF74-813AF0445930}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJStatement_Effect = class(TJavaGenericImport<JStatement_EffectClass, JStatement_Effect>) end;

  JStatementClass = interface(JObjectClass)
  ['{435F15FF-1080-4108-99F7-3E0B09B45450}']
    { static Property Methods }

    { static Methods }
    {class} function init(effect: JStatement_Effect): JStatement; cdecl; //(Lcom/amazonaws/auth/policy/Statement$Effect;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/policy/Statement')]
  JStatement = interface(JObject)
  ['{171FBD96-5728-460E-96D3-1A00C35B21A7}']
    { Property Methods }

    { methods }
    function getId: JString; cdecl; //()Ljava/lang/String;
    procedure setId(id: JString); cdecl; //(Ljava/lang/String;)V
    function withId(id: JString): JStatement; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/auth/policy/Statement;
    function getEffect: JStatement_Effect; cdecl; //()Lcom/amazonaws/auth/policy/Statement$Effect;
    procedure setEffect(effect: JStatement_Effect); cdecl; //(Lcom/amazonaws/auth/policy/Statement$Effect;)V
    function getActions: JList; cdecl; //()Ljava/util/List;
    procedure setActions(actions: JCollection); cdecl; //(Ljava/util/Collection;)V
    function withActions(actions: TJavaObjectArray<JAction>): JStatement; cdecl; //([Lcom/amazonaws/auth/policy/Action;)Lcom/amazonaws/auth/policy/Statement;
    function getResources: JList; cdecl; //()Ljava/util/List;
    procedure setResources(resources: JCollection); cdecl; //(Ljava/util/Collection;)V
    function withResources(resources: TJavaObjectArray<JResource>): JStatement; cdecl; //([Lcom/amazonaws/auth/policy/Resource;)Lcom/amazonaws/auth/policy/Statement;
    function getConditions: JList; cdecl; //()Ljava/util/List;
    procedure setConditions(conditions: JList); cdecl; //(Ljava/util/List;)V
    function withConditions(conditions: TJavaObjectArray<JCondition>): JStatement; cdecl; //([Lcom/amazonaws/auth/policy/Condition;)Lcom/amazonaws/auth/policy/Statement;
    function getPrincipals: JList; cdecl; //()Ljava/util/List;
    procedure setPrincipals(principals: JCollection); cdecl; overload; //(Ljava/util/Collection;)V
    procedure setPrincipals(principals: TJavaObjectArray<JPrincipal>); cdecl; overload; //([Lcom/amazonaws/auth/policy/Principal;)V
    function withPrincipals(principals: TJavaObjectArray<JPrincipal>): JStatement; cdecl; //([Lcom/amazonaws/auth/policy/Principal;)Lcom/amazonaws/auth/policy/Statement;

    { Property }
  end;

  TJStatement = class(TJavaGenericImport<JStatementClass, JStatement>) end;

  JSTSActionsClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{E02B79BF-8C88-4D2F-AD87-F4361111DCE6}']
    { static Property Methods }
    {class} function _GetAssumeRole: JSTSActions; //Lcom/amazonaws/auth/policy/STSActions;
    {class} function _GetAssumeRoleWithWebIdentity: JSTSActions; //Lcom/amazonaws/auth/policy/STSActions;

    { static Methods }
    {class} function values: TJavaObjectArray<JSTSActions>; cdecl; //()[Lcom/amazonaws/auth/policy/STSActions;
    {class} function valueOf(P1: JString): JSTSActions; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/auth/policy/STSActions;

    { static Property }
    {class} property AssumeRole: JSTSActions read _GetAssumeRole;
    {class} property AssumeRoleWithWebIdentity: JSTSActions read _GetAssumeRoleWithWebIdentity;
  end;

  [JavaSignature('com/amazonaws/auth/policy/STSActions')]
  JSTSActions = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{A613B5D4-46D9-44A8-9829-051E6C6A64EE}']
    { Property Methods }

    { methods }
    function getActionName: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJSTSActions = class(TJavaGenericImport<JSTSActionsClass, JSTSActions>) end;

  JPresignerClass = interface(JObjectClass)
  ['{1D1DB630-22B6-4FAB-AFFD-8BBAD271AAF2}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/Presigner')]
  JPresigner = interface(IJavaInstance)
  ['{AE930B6D-35DD-429D-9B59-1C21A208AFA4}']
    { Property Methods }

    { methods }
    procedure presignRequest(P1: JRequest; P2: JAWSCredentials; P3: JDate); cdecl; //(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;Ljava/util/Date;)V

    { Property }
  end;

  TJPresigner = class(TJavaGenericImport<JPresignerClass, JPresigner>) end;

  JPropertiesCredentialsClass = interface(JObjectClass)
  ['{2F45FC85-AF30-4BDE-8D52-AC52EEF01201}']
    { static Property Methods }

    { static Methods }
    {class} function init(afile: JFile): JPropertiesCredentials; cdecl; overload; //(Ljava/io/File;)V
    {class} function init(inputStream: JInputStream): JPropertiesCredentials; cdecl; overload; //(Ljava/io/InputStream;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/PropertiesCredentials')]
  JPropertiesCredentials = interface(JObject)
  ['{D7591C75-D779-46E5-BE2A-BA798771D446}']
    { Property Methods }

    { methods }
    function getAWSAccessKeyId: JString; cdecl; //()Ljava/lang/String;
    function getAWSSecretKey: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJPropertiesCredentials = class(TJavaGenericImport<JPropertiesCredentialsClass, JPropertiesCredentials>) end;

  JPropertiesFileCredentialsProviderClass = interface(JObjectClass)
  ['{E08C97EA-869D-478D-B0FB-B57B0E7DBABA}']
    { static Property Methods }

    { static Methods }
    {class} function init(credentialsFilePath: JString): JPropertiesFileCredentialsProvider; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/PropertiesFileCredentialsProvider')]
  JPropertiesFileCredentialsProvider = interface(JObject)
  ['{E43E7382-FD29-40FC-985B-44B58794C1E9}']
    { Property Methods }

    { methods }
    function getCredentials: JAWSCredentials; cdecl; //()Lcom/amazonaws/auth/AWSCredentials;
    procedure refresh; cdecl; //()V
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJPropertiesFileCredentialsProvider = class(TJavaGenericImport<JPropertiesFileCredentialsProviderClass, JPropertiesFileCredentialsProvider>) end;

  JQueryStringSignerClass = interface(JAbstractAWSSignerClass) // or JObjectClass // SuperSignature: com/amazonaws/auth/AbstractAWSSigner
  ['{6ACA3EB5-9E80-4DC8-BCB7-88B709750959}']
    { static Property Methods }

    { static Methods }
    {class} function init: JQueryStringSigner; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/QueryStringSigner')]
  JQueryStringSigner = interface(JAbstractAWSSigner) // or JObject // SuperSignature: com/amazonaws/auth/AbstractAWSSigner
  ['{BAE41C38-36AD-4E65-B209-79109F5D4D7D}']
    { Property Methods }

    { methods }
    procedure sign(request: JRequest; credentials: JAWSCredentials); cdecl; overload; //(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V
    procedure sign(request: JRequest; version: JSignatureVersion; algorithm: JSigningAlgorithm; credentials: JAWSCredentials); cdecl; overload; //(Lcom/amazonaws/Request;Lcom/amazonaws/auth/SignatureVersion;Lcom/amazonaws/auth/SigningAlgorithm;Lcom/amazonaws/auth/AWSCredentials;)V

    { Property }
  end;

  TJQueryStringSigner = class(TJavaGenericImport<JQueryStringSignerClass, JQueryStringSigner>) end;

  JRegionAwareSignerClass = interface(JObjectClass)
  ['{1D99691B-ABC2-4782-B0AD-7BD11D487E88}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/RegionAwareSigner')]
  JRegionAwareSigner = interface(IJavaInstance)
  ['{C77C9CD6-58A0-4616-8B08-2B9324413506}']
    { Property Methods }

    { methods }
    procedure setRegionName(P1: JString); cdecl; //(Ljava/lang/String;)V

    { Property }
  end;

  TJRegionAwareSigner = class(TJavaGenericImport<JRegionAwareSignerClass, JRegionAwareSigner>) end;

  JServiceAwareSignerClass = interface(JObjectClass)
  ['{09AC23F8-D3C1-45C0-A330-FA4FDE896222}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/ServiceAwareSigner')]
  JServiceAwareSigner = interface(IJavaInstance)
  ['{A2E6D78A-3A52-46B5-A931-615E7F3872A4}']
    { Property Methods }

    { methods }
    procedure setServiceName(P1: JString); cdecl; //(Ljava/lang/String;)V

    { Property }
  end;

  TJServiceAwareSigner = class(TJavaGenericImport<JServiceAwareSignerClass, JServiceAwareSigner>) end;

  JSessionCredentialsProviderFactory_KeyClass = interface(JObjectClass)
  ['{807D671B-6D25-4FCD-B963-C570B7B5B209}']
    { static Property Methods }

    { static Methods }
    {class} function init(awsAccessKeyId: JString; serviceEndpoint: JString): JSessionCredentialsProviderFactory_Key; cdecl; //(Ljava/lang/String;Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/SessionCredentialsProviderFactory$Key')]
  JSessionCredentialsProviderFactory_Key = interface(JObject)
  ['{5E3AD507-94BC-4F07-88C6-5021719C6BED}']
    { Property Methods }

    { methods }
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJSessionCredentialsProviderFactory_Key = class(TJavaGenericImport<JSessionCredentialsProviderFactory_KeyClass, JSessionCredentialsProviderFactory_Key>) end;

  JSessionCredentialsProviderFactoryClass = interface(JObjectClass)
  ['{0CCD2602-D611-4CAB-8107-F583491AA107}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSessionCredentialsProviderFactory; cdecl; //()V
    {class} function getSessionCredentialsProvider(serviceEndpoint: JAWSCredentials; stsClientConfiguration: JString; key: JClientConfiguration): JSTSSessionCredentialsProvider; cdecl; //(Lcom/amazonaws/auth/AWSCredentials;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/auth/STSSessionCredentialsProvider;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/SessionCredentialsProviderFactory')]
  JSessionCredentialsProviderFactory = interface(JObject)
  ['{9E1389C0-C850-495B-8FFD-A55D428E7991}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJSessionCredentialsProviderFactory = class(TJavaGenericImport<JSessionCredentialsProviderFactoryClass, JSessionCredentialsProviderFactory>) end;

  JSignatureVersionClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{373561BB-1597-4722-8219-6D3B9A104FD8}']
    { static Property Methods }
    {class} function _GetV1: JSignatureVersion; //Lcom/amazonaws/auth/SignatureVersion;
    {class} function _GetV2: JSignatureVersion; //Lcom/amazonaws/auth/SignatureVersion;

    { static Methods }
    {class} function values: TJavaObjectArray<JSignatureVersion>; cdecl; //()[Lcom/amazonaws/auth/SignatureVersion;
    {class} function valueOf(P1: JString): JSignatureVersion; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/auth/SignatureVersion;

    { static Property }
    {class} property V1: JSignatureVersion read _GetV1;
    {class} property V2: JSignatureVersion read _GetV2;
  end;

  [JavaSignature('com/amazonaws/auth/SignatureVersion')]
  JSignatureVersion = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{BE26820E-99CC-4ECE-9AB2-839074E3FB81}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJSignatureVersion = class(TJavaGenericImport<JSignatureVersionClass, JSignatureVersion>) end;

  JSignerClass = interface(JObjectClass)
  ['{25112CE3-6263-4945-A8AC-BD0B115507B8}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/Signer')]
  JSigner = interface(IJavaInstance)
  ['{E56FC8A1-61F5-46F5-ACBC-9AC6D73E7A20}']
    { Property Methods }

    { methods }
    procedure sign(P1: JRequest; P2: JAWSCredentials); cdecl; //(Lcom/amazonaws/Request;Lcom/amazonaws/auth/AWSCredentials;)V

    { Property }
  end;

  TJSigner = class(TJavaGenericImport<JSignerClass, JSigner>) end;

  JSignerFactoryClass = interface(JObjectClass)
  ['{410DFA68-A874-4471-A062-AFBCB753848E}']
    { static Property Methods }

    { static Methods }
    {class} procedure registerSigner(signerClass: JString; P2: Jlang_Class); cdecl; //(Ljava/lang/String;Ljava/lang/Class;)V
    {class} function getSigner(regionName: JString; P2: JString): JSigner; cdecl; //(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;
    {class} function getSignerByTypeAndService(serviceName: JString; P2: JString): JSigner; cdecl; //(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/auth/Signer;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/SignerFactory')]
  JSignerFactory = interface(JObject)
  ['{3F369BFB-52FF-468A-84E5-F7101D6B4B4A}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJSignerFactory = class(TJavaGenericImport<JSignerFactoryClass, JSignerFactory>) end;

  JSigningAlgorithmClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{360C27F5-FC08-400A-8053-8EAAEF28F779}']
    { static Property Methods }
    {class} function _GetHmacSHA1: JSigningAlgorithm; //Lcom/amazonaws/auth/SigningAlgorithm;
    {class} function _GetHmacSHA256: JSigningAlgorithm; //Lcom/amazonaws/auth/SigningAlgorithm;

    { static Methods }
    {class} function values: TJavaObjectArray<JSigningAlgorithm>; cdecl; //()[Lcom/amazonaws/auth/SigningAlgorithm;
    {class} function valueOf(P1: JString): JSigningAlgorithm; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/auth/SigningAlgorithm;

    { static Property }
    {class} property HmacSHA1: JSigningAlgorithm read _GetHmacSHA1;
    {class} property HmacSHA256: JSigningAlgorithm read _GetHmacSHA256;
  end;

  [JavaSignature('com/amazonaws/auth/SigningAlgorithm')]
  JSigningAlgorithm = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{43D95687-221C-4B61-9026-615385CB74B9}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJSigningAlgorithm = class(TJavaGenericImport<JSigningAlgorithmClass, JSigningAlgorithm>) end;

  JSTSAssumeRoleSessionCredentialsProviderClass = interface(JObjectClass)
  ['{D4C02644-FE3C-46D8-83D7-E5E406D9BFDA}']
    { static Property Methods }
    {class} function _GetDEFAULT_DURATION_SECONDS: Integer; //I

    { static Methods }
    {class} function init(roleArn: JString; roleSessionName: JString): JSTSAssumeRoleSessionCredentialsProvider; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;)V
    {class} function init(longLivedCredentials: JAWSCredentials; roleArn: JString; roleSessionName: JString): JSTSAssumeRoleSessionCredentialsProvider; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentials;Ljava/lang/String;Ljava/lang/String;)V
    {class} function init(longLivedCredentials: JAWSCredentials; roleArn: JString; roleSessionName: JString; clientConfiguration: JClientConfiguration): JSTSAssumeRoleSessionCredentialsProvider; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentials;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(longLivedCredentialsProvider: JAWSCredentialsProvider; roleArn: JString; roleSessionName: JString): JSTSAssumeRoleSessionCredentialsProvider; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/lang/String;Ljava/lang/String;)V
    {class} function init(longLivedCredentialsProvider: JAWSCredentialsProvider; roleArn: JString; roleSessionName: JString; clientConfiguration: JClientConfiguration): JSTSAssumeRoleSessionCredentialsProvider; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentialsProvider;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)V

    { static Property }
    {class} property DEFAULT_DURATION_SECONDS: Integer read _GetDEFAULT_DURATION_SECONDS;
  end;

  [JavaSignature('com/amazonaws/auth/STSAssumeRoleSessionCredentialsProvider')]
  JSTSAssumeRoleSessionCredentialsProvider = interface(JObject)
  ['{94A7FC7B-6D89-4595-9CF7-44309AC7EC74}']
    { Property Methods }

    { methods }
    procedure setSTSClientEndpoint(endpoint: JString); cdecl; //(Ljava/lang/String;)V
    function getCredentials: JAWSCredentials; cdecl; //()Lcom/amazonaws/auth/AWSCredentials;
    procedure refresh; cdecl; //()V

    { Property }
  end;

  TJSTSAssumeRoleSessionCredentialsProvider = class(TJavaGenericImport<JSTSAssumeRoleSessionCredentialsProviderClass, JSTSAssumeRoleSessionCredentialsProvider>) end;

  JSTSSessionCredentialsClass = interface(JObjectClass)
  ['{24D8435F-93EF-47B0-970F-6F773A6B0DF5}']
    { static Property Methods }
    {class} function _GetDEFAULT_DURATION_SECONDS: Integer; //I

    { static Methods }
    {class} function init(credentials: JAWSCredentials): JSTSSessionCredentials; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentials;)V
    {class} function init(credentials: JAWSCredentials; sessionDurationSeconds: Integer): JSTSSessionCredentials; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentials;I)V
    {class} function init(stsClient: JAWSSecurityTokenService): JSTSSessionCredentials; cdecl; overload; //(Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V
    {class} function init(stsClient: JAWSSecurityTokenService; sessionDuratinSeconds: Integer): JSTSSessionCredentials; cdecl; overload; //(Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;I)V

    { static Property }
    {class} property DEFAULT_DURATION_SECONDS: Integer read _GetDEFAULT_DURATION_SECONDS;
  end;

  [JavaSignature('com/amazonaws/auth/STSSessionCredentials')]
  JSTSSessionCredentials = interface(JObject)
  ['{A4269A79-6C7D-4F60-8807-332E425760B4}']
    { Property Methods }

    { methods }
    function getAWSAccessKeyId: JString; cdecl; //()Ljava/lang/String;
    function getAWSSecretKey: JString; cdecl; //()Ljava/lang/String;
    function getSessionToken: JString; cdecl; //()Ljava/lang/String;
    function getImmutableCredentials: JAWSSessionCredentials; cdecl; //()Lcom/amazonaws/auth/AWSSessionCredentials;
    procedure refreshCredentials; cdecl; //()V

    { Property }
  end;

  TJSTSSessionCredentials = class(TJavaGenericImport<JSTSSessionCredentialsClass, JSTSSessionCredentials>) end;

  JSTSSessionCredentialsProviderClass = interface(JObjectClass)
  ['{B2376354-EA43-42DA-9607-BF7CBB1B682F}']
    { static Property Methods }
    {class} function _GetDEFAULT_DURATION_SECONDS: Integer; //I

    { static Methods }
    {class} function init(longLivedCredentials: JAWSCredentials): JSTSSessionCredentialsProvider; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentials;)V
    {class} function init(longLivedCredentials: JAWSCredentials; clientConfiguration: JClientConfiguration): JSTSSessionCredentialsProvider; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(longLivedCredentialsProvider: JAWSCredentialsProvider): JSTSSessionCredentialsProvider; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    {class} function init(longLivedCredentialsProvider: JAWSCredentialsProvider; clientConfiguration: JClientConfiguration): JSTSSessionCredentialsProvider; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V

    { static Property }
    {class} property DEFAULT_DURATION_SECONDS: Integer read _GetDEFAULT_DURATION_SECONDS;
  end;

  [JavaSignature('com/amazonaws/auth/STSSessionCredentialsProvider')]
  JSTSSessionCredentialsProvider = interface(JObject)
  ['{89769E0D-8F65-43D8-8E24-D98978F3C5AF}']
    { Property Methods }

    { methods }
    procedure setSTSClientEndpoint(endpoint: JString); cdecl; //(Ljava/lang/String;)V
    function getCredentials: JAWSCredentials; cdecl; //()Lcom/amazonaws/auth/AWSCredentials;
    procedure refresh; cdecl; //()V

    { Property }
  end;

  TJSTSSessionCredentialsProvider = class(TJavaGenericImport<JSTSSessionCredentialsProviderClass, JSTSSessionCredentialsProvider>) end;

  JSystemPropertiesCredentialsProviderClass = interface(JObjectClass)
  ['{84BE3FEA-E89B-4519-BA12-215418346418}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSystemPropertiesCredentialsProvider; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/auth/SystemPropertiesCredentialsProvider')]
  JSystemPropertiesCredentialsProvider = interface(JObject)
  ['{B13765BD-EB63-4F55-83CE-E03EA173C56B}']
    { Property Methods }

    { methods }
    function getCredentials: JAWSCredentials; cdecl; //()Lcom/amazonaws/auth/AWSCredentials;
    procedure refresh; cdecl; //()V
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJSystemPropertiesCredentialsProvider = class(TJavaGenericImport<JSystemPropertiesCredentialsProviderClass, JSystemPropertiesCredentialsProvider>) end;

  JWebIdentityFederationSessionCredentialsProviderClass = interface(JObjectClass)
  ['{CB952BC2-FE99-4E0E-9233-5534D0844ED0}']
    { static Property Methods }
    {class} function _GetDEFAULT_DURATION_SECONDS: Integer; //I
    {class} function _GetDEFAULT_THRESHOLD_SECONDS: Integer; //I

    { static Methods }
    {class} function init(wifToken: JString; wifProvider: JString; roleArn: JString): JWebIdentityFederationSessionCredentialsProvider; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    {class} function init(wifToken: JString; wifProvider: JString; roleArn: JString; clientConfiguration: JClientConfiguration): JWebIdentityFederationSessionCredentialsProvider; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(wifToken: JString; wifProvider: JString; roleArn: JString; stsClient: JAWSSecurityTokenService): JWebIdentityFederationSessionCredentialsProvider; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/services/securitytoken/AWSSecurityTokenService;)V

    { static Property }
    {class} property DEFAULT_DURATION_SECONDS: Integer read _GetDEFAULT_DURATION_SECONDS;
    {class} property DEFAULT_THRESHOLD_SECONDS: Integer read _GetDEFAULT_THRESHOLD_SECONDS;
  end;

  [JavaSignature('com/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider')]
  JWebIdentityFederationSessionCredentialsProvider = interface(JObject)
  ['{2A6E7FBB-C416-4FC1-B836-3F57DE6BF0A7}']
    { Property Methods }

    { methods }
    function getCredentials: JAWSCredentials; cdecl; //()Lcom/amazonaws/auth/AWSCredentials;
    procedure refresh; cdecl; //()V
    procedure setSessionDuration(sessionDuration: Integer); cdecl; //(I)V
    function withSessionDuration(sessionDuration: Integer): JWebIdentityFederationSessionCredentialsProvider; cdecl; //(I)Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;
    function getSessionDuration: Integer; cdecl; //()I
    procedure setRefreshThreshold(refreshThreshold: Integer); cdecl; //(I)V
    function withRefreshThreshold(refreshThreshold: Integer): JWebIdentityFederationSessionCredentialsProvider; cdecl; //(I)Lcom/amazonaws/auth/WebIdentityFederationSessionCredentialsProvider;
    function getRefreshThreshold: Integer; cdecl; //()I
    function getSubjectFromWIF: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJWebIdentityFederationSessionCredentialsProvider = class(TJavaGenericImport<JWebIdentityFederationSessionCredentialsProviderClass, JWebIdentityFederationSessionCredentialsProvider>) end;

  JClientConfigurationClass = interface(JObjectClass)
  ['{FD513CB6-C682-42ED-8D7B-66154B83A2B3}']
    { static Property Methods }
    {class} function _GetDEFAULT_CONNECTION_TIMEOUT: Integer; //I
    {class} function _GetDEFAULT_SOCKET_TIMEOUT: Integer; //I
    {class} function _GetDEFAULT_MAX_CONNECTIONS: Integer; //I
    {class} function _GetDEFAULT_USER_AGENT: JString; //Ljava/lang/String;
    {class} function _GetDEFAULT_RETRY_POLICY: JRetryPolicy; //Lcom/amazonaws/retry/RetryPolicy;
    {class} function _GetDEFAULT_USE_REAPER: Boolean; //Z

    { static Methods }
    {class} function init: JClientConfiguration; cdecl; overload; //()V
    {class} function init(other: JClientConfiguration): JClientConfiguration; cdecl; overload; //(Lcom/amazonaws/ClientConfiguration;)V

    { static Property }
    {class} property DEFAULT_CONNECTION_TIMEOUT: Integer read _GetDEFAULT_CONNECTION_TIMEOUT;
    {class} property DEFAULT_SOCKET_TIMEOUT: Integer read _GetDEFAULT_SOCKET_TIMEOUT;
    {class} property DEFAULT_MAX_CONNECTIONS: Integer read _GetDEFAULT_MAX_CONNECTIONS;
    {class} property DEFAULT_USER_AGENT: JString read _GetDEFAULT_USER_AGENT;
    {class} property DEFAULT_RETRY_POLICY: JRetryPolicy read _GetDEFAULT_RETRY_POLICY;
    {class} property DEFAULT_USE_REAPER: Boolean read _GetDEFAULT_USE_REAPER;
  end;

  [JavaSignature('com/amazonaws/ClientConfiguration')]
  JClientConfiguration = interface(JObject)
  ['{EC88838A-2ACD-4BCE-A665-6BF3E52BCDA3}']
    { Property Methods }

    { methods }
    function getProtocol: JProtocol; cdecl; //()Lcom/amazonaws/Protocol;
    procedure setProtocol(protocol: JProtocol); cdecl; //(Lcom/amazonaws/Protocol;)V
    function withProtocol(protocol: JProtocol): JClientConfiguration; cdecl; //(Lcom/amazonaws/Protocol;)Lcom/amazonaws/ClientConfiguration;
    function getMaxConnections: Integer; cdecl; //()I
    procedure setMaxConnections(maxConnections: Integer); cdecl; //(I)V
    function withMaxConnections(maxConnections: Integer): JClientConfiguration; cdecl; //(I)Lcom/amazonaws/ClientConfiguration;
    function getUserAgent: JString; cdecl; //()Ljava/lang/String;
    procedure setUserAgent(userAgent: JString); cdecl; //(Ljava/lang/String;)V
    function withUserAgent(userAgent: JString): JClientConfiguration; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    function getLocalAddress: JInetAddress; cdecl; //()Ljava/net/InetAddress;
    procedure setLocalAddress(localAddress: JInetAddress); cdecl; //(Ljava/net/InetAddress;)V
    function withLocalAddress(localAddress: JInetAddress): JClientConfiguration; cdecl; //(Ljava/net/InetAddress;)Lcom/amazonaws/ClientConfiguration;
    function getProxyHost: JString; cdecl; //()Ljava/lang/String;
    procedure setProxyHost(proxyHost: JString); cdecl; //(Ljava/lang/String;)V
    function withProxyHost(proxyHost: JString): JClientConfiguration; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    function getProxyPort: Integer; cdecl; //()I
    procedure setProxyPort(proxyPort: Integer); cdecl; //(I)V
    function withProxyPort(proxyPort: Integer): JClientConfiguration; cdecl; //(I)Lcom/amazonaws/ClientConfiguration;
    function getProxyUsername: JString; cdecl; //()Ljava/lang/String;
    procedure setProxyUsername(proxyUsername: JString); cdecl; //(Ljava/lang/String;)V
    function withProxyUsername(proxyUsername: JString): JClientConfiguration; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    function getProxyPassword: JString; cdecl; //()Ljava/lang/String;
    procedure setProxyPassword(proxyPassword: JString); cdecl; //(Ljava/lang/String;)V
    function withProxyPassword(proxyPassword: JString): JClientConfiguration; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    function getProxyDomain: JString; cdecl; //Deprecated //()Ljava/lang/String;
    procedure setProxyDomain(proxyDomain: JString); cdecl; //Deprecated //(Ljava/lang/String;)V
    function withProxyDomain(proxyDomain: JString): JClientConfiguration; cdecl; //Deprecated //(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    function getProxyWorkstation: JString; cdecl; //()Ljava/lang/String;
    procedure setProxyWorkstation(proxyWorkstation: JString); cdecl; //Deprecated //(Ljava/lang/String;)V
    function withProxyWorkstation(proxyWorkstation: JString): JClientConfiguration; cdecl; //Deprecated //(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    function getRetryPolicy: JRetryPolicy; cdecl; //()Lcom/amazonaws/retry/RetryPolicy;
    procedure setRetryPolicy(retryPolicy: JRetryPolicy); cdecl; //(Lcom/amazonaws/retry/RetryPolicy;)V
    function withRetryPolicy(retryPolicy: JRetryPolicy): JClientConfiguration; cdecl; //(Lcom/amazonaws/retry/RetryPolicy;)Lcom/amazonaws/ClientConfiguration;
    function getMaxErrorRetry: Integer; cdecl; //()I
    procedure setMaxErrorRetry(maxErrorRetry: Integer); cdecl; //(I)V
    function withMaxErrorRetry(maxErrorRetry: Integer): JClientConfiguration; cdecl; //(I)Lcom/amazonaws/ClientConfiguration;
    function getSocketTimeout: Integer; cdecl; //()I
    procedure setSocketTimeout(socketTimeout: Integer); cdecl; //(I)V
    function withSocketTimeout(socketTimeout: Integer): JClientConfiguration; cdecl; //(I)Lcom/amazonaws/ClientConfiguration;
    function getConnectionTimeout: Integer; cdecl; //()I
    procedure setConnectionTimeout(connectionTimeout: Integer); cdecl; //(I)V
    function withConnectionTimeout(connectionTimeout: Integer): JClientConfiguration; cdecl; //(I)Lcom/amazonaws/ClientConfiguration;
    function useReaper: Boolean; cdecl; //()Z
    procedure setUseReaper(use: Boolean); cdecl; //(Z)V
    function withReaper(use: Boolean): JClientConfiguration; cdecl; //(Z)Lcom/amazonaws/ClientConfiguration;
    function getSocketBufferSizeHints: TJavaArray<Integer>; cdecl; //()[I
    procedure setSocketBufferSizeHints(socketSendBufferSizeHint: Integer; socketReceiveBufferSizeHint: Integer); cdecl; //(II)V
    function withSocketBufferSizeHints(socketSendBufferSizeHint: Integer; socketReceiveBufferSizeHint: Integer): JClientConfiguration; cdecl; //(II)Lcom/amazonaws/ClientConfiguration;
    function getSignerOverride: JString; cdecl; //()Ljava/lang/String;
    procedure setSignerOverride(value: JString); cdecl; //(Ljava/lang/String;)V
    function withSignerOverride(value: JString): JClientConfiguration; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/ClientConfiguration;
    function isPreemptiveBasicProxyAuth: Boolean; cdecl; //()Z
    procedure setPreemptiveBasicProxyAuth(preemptiveBasicProxyAuth: JBoolean); cdecl; //(Ljava/lang/Boolean;)V
    function withPreemptiveBasicProxyAuth(preemptiveBasicProxyAuth: Boolean): JClientConfiguration; cdecl; //(Z)Lcom/amazonaws/ClientConfiguration;
    function getTrustManager: JTrustManager; cdecl; //()Ljavax/net/ssl/TrustManager;
    procedure setTrustManager(trustManager: JTrustManager); cdecl; //(Ljavax/net/ssl/TrustManager;)V
    function withTrustManager(trustManager: JTrustManager): JClientConfiguration; cdecl; //(Ljavax/net/ssl/TrustManager;)Lcom/amazonaws/ClientConfiguration;
    function isCurlLogging: Boolean; cdecl; //()Z
    procedure setCurlLogging(curlLogging: Boolean); cdecl; //(Z)V
    function withCurlLogging(curlLogging: Boolean): JClientConfiguration; cdecl; //(Z)Lcom/amazonaws/ClientConfiguration;
    function isEnableGzip: Boolean; cdecl; //()Z
    procedure setEnableGzip(enableGzip: Boolean); cdecl; //(Z)V
    function withEnableGzip(enableGzip: Boolean): JClientConfiguration; cdecl; //(Z)Lcom/amazonaws/ClientConfiguration;

    { Property }
  end;

  TJClientConfiguration = class(TJavaGenericImport<JClientConfigurationClass, JClientConfiguration>) end;

  JConfigurationConstantClass = interface(JObjectClass)
  ['{43A4004C-36F1-4305-9344-37B64569D026}']
    { static Property Methods }
    {class} function _GetDEFAULT_CHARSET: JCharset; //Ljava/nio/charset/Charset;

    { static Methods }
    {class} function init: JConfigurationConstant; cdecl; //()V

    { static Property }
    {class} property DEFAULT_CHARSET: JCharset read _GetDEFAULT_CHARSET;
  end;

  [JavaSignature('com/amazonaws/cognito/clientcontext/data/ConfigurationConstant')]
  JConfigurationConstant = interface(JObject)
  ['{94293109-190E-4D74-A14C-2C3F1C75E5C1}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJConfigurationConstant = class(TJavaGenericImport<JConfigurationConstantClass, JConfigurationConstant>) end;

  JUserContextDataProvider_1Class = interface(JObjectClass)
  ['{A41E1858-5938-43EE-98FA-45153C7E8FAA}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/cognito/clientcontext/data/UserContextDataProvider$1')]
  JUserContextDataProvider_1 = interface(JObject)
  ['{8720C803-E104-4F14-B769-85C2972F1441}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJUserContextDataProvider_1 = class(TJavaGenericImport<JUserContextDataProvider_1Class, JUserContextDataProvider_1>) end;

  JUserContextDataProvider_ContextDataJsonKeysClass = interface(JObjectClass)
  ['{CE1E0F9F-97CA-40B4-A994-F3B0B3A92885}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/cognito/clientcontext/data/UserContextDataProvider$ContextDataJsonKeys')]
  JUserContextDataProvider_ContextDataJsonKeys = interface(JObject)
  ['{6ADE0DA0-B69D-4301-A822-8326AFC8AD98}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJUserContextDataProvider_ContextDataJsonKeys = class(TJavaGenericImport<JUserContextDataProvider_ContextDataJsonKeysClass, JUserContextDataProvider_ContextDataJsonKeys>) end;

  JUserContextDataProvider_InstanceHolderClass = interface(JObjectClass)
  ['{C59E5E2C-0ACE-48C1-A025-6B29C78337D8}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/cognito/clientcontext/data/UserContextDataProvider$InstanceHolder')]
  JUserContextDataProvider_InstanceHolder = interface(JObject)
  ['{3F926D2A-7A4B-4073-B9DB-474E2F74F10C}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJUserContextDataProvider_InstanceHolder = class(TJavaGenericImport<JUserContextDataProvider_InstanceHolderClass, JUserContextDataProvider_InstanceHolder>) end;

  JUserContextDataProviderClass = interface(JObjectClass)
  ['{7D47BEBC-1F52-4C2D-B07C-74D6C65D2233}']
    { static Property Methods }
    {class} function _GetVERSION: JString; //Ljava/lang/String;

    { static Methods }
    {class} function getInstance: JUserContextDataProvider; cdecl; //()Lcom/amazonaws/cognito/clientcontext/data/UserContextDataProvider;

    { static Property }
    {class} property VERSION: JString read _GetVERSION;
  end;

  [JavaSignature('com/amazonaws/cognito/clientcontext/data/UserContextDataProvider')]
  JUserContextDataProvider = interface(JObject)
  ['{DA16B5FA-93A2-41C8-9EFD-514BB91C36D9}']
    { Property Methods }

    { methods }
    function getEncodedContextData(context: JContext; username: JString; userPoolId: JString; signatureSecret: JString): JString; cdecl; //(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    { Property }
  end;

  TJUserContextDataProvider = class(TJavaGenericImport<JUserContextDataProviderClass, JUserContextDataProvider>) end;


  JDataCollectorClass = interface(JObjectClass)
  ['{CF070D2F-223E-446B-AA2F-56BE6B45AD57}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDataCollector; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/cognito/clientcontext/datacollection/DataCollector')]
  JDataCollector = interface(JObject)
  ['{59295E2C-7402-438D-A58D-16A0BDAFCF7F}']
    { Property Methods }

    { methods }
    function collect(P1: JContext): JMap; cdecl; //(Landroid/content/Context;)Ljava/util/Map;

    { Property }
  end;

  TJDataCollector = class(TJavaGenericImport<JDataCollectorClass, JDataCollector>) end;

  JApplicationDataCollectorClass = interface(JDataCollectorClass) // or JObjectClass // SuperSignature: com/amazonaws/cognito/clientcontext/datacollection/DataCollector
  ['{A05B17D3-3A8F-4E31-ADFC-0CDAAD0AF62A}']
    { static Property Methods }

    { static Methods }
    {class} function init: JApplicationDataCollector; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/cognito/clientcontext/datacollection/ApplicationDataCollector')]
  JApplicationDataCollector = interface(JDataCollector) // or JObject // SuperSignature: com/amazonaws/cognito/clientcontext/datacollection/DataCollector
  ['{B4D32C2C-A903-435E-8CD3-713934E8B442}']
    { Property Methods }

    { methods }
    function collect(context: JContext): JMap; cdecl; //(Landroid/content/Context;)Ljava/util/Map;

    { Property }
  end;

  TJApplicationDataCollector = class(TJavaGenericImport<JApplicationDataCollectorClass, JApplicationDataCollector>) end;

  JBuildDataCollectorClass = interface(JDataCollectorClass) // or JObjectClass // SuperSignature: com/amazonaws/cognito/clientcontext/datacollection/DataCollector
  ['{EE66719B-107C-41C9-A20E-FE765EB3A564}']
    { static Property Methods }

    { static Methods }
    {class} function init: JBuildDataCollector; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/cognito/clientcontext/datacollection/BuildDataCollector')]
  JBuildDataCollector = interface(JDataCollector) // or JObject // SuperSignature: com/amazonaws/cognito/clientcontext/datacollection/DataCollector
  ['{52128A5B-CB92-4725-B8FE-B00361FFB4B7}']
    { Property Methods }

    { methods }
    function collect(context: JContext): JMap; cdecl; //(Landroid/content/Context;)Ljava/util/Map;

    { Property }
  end;

  TJBuildDataCollector = class(TJavaGenericImport<JBuildDataCollectorClass, JBuildDataCollector>) end;

  JContextDataAggregator_1Class = interface(JObjectClass)
  ['{FEE0453C-7F8E-464D-A939-0133AFD5A010}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator$1')]
  JContextDataAggregator_1 = interface(JObject)
  ['{16F3EE4F-CDB5-41DF-83E0-3A9C57A6E0E5}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJContextDataAggregator_1 = class(TJavaGenericImport<JContextDataAggregator_1Class, JContextDataAggregator_1>) end;

  JContextDataAggregator_InstanceHolderClass = interface(JObjectClass)
  ['{862276DA-1B1A-4E15-9FFA-89340230C782}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator$InstanceHolder')]
  JContextDataAggregator_InstanceHolder = interface(JObject)
  ['{AE3CC709-30FD-4453-97F3-3D119A570996}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJContextDataAggregator_InstanceHolder = class(TJavaGenericImport<JContextDataAggregator_InstanceHolderClass, JContextDataAggregator_InstanceHolder>) end;

  JContextDataAggregatorClass = interface(JObjectClass)
  ['{A8325BB3-2DB3-49CA-B3AE-C0853FC26B96}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JContextDataAggregator; cdecl; //()Lcom/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/cognito/clientcontext/datacollection/ContextDataAggregator')]
  JContextDataAggregator = interface(JObject)
  ['{43D90FEC-7872-4C70-BB3E-ABF482801A0F}']
    { Property Methods }

    { methods }
    function getAggregatedData(context: JContext): JMap; cdecl; //(Landroid/content/Context;)Ljava/util/Map;

    { Property }
  end;

  TJContextDataAggregator = class(TJavaGenericImport<JContextDataAggregatorClass, JContextDataAggregator>) end;

  JDataRecordKeyClass = interface(JObjectClass)
  ['{2E6A24AB-1898-4078-8416-8A9A6072271F}']
    { static Property Methods }
    {class} function _GetAPP_NAME: JString; //Ljava/lang/String;
    {class} function _GetAPP_TARGET_SDK: JString; //Ljava/lang/String;
    {class} function _GetAPP_VERSION: JString; //Ljava/lang/String;
    {class} function _GetBOOTLOADER: JString; //Ljava/lang/String;
    {class} function _GetBRAND: JString; //Ljava/lang/String;
    {class} function _GetFINGERPRINT: JString; //Ljava/lang/String;
    {class} function _GetHARDWARE: JString; //Ljava/lang/String;
    {class} function _GetMANUFACTURER: JString; //Ljava/lang/String;
    {class} function _GetMODEL: JString; //Ljava/lang/String;
    {class} function _GetPRODUCT: JString; //Ljava/lang/String;
    {class} function _GetBUILD_TYPE: JString; //Ljava/lang/String;
    {class} function _GetVERSION_RELEASE: JString; //Ljava/lang/String;
    {class} function _GetVERSION_SDK: JString; //Ljava/lang/String;
    {class} function _GetDEVICE_AGENT: JString; //Ljava/lang/String;
    {class} function _GetTHIRD_PARTY_DEVICE_AGENT: JString; //Ljava/lang/String;
    {class} function _GetPLATFORM: JString; //Ljava/lang/String;
    {class} function _GetTIMEZONE: JString; //Ljava/lang/String;
    {class} function _GetDEVICE_HEIGHT: JString; //Ljava/lang/String;
    {class} function _GetDEVICE_WIDTH: JString; //Ljava/lang/String;
    {class} function _GetDEVICE_LANGUAGE: JString; //Ljava/lang/String;
    {class} function _GetHAS_ICC_CARD: JString; //Ljava/lang/String;
    {class} function _GetIS_NETWORK_ROAMING: JString; //Ljava/lang/String;
    {class} function _GetNETWORK_OPERATOR: JString; //Ljava/lang/String;
    {class} function _GetNETWORK_TYPE: JString; //Ljava/lang/String;
    {class} function _GetPHONE_TYPE: JString; //Ljava/lang/String;
    {class} function _GetSIM_COUNTRY_ISO: JString; //Ljava/lang/String;
    {class} function _GetSIM_OPERATOR: JString; //Ljava/lang/String;

    { static Methods }
    {class} function init: JDataRecordKey; cdecl; //()V

    { static Property }
    {class} property APP_NAME: JString read _GetAPP_NAME;
    {class} property APP_TARGET_SDK: JString read _GetAPP_TARGET_SDK;
    {class} property APP_VERSION: JString read _GetAPP_VERSION;
    {class} property BOOTLOADER: JString read _GetBOOTLOADER;
    {class} property BRAND: JString read _GetBRAND;
    {class} property FINGERPRINT: JString read _GetFINGERPRINT;
    {class} property HARDWARE: JString read _GetHARDWARE;
    {class} property MANUFACTURER: JString read _GetMANUFACTURER;
    {class} property MODEL: JString read _GetMODEL;
    {class} property PRODUCT: JString read _GetPRODUCT;
    {class} property BUILD_TYPE: JString read _GetBUILD_TYPE;
    {class} property VERSION_RELEASE: JString read _GetVERSION_RELEASE;
    {class} property VERSION_SDK: JString read _GetVERSION_SDK;
    {class} property DEVICE_AGENT: JString read _GetDEVICE_AGENT;
    {class} property THIRD_PARTY_DEVICE_AGENT: JString read _GetTHIRD_PARTY_DEVICE_AGENT;
    {class} property PLATFORM: JString read _GetPLATFORM;
    {class} property TIMEZONE: JString read _GetTIMEZONE;
    {class} property DEVICE_HEIGHT: JString read _GetDEVICE_HEIGHT;
    {class} property DEVICE_WIDTH: JString read _GetDEVICE_WIDTH;
    {class} property DEVICE_LANGUAGE: JString read _GetDEVICE_LANGUAGE;
    {class} property HAS_ICC_CARD: JString read _GetHAS_ICC_CARD;
    {class} property IS_NETWORK_ROAMING: JString read _GetIS_NETWORK_ROAMING;
    {class} property NETWORK_OPERATOR: JString read _GetNETWORK_OPERATOR;
    {class} property NETWORK_TYPE: JString read _GetNETWORK_TYPE;
    {class} property PHONE_TYPE: JString read _GetPHONE_TYPE;
    {class} property SIM_COUNTRY_ISO: JString read _GetSIM_COUNTRY_ISO;
    {class} property SIM_OPERATOR: JString read _GetSIM_OPERATOR;
  end;

  [JavaSignature('com/amazonaws/cognito/clientcontext/datacollection/DataRecordKey')]
  JDataRecordKey = interface(JObject)
  ['{3680B1B1-5584-4006-A5F0-B6EFEBC61051}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJDataRecordKey = class(TJavaGenericImport<JDataRecordKeyClass, JDataRecordKey>) end;

  JDeviceDataCollectorClass = interface(JDataCollectorClass) // or JObjectClass // SuperSignature: com/amazonaws/cognito/clientcontext/datacollection/DataCollector
  ['{8A7215D7-2929-4152-8563-09D028426B29}']
    { static Property Methods }

    { static Methods }
    {class} function init: JDeviceDataCollector; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/cognito/clientcontext/datacollection/DeviceDataCollector')]
  JDeviceDataCollector = interface(JDataCollector) // or JObject // SuperSignature: com/amazonaws/cognito/clientcontext/datacollection/DataCollector
  ['{3D64241B-4FBC-417A-9533-F0BACF6929E2}']
    { Property Methods }

    { methods }
    function collect(context: JContext): JMap; cdecl; //(Landroid/content/Context;)Ljava/util/Map;

    { Property }
  end;

  TJDeviceDataCollector = class(TJavaGenericImport<JDeviceDataCollectorClass, JDeviceDataCollector>) end;

  JTelephonyDataCollectorClass = interface(JDataCollectorClass) // or JObjectClass // SuperSignature: com/amazonaws/cognito/clientcontext/datacollection/DataCollector
  ['{B87F30A1-0B09-48C3-835B-7652070AE46E}']
    { static Property Methods }

    { static Methods }
    {class} function init: JTelephonyDataCollector; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/cognito/clientcontext/datacollection/TelephonyDataCollector')]
  JTelephonyDataCollector = interface(JDataCollector) // or JObject // SuperSignature: com/amazonaws/cognito/clientcontext/datacollection/DataCollector
  ['{E825AF07-908B-4409-9921-574B51493C2D}']
    { Property Methods }

    { methods }
    function collect(context: JContext): JMap; cdecl; //(Landroid/content/Context;)Ljava/util/Map;

    { Property }
  end;

  TJTelephonyDataCollector = class(TJavaGenericImport<JTelephonyDataCollectorClass, JTelephonyDataCollector>) end;

  JSignatureGeneratorClass = interface(JObjectClass)
  ['{E8DDAE3D-A01B-4EF9-A58E-9E902DE0AD65}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSignatureGenerator; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/cognito/clientcontext/util/SignatureGenerator')]
  JSignatureGenerator = interface(JObject)
  ['{5C237D93-CF44-48E5-B1AD-A74A086CC539}']
    { Property Methods }

    { methods }
    function getSignature(data: JString; secret: JString; version: JString): JString; cdecl; //(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    { Property }
  end;

  TJSignatureGenerator = class(TJavaGenericImport<JSignatureGeneratorClass, JSignatureGenerator>) end;

  JDefaultRequestClass = interface(JObjectClass)
  ['{77CC9598-D652-4091-8A70-949536447CD8}']
    { static Property Methods }

    { static Methods }
    {class} function init(originalRequest: JAmazonWebServiceRequest; serviceName: JString): JDefaultRequest; cdecl; overload; //(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/String;)V
    {class} function init(serviceName: JString): JDefaultRequest; cdecl; overload; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/DefaultRequest')]
  JDefaultRequest = interface(JObject)
  ['{28F3E770-737D-49A5-A642-DC5318DE3CFA}']
    { Property Methods }

    { methods }
    function getOriginalRequest: JAmazonWebServiceRequest; cdecl; //()Lcom/amazonaws/AmazonWebServiceRequest;
    procedure addHeader(name: JString; value: JString); cdecl; //(Ljava/lang/String;Ljava/lang/String;)V
    function getHeaders: JMap; cdecl; //()Ljava/util/Map;
    procedure setResourcePath(resourcePath: JString); cdecl; //(Ljava/lang/String;)V
    function getResourcePath: JString; cdecl; //()Ljava/lang/String;
    procedure addParameter(name: JString; value: JString); cdecl; //(Ljava/lang/String;Ljava/lang/String;)V
    function getParameters: JMap; cdecl; //()Ljava/util/Map;
    function withParameter(name: JString; value: JString): JRequest; cdecl; //(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/Request;
    function getHttpMethod: JHttpMethodName; cdecl; //()Lcom/amazonaws/http/HttpMethodName;
    procedure setHttpMethod(httpMethod: JHttpMethodName); cdecl; //(Lcom/amazonaws/http/HttpMethodName;)V
    procedure setEndpoint(endpoint: JURI); cdecl; //(Ljava/net/URI;)V
    function getEndpoint: JURI; cdecl; //()Ljava/net/URI;
    function getServiceName: JString; cdecl; //()Ljava/lang/String;
    function getContent: JInputStream; cdecl; //()Ljava/io/InputStream;
    procedure setContent(content: JInputStream); cdecl; //(Ljava/io/InputStream;)V
    procedure setHeaders(headers: JMap); cdecl; //(Ljava/util/Map;)V
    procedure setParameters(parameters: JMap); cdecl; //(Ljava/util/Map;)V
    function getTimeOffset: Integer; cdecl; //()I
    procedure setTimeOffset(timeOffset: Integer); cdecl; //(I)V
    function withTimeOffset(timeOffset: Integer): JRequest; cdecl; //(I)Lcom/amazonaws/Request;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function getAWSRequestMetrics: JAWSRequestMetrics; cdecl; //Deprecated //()Lcom/amazonaws/util/AWSRequestMetrics;
    procedure setAWSRequestMetrics(metrics: JAWSRequestMetrics); cdecl; //Deprecated //(Lcom/amazonaws/util/AWSRequestMetrics;)V
    function isStreaming: Boolean; cdecl; //()Z
    procedure setStreaming(streaming: Boolean); cdecl; //(Z)V

    { Property }
  end;

  TJDefaultRequest = class(TJavaGenericImport<JDefaultRequestClass, JDefaultRequest>) end;

  JProgressEventClass = interface(JObjectClass)
  ['{3C67C7CD-B22A-406A-8CAF-346424808D7E}']
    { static Property Methods }
    {class} function _GetPREPARING_EVENT_CODE: Integer; //I
    {class} function _GetSTARTED_EVENT_CODE: Integer; //I
    {class} function _GetCOMPLETED_EVENT_CODE: Integer; //I
    {class} function _GetFAILED_EVENT_CODE: Integer; //I
    {class} function _GetCANCELED_EVENT_CODE: Integer; //I
    {class} function _GetRESET_EVENT_CODE: Integer; //I
    {class} function _GetPART_STARTED_EVENT_CODE: Integer; //I
    {class} function _GetPART_COMPLETED_EVENT_CODE: Integer; //I
    {class} function _GetPART_FAILED_EVENT_CODE: Integer; //I

    { static Methods }
    {class} function init(bytesTransferred: Int64): JProgressEvent; cdecl; overload; //(J)V
    {class} function init(eventCode: Integer; bytesTransferred: Int64): JProgressEvent; cdecl; overload; //(IJ)V

    { static Property }
    {class} property PREPARING_EVENT_CODE: Integer read _GetPREPARING_EVENT_CODE;
    {class} property STARTED_EVENT_CODE: Integer read _GetSTARTED_EVENT_CODE;
    {class} property COMPLETED_EVENT_CODE: Integer read _GetCOMPLETED_EVENT_CODE;
    {class} property FAILED_EVENT_CODE: Integer read _GetFAILED_EVENT_CODE;
    {class} property CANCELED_EVENT_CODE: Integer read _GetCANCELED_EVENT_CODE;
    {class} property RESET_EVENT_CODE: Integer read _GetRESET_EVENT_CODE;
    {class} property PART_STARTED_EVENT_CODE: Integer read _GetPART_STARTED_EVENT_CODE;
    {class} property PART_COMPLETED_EVENT_CODE: Integer read _GetPART_COMPLETED_EVENT_CODE;
    {class} property PART_FAILED_EVENT_CODE: Integer read _GetPART_FAILED_EVENT_CODE;
  end;

  [JavaSignature('com/amazonaws/event/ProgressEvent')]
  JProgressEvent = interface(JObject)
  ['{8F36AD06-D68E-4D1E-A823-5ADC7E318204}']
    { Property Methods }

    { methods }
    procedure setBytesTransferred(bytesTransferred: Int64); cdecl; //(J)V
    function getBytesTransferred: Int64; cdecl; //()J
    function getEventCode: Integer; cdecl; //()I
    procedure setEventCode(eventType: Integer); cdecl; //(I)V

    { Property }
  end;

  TJProgressEvent = class(TJavaGenericImport<JProgressEventClass, JProgressEvent>) end;

  JProgressListenerClass = interface(JObjectClass)
  ['{5BE440F4-B2BC-44A5-A4C2-BF43612CD750}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/event/ProgressListener')]
  JProgressListener = interface(IJavaInstance)
  ['{7EA20A0B-BB69-41C3-A9AB-35BDB3121357}']
    { Property Methods }

    { methods }
    procedure progressChanged(P1: JProgressEvent); cdecl; //(Lcom/amazonaws/event/ProgressEvent;)V

    { Property }
  end;

  TJProgressListener = class(TJavaGenericImport<JProgressListenerClass, JProgressListener>) end;

  JProgressListenerCallbackExecutor_1Class = interface(JObjectClass)
  ['{3F3633DA-3CC5-474B-8C1B-66F2AADE64B4}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/event/ProgressListenerCallbackExecutor$1')]
  JProgressListenerCallbackExecutor_1 = interface(JObject)
  ['{02B942C2-2BF6-4CA3-AE36-9C7CE1B3B04A}']
    { Property Methods }

    { methods }
    procedure run; cdecl; //()V

    { Property }
  end;

  TJProgressListenerCallbackExecutor_1 = class(TJavaGenericImport<JProgressListenerCallbackExecutor_1Class, JProgressListenerCallbackExecutor_1>) end;

  JProgressListenerCallbackExecutor_2Class = interface(JObjectClass)
  ['{4948920C-9665-4FF9-833C-35CE18FB4B26}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/event/ProgressListenerCallbackExecutor$2')]
  JProgressListenerCallbackExecutor_2 = interface(JObject)
  ['{E2FEE64B-BE10-46E0-AE57-311712D77A60}']
    { Property Methods }

    { methods }
    procedure run; cdecl; //()V

    { Property }
  end;

  TJProgressListenerCallbackExecutor_2 = class(TJavaGenericImport<JProgressListenerCallbackExecutor_2Class, JProgressListenerCallbackExecutor_2>) end;

  JProgressListenerCallbackExecutor_3Class = interface(JObjectClass)
  ['{4FDFB2A6-00C7-4421-B5A2-403F47A3DD0E}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/event/ProgressListenerCallbackExecutor$3')]
  JProgressListenerCallbackExecutor_3 = interface(JObject)
  ['{265B86F1-5032-4787-AC9E-80D4EAFA9E5F}']
    { Property Methods }

    { methods }
    function newThread(r: JRunnable): JThread; cdecl; //(Ljava/lang/Runnable;)Ljava/lang/Thread;

    { Property }
  end;

  TJProgressListenerCallbackExecutor_3 = class(TJavaGenericImport<JProgressListenerCallbackExecutor_3Class, JProgressListenerCallbackExecutor_3>) end;

  JProgressListenerCallbackExecutorClass = interface(JObjectClass)
  ['{ABE38661-19B9-42B1-B08A-5F36E1100B57}']
    { static Property Methods }

    { static Methods }
    {class} function progressChanged(progressEvent: JProgressListener; P2: JProgressEvent): JFuture; cdecl; overload; //(Lcom/amazonaws/event/ProgressListener;Lcom/amazonaws/event/ProgressEvent;)Ljava/util/concurrent/Future;
    {class} function init(listener: JProgressListener): JProgressListenerCallbackExecutor; cdecl; overload; //(Lcom/amazonaws/event/ProgressListener;)V
    {class} function init: JProgressListenerCallbackExecutor; cdecl; overload; //()V
    {class} function wrapListener(P1: JProgressListener): JProgressListenerCallbackExecutor; cdecl; //(Lcom/amazonaws/event/ProgressListener;)Lcom/amazonaws/event/ProgressListenerCallbackExecutor;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/event/ProgressListenerCallbackExecutor')]
  JProgressListenerCallbackExecutor = interface(JObject)
  ['{60A5A62C-9603-415F-839B-B05E658C6346}']
    { Property Methods }

    { methods }
    procedure progressChanged(progressEvent: JProgressEvent); cdecl; overload; //(Lcom/amazonaws/event/ProgressEvent;)V

    { Property }
  end;

  TJProgressListenerCallbackExecutor = class(TJavaGenericImport<JProgressListenerCallbackExecutorClass, JProgressListenerCallbackExecutor>) end;

  JProgressListenerChain_ProgressEventFilterClass = interface(JObjectClass)
  ['{46594FB9-931A-4D35-AE12-856A79F84EF9}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/event/ProgressListenerChain$ProgressEventFilter')]
  JProgressListenerChain_ProgressEventFilter = interface(IJavaInstance)
  ['{8EC509F9-741C-4894-9ECD-CB59BED80A47}']
    { Property Methods }

    { methods }
    function filter(P1: JProgressEvent): JProgressEvent; cdecl; //(Lcom/amazonaws/event/ProgressEvent;)Lcom/amazonaws/event/ProgressEvent;

    { Property }
  end;

  TJProgressListenerChain_ProgressEventFilter = class(TJavaGenericImport<JProgressListenerChain_ProgressEventFilterClass, JProgressListenerChain_ProgressEventFilter>) end;

  JProgressListenerChainClass = interface(JObjectClass)
  ['{A6F5BE27-5776-4BDB-9528-7760F84934FA}']
    { static Property Methods }

    { static Methods }
    {class} function init(listeners: TJavaObjectArray<JProgressListener>): JProgressListenerChain; cdecl; overload; //([Lcom/amazonaws/event/ProgressListener;)V
    {class} function init(progressEventFilter: JProgressListenerChain_ProgressEventFilter; listeners: TJavaObjectArray<JProgressListener>): JProgressListenerChain; cdecl; overload; //(Lcom/amazonaws/event/ProgressListenerChain$ProgressEventFilter;[Lcom/amazonaws/event/ProgressListener;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/event/ProgressListenerChain')]
  JProgressListenerChain = interface(JObject)
  ['{3C4366F6-721F-4AC7-A4CA-ECC1C291EFE9}']
    { Property Methods }

    { methods }
    procedure addProgressListener(listener: JProgressListener); cdecl; //(Lcom/amazonaws/event/ProgressListener;)V
    procedure removeProgressListener(listener: JProgressListener); cdecl; //(Lcom/amazonaws/event/ProgressListener;)V
    procedure progressChanged(progressEvent: JProgressEvent); cdecl; //(Lcom/amazonaws/event/ProgressEvent;)V

    { Property }
  end;

  TJProgressListenerChain = class(TJavaGenericImport<JProgressListenerChainClass, JProgressListenerChain>) end;

  JSdkFilterInputStreamClass = interface(JObjectClass) // or JObjectClass // SuperSignature: java/io/FilterInputStream
  ['{7615A410-B42F-4627-A9EC-EA9C6908CD51}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/internal/SdkFilterInputStream')]
  JSdkFilterInputStream = interface(JObject) // or JObject // SuperSignature: java/io/FilterInputStream
  ['{2D30BF8A-85ED-4F05-A87D-FD32AEAE3A0E}']
    { Property Methods }

    { methods }
    function isMetricActivated: Boolean; cdecl; //Deprecated //()Z
    function read: Integer; cdecl; overload; //()I
    function read(b: TJavaArray<Byte>; off: Integer; len: Integer): Integer; cdecl; overload; //([BII)I
    function skip(n: Int64): Int64; cdecl; //(J)J
    function available: Integer; cdecl; //()I
    procedure close; cdecl; //()V
    procedure mark(readlimit: Integer); cdecl; //(I)V
    procedure reset; cdecl; //()V
    function markSupported: Boolean; cdecl; //()Z

    { Property }
  end;

  TJSdkFilterInputStream = class(TJavaGenericImport<JSdkFilterInputStreamClass, JSdkFilterInputStream>) end;

  JProgressReportingInputStreamClass = interface(JSdkFilterInputStreamClass) // or JObjectClass // SuperSignature: com/amazonaws/internal/SdkFilterInputStream
  ['{DFB7C510-EF66-443A-86A2-E2A2160FC8FA}']
    { static Property Methods }

    { static Methods }
    {class} function init(ain: JInputStream; listenerCallbackExecutor: JProgressListenerCallbackExecutor): JProgressReportingInputStream; cdecl; //(Ljava/io/InputStream;Lcom/amazonaws/event/ProgressListenerCallbackExecutor;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/event/ProgressReportingInputStream')]
  JProgressReportingInputStream = interface(JSdkFilterInputStream) // or JObject // SuperSignature: com/amazonaws/internal/SdkFilterInputStream
  ['{22CA1C0F-1FBD-4B91-8BF0-BDC6EBC38F6B}']
    { Property Methods }

    { methods }
    procedure setNotificationThreshold(threshold: Integer); cdecl; //(I)V
    procedure setFireCompletedEvent(fireCompletedEvent: Boolean); cdecl; //(Z)V
    function getFireCompletedEvent: Boolean; cdecl; //()Z
    function read: Integer; cdecl; overload; //()I
    procedure reset; cdecl; //()V
    function read(b: TJavaArray<Byte>; off: Integer; len: Integer): Integer; cdecl; overload; //([BII)I
    procedure close; cdecl; //()V

    { Property }
  end;

  TJProgressReportingInputStream = class(TJavaGenericImport<JProgressReportingInputStreamClass, JProgressReportingInputStream>) end;

  JAbstractRequestHandlerClass = interface(JObjectClass)
  ['{7376BC05-E74E-422D-8612-447D6351CA13}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAbstractRequestHandler; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/handlers/AbstractRequestHandler')]
  JAbstractRequestHandler = interface(JObject)
  ['{5B338318-315D-4EDA-9948-A41754A29D8B}']
    { Property Methods }

    { methods }
    procedure beforeRequest(request: JRequest); cdecl; //(Lcom/amazonaws/Request;)V
    procedure afterResponse(request: JRequest; response: JObject; timingInfo: JTimingInfo); cdecl; //(Lcom/amazonaws/Request;Ljava/lang/Object;Lcom/amazonaws/util/TimingInfo;)V
    procedure afterError(request: JRequest; e: JException); cdecl; //(Lcom/amazonaws/Request;Ljava/lang/Exception;)V

    { Property }
  end;

  TJAbstractRequestHandler = class(TJavaGenericImport<JAbstractRequestHandlerClass, JAbstractRequestHandler>) end;

  JAsyncHandlerClass = interface(JObjectClass)
  ['{7187849F-3FED-4366-9A5A-D68B213EE254}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/handlers/AsyncHandler')]
  JAsyncHandler = interface(IJavaInstance)
  ['{ADA62E3D-6CDA-4226-B796-9B27E01AD603}']
    { Property Methods }

    { methods }
    procedure onError(P1: JException); cdecl; //(Ljava/lang/Exception;)V
    procedure onSuccess(P1: JAmazonWebServiceRequest; P2: JObject); cdecl; //(Lcom/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    { Property }
  end;

  TJAsyncHandler = class(TJavaGenericImport<JAsyncHandlerClass, JAsyncHandler>) end;

  JRequestHandler2Class = interface(JObjectClass)
  ['{FDD2BF8E-3632-44FD-A298-E29CD4981F7B}']
    { static Property Methods }

    { static Methods }
    {class} function init: JRequestHandler2; cdecl; //()V
    {class} function adapt(P1: JRequestHandler): JRequestHandler2; cdecl; //(Lcom/amazonaws/handlers/RequestHandler;)Lcom/amazonaws/handlers/RequestHandler2;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/handlers/RequestHandler2')]
  JRequestHandler2 = interface(JObject)
  ['{6117CC68-420B-4463-930F-B0FF8FAE58EB}']
    { Property Methods }

    { methods }
    procedure beforeRequest(P1: JRequest); cdecl; //(Lcom/amazonaws/Request;)V
    procedure afterResponse(P1: JRequest; P2: JResponse); cdecl; //(Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V
    procedure afterError(P1: JRequest; P2: JResponse; P3: JException); cdecl; //(Lcom/amazonaws/Request;Lcom/amazonaws/Response;Ljava/lang/Exception;)V

    { Property }
  end;

  TJRequestHandler2 = class(TJavaGenericImport<JRequestHandler2Class, JRequestHandler2>) end;

  JCredentialsRequestHandlerClass = interface(JRequestHandler2Class) // or JObjectClass // SuperSignature: com/amazonaws/handlers/RequestHandler2
  ['{F58104ED-D057-459A-B862-CFD4ACC0F58B}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCredentialsRequestHandler; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/handlers/CredentialsRequestHandler')]
  JCredentialsRequestHandler = interface(JRequestHandler2) // or JObject // SuperSignature: com/amazonaws/handlers/RequestHandler2
  ['{9C95B00A-7F96-450C-9849-A5DE129103C3}']
    { Property Methods }

    { methods }
    procedure setCredentials(awsCredentials: JAWSCredentials); cdecl; //(Lcom/amazonaws/auth/AWSCredentials;)V

    { Property }
  end;

  TJCredentialsRequestHandler = class(TJavaGenericImport<JCredentialsRequestHandlerClass, JCredentialsRequestHandler>) end;

  JHandlerChainFactoryClass = interface(JObjectClass)
  ['{8704BE9C-AD90-4F13-9D41-5043741DCC5A}']
    { static Property Methods }

    { static Methods }
    {class} function init: JHandlerChainFactory; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/handlers/HandlerChainFactory')]
  JHandlerChainFactory = interface(JObject)
  ['{F38FA407-0BA6-4FD8-B002-74444627B72B}']
    { Property Methods }

    { methods }
    function newRequestHandlerChain(resource: JString): JList; cdecl; //(Ljava/lang/String;)Ljava/util/List;
    function newRequestHandler2Chain(resource: JString): JList; cdecl; //(Ljava/lang/String;)Ljava/util/List;

    { Property }
  end;

  TJHandlerChainFactory = class(TJavaGenericImport<JHandlerChainFactoryClass, JHandlerChainFactory>) end;

  JRequestHandlerClass = interface(JObjectClass)
  ['{71F890CE-C5EA-4116-8EAC-4A69DF682129}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/handlers/RequestHandler')]
  JRequestHandler = interface(IJavaInstance)
  ['{CA3A63D7-539F-439F-8DAA-5D54E46F4E74}']
    { Property Methods }

    { methods }
    procedure beforeRequest(P1: JRequest); cdecl; //(Lcom/amazonaws/Request;)V
    procedure afterResponse(P1: JRequest; P2: JObject; P3: JTimingInfo); cdecl; //(Lcom/amazonaws/Request;Ljava/lang/Object;Lcom/amazonaws/util/TimingInfo;)V
    procedure afterError(P1: JRequest; P2: JException); cdecl; //(Lcom/amazonaws/Request;Ljava/lang/Exception;)V

    { Property }
  end;

  TJRequestHandler = class(TJavaGenericImport<JRequestHandlerClass, JRequestHandler>) end;

  JRequestHandler2AdaptorClass = interface(JRequestHandler2Class) // or JObjectClass // SuperSignature: com/amazonaws/handlers/RequestHandler2
  ['{CCC568AD-0C4E-4481-A37C-53E523718102}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/handlers/RequestHandler2Adaptor')]
  JRequestHandler2Adaptor = interface(JRequestHandler2) // or JObject // SuperSignature: com/amazonaws/handlers/RequestHandler2
  ['{42A83005-5D65-4EA6-907D-2BFE5FBCFB6E}']
    { Property Methods }

    { methods }
    procedure beforeRequest(request: JRequest); cdecl; //(Lcom/amazonaws/Request;)V
    procedure afterResponse(request: JRequest; response: JResponse); cdecl; //(Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V
    procedure afterError(request: JRequest; response: JResponse; P3: JException); cdecl; //(Lcom/amazonaws/Request;Lcom/amazonaws/Response;Ljava/lang/Exception;)V
    function hashCode: Integer; cdecl; //()I
    function equals(o: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJRequestHandler2Adaptor = class(TJavaGenericImport<JRequestHandler2AdaptorClass, JRequestHandler2Adaptor>) end;

  JAmazonHttpClientClass = interface(JObjectClass)
  ['{59D55CCA-C391-4D07-83CB-62A1B0F503C3}']
    { static Property Methods }

    { static Methods }
    {class} function init(config: JClientConfiguration): JAmazonHttpClient; cdecl; overload; //(Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(config: JClientConfiguration; requestMetricCollector: JRequestMetricCollector): JAmazonHttpClient; cdecl; overload; //Deprecated //(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    {class} function init(config: JClientConfiguration; httpClient: JHttpClient): JAmazonHttpClient; cdecl; overload; //(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V
    {class} function init(config: JClientConfiguration; httpClient: JHttpClient; requestMetricCollector: JRequestMetricCollector): JAmazonHttpClient; cdecl; overload; //Deprecated //(Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;Lcom/amazonaws/metrics/RequestMetricCollector;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/http/AmazonHttpClient')]
  JAmazonHttpClient = interface(JObject)
  ['{48443155-D1C8-45D9-9175-27E94976FC96}']
    { Property Methods }

    { methods }
    function getResponseMetadataForRequest(request: JAmazonWebServiceRequest): JResponseMetadata; cdecl; //Deprecated //(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;
    function execute(request: JRequest; responseHandler: JHttpResponseHandler; errorResponseHandler: JHttpResponseHandler; executionContext: JExecutionContext): JResponse; cdecl; //(Lcom/amazonaws/Request;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/HttpResponseHandler;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/Response;
    procedure shutdown; cdecl; //()V
    function getRequestMetricCollector: JRequestMetricCollector; cdecl; //()Lcom/amazonaws/metrics/RequestMetricCollector;

    { Property }
  end;

  TJAmazonHttpClient = class(TJavaGenericImport<JAmazonHttpClientClass, JAmazonHttpClient>) end;

  JApacheHttpClientClass = interface(JObjectClass)
  ['{D8478E08-D036-4A82-807A-8155C7E7D106}']
    { static Property Methods }

    { static Methods }
    {class} function init(config: JClientConfiguration): JApacheHttpClient; cdecl; //(Lcom/amazonaws/ClientConfiguration;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/http/ApacheHttpClient')]
  JApacheHttpClient = interface(JObject)
  ['{C835FB50-23F2-4374-A74B-071D93CBA7A7}']
    { Property Methods }

    { methods }
    function execute(request: JHttpRequest): JHttpResponse; cdecl; //(Lcom/amazonaws/http/HttpRequest;)Lcom/amazonaws/http/HttpResponse;
    procedure shutdown; cdecl; //()V

    { Property }
  end;

  TJApacheHttpClient = class(TJavaGenericImport<JApacheHttpClientClass, JApacheHttpClient>) end;

  JClientConnectionManagerFactory_HandlerClass = interface(JObjectClass)
  ['{079E6508-87EE-4D02-972B-56E0D268966C}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/http/conn/ClientConnectionManagerFactory$Handler')]
  JClientConnectionManagerFactory_Handler = interface(JObject)
  ['{B5EAC458-4903-4E93-9832-48AD1BC24C0D}']
    { Property Methods }

    { methods }
    function invoke(proxy: JObject; method: JMethod; args: TJavaObjectArray<JObject>): JObject; cdecl; //(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJClientConnectionManagerFactory_Handler = class(TJavaGenericImport<JClientConnectionManagerFactory_HandlerClass, JClientConnectionManagerFactory_Handler>) end;

 
  JClientConnectionRequestFactory_HandlerClass = interface(JObjectClass)
  ['{439DFE80-7C6C-40A8-99C1-B15BFC831AD0}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/http/conn/ClientConnectionRequestFactory$Handler')]
  JClientConnectionRequestFactory_Handler = interface(JObject)
  ['{5120A288-46A4-486E-9987-34282E9B9E47}']
    { Property Methods }

    { methods }
    function invoke(proxy: JObject; method: JMethod; args: TJavaObjectArray<JObject>): JObject; cdecl; //(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJClientConnectionRequestFactory_Handler = class(TJavaGenericImport<JClientConnectionRequestFactory_HandlerClass, JClientConnectionRequestFactory_Handler>) end;

  JClientConnectionRequestFactoryClass = interface(JObjectClass)
  ['{4F2BA5AC-D053-41D0-A44E-24A29035C68C}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/http/conn/ClientConnectionRequestFactory')]
  JClientConnectionRequestFactory = interface(JObject)
  ['{8DF817F6-E532-4B70-8768-D0A8F45EE67E}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJClientConnectionRequestFactory = class(TJavaGenericImport<JClientConnectionRequestFactoryClass, JClientConnectionRequestFactory>) end;

  JWrappedClass = interface(JObjectClass)
  ['{7CA5DCF8-F680-449E-9BC9-244613F47446}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/http/conn/Wrapped')]
  JWrapped = interface(IJavaInstance)
  ['{F0DC4F5D-B311-44C6-A0AF-8590C1465191}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJWrapped = class(TJavaGenericImport<JWrappedClass, JWrapped>) end;

  JDefaultErrorResponseHandlerClass = interface(JObjectClass)
  ['{76B6B5E6-006A-4AC1-8989-8FE008A53C70}']
    { static Property Methods }

    { static Methods }
    {class} function init(unmarshallerList: JList): JDefaultErrorResponseHandler; cdecl; //(Ljava/util/List;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/http/DefaultErrorResponseHandler')]
  JDefaultErrorResponseHandler = interface(JObject)
  ['{AE2AEE73-DA37-4832-9E3A-7E347420FF68}']
    { Property Methods }

    { methods }
    function handle(errorResponse: JHttpResponse): JAmazonServiceException; cdecl; overload; //(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;
    function needsConnectionLeftOpen: Boolean; cdecl; //()Z
    //function handle(P1: JHttpResponse): JObject; cdecl; overload; //(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;

    { Property }
  end;

  TJDefaultErrorResponseHandler = class(TJavaGenericImport<JDefaultErrorResponseHandlerClass, JDefaultErrorResponseHandler>) end;

  JExecutionContextClass = interface(JObjectClass)
  ['{30FA10D4-2086-4D90-A37A-B58484A4582F}']
    { static Property Methods }

    { static Methods }
    {class} function init(isMetricEnabled: Boolean): JExecutionContext; cdecl; overload; //Deprecated //(Z)V
    {class} function init: JExecutionContext; cdecl; overload; //()V
    {class} function init(requestHandler2s: JList; isMetricEnabled: Boolean; awsClient: JAmazonWebServiceClient): JExecutionContext; cdecl; overload; //(Ljava/util/List;ZLcom/amazonaws/AmazonWebServiceClient;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/http/ExecutionContext')]
  JExecutionContext = interface(JObject)
  ['{A2DD24BB-0A30-407F-8580-36203D658845}']
    { Property Methods }

    { methods }
    function getContextUserAgent: JString; cdecl; //()Ljava/lang/String;
    procedure setContextUserAgent(contextUserAgent: JString); cdecl; //(Ljava/lang/String;)V
    function getRequestHandler2s: JList; cdecl; //()Ljava/util/List;
    function getAwsRequestMetrics: JAWSRequestMetrics; cdecl; //Deprecated //()Lcom/amazonaws/util/AWSRequestMetrics;
    procedure setSigner(signer: JSigner); cdecl; //(Lcom/amazonaws/auth/Signer;)V
    function getSignerByURI(uri: JURI): JSigner; cdecl; //(Ljava/net/URI;)Lcom/amazonaws/auth/Signer;
    function getCredentials: JAWSCredentials; cdecl; //()Lcom/amazonaws/auth/AWSCredentials;
    procedure setCredentials(credentials: JAWSCredentials); cdecl; //(Lcom/amazonaws/auth/AWSCredentials;)V

    { Property }
  end;

  TJExecutionContext = class(TJavaGenericImport<JExecutionContextClass, JExecutionContext>) end;

  JHttpClientClass = interface(JObjectClass)
  ['{6A8A11C7-925E-4ED3-8C2A-A0CE787F3636}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/http/HttpClient')]
  JHttpClient = interface(IJavaInstance)
  ['{D8E2E6EB-04F1-4E61-96E0-A5FBF8AF779F}']
    { Property Methods }

    { methods }
    function execute(P1: JHttpRequest): JHttpResponse; cdecl; //(Lcom/amazonaws/http/HttpRequest;)Lcom/amazonaws/http/HttpResponse;
    procedure shutdown; cdecl; //()V

    { Property }
  end;

  TJHttpClient = class(TJavaGenericImport<JHttpClientClass, JHttpClient>) end;

  JHttpClientFactoryClass = interface(JObjectClass)
  ['{71A50314-D03C-4C9B-9EC3-4CE1B2F3F947}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/http/HttpClientFactory')]
  JHttpClientFactory = interface(JObject)
  ['{D94D5647-5077-4489-8EA4-4AA0E4547792}']
    { Property Methods }

    { methods }
    function createHttpClient(config: JClientConfiguration): JHttpClient; cdecl; //(Lcom/amazonaws/ClientConfiguration;)Lorg/apache/http/client/HttpClient;

    { Property }
  end;

  TJHttpClientFactory = class(TJavaGenericImport<JHttpClientFactoryClass, JHttpClientFactory>) end;

  JHttpHeaderClass = interface(JObjectClass)
  ['{84D54E55-5DB9-46E4-B85F-4B40D9779BBF}']
    { static Property Methods }
    {class} function _GetACCEPT: JString; //Ljava/lang/String;
    {class} function _GetAUTHORIZATION: JString; //Ljava/lang/String;
    {class} function _GetCONTENT_LENGTH: JString; //Ljava/lang/String;
    {class} function _GetCONTENT_TYPE: JString; //Ljava/lang/String;
    {class} function _GetDATE: JString; //Ljava/lang/String;
    {class} function _GetEXPECT: JString; //Ljava/lang/String;
    {class} function _GetHOST: JString; //Ljava/lang/String;
    {class} function _GetLOCATION: JString; //Ljava/lang/String;
    {class} function _GetUSER_AGENT: JString; //Ljava/lang/String;
    {class} function _GetX_AMZ_CONTENT_SHA256: JString; //Ljava/lang/String;
    {class} function _GetX_AMZ_DATE: JString; //Ljava/lang/String;
    {class} function _GetX_AMZ_NONCE: JString; //Ljava/lang/String;
    {class} function _GetX_AMZ_SECURITY_TOKEN: JString; //Ljava/lang/String;
    {class} function _GetX_AMZN_AUTHORIZATION: JString; //Ljava/lang/String;

    { static Methods }
    {class} function init: JHttpHeader; cdecl; //()V

    { static Property }
    {class} property ACCEPT: JString read _GetACCEPT;
    {class} property AUTHORIZATION: JString read _GetAUTHORIZATION;
    {class} property CONTENT_LENGTH: JString read _GetCONTENT_LENGTH;
    {class} property CONTENT_TYPE: JString read _GetCONTENT_TYPE;
    {class} property DATE: JString read _GetDATE;
    {class} property EXPECT: JString read _GetEXPECT;
    {class} property HOST: JString read _GetHOST;
    {class} property LOCATION: JString read _GetLOCATION;
    {class} property USER_AGENT: JString read _GetUSER_AGENT;
    {class} property X_AMZ_CONTENT_SHA256: JString read _GetX_AMZ_CONTENT_SHA256;
    {class} property X_AMZ_DATE: JString read _GetX_AMZ_DATE;
    {class} property X_AMZ_NONCE: JString read _GetX_AMZ_NONCE;
    {class} property X_AMZ_SECURITY_TOKEN: JString read _GetX_AMZ_SECURITY_TOKEN;
    {class} property X_AMZN_AUTHORIZATION: JString read _GetX_AMZN_AUTHORIZATION;
  end;

  [JavaSignature('com/amazonaws/http/HttpHeader')]
  JHttpHeader = interface(JObject)
  ['{48B7FA13-FD46-4118-B638-9C783B23A656}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJHttpHeader = class(TJavaGenericImport<JHttpHeaderClass, JHttpHeader>) end;

  JHttpMethodNameClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{0BFDE3F8-9750-4535-94C2-CCB940CA7A84}']
    { static Property Methods }
    {class} function _GetGET: JHttpMethodName; //Lcom/amazonaws/http/HttpMethodName;
    {class} function _GetPOST: JHttpMethodName; //Lcom/amazonaws/http/HttpMethodName;
    {class} function _GetPUT: JHttpMethodName; //Lcom/amazonaws/http/HttpMethodName;
    {class} function _GetDELETE: JHttpMethodName; //Lcom/amazonaws/http/HttpMethodName;
    {class} function _GetHEAD: JHttpMethodName; //Lcom/amazonaws/http/HttpMethodName;
    {class} function _GetPATCH: JHttpMethodName; //Lcom/amazonaws/http/HttpMethodName;

    { static Methods }
    {class} function values: TJavaObjectArray<JHttpMethodName>; cdecl; //()[Lcom/amazonaws/http/HttpMethodName;
    {class} function valueOf(P1: JString): JHttpMethodName; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/http/HttpMethodName;

    { static Property }
    {class} property GET: JHttpMethodName read _GetGET;
    {class} property POST: JHttpMethodName read _GetPOST;
    {class} property PUT: JHttpMethodName read _GetPUT;
    {class} property DELETE: JHttpMethodName read _GetDELETE;
    {class} property HEAD: JHttpMethodName read _GetHEAD;
    {class} property PATCH: JHttpMethodName read _GetPATCH;
  end;

  [JavaSignature('com/amazonaws/http/HttpMethodName')]
  JHttpMethodName = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{386E2AAA-D95D-49EE-A35B-3B8AC71315F5}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJHttpMethodName = class(TJavaGenericImport<JHttpMethodNameClass, JHttpMethodName>) end;

  JHttpRequestClass = interface(JObjectClass)
  ['{FB74C23A-030E-414B-90A2-481636716DF3}']
    { static Property Methods }

    { static Methods }
    {class} function init(method: JString; uri: JURI): JHttpRequest; cdecl; overload; //(Ljava/lang/String;Ljava/net/URI;)V
    {class} function init(method: JString; uri: JURI; headers: JMap; content: JInputStream): JHttpRequest; cdecl; overload; //(Ljava/lang/String;Ljava/net/URI;Ljava/util/Map;Ljava/io/InputStream;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/http/HttpRequest')]
  JHttpRequest = interface(JObject)
  ['{2C38CA50-2CCC-4806-ACEF-DEB3277C1DB2}']
    { Property Methods }

    { methods }
    function getMethod: JString; cdecl; //()Ljava/lang/String;
    function getUri: JURI; cdecl; //()Ljava/net/URI;
    function getHeaders: JMap; cdecl; //()Ljava/util/Map;
    function getContent: JInputStream; cdecl; //()Ljava/io/InputStream;
    function getContentLength: Int64; cdecl; //()J
    function isStreaming: Boolean; cdecl; //()Z
    procedure setStreaming(isStreaming: Boolean); cdecl; //(Z)V

    { Property }
  end;

  TJHttpRequest = class(TJavaGenericImport<JHttpRequestClass, JHttpRequest>) end;

  JHttpRequestFactoryClass = interface(JObjectClass)
  ['{E2175E07-F756-4C90-B20C-39A4F33762E6}']
    { static Property Methods }

    { static Methods }
    {class} function init: JHttpRequestFactory; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/http/HttpRequestFactory')]
  JHttpRequestFactory = interface(JObject)
  ['{4C49E5D3-B965-40B9-AD30-999C1EE2364D}']
    { Property Methods }

    { methods }
    function createHttpRequest(request: JRequest; clientConfiguration: JClientConfiguration; context: JExecutionContext): JHttpRequest; cdecl; //(Lcom/amazonaws/Request;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/ExecutionContext;)Lcom/amazonaws/http/HttpRequest;

    { Property }
  end;

  TJHttpRequestFactory = class(TJavaGenericImport<JHttpRequestFactoryClass, JHttpRequestFactory>) end;

  JHttpResponse_1Class = interface(JObjectClass)
  ['{E1C11836-8EF5-4108-8942-528432B3CC1B}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/http/HttpResponse$1')]
  JHttpResponse_1 = interface(JObject)
  ['{2F89F09E-2FB3-477D-B4E0-1A7C65E8C931}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJHttpResponse_1 = class(TJavaGenericImport<JHttpResponse_1Class, JHttpResponse_1>) end;

  JHttpResponse_BuilderClass = interface(JObjectClass)
  ['{DB619955-8647-42C6-AECE-359F92D4494A}']
    { static Property Methods }

    { static Methods }
    {class} function init: JHttpResponse_Builder; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/http/HttpResponse$Builder')]
  JHttpResponse_Builder = interface(JObject)
  ['{CC2B2176-1E22-4011-B011-230F5BCAEAA7}']
    { Property Methods }

    { methods }
    function statusText(statusText: JString): JHttpResponse_Builder; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/http/HttpResponse$Builder;
    function statusCode(statusCode: Integer): JHttpResponse_Builder; cdecl; //(I)Lcom/amazonaws/http/HttpResponse$Builder;
    function content(content: JInputStream): JHttpResponse_Builder; cdecl; //(Ljava/io/InputStream;)Lcom/amazonaws/http/HttpResponse$Builder;
    function header(key: JString; value: JString): JHttpResponse_Builder; cdecl; //(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/http/HttpResponse$Builder;
    function build: JHttpResponse; cdecl; //()Lcom/amazonaws/http/HttpResponse;

    { Property }
  end;

  TJHttpResponse_Builder = class(TJavaGenericImport<JHttpResponse_BuilderClass, JHttpResponse_Builder>) end;

  JHttpResponseClass = interface(JObjectClass)
  ['{9AA67648-D773-455E-B0A8-7083DDD38859}']
    { static Property Methods }

    { static Methods }
    {class} function builder: JHttpResponse_Builder; cdecl; //()Lcom/amazonaws/http/HttpResponse$Builder;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/http/HttpResponse')]
  JHttpResponse = interface(JObject)
  ['{3D77978D-0422-452E-8B22-2FA427124C3D}']
    { Property Methods }

    { methods }
    function getHeaders: JMap; cdecl; //()Ljava/util/Map;
    function getContent: JInputStream; cdecl; //()Ljava/io/InputStream;
    function getRawContent: JInputStream; cdecl; //()Ljava/io/InputStream;
    function getStatusText: JString; cdecl; //()Ljava/lang/String;
    function getStatusCode: Integer; cdecl; //()I

    { Property }
  end;

  TJHttpResponse = class(TJavaGenericImport<JHttpResponseClass, JHttpResponse>) end;

  JHttpResponseHandlerClass = interface(JObjectClass)
  ['{12164324-250C-43BF-9C7F-31EC2BC831BB}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/http/HttpResponseHandler')]
  JHttpResponseHandler = interface(IJavaInstance)
  ['{73C87901-4778-41AF-BAC7-93884BCD4EB2}']
    { Property Methods }

    { methods }
    function handle(P1: JHttpResponse): JObject; cdecl; //(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    function needsConnectionLeftOpen: Boolean; cdecl; //()Z

    { Property }
  end;

  TJHttpResponseHandler = class(TJavaGenericImport<JHttpResponseHandlerClass, JHttpResponseHandler>) end;

  JJsonErrorResponseHandler_JsonErrorResponseClass = interface(JObjectClass)
  ['{2FDDBAFA-1B09-451D-917F-36FF4AD84737}']
    { static Property Methods }

    { static Methods }
    {class} function fromResponse(statusCode: JHttpResponse): JJsonErrorResponseHandler_JsonErrorResponse; cdecl; //(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/http/JsonErrorResponseHandler$JsonErrorResponse')]
  JJsonErrorResponseHandler_JsonErrorResponse = interface(JObject)
  ['{C8B41DF4-AFF3-4627-B97E-873ABBD609DF}']
    { Property Methods }

    { methods }
    function getStatusCode: Integer; cdecl; //()I
    function getErrorCode: JString; cdecl; //()Ljava/lang/String;
    function getMessage: JString; cdecl; //()Ljava/lang/String;
    function get(key: JString): JString; cdecl; //(Ljava/lang/String;)Ljava/lang/String;

    { Property }
  end;

  TJJsonErrorResponseHandler_JsonErrorResponse = class(TJavaGenericImport<JJsonErrorResponseHandler_JsonErrorResponseClass, JJsonErrorResponseHandler_JsonErrorResponse>) end;

  JJsonErrorResponseHandlerClass = interface(JObjectClass)
  ['{5A8347DA-7CC9-4E3C-AE3D-6A2E459E4ECB}']
    { static Property Methods }

    { static Methods }
    {class} function init(exceptionUnmarshallers: JList): JJsonErrorResponseHandler; cdecl; //(Ljava/util/List;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/http/JsonErrorResponseHandler')]
  JJsonErrorResponseHandler = interface(JObject)
  ['{5D73C1BD-52BC-457F-A3F8-E58F9453F3AE}']
    { Property Methods }

    { methods }
    function handle(response: JHttpResponse): JAmazonServiceException; cdecl; overload; //(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonServiceException;
    function needsConnectionLeftOpen: Boolean; cdecl; //()Z
    //function handle(P1: JHttpResponse): JObject; cdecl; overload; //(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;

    { Property }
  end;

  TJJsonErrorResponseHandler = class(TJavaGenericImport<JJsonErrorResponseHandlerClass, JJsonErrorResponseHandler>) end;

  JStaxResponseHandlerClass = interface(JObjectClass)
  ['{AAC2C5B8-1AD2-4B1D-9783-C1BBE62628F2}']
    { static Property Methods }

    { static Methods }
    {class} function init(responseUnmarshaller: JUnmarshaller): JStaxResponseHandler; cdecl; //(Lcom/amazonaws/transform/Unmarshaller;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/http/StaxResponseHandler')]
  JStaxResponseHandler = interface(JObject)
  ['{AC72A89E-6C21-4D9E-9EED-67DEAD473CE5}']
    { Property Methods }

    { methods }
    function handle(response: JHttpResponse): JAmazonWebServiceResponse; cdecl; overload; //(Lcom/amazonaws/http/HttpResponse;)Lcom/amazonaws/AmazonWebServiceResponse;
    function needsConnectionLeftOpen: Boolean; cdecl; //()Z
    //function handle(P1: JHttpResponse): JObject; cdecl; overload; //(Lcom/amazonaws/http/HttpResponse;)Ljava/lang/Object;

    { Property }
  end;

  TJStaxResponseHandler = class(TJavaGenericImport<JStaxResponseHandlerClass, JStaxResponseHandler>) end;

  JUrlHttpClient_CurlBuilderClass = interface(JObjectClass)
  ['{EE2FF35A-F3D3-4994-A15B-A7D0499256A1}']
    { static Property Methods }

    { static Methods }
    {class} function init(this: JUrlHttpClient; url: JURL): JUrlHttpClient_CurlBuilder; cdecl; //(Lcom/amazonaws/http/UrlHttpClient;Ljava/net/URL;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/http/UrlHttpClient$CurlBuilder')]
  JUrlHttpClient_CurlBuilder = interface(JObject)
  ['{9AC328DA-CAE3-4408-A639-4BCE7802700C}']
    { Property Methods }

    { methods }
    function setMethod(method: JString): JUrlHttpClient_CurlBuilder; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;
    function setHeaders(headers: JMap): JUrlHttpClient_CurlBuilder; cdecl; //(Ljava/util/Map;)Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;
    function setContent(content: JString): JUrlHttpClient_CurlBuilder; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;
    function setContentOverflow(contentOverflow: Boolean): JUrlHttpClient_CurlBuilder; cdecl; //(Z)Lcom/amazonaws/http/UrlHttpClient$CurlBuilder;
    function isValid: Boolean; cdecl; //()Z
    function build: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJUrlHttpClient_CurlBuilder = class(TJavaGenericImport<JUrlHttpClient_CurlBuilderClass, JUrlHttpClient_CurlBuilder>) end;

  JUrlHttpClientClass = interface(JObjectClass)
  ['{201AD035-E7C6-44F4-A276-F65800FDDC4D}']
    { static Property Methods }

    { static Methods }
    {class} function init(config: JClientConfiguration): JUrlHttpClient; cdecl; //(Lcom/amazonaws/ClientConfiguration;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/http/UrlHttpClient')]
  JUrlHttpClient = interface(JObject)
  ['{C2640A5E-B4BF-4394-AB47-622F5CC91003}']
    { Property Methods }

    { methods }
    function execute(request: JHttpRequest): JHttpResponse; cdecl; //(Lcom/amazonaws/http/HttpRequest;)Lcom/amazonaws/http/HttpResponse;
    procedure shutdown; cdecl; //()V

    { Property }
  end;

  TJUrlHttpClient = class(TJavaGenericImport<JUrlHttpClientClass, JUrlHttpClient>) end;

  JHttpMethodClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{965FD754-7827-469B-8813-B0A7F92E2784}']
    { static Property Methods }
    {class} function _GetGET: JHttpMethod; //Lcom/amazonaws/HttpMethod;
    {class} function _GetPOST: JHttpMethod; //Lcom/amazonaws/HttpMethod;
    {class} function _GetPUT: JHttpMethod; //Lcom/amazonaws/HttpMethod;
    {class} function _GetDELETE: JHttpMethod; //Lcom/amazonaws/HttpMethod;
    {class} function _GetHEAD: JHttpMethod; //Lcom/amazonaws/HttpMethod;
    {class} function _GetPATCH: JHttpMethod; //Lcom/amazonaws/HttpMethod;

    { static Methods }
    {class} function values: TJavaObjectArray<JHttpMethod>; cdecl; //()[Lcom/amazonaws/HttpMethod;
    {class} function valueOf(P1: JString): JHttpMethod; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/HttpMethod;

    { static Property }
    {class} property GET: JHttpMethod read _GetGET;
    {class} property POST: JHttpMethod read _GetPOST;
    {class} property PUT: JHttpMethod read _GetPUT;
    {class} property DELETE: JHttpMethod read _GetDELETE;
    {class} property HEAD: JHttpMethod read _GetHEAD;
    {class} property PATCH: JHttpMethod read _GetPATCH;
  end;

  [JavaSignature('com/amazonaws/HttpMethod')]
  JHttpMethod = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{E90B482C-CDC8-4D05-87A2-F07FC1BAD9B6}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJHttpMethod = class(TJavaGenericImport<JHttpMethodClass, JHttpMethod>) end;

  JHostRegexToRegionMappingClass = interface(JObjectClass)
  ['{557B471B-EBBF-4E97-8F48-714E0F95ED03}']
    { static Property Methods }

    { static Methods }
    {class} function init(hostNameRegex: JString; regionName: JString): JHostRegexToRegionMapping; cdecl; //(Ljava/lang/String;Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/internal/config/HostRegexToRegionMapping')]
  JHostRegexToRegionMapping = interface(JObject)
  ['{163F19EA-CF04-4119-8252-BC039694C003}']
    { Property Methods }

    { methods }
    function getHostNameRegex: JString; cdecl; //()Ljava/lang/String;
    function getRegionName: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJHostRegexToRegionMapping = class(TJavaGenericImport<JHostRegexToRegionMappingClass, JHostRegexToRegionMapping>) end;

  JHttpClientConfigClass = interface(JObjectClass)
  ['{85AAD380-3000-49BA-933C-9623B59BCF33}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/internal/config/HttpClientConfig')]
  JHttpClientConfig = interface(JObject)
  ['{89451AD6-822A-4F5A-992E-F17C2A7FE353}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;
    function getServiceName: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJHttpClientConfig = class(TJavaGenericImport<JHttpClientConfigClass, JHttpClientConfig>) end;

  JInternalConfig_FactoryClass = interface(JObjectClass)
  ['{799B4EE0-80B6-4D75-80AC-E9E465B96A92}']
    { static Property Methods }

    { static Methods }
    {class} function init: JInternalConfig_Factory; cdecl; //()V
    {class} function getInternalConfig: JInternalConfig; cdecl; //()Lcom/amazonaws/internal/config/InternalConfig;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/internal/config/InternalConfig$Factory')]
  JInternalConfig_Factory = interface(JObject)
  ['{9177D309-DD6C-4E89-935A-C71B211A4B76}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJInternalConfig_Factory = class(TJavaGenericImport<JInternalConfig_FactoryClass, JInternalConfig_Factory>) end;

  JInternalConfigClass = interface(JObjectClass)
  ['{2ECF8F52-CDD3-4087-9871-D4DF9DB4C71B}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/internal/config/InternalConfig')]
  JInternalConfig = interface(JObject)
  ['{FE20274A-67A6-4827-8E89-733B1B937448}']
    { Property Methods }

    { methods }
    function getSignerConfig(serviceName: JString): JSignerConfig; cdecl; overload; //(Ljava/lang/String;)Lcom/amazonaws/internal/config/SignerConfig;
    function getHttpClientConfig(httpClientName: JString): JHttpClientConfig; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/internal/config/HttpClientConfig;
    function getSignerConfig(serviceName: JString; regionName: JString): JSignerConfig; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/config/SignerConfig;
    function getHostRegexToRegionMappings: JList; cdecl; //()Ljava/util/List;

    { Property }
  end;

  TJInternalConfig = class(TJavaGenericImport<JInternalConfigClass, JInternalConfig>) end;

  JSignerConfigClass = interface(JObjectClass)
  ['{72436780-6610-4CC3-B4CB-7C14D55A915E}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/internal/config/SignerConfig')]
  JSignerConfig = interface(JObject)
  ['{F8E8934E-5DEC-4C2A-A755-8BED2FA474E0}']
    { Property Methods }

    { methods }
    function getSignerType: JString; cdecl; //()Ljava/lang/String;
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJSignerConfig = class(TJavaGenericImport<JSignerConfigClass, JSignerConfig>) end;

  JCRC32MismatchExceptionClass = interface(JIOExceptionClass) // or JObjectClass // SuperSignature: java/io/IOException
  ['{CC48BE56-FB4D-45E4-BC7E-DC094D8FAEE2}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString; t: JThrowable): JCRC32MismatchException; cdecl; overload; //(Ljava/lang/String;Ljava/lang/Throwable;)V
    {class} function init(amessage: JString): JCRC32MismatchException; cdecl; overload; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/internal/CRC32MismatchException')]
  JCRC32MismatchException = interface(JIOException) // or JObject // SuperSignature: java/io/IOException
  ['{F781D451-1945-470A-85F9-2BDD325B7E22}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJCRC32MismatchException = class(TJavaGenericImport<JCRC32MismatchExceptionClass, JCRC32MismatchException>) end;

  JCustomBackoffStrategyClass = interface(JObjectClass)
  ['{A0C715A9-47FD-403E-B270-D07055B8BF88}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCustomBackoffStrategy; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/internal/CustomBackoffStrategy')]
  JCustomBackoffStrategy = interface(JObject)
  ['{C25BD314-A15B-4671-84D2-CB60CD643B48}']
    { Property Methods }

    { methods }
    function getBackoffPeriod(P1: Integer): Integer; cdecl; //(I)I

    { Property }
  end;

  TJCustomBackoffStrategy = class(TJavaGenericImport<JCustomBackoffStrategyClass, JCustomBackoffStrategy>) end;

  JDynamoDBBackoffStrategyClass = interface(JCustomBackoffStrategyClass) // or JObjectClass // SuperSignature: com/amazonaws/internal/CustomBackoffStrategy
  ['{136BE7BC-E65F-4E00-BBFC-534A0741519F}']
    { static Property Methods }
    {class} function _GetDEFAULT: JCustomBackoffStrategy; //Lcom/amazonaws/internal/CustomBackoffStrategy;

    { static Methods }
    {class} function init: JDynamoDBBackoffStrategy; cdecl; //()V

    { static Property }
    {class} property DEFAULT: JCustomBackoffStrategy read _GetDEFAULT;
  end;

  [JavaSignature('com/amazonaws/internal/DynamoDBBackoffStrategy')]
  JDynamoDBBackoffStrategy = interface(JCustomBackoffStrategy) // or JObject // SuperSignature: com/amazonaws/internal/CustomBackoffStrategy
  ['{037AD265-ADD0-4F37-BF31-13E10214512A}']
    { Property Methods }

    { methods }
    function getBackoffPeriod(retries: Integer): Integer; cdecl; //(I)I

    { Property }
  end;

  TJDynamoDBBackoffStrategy = class(TJavaGenericImport<JDynamoDBBackoffStrategyClass, JDynamoDBBackoffStrategy>) end;

  JListWithAutoConstructFlagClass = interface(JArrayListClass) // or JObjectClass // SuperSignature: java/util/ArrayList
  ['{FA10A8E6-CDA7-4EFB-BB01-532F9E184836}']
    { static Property Methods }

    { static Methods }
    {class} function init: JListWithAutoConstructFlag; cdecl; overload; //()V
    {class} function init(c: JCollection): JListWithAutoConstructFlag; cdecl; overload; //(Ljava/util/Collection;)V
    {class} function init(initialCapacity: Integer): JListWithAutoConstructFlag; cdecl; overload; //(I)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/internal/ListWithAutoConstructFlag')]
  JListWithAutoConstructFlag = interface(JArrayList) // or JObject // SuperSignature: java/util/ArrayList
  ['{808A1E24-64AF-4F26-BC06-F3268C423CC0}']
    { Property Methods }

    { methods }
    procedure setAutoConstruct(autoConstruct: Boolean); cdecl; //(Z)V
    function isAutoConstruct: Boolean; cdecl; //()Z

    { Property }
  end;

  TJListWithAutoConstructFlag = class(TJavaGenericImport<JListWithAutoConstructFlagClass, JListWithAutoConstructFlag>) end;

  JMetricAwareClass = interface(JObjectClass)
  ['{9044CEE1-2CAF-41B8-A70F-4BDFF7BB054A}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/internal/MetricAware')]
  JMetricAware = interface(IJavaInstance)
  ['{FC6AD688-2EAD-4E6C-935C-A42066846864}']
    { Property Methods }

    { methods }
    function isMetricActivated: Boolean; cdecl; //()Z

    { Property }
  end;

  TJMetricAware = class(TJavaGenericImport<JMetricAwareClass, JMetricAware>) end;

  JReleasableClass = interface(JObjectClass)
  ['{F4389FA4-5D04-4C75-BD41-60301A09173D}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/internal/Releasable')]
  JReleasable = interface(IJavaInstance)
  ['{89F21CE0-84D4-47AB-BA08-9D9924C073C4}']
    { Property Methods }

    { methods }
    procedure release; cdecl; //()V

    { Property }
  end;

  TJReleasable = class(TJavaGenericImport<JReleasableClass, JReleasable>) end;

  JReleasableInputStreamClass = interface(JSdkFilterInputStreamClass) // or JObjectClass // SuperSignature: com/amazonaws/internal/SdkFilterInputStream
  ['{1A1BCCAF-57EF-474E-BB93-E1220C30E961}']
    { static Property Methods }

    { static Methods }
    {class} function wrap(P1: JInputStream): JReleasableInputStream; cdecl; //(Ljava/io/InputStream;)Lcom/amazonaws/internal/ReleasableInputStream;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/internal/ReleasableInputStream')]
  JReleasableInputStream = interface(JSdkFilterInputStream) // or JObject // SuperSignature: com/amazonaws/internal/SdkFilterInputStream
  ['{528F274B-C1FC-4809-9A85-702763A089E5}']
    { Property Methods }

    { methods }
    procedure close; cdecl; //()V
    procedure release; cdecl; //()V
    function isCloseDisabled: Boolean; cdecl; //()Z
    function disableClose: JReleasableInputStream; cdecl; //()Lcom/amazonaws/internal/ReleasableInputStream;

    { Property }
  end;

  TJReleasableInputStream = class(TJavaGenericImport<JReleasableInputStreamClass, JReleasableInputStream>) end;

  JResettableInputStreamClass = interface(JReleasableInputStreamClass) // or JObjectClass // SuperSignature: com/amazonaws/internal/ReleasableInputStream
  ['{EA3B8732-A48D-43F8-9D93-2A270BD0D0DB}']
    { static Property Methods }

    { static Methods }
    {class} function init(afile: JFile): JResettableInputStream; cdecl; overload; //(Ljava/io/File;)V
    {class} function init(fis: JFileInputStream): JResettableInputStream; cdecl; overload; //(Ljava/io/FileInputStream;)V
    {class} function newResettableInputStream(P1: JFile): JResettableInputStream; cdecl; overload; //(Ljava/io/File;)Lcom/amazonaws/internal/ResettableInputStream;
    {class} function newResettableInputStream(errmsg: JFile; e: JString): JResettableInputStream; cdecl; overload; //(Ljava/io/File;Ljava/lang/String;)Lcom/amazonaws/internal/ResettableInputStream;
    {class} function newResettableInputStream(P1: JFileInputStream): JResettableInputStream; cdecl; overload; //(Ljava/io/FileInputStream;)Lcom/amazonaws/internal/ResettableInputStream;
    {class} function newResettableInputStream(errmsg: JFileInputStream; e: JString): JResettableInputStream; cdecl; overload; //(Ljava/io/FileInputStream;Ljava/lang/String;)Lcom/amazonaws/internal/ResettableInputStream;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/internal/ResettableInputStream')]
  JResettableInputStream = interface(JReleasableInputStream) // or JObject // SuperSignature: com/amazonaws/internal/ReleasableInputStream
  ['{AF122851-DC44-4C48-8AAE-752FC6AE91E1}']
    { Property Methods }

    { methods }
    function markSupported: Boolean; cdecl; //()Z
    procedure mark(_: Integer); cdecl; //(I)V
    procedure reset; cdecl; //()V
    function available: Integer; cdecl; //()I
    function read: Integer; cdecl; overload; //()I
    function skip(n: Int64): Int64; cdecl; //(J)J
    function read(arg0: TJavaArray<Byte>; arg1: Integer; arg2: Integer): Integer; cdecl; overload; //([BII)I
    function getFile: JFile; cdecl; //()Ljava/io/File;

    { Property }
  end;

  TJResettableInputStream = class(TJavaGenericImport<JResettableInputStreamClass, JResettableInputStream>) end;

  JSdkFilterOutputStreamClass = interface(JFilterOutputStreamClass) // or JObjectClass // SuperSignature: java/io/FilterOutputStream
  ['{F68EB96C-5928-4F3F-8A27-11E5BF21B421}']
    { static Property Methods }

    { static Methods }
    {class} function init(aout: JOutputStream): JSdkFilterOutputStream; cdecl; //(Ljava/io/OutputStream;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/internal/SdkFilterOutputStream')]
  JSdkFilterOutputStream = interface(JFilterOutputStream) // or JObject // SuperSignature: java/io/FilterOutputStream
  ['{08894FC8-B4E9-4BAA-8899-13FE3C9E49CA}']
    { Property Methods }

    { methods }
    function isMetricActivated: Boolean; cdecl; //()Z

    { Property }
  end;

  TJSdkFilterOutputStream = class(TJavaGenericImport<JSdkFilterOutputStreamClass, JSdkFilterOutputStream>) end;

  JSdkInputStreamClass = interface(JInputStreamClass) // or JObjectClass // SuperSignature: java/io/InputStream
  ['{4F2BDD19-420D-4ADB-8B1F-84E9808D488D}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSdkInputStream; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/internal/SdkInputStream')]
  JSdkInputStream = interface(JInputStream) // or JObject // SuperSignature: java/io/InputStream
  ['{0C8D07A1-B889-42ED-B66D-E24BE5E366C0}']
    { Property Methods }

    { methods }
    function isMetricActivated: Boolean; cdecl; //Deprecated //()Z

    { Property }
  end;

  TJSdkInputStream = class(TJavaGenericImport<JSdkInputStreamClass, JSdkInputStream>) end;

  JStaticCredentialsProviderClass = interface(JObjectClass)
  ['{867917D5-8947-4822-8DEA-392D00BB843B}']
    { static Property Methods }

    { static Methods }
    {class} function init(credentials: JAWSCredentials): JStaticCredentialsProvider; cdecl; //(Lcom/amazonaws/auth/AWSCredentials;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/internal/StaticCredentialsProvider')]
  JStaticCredentialsProvider = interface(JObject)
  ['{45B48A73-C32D-47F0-A536-C8DC075B188A}']
    { Property Methods }

    { methods }
    function getCredentials: JAWSCredentials; cdecl; //()Lcom/amazonaws/auth/AWSCredentials;
    procedure refresh; cdecl; //()V

    { Property }
  end;

  TJStaticCredentialsProvider = class(TJavaGenericImport<JStaticCredentialsProviderClass, JStaticCredentialsProvider>) end;

  JAwsSdkMetrics_MetricRegistryClass = interface(JObjectClass)
  ['{A55BDB1D-A584-43B3-A291-EB20B318C227}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/metrics/AwsSdkMetrics$MetricRegistry')]
  JAwsSdkMetrics_MetricRegistry = interface(JObject)
  ['{4E401516-26CC-4C1B-8D8F-38A7C59F9D10}']
    { Property Methods }

    { methods }
    function addMetricType(atype: JMetricType): Boolean; cdecl; //(Lcom/amazonaws/metrics/MetricType;)Z
    function addMetricTypes(types: JCollection): Boolean; cdecl; //(Ljava/util/Collection;)Z
    procedure setMetricTypes(types: JCollection); cdecl; //(Ljava/util/Collection;)V
    function removeMetricType(atype: JMetricType): Boolean; cdecl; //(Lcom/amazonaws/metrics/MetricType;)Z
    function predefinedMetrics: JSet; cdecl; //()Ljava/util/Set;

    { Property }
  end;

  TJAwsSdkMetrics_MetricRegistry = class(TJavaGenericImport<JAwsSdkMetrics_MetricRegistryClass, JAwsSdkMetrics_MetricRegistry>) end;

  JAwsSdkMetricsClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{0C8BD6EE-D19F-4A56-8906-D528DB24BB82}']
    { static Property Methods }
    {class} function _GetDEFAULT_METRIC_NAMESPACE: JString; //Ljava/lang/String;
    {class} function _GetUSE_SINGLE_METRIC_NAMESPACE: JString; //Ljava/lang/String;
    {class} function _GetEXCLUDE_MACHINE_METRICS: JString; //Ljava/lang/String;
    {class} function _GetINCLUDE_PER_HOST_METRICS: JString; //Ljava/lang/String;
    {class} function _GetAWS_CREDENTAIL_PROPERTIES_FILE: JString; //Ljava/lang/String;
    {class} function _GetCLOUDWATCH_REGION: JString; //Ljava/lang/String;
    {class} function _GetMETRIC_QUEUE_SIZE: JString; //Ljava/lang/String;
    {class} function _GetQUEUE_POLL_TIMEOUT_MILLI: JString; //Ljava/lang/String;
    {class} function _GetMETRIC_NAME_SPACE: JString; //Ljava/lang/String;
    {class} function _GetJVM_METRIC_NAME: JString; //Ljava/lang/String;
    {class} function _GetHOST_METRIC_NAME: JString; //Ljava/lang/String;

    { static Methods }
    {class} function values: TJavaObjectArray<JAwsSdkMetrics>; cdecl; //()[Lcom/amazonaws/metrics/AwsSdkMetrics;
    {class} function valueOf(P1: JString): JAwsSdkMetrics; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/metrics/AwsSdkMetrics;
    {class} function getRequestMetricCollector: JRequestMetricCollector; cdecl; //()Lcom/amazonaws/metrics/RequestMetricCollector;
    {class} function getServiceMetricCollector: JServiceMetricCollector; cdecl; //()Lcom/amazonaws/metrics/ServiceMetricCollector;
    {class} function getMetricCollector: JMetricCollector; cdecl; //()Lcom/amazonaws/metrics/MetricCollector;
    {class} procedure setMetricCollector(old: JMetricCollector); cdecl; //(Lcom/amazonaws/metrics/MetricCollector;)V
    {class} procedure setMachineMetricsExcluded(P1: Boolean); cdecl; //(Z)V
    {class} procedure setPerHostMetricsIncluded(P1: Boolean); cdecl; //(Z)V
    {class} function isDefaultMetricsEnabled: Boolean; cdecl; //()Z
    {class} function isSingleMetricNamespace: Boolean; cdecl; //()Z
    {class} procedure setSingleMetricNamespace(P1: Boolean); cdecl; //(Z)V
    {class} function isMetricsEnabled: Boolean; cdecl; //()Z
    {class} function isMachineMetricExcluded: Boolean; cdecl; //()Z
    {class} function isPerHostMetricIncluded: Boolean; cdecl; //()Z
    {class} function isPerHostMetricEnabled: Boolean; cdecl; //()Z
    {class} function enableDefaultMetrics: Boolean; cdecl; //()Z
    {class} procedure disableMetrics; cdecl; //()V
    {class} function add(P1: JMetricType): Boolean; cdecl; //(Lcom/amazonaws/metrics/MetricType;)Z
    {class} function addAll(P1: JCollection): Boolean; cdecl; //(Ljava/util/Collection;)Z
    {class} procedure &set(P1: JCollection); cdecl; //(Ljava/util/Collection;)V
    {class} function remove(P1: JMetricType): Boolean; cdecl; //(Lcom/amazonaws/metrics/MetricType;)Z
    {class} function getPredefinedMetrics: JSet; cdecl; //()Ljava/util/Set;
    {class} function getCredentialProvider: JAWSCredentialsProvider; cdecl; //()Lcom/amazonaws/auth/AWSCredentialsProvider;
    {class} procedure setCredentialProvider(P1: JAWSCredentialsProvider); cdecl; //(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    {class} function getRegion: JRegions; cdecl; //()Lcom/amazonaws/regions/Regions;
    {class} procedure setRegion(P1: JRegions); cdecl; //(Lcom/amazonaws/regions/Regions;)V
    {class} function getCredentailFile: JString; cdecl; //()Ljava/lang/String;
    {class} procedure setCredentialFile(P1: JString); cdecl; //(Ljava/lang/String;)V
    {class} function getMetricQueueSize: JInteger; cdecl; //()Ljava/lang/Integer;
    {class} procedure setMetricQueueSize(P1: JInteger); cdecl; //(Ljava/lang/Integer;)V
    {class} function getQueuePollTimeoutMilli: JLong; cdecl; //()Ljava/lang/Long;
    {class} procedure setQueuePollTimeoutMilli(P1: JLong); cdecl; //(Ljava/lang/Long;)V
    {class} function getMetricNameSpace: JString; cdecl; //()Ljava/lang/String;
    {class} procedure setMetricNameSpace(P1: JString); cdecl; //(Ljava/lang/String;)V
    {class} function getJvmMetricName: JString; cdecl; //()Ljava/lang/String;
    {class} procedure setJvmMetricName(P1: JString); cdecl; //(Ljava/lang/String;)V
    {class} function getHostMetricName: JString; cdecl; //()Ljava/lang/String;
    {class} procedure setHostMetricName(P1: JString); cdecl; //(Ljava/lang/String;)V

    { static Property }
    {class} property DEFAULT_METRIC_NAMESPACE: JString read _GetDEFAULT_METRIC_NAMESPACE;
    {class} property USE_SINGLE_METRIC_NAMESPACE: JString read _GetUSE_SINGLE_METRIC_NAMESPACE;
    {class} property EXCLUDE_MACHINE_METRICS: JString read _GetEXCLUDE_MACHINE_METRICS;
    {class} property INCLUDE_PER_HOST_METRICS: JString read _GetINCLUDE_PER_HOST_METRICS;
    {class} property AWS_CREDENTAIL_PROPERTIES_FILE: JString read _GetAWS_CREDENTAIL_PROPERTIES_FILE;
    {class} property CLOUDWATCH_REGION: JString read _GetCLOUDWATCH_REGION;
    {class} property METRIC_QUEUE_SIZE: JString read _GetMETRIC_QUEUE_SIZE;
    {class} property QUEUE_POLL_TIMEOUT_MILLI: JString read _GetQUEUE_POLL_TIMEOUT_MILLI;
    {class} property METRIC_NAME_SPACE: JString read _GetMETRIC_NAME_SPACE;
    {class} property JVM_METRIC_NAME: JString read _GetJVM_METRIC_NAME;
    {class} property HOST_METRIC_NAME: JString read _GetHOST_METRIC_NAME;
  end;

  [JavaSignature('com/amazonaws/metrics/AwsSdkMetrics')]
  JAwsSdkMetrics = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{CB5E505C-5376-41F4-8412-B9F5D69E49CB}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJAwsSdkMetrics = class(TJavaGenericImport<JAwsSdkMetricsClass, JAwsSdkMetrics>) end;

  JByteThroughputProviderClass = interface(JObjectClass)
  ['{F3D00B3E-3D45-4486-892E-1CEDEE2325D0}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/metrics/ByteThroughputProvider')]
  JByteThroughputProvider = interface(JObject)
  ['{ED422DBB-19F9-4B74-9AB4-074AC631203E}']
    { Property Methods }

    { methods }
    function getThroughputMetricType: JThroughputMetricType; cdecl; //()Lcom/amazonaws/metrics/ThroughputMetricType;
    function getByteCount: Integer; cdecl; //()I
    function getDurationNano: Int64; cdecl; //()J
    function getProviderId: JString; cdecl; //()Ljava/lang/String;
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJByteThroughputProvider = class(TJavaGenericImport<JByteThroughputProviderClass, JByteThroughputProvider>) end;

  JServiceMetricTypeGuesserClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{526F1D2D-51BE-4308-8910-3AB5F63DEE5E}']
    { static Property Methods }

    { static Methods }
    {class} function values: TJavaObjectArray<JServiceMetricTypeGuesser>; cdecl; //()[Lcom/amazonaws/metrics/internal/ServiceMetricTypeGuesser;
    {class} function valueOf(P1: JString): JServiceMetricTypeGuesser; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/metrics/internal/ServiceMetricTypeGuesser;
    {class} function guessThroughputMetricType(metricNameSuffix: JRequest; byteCountMetricNameSuffix: JString; orig: JString): JThroughputMetricType; cdecl; //(Lcom/amazonaws/Request;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/metrics/ThroughputMetricType;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/metrics/internal/ServiceMetricTypeGuesser')]
  JServiceMetricTypeGuesser = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{33F533EE-D12D-46F2-88EB-CB0571B8CECF}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJServiceMetricTypeGuesser = class(TJavaGenericImport<JServiceMetricTypeGuesserClass, JServiceMetricTypeGuesser>) end;

  JMetricCollector_FactoryClass = interface(JObjectClass)
  ['{72D180F0-CD45-44FD-8EE9-90AD000CB44A}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/metrics/MetricCollector$Factory')]
  JMetricCollector_Factory = interface(IJavaInstance)
  ['{1CE12C88-D7B0-443F-A12C-72107AB02D95}']
    { Property Methods }

    { methods }
    function getInstance: JMetricCollector; cdecl; //()Lcom/amazonaws/metrics/MetricCollector;

    { Property }
  end;

  TJMetricCollector_Factory = class(TJavaGenericImport<JMetricCollector_FactoryClass, JMetricCollector_Factory>) end;

  JMetricCollectorClass = interface(JObjectClass)
  ['{03E2E271-BDDF-4269-9BE9-642ABFF77167}']
    { static Property Methods }
    {class} function _GetNONE: JMetricCollector; //Lcom/amazonaws/metrics/MetricCollector;

    { static Methods }
    {class} function init: JMetricCollector; cdecl; //()V

    { static Property }
    {class} property NONE: JMetricCollector read _GetNONE;
  end;

  [JavaSignature('com/amazonaws/metrics/MetricCollector')]
  JMetricCollector = interface(JObject)
  ['{21423ED4-B260-4FB2-89B1-15C3B43B8E1B}']
    { Property Methods }

    { methods }
    function start: Boolean; cdecl; //()Z
    function stop: Boolean; cdecl; //()Z
    function isEnabled: Boolean; cdecl; //()Z
    function getRequestMetricCollector: JRequestMetricCollector; cdecl; //()Lcom/amazonaws/metrics/RequestMetricCollector;
    function getServiceMetricCollector: JServiceMetricCollector; cdecl; //()Lcom/amazonaws/metrics/ServiceMetricCollector;

    { Property }
  end;

  TJMetricCollector = class(TJavaGenericImport<JMetricCollectorClass, JMetricCollector>) end;

  JMetricFilterInputStreamClass = interface(JSdkFilterInputStreamClass) // or JObjectClass // SuperSignature: com/amazonaws/internal/SdkFilterInputStream
  ['{77A67FD9-879B-40CD-8F1D-8FAF70E16991}']
    { static Property Methods }

    { static Methods }
    {class} function init(atype: JThroughputMetricType; ain: JInputStream): JMetricFilterInputStream; cdecl; //(Lcom/amazonaws/metrics/ThroughputMetricType;Ljava/io/InputStream;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/metrics/MetricFilterInputStream')]
  JMetricFilterInputStream = interface(JSdkFilterInputStream) // or JObject // SuperSignature: com/amazonaws/internal/SdkFilterInputStream
  ['{29C0B674-D57D-4527-B71D-1F3BBB641FB0}']
    { Property Methods }

    { methods }
    function read(b: TJavaArray<Byte>; off: Integer; len: Integer): Integer; cdecl; //([BII)I
    procedure close; cdecl; //()V
    function isMetricActivated: Boolean; cdecl; //()Z

    { Property }
  end;

  TJMetricFilterInputStream = class(TJavaGenericImport<JMetricFilterInputStreamClass, JMetricFilterInputStream>) end;

  JMetricTypeClass = interface(JObjectClass)
  ['{C81243B4-AED6-4867-B120-1EDE61F6F539}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/metrics/MetricType')]
  JMetricType = interface(IJavaInstance)
  ['{2B85386F-AF73-49EA-BB06-7CB89ADC41C1}']
    { Property Methods }

    { methods }
    function name: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJMetricType = class(TJavaGenericImport<JMetricTypeClass, JMetricType>) end;

  JRequestMetricCollector_FactoryClass = interface(JObjectClass)
  ['{184714BE-C7A1-4872-9708-8BD98B5E199B}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/metrics/RequestMetricCollector$Factory')]
  JRequestMetricCollector_Factory = interface(IJavaInstance)
  ['{8A12EC85-982D-48BB-8EDE-6565800872AD}']
    { Property Methods }

    { methods }
    function getRequestMetricCollector: JRequestMetricCollector; cdecl; //()Lcom/amazonaws/metrics/RequestMetricCollector;

    { Property }
  end;

  TJRequestMetricCollector_Factory = class(TJavaGenericImport<JRequestMetricCollector_FactoryClass, JRequestMetricCollector_Factory>) end;

  JRequestMetricCollectorClass = interface(JObjectClass)
  ['{F78DFFDC-3CB1-4D88-AC03-098B03203365}']
    { static Property Methods }
    {class} function _GetNONE: JRequestMetricCollector; //Lcom/amazonaws/metrics/RequestMetricCollector;

    { static Methods }
    {class} function init: JRequestMetricCollector; cdecl; //()V

    { static Property }
    {class} property NONE: JRequestMetricCollector read _GetNONE;
  end;

  [JavaSignature('com/amazonaws/metrics/RequestMetricCollector')]
  JRequestMetricCollector = interface(JObject)
  ['{6BC96192-0A9D-42B4-B3B5-8E2695317761}']
    { Property Methods }

    { methods }
    procedure collectMetrics(P1: JRequest; P2: JResponse); cdecl; //(Lcom/amazonaws/Request;Lcom/amazonaws/Response;)V
    function isEnabled: Boolean; cdecl; //()Z

    { Property }
  end;

  TJRequestMetricCollector = class(TJavaGenericImport<JRequestMetricCollectorClass, JRequestMetricCollector>) end;

  JRequestMetricTypeClass = interface(JObjectClass)
  ['{87C96438-1946-41CB-89DE-A6CEF6C63D63}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/metrics/RequestMetricType')]
  JRequestMetricType = interface(IJavaInstance)
  ['{641042AA-0A70-4361-B89F-01E570FBB322}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJRequestMetricType = class(TJavaGenericImport<JRequestMetricTypeClass, JRequestMetricType>) end;

  JServiceLatencyProviderClass = interface(JObjectClass)
  ['{4E6C4827-6FF9-4A7B-BFCD-B7DE6312C037}']
    { static Property Methods }

    { static Methods }
    {class} function init(atype: JServiceMetricType): JServiceLatencyProvider; cdecl; //(Lcom/amazonaws/metrics/ServiceMetricType;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/metrics/ServiceLatencyProvider')]
  JServiceLatencyProvider = interface(JObject)
  ['{D9594AC9-DA38-4853-B0A4-87C470F4C8A9}']
    { Property Methods }

    { methods }
    function getServiceMetricType: JServiceMetricType; cdecl; //()Lcom/amazonaws/metrics/ServiceMetricType;
    function endTiming: JServiceLatencyProvider; cdecl; //()Lcom/amazonaws/metrics/ServiceLatencyProvider;
    function getDurationMilli: Double; cdecl; //()D
    function getProviderId: JString; cdecl; //()Ljava/lang/String;
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJServiceLatencyProvider = class(TJavaGenericImport<JServiceLatencyProviderClass, JServiceLatencyProvider>) end;

  JServiceMetricCollector_FactoryClass = interface(JObjectClass)
  ['{2CA27173-A735-4319-8A7D-6DD48D716623}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/metrics/ServiceMetricCollector$Factory')]
  JServiceMetricCollector_Factory = interface(IJavaInstance)
  ['{BCB8F2B4-8FB7-4018-B01E-6271BA81C98C}']
    { Property Methods }

    { methods }
    function getServiceMetricCollector: JServiceMetricCollector; cdecl; //()Lcom/amazonaws/metrics/ServiceMetricCollector;

    { Property }
  end;

  TJServiceMetricCollector_Factory = class(TJavaGenericImport<JServiceMetricCollector_FactoryClass, JServiceMetricCollector_Factory>) end;

  JServiceMetricCollectorClass = interface(JObjectClass)
  ['{F42374DB-51AA-434B-9FDF-A8E8C57E6835}']
    { static Property Methods }
    {class} function _GetNONE: JServiceMetricCollector; //Lcom/amazonaws/metrics/ServiceMetricCollector;

    { static Methods }
    {class} function init: JServiceMetricCollector; cdecl; //()V

    { static Property }
    {class} property NONE: JServiceMetricCollector read _GetNONE;
  end;

  [JavaSignature('com/amazonaws/metrics/ServiceMetricCollector')]
  JServiceMetricCollector = interface(JObject)
  ['{77E2B30C-4499-4480-B6CD-3596EA84B3BC}']
    { Property Methods }

    { methods }
    procedure collectByteThroughput(P1: JByteThroughputProvider); cdecl; //(Lcom/amazonaws/metrics/ByteThroughputProvider;)V
    procedure collectLatency(P1: JServiceLatencyProvider); cdecl; //(Lcom/amazonaws/metrics/ServiceLatencyProvider;)V
    function isEnabled: Boolean; cdecl; //()Z

    { Property }
  end;

  TJServiceMetricCollector = class(TJavaGenericImport<JServiceMetricCollectorClass, JServiceMetricCollector>) end;

  JServiceMetricTypeClass = interface(JObjectClass)
  ['{D6DB0112-08A4-450C-96CB-34D71DBAFCF7}']
    { static Property Methods }
    {class} function _GetUPLOAD_THROUGHPUT_NAME_SUFFIX: JString; //Ljava/lang/String;
    {class} function _GetUPLOAD_BYTE_COUNT_NAME_SUFFIX: JString; //Ljava/lang/String;
    {class} function _GetDOWNLOAD_THROUGHPUT_NAME_SUFFIX: JString; //Ljava/lang/String;
    {class} function _GetDOWNLOAD_BYTE_COUNT_NAME_SUFFIX: JString; //Ljava/lang/String;

    { static Methods }

    { static Property }
    {class} property UPLOAD_THROUGHPUT_NAME_SUFFIX: JString read _GetUPLOAD_THROUGHPUT_NAME_SUFFIX;
    {class} property UPLOAD_BYTE_COUNT_NAME_SUFFIX: JString read _GetUPLOAD_BYTE_COUNT_NAME_SUFFIX;
    {class} property DOWNLOAD_THROUGHPUT_NAME_SUFFIX: JString read _GetDOWNLOAD_THROUGHPUT_NAME_SUFFIX;
    {class} property DOWNLOAD_BYTE_COUNT_NAME_SUFFIX: JString read _GetDOWNLOAD_BYTE_COUNT_NAME_SUFFIX;
  end;

  [JavaSignature('com/amazonaws/metrics/ServiceMetricType')]
  JServiceMetricType = interface(IJavaInstance)
  ['{2C5BE213-32BE-465E-9D61-58E4F4B19D64}']
    { Property Methods }

    { methods }
    function getServiceName: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJServiceMetricType = class(TJavaGenericImport<JServiceMetricTypeClass, JServiceMetricType>) end;

  JSimpleMetricTypeClass = interface(JObjectClass)
  ['{5D0D7CDB-19C8-4305-8A03-CCAE3F829242}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSimpleMetricType; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/metrics/SimpleMetricType')]
  JSimpleMetricType = interface(JObject)
  ['{04223235-4706-4B90-A972-05AA5B79DF91}']
    { Property Methods }

    { methods }
    function name: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(o: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJSimpleMetricType = class(TJavaGenericImport<JSimpleMetricTypeClass, JSimpleMetricType>) end;

  JSimpleServiceMetricTypeClass = interface(JSimpleMetricTypeClass) // or JObjectClass // SuperSignature: com/amazonaws/metrics/SimpleMetricType
  ['{334C7207-EDFC-4999-A01B-0CD272D7D445}']
    { static Property Methods }

    { static Methods }
    {class} function init(name: JString; serviceName: JString): JSimpleServiceMetricType; cdecl; //(Ljava/lang/String;Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/metrics/SimpleServiceMetricType')]
  JSimpleServiceMetricType = interface(JSimpleMetricType) // or JObject // SuperSignature: com/amazonaws/metrics/SimpleMetricType
  ['{89C61618-6376-4943-B13E-4297A95D919E}']
    { Property Methods }

    { methods }
    function name: JString; cdecl; //()Ljava/lang/String;
    function getServiceName: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJSimpleServiceMetricType = class(TJavaGenericImport<JSimpleServiceMetricTypeClass, JSimpleServiceMetricType>) end;

  JSimpleThroughputMetricTypeClass = interface(JSimpleServiceMetricTypeClass) // or JObjectClass // SuperSignature: com/amazonaws/metrics/SimpleServiceMetricType
  ['{3276175B-F51E-434F-88B3-22950996A1A3}']
    { static Property Methods }

    { static Methods }
    {class} function init(name: JString; serviceName: JString; byteCountMetricName: JString): JSimpleThroughputMetricType; cdecl; //(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/metrics/SimpleThroughputMetricType')]
  JSimpleThroughputMetricType = interface(JSimpleServiceMetricType) // or JObject // SuperSignature: com/amazonaws/metrics/SimpleServiceMetricType
  ['{D87C97F1-2566-496F-A6D1-4A050A0DA2A8}']
    { Property Methods }

    { methods }
    function getByteCountMetricType: JServiceMetricType; cdecl; //()Lcom/amazonaws/metrics/ServiceMetricType;

    { Property }
  end;

  TJSimpleThroughputMetricType = class(TJavaGenericImport<JSimpleThroughputMetricTypeClass, JSimpleThroughputMetricType>) end;

  JThroughputMetricTypeClass = interface(JObjectClass)
  ['{69E2CF7A-B01B-4B04-A188-7D6120ED44AC}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/metrics/ThroughputMetricType')]
  JThroughputMetricType = interface(IJavaInstance)
  ['{428A1D58-FD5C-48BA-95E9-09A64EB9FEC5}']
    { Property Methods }

    { methods }
    function getByteCountMetricType: JServiceMetricType; cdecl; //()Lcom/amazonaws/metrics/ServiceMetricType;

    { Property }
  end;

  TJThroughputMetricType = class(TJavaGenericImport<JThroughputMetricTypeClass, JThroughputMetricType>) end;

  JAWSConfigurableClass = interface(JObjectClass)
  ['{CDBEE420-6193-4D40-B44A-5137582F6D05}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/mobile/config/AWSConfigurable')]
  JAWSConfigurable = interface(IJavaInstance)
  ['{D4EFBFD9-CE64-4BC9-AA41-956EBBA5F5E7}']
    { Property Methods }

    { methods }
    function initialize(P1: JContext): JAWSConfigurable; cdecl; overload; //(Landroid/content/Context;)Lcom/amazonaws/mobile/config/AWSConfigurable;
    function initialize(P1: JContext; P2: JAWSConfiguration): JAWSConfigurable; cdecl; overload; //(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;)Lcom/amazonaws/mobile/config/AWSConfigurable;
    function initialize(P1: JContext; P2: JAWSConfiguration; P3: JClientConfiguration): JAWSConfigurable; cdecl; overload; //(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/mobile/config/AWSConfigurable;

    { Property }
  end;

  TJAWSConfigurable = class(TJavaGenericImport<JAWSConfigurableClass, JAWSConfigurable>) end;

  JAWSConfigurationClass = interface(JObjectClass)
  ['{213F760E-03F6-4477-BF3A-B99C09F95CD9}']
    { static Property Methods }

    { static Methods }
    {class} function init(context: JContext): JAWSConfiguration; cdecl; overload; //(Landroid/content/Context;)V
    {class} function init(context: JContext; configResourceId: Integer): JAWSConfiguration; cdecl; overload; //(Landroid/content/Context;I)V
    {class} function init(context: JContext; configResourceId: Integer; configName: JString): JAWSConfiguration; cdecl; overload; //(Landroid/content/Context;ILjava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/mobile/config/AWSConfiguration')]
  JAWSConfiguration = interface(JObject)
  ['{D4C5682F-820B-4B97-B39F-34C5DCD34738}']
    { Property Methods }

    { methods }
    function optJsonObject(key: JString): JJSONObject; cdecl; //(Ljava/lang/String;)Lorg/json/JSONObject;
    function getUserAgent: JString; cdecl; //()Ljava/lang/String;
    procedure setConfiguration(configurationName: JString); cdecl; //(Ljava/lang/String;)V
    function getConfiguration: JString; cdecl; //()Ljava/lang/String;
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJAWSConfiguration = class(TJavaGenericImport<JAWSConfigurationClass, JAWSConfiguration>) end;

  JProtocolClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{D3B68399-3B86-4A82-AC97-C267CCB6FB71}']
    { static Property Methods }
    {class} function _GetHTTP: JProtocol; //Lcom/amazonaws/Protocol;
    {class} function _GetHTTPS: JProtocol; //Lcom/amazonaws/Protocol;

    { static Methods }
    {class} function values: TJavaObjectArray<JProtocol>; cdecl; //()[Lcom/amazonaws/Protocol;
    {class} function valueOf(P1: JString): JProtocol; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/Protocol;

    { static Property }
    {class} property HTTP: JProtocol read _GetHTTP;
    {class} property HTTPS: JProtocol read _GetHTTPS;
  end;

  [JavaSignature('com/amazonaws/Protocol')]
  JProtocol = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{620ADCC1-EC6E-4C0C-9EF8-81BB285E4C98}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJProtocol = class(TJavaGenericImport<JProtocolClass, JProtocol>) end;

  JRegionClass = interface(JObjectClass)
  ['{3E756CA2-FE96-424D-9FF5-FB7656E6F9A8}']
    { static Property Methods }

    { static Methods }
    {class} function getRegion(P1: JRegions): JRegion; cdecl; overload; //(Lcom/amazonaws/regions/Regions;)Lcom/amazonaws/regions/Region;
    {class} function getRegion(P1: JString): JRegion; cdecl; overload; //(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/regions/Region')]
  JRegion = interface(JObject)
  ['{98C98A11-7761-4A3B-B64B-454B5DAE1716}']
    { Property Methods }

    { methods }
    function getName: JString; cdecl; //()Ljava/lang/String;
    function getDomain: JString; cdecl; //()Ljava/lang/String;
    function getServiceEndpoint(serviceName: JString): JString; cdecl; //(Ljava/lang/String;)Ljava/lang/String;
    function isServiceSupported(serviceName: JString): Boolean; cdecl; //(Ljava/lang/String;)Z
    function hasHttpsEndpoint(serviceName: JString): Boolean; cdecl; //(Ljava/lang/String;)Z
    function hasHttpEndpoint(serviceName: JString): Boolean; cdecl; //(Ljava/lang/String;)Z
    function createClient(serviceClass: Jlang_Class; credentials: JAWSCredentialsProvider; config: JClientConfiguration): JAmazonWebServiceClient; cdecl; //(Ljava/lang/Class;Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)Lcom/amazonaws/AmazonWebServiceClient;
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z
    function hashCode: Integer; cdecl; //()I
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJRegion = class(TJavaGenericImport<JRegionClass, JRegion>) end;

  JRegionDefaultsClass = interface(JObjectClass)
  ['{4897C379-AB10-404F-AC97-D43C6D0ED808}']
    { static Property Methods }

    { static Methods }
    {class} function getRegions: JList; cdecl; //()Ljava/util/List;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/regions/RegionDefaults')]
  JRegionDefaults = interface(JObject)
  ['{856E5149-23D4-4FBC-B682-4218D4229F98}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJRegionDefaults = class(TJavaGenericImport<JRegionDefaultsClass, JRegionDefaults>) end;

  JRegionMetadataClass = interface(JObjectClass)
  ['{1DE2145B-D8FB-4E0B-BA30-F770F1C1246B}']
    { static Property Methods }

    { static Methods }
    {class} function init(regions: JList): JRegionMetadata; cdecl; //(Ljava/util/List;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/regions/RegionMetadata')]
  JRegionMetadata = interface(JObject)
  ['{CF5498DF-1E30-4A7A-9063-3AE1AAD3FFE4}']
    { Property Methods }

    { methods }
    function getRegions: JList; cdecl; //()Ljava/util/List;
    function getRegion(name: JString): JRegion; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/regions/Region;
    function getRegionsForService(service: JString): JList; cdecl; //(Ljava/lang/String;)Ljava/util/List;
    function getRegionByEndpoint(endpoint: JString): JRegion; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/regions/Region;
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJRegionMetadata = class(TJavaGenericImport<JRegionMetadataClass, JRegionMetadata>) end;

  JRegionMetadataParserClass = interface(JObjectClass)
  ['{D625D6BD-8AAA-4AC7-914E-84C2A9E48C80}']
    { static Property Methods }

    { static Methods }
    {class} function parse(P1: JInputStream): JRegionMetadata; cdecl; //(Ljava/io/InputStream;)Lcom/amazonaws/regions/RegionMetadata;
    {class} function init: JRegionMetadataParser; cdecl; //Deprecated //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/regions/RegionMetadataParser')]
  JRegionMetadataParser = interface(JObject)
  ['{762AE81E-F1E2-404B-865E-7480D8D5326E}']
    { Property Methods }

    { methods }
    function parseRegionMetadata(input: JInputStream): JList; cdecl; overload; //Deprecated //(Ljava/io/InputStream;)Ljava/util/List;
    function parseRegionMetadata(input: JInputStream; endpointVerification: Boolean): JList; cdecl; overload; //Deprecated //(Ljava/io/InputStream;Z)Ljava/util/List;

    { Property }
  end;

  TJRegionMetadataParser = class(TJavaGenericImport<JRegionMetadataParserClass, JRegionMetadataParser>) end;

  JRegionsClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{B71A6DB8-3BD6-48D2-B733-3E1A62C334BE}']
    { static Property Methods }
    {class} function _GetGovCloud: JRegions; //Lcom/amazonaws/regions/Regions;
    {class} function _GetUS_EAST_1: JRegions; //Lcom/amazonaws/regions/Regions;
    {class} function _GetUS_EAST_2: JRegions; //Lcom/amazonaws/regions/Regions;
    {class} function _GetUS_WEST_1: JRegions; //Lcom/amazonaws/regions/Regions;
    {class} function _GetUS_WEST_2: JRegions; //Lcom/amazonaws/regions/Regions;
    {class} function _GetEU_WEST_1: JRegions; //Lcom/amazonaws/regions/Regions;
    {class} function _GetEU_WEST_2: JRegions; //Lcom/amazonaws/regions/Regions;
    {class} function _GetEU_WEST_3: JRegions; //Lcom/amazonaws/regions/Regions;
    {class} function _GetEU_CENTRAL_1: JRegions; //Lcom/amazonaws/regions/Regions;
    {class} function _GetAP_SOUTH_1: JRegions; //Lcom/amazonaws/regions/Regions;
    {class} function _GetAP_SOUTHEAST_1: JRegions; //Lcom/amazonaws/regions/Regions;
    {class} function _GetAP_SOUTHEAST_2: JRegions; //Lcom/amazonaws/regions/Regions;
    {class} function _GetAP_NORTHEAST_1: JRegions; //Lcom/amazonaws/regions/Regions;
    {class} function _GetAP_NORTHEAST_2: JRegions; //Lcom/amazonaws/regions/Regions;
    {class} function _GetSA_EAST_1: JRegions; //Lcom/amazonaws/regions/Regions;
    {class} function _GetCA_CENTRAL_1: JRegions; //Lcom/amazonaws/regions/Regions;
    {class} function _GetCN_NORTH_1: JRegions; //Lcom/amazonaws/regions/Regions;
    {class} function _GetCN_NORTHWEST_1: JRegions; //Lcom/amazonaws/regions/Regions;
    {class} function _GetDEFAULT_REGION: JRegions; //Lcom/amazonaws/regions/Regions;

    { static Methods }
    {class} function values: TJavaObjectArray<JRegions>; cdecl; //()[Lcom/amazonaws/regions/Regions;
    {class} function valueOf(P1: JString): JRegions; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/regions/Regions;
    {class} function fromName(regionName: JString): JRegions; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/regions/Regions;

    { static Property }
    {class} property GovCloud: JRegions read _GetGovCloud;
    {class} property US_EAST_1: JRegions read _GetUS_EAST_1;
    {class} property US_EAST_2: JRegions read _GetUS_EAST_2;
    {class} property US_WEST_1: JRegions read _GetUS_WEST_1;
    {class} property US_WEST_2: JRegions read _GetUS_WEST_2;
    {class} property EU_WEST_1: JRegions read _GetEU_WEST_1;
    {class} property EU_WEST_2: JRegions read _GetEU_WEST_2;
    {class} property EU_WEST_3: JRegions read _GetEU_WEST_3;
    {class} property EU_CENTRAL_1: JRegions read _GetEU_CENTRAL_1;
    {class} property AP_SOUTH_1: JRegions read _GetAP_SOUTH_1;
    {class} property AP_SOUTHEAST_1: JRegions read _GetAP_SOUTHEAST_1;
    {class} property AP_SOUTHEAST_2: JRegions read _GetAP_SOUTHEAST_2;
    {class} property AP_NORTHEAST_1: JRegions read _GetAP_NORTHEAST_1;
    {class} property AP_NORTHEAST_2: JRegions read _GetAP_NORTHEAST_2;
    {class} property SA_EAST_1: JRegions read _GetSA_EAST_1;
    {class} property CA_CENTRAL_1: JRegions read _GetCA_CENTRAL_1;
    {class} property CN_NORTH_1: JRegions read _GetCN_NORTH_1;
    {class} property CN_NORTHWEST_1: JRegions read _GetCN_NORTHWEST_1;
    {class} property DEFAULT_REGION: JRegions read _GetDEFAULT_REGION;
  end;

  [JavaSignature('com/amazonaws/regions/Regions')]
  JRegions = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{02FC584C-8BFE-4754-938B-E20D9F120AE1}']
    { Property Methods }

    { methods }
    function getName: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJRegions = class(TJavaGenericImport<JRegionsClass, JRegions>) end;

  JRegionUtilsClass = interface(JObjectClass)
  ['{9EF65739-E902-4188-8956-3D76CE032546}']
    { static Property Methods }

    { static Methods }
    {class} function init: JRegionUtils; cdecl;//()V
    {class} function getRegions: JList; cdecl; //()Ljava/util/List;
    {class} function getRegionsForService(regions: JString): JList; cdecl; //(Ljava/lang/String;)Ljava/util/List;
    {class} function getRegion(regionName: JString): JRegion; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/regions/Region;
    {class} function getRegionByEndpoint(targetEndpointUri: JString): JRegion; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/regions/Region;
//    {class} procedure init; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/regions/RegionUtils')]
  JRegionUtils = interface(JObject)
  ['{C3C28161-AF7D-496B-8790-920472DBDFDF}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJRegionUtils = class(TJavaGenericImport<JRegionUtilsClass, JRegionUtils>) end;

  JServiceAbbreviationsClass = interface(JObjectClass)
  ['{131A0500-CAA0-4465-AF2B-6C0ED1A318E2}']
    { static Property Methods }
    {class} function _GetCloudFormation: JString; //Ljava/lang/String;
    {class} function _GetCloudFront: JString; //Ljava/lang/String;
    {class} function _GetCloudSearch: JString; //Ljava/lang/String;
    {class} function _GetCloudWatch: JString; //Ljava/lang/String;
    {class} function _GetDynamodb: JString; //Ljava/lang/String;
    {class} function _GetEC2: JString; //Ljava/lang/String;
    {class} function _GetElasticMapReduce: JString; //Ljava/lang/String;
    {class} function _GetElasticache: JString; //Ljava/lang/String;
    {class} function _GetRDS: JString; //Ljava/lang/String;
    {class} function _GetRoute53: JString; //Ljava/lang/String;
    {class} function _GetEmail: JString; //Ljava/lang/String;
    {class} function _GetSimpleDB: JString; //Ljava/lang/String;
    {class} function _GetSNS: JString; //Ljava/lang/String;
    {class} function _GetSQS: JString; //Ljava/lang/String;
    {class} function _GetS3: JString; //Ljava/lang/String;
    {class} function _GetAutoscaling: JString; //Ljava/lang/String;
    {class} function _GetElasticBeanstalk: JString; //Ljava/lang/String;
    {class} function _GetIAM: JString; //Ljava/lang/String;
    {class} function _GetImportExport: JString; //Ljava/lang/String;
    {class} function _GetSTS: JString; //Ljava/lang/String;
    {class} function _GetStorageGateway: JString; //Ljava/lang/String;
    {class} function _GetElasticLoadbalancing: JString; //Ljava/lang/String;
    {class} function _GetSimpleWorkflow: JString; //Ljava/lang/String;
    {class} function _GetGlacier: JString; //Ljava/lang/String;
    {class} function _GetDirectConnect: JString; //Ljava/lang/String;
    {class} function _GetDataPipeline: JString; //Ljava/lang/String;
    {class} function _GetRedShift: JString; //Ljava/lang/String;
    {class} function _GetOpsworks: JString; //Ljava/lang/String;
    {class} function _GetElasticTranscoder: JString; //Ljava/lang/String;

    { static Methods }
    {class} function init: JServiceAbbreviations; cdecl; //()V

    { static Property }
    {class} property CloudFormation: JString read _GetCloudFormation;
    {class} property CloudFront: JString read _GetCloudFront;
    {class} property CloudSearch: JString read _GetCloudSearch;
    {class} property CloudWatch: JString read _GetCloudWatch;
    {class} property Dynamodb: JString read _GetDynamodb;
    {class} property EC2: JString read _GetEC2;
    {class} property ElasticMapReduce: JString read _GetElasticMapReduce;
    {class} property Elasticache: JString read _GetElasticache;
    {class} property RDS: JString read _GetRDS;
    {class} property Route53: JString read _GetRoute53;
    {class} property Email: JString read _GetEmail;
    {class} property SimpleDB: JString read _GetSimpleDB;
    {class} property SNS: JString read _GetSNS;
    {class} property SQS: JString read _GetSQS;
    {class} property S3: JString read _GetS3;
    {class} property Autoscaling: JString read _GetAutoscaling;
    {class} property ElasticBeanstalk: JString read _GetElasticBeanstalk;
    {class} property IAM: JString read _GetIAM;
    {class} property ImportExport: JString read _GetImportExport;
    {class} property STS: JString read _GetSTS;
    {class} property StorageGateway: JString read _GetStorageGateway;
    {class} property ElasticLoadbalancing: JString read _GetElasticLoadbalancing;
    {class} property SimpleWorkflow: JString read _GetSimpleWorkflow;
    {class} property Glacier: JString read _GetGlacier;
    {class} property DirectConnect: JString read _GetDirectConnect;
    {class} property DataPipeline: JString read _GetDataPipeline;
    {class} property RedShift: JString read _GetRedShift;
    {class} property Opsworks: JString read _GetOpsworks;
    {class} property ElasticTranscoder: JString read _GetElasticTranscoder;
  end;

  [JavaSignature('com/amazonaws/regions/ServiceAbbreviations')]
  JServiceAbbreviations = interface(JObject)
  ['{395910F1-6BB2-48BA-A080-284AB76B0673}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJServiceAbbreviations = class(TJavaGenericImport<JServiceAbbreviationsClass, JServiceAbbreviations>) end;

  JRequestClass = interface(JObjectClass)
  ['{86C2E3E7-C943-457C-A307-E3FA027B0681}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/Request')]
  JRequest = interface(IJavaInstance)
  ['{D0D3DB08-0D75-43E8-AF3B-8CECA9345B94}']
    { Property Methods }

    { methods }
    procedure addHeader(P1: JString; P2: JString); cdecl; //(Ljava/lang/String;Ljava/lang/String;)V
    function getHeaders: JMap; cdecl; //()Ljava/util/Map;
    procedure setHeaders(P1: JMap); cdecl; //(Ljava/util/Map;)V
    procedure setResourcePath(P1: JString); cdecl; //(Ljava/lang/String;)V
    function getResourcePath: JString; cdecl; //()Ljava/lang/String;
    procedure addParameter(P1: JString; P2: JString); cdecl; //(Ljava/lang/String;Ljava/lang/String;)V
    function withParameter(P1: JString; P2: JString): JRequest; cdecl; //(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/Request;
    function getParameters: JMap; cdecl; //()Ljava/util/Map;
    procedure setParameters(P1: JMap); cdecl; //(Ljava/util/Map;)V
    function getEndpoint: JURI; cdecl; //()Ljava/net/URI;
    procedure setEndpoint(P1: JURI); cdecl; //(Ljava/net/URI;)V
    function getHttpMethod: JHttpMethodName; cdecl; //()Lcom/amazonaws/http/HttpMethodName;
    procedure setHttpMethod(P1: JHttpMethodName); cdecl; //(Lcom/amazonaws/http/HttpMethodName;)V
    function getContent: JInputStream; cdecl; //()Ljava/io/InputStream;
    procedure setContent(P1: JInputStream); cdecl; //(Ljava/io/InputStream;)V
    function getServiceName: JString; cdecl; //()Ljava/lang/String;
    function getOriginalRequest: JAmazonWebServiceRequest; cdecl; //()Lcom/amazonaws/AmazonWebServiceRequest;
    function getTimeOffset: Integer; cdecl; //()I
    procedure setTimeOffset(P1: Integer); cdecl; //(I)V
    function withTimeOffset(P1: Integer): JRequest; cdecl; //(I)Lcom/amazonaws/Request;
    function getAWSRequestMetrics: JAWSRequestMetrics; cdecl; //()Lcom/amazonaws/util/AWSRequestMetrics;
    procedure setAWSRequestMetrics(P1: JAWSRequestMetrics); cdecl; //(Lcom/amazonaws/util/AWSRequestMetrics;)V
    function isStreaming: Boolean; cdecl; //()Z
    procedure setStreaming(P1: Boolean); cdecl; //(Z)V

    { Property }
  end;

  TJRequest = class(TJavaGenericImport<JRequestClass, JRequest>) end;

  JRequestClientOptions_MarkerClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{CA0B01E8-046E-4FC4-9537-000B4FF936E2}']
    { static Property Methods }
    {class} function _GetUSER_AGENT: JRequestClientOptions_Marker; //Lcom/amazonaws/RequestClientOptions$Marker;

    { static Methods }
    {class} function values: TJavaObjectArray<JRequestClientOptions_Marker>; cdecl; //()[Lcom/amazonaws/RequestClientOptions$Marker;
    {class} function valueOf(P1: JString): JRequestClientOptions_Marker; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/RequestClientOptions$Marker;

    { static Property }
    {class} property USER_AGENT: JRequestClientOptions_Marker read _GetUSER_AGENT;
  end;

  [JavaSignature('com/amazonaws/RequestClientOptions$Marker')]
  JRequestClientOptions_Marker = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{98FEB08C-CD15-47E6-9E63-15D37806E251}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJRequestClientOptions_Marker = class(TJavaGenericImport<JRequestClientOptions_MarkerClass, JRequestClientOptions_Marker>) end;

  JRequestClientOptionsClass = interface(JObjectClass)
  ['{B9DDA2E2-133A-47DF-9833-B091833A5DAB}']
    { static Property Methods }
    {class} function _GetDEFAULT_STREAM_BUFFER_SIZE: Integer; //I

    { static Methods }
    {class} function init: JRequestClientOptions; cdecl; //()V

    { static Property }
    {class} property DEFAULT_STREAM_BUFFER_SIZE: Integer read _GetDEFAULT_STREAM_BUFFER_SIZE;
  end;

  [JavaSignature('com/amazonaws/RequestClientOptions')]
  JRequestClientOptions = interface(JObject)
  ['{3933218A-74D0-492B-BE4C-B4424E97CF04}']
    { Property Methods }

    { methods }
    function getClientMarker: JString; cdecl; overload; //Deprecated //()Ljava/lang/String;
    function getClientMarker(marker: JRequestClientOptions_Marker): JString; cdecl; overload; //(Lcom/amazonaws/RequestClientOptions$Marker;)Ljava/lang/String;
    procedure putClientMarker(marker: JRequestClientOptions_Marker; value: JString); cdecl; //(Lcom/amazonaws/RequestClientOptions$Marker;Ljava/lang/String;)V
    procedure addClientMarker(clientMarker: JString); cdecl; //Deprecated //(Ljava/lang/String;)V
    procedure appendUserAgent(userAgent: JString); cdecl; //(Ljava/lang/String;)V

    { Property }
  end;

  TJRequestClientOptions = class(TJavaGenericImport<JRequestClientOptionsClass, JRequestClientOptions>) end;

  JResponseClass = interface(JObjectClass)
  ['{41926AAC-0492-449F-B339-B48862B48B06}']
    { static Property Methods }

    { static Methods }
    {class} function init(response: JObject; httpResponse: JHttpResponse): JResponse; cdecl; //(Ljava/lang/Object;Lcom/amazonaws/http/HttpResponse;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/Response')]
  JResponse = interface(JObject)
  ['{42482C74-EAE9-45E5-818E-F16AFC5F5087}']
    { Property Methods }

    { methods }
    function getAwsResponse: JObject; cdecl; //()Ljava/lang/Object;
    function getHttpResponse: JHttpResponse; cdecl; //()Lcom/amazonaws/http/HttpResponse;

    { Property }
  end;

  TJResponse = class(TJavaGenericImport<JResponseClass, JResponse>) end;

  JResponseMetadataClass = interface(JObjectClass)
  ['{84D170D1-01CD-470C-96FA-8334C4782DAA}']
    { static Property Methods }
    {class} function _GetAWS_REQUEST_ID: JString; //Ljava/lang/String;

    { static Methods }
    {class} function init(metadata: JMap): JResponseMetadata; cdecl; overload; //(Ljava/util/Map;)V
    {class} function init(originalResponseMetadata: JResponseMetadata): JResponseMetadata; cdecl; overload; //(Lcom/amazonaws/ResponseMetadata;)V

    { static Property }
    {class} property AWS_REQUEST_ID: JString read _GetAWS_REQUEST_ID;
  end;

  [JavaSignature('com/amazonaws/ResponseMetadata')]
  JResponseMetadata = interface(JObject)
  ['{5E26DD17-0D2B-4291-8A38-8DB3685C760B}']
    { Property Methods }

    { methods }
    function getRequestId: JString; cdecl; //()Ljava/lang/String;
    function toString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJResponseMetadata = class(TJavaGenericImport<JResponseMetadataClass, JResponseMetadata>) end;

  JPredefinedRetryPolicies_1Class = interface(JObjectClass)
  ['{DCAD4BC7-3B8C-4750-94CF-AC251E3FE21C}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/retry/PredefinedRetryPolicies$1')]
  JPredefinedRetryPolicies_1 = interface(JObject)
  ['{EFC040B6-F1FF-4C1D-B43B-71A193FFEF9F}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJPredefinedRetryPolicies_1 = class(TJavaGenericImport<JPredefinedRetryPolicies_1Class, JPredefinedRetryPolicies_1>) end;

  JPredefinedRetryPolicies_SDKDefaultBackoffStrategyClass = interface(JObjectClass)
  ['{927C446D-8C93-449D-AA50-5D93FCA5F5FC}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultBackoffStrategy')]
  JPredefinedRetryPolicies_SDKDefaultBackoffStrategy = interface(JObject)
  ['{302A8C72-95FA-4178-AF67-F7EE1CB9D941}']
    { Property Methods }

    { methods }
    function delayBeforeNextRetry(originalRequest: JAmazonWebServiceRequest; exception: JAmazonClientException; retries: Integer): Int64; cdecl; //(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)J

    { Property }
  end;

  TJPredefinedRetryPolicies_SDKDefaultBackoffStrategy = class(TJavaGenericImport<JPredefinedRetryPolicies_SDKDefaultBackoffStrategyClass, JPredefinedRetryPolicies_SDKDefaultBackoffStrategy>) end;

  JPredefinedRetryPolicies_SDKDefaultRetryConditionClass = interface(JObjectClass)
  ['{2FA8296F-BFA7-4DFA-9853-DD2FCF4648E1}']
    { static Property Methods }

    { static Methods }
    {class} function init: JPredefinedRetryPolicies_SDKDefaultRetryCondition; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/retry/PredefinedRetryPolicies$SDKDefaultRetryCondition')]
  JPredefinedRetryPolicies_SDKDefaultRetryCondition = interface(JObject)
  ['{763B7C53-59B3-4CAC-910C-4FCBE9A0C6C1}']
    { Property Methods }

    { methods }
    function shouldRetry(originalRequest: JAmazonWebServiceRequest; exception: JAmazonClientException; retriesAttempted: Integer): Boolean; cdecl; //(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)Z

    { Property }
  end;

  TJPredefinedRetryPolicies_SDKDefaultRetryCondition = class(TJavaGenericImport<JPredefinedRetryPolicies_SDKDefaultRetryConditionClass, JPredefinedRetryPolicies_SDKDefaultRetryCondition>) end;

  JPredefinedRetryPoliciesClass = interface(JObjectClass)
  ['{63BD264C-ABC3-487E-A73C-13FE3F76B097}']
    { static Property Methods }
    {class} function _GetNO_RETRY_POLICY: JRetryPolicy; //Lcom/amazonaws/retry/RetryPolicy;
    {class} function _GetDEFAULT_MAX_ERROR_RETRY: Integer; //I
    {class} function _GetDEFAULT: JRetryPolicy; //Lcom/amazonaws/retry/RetryPolicy;
    {class} function _GetDYNAMODB_DEFAULT_MAX_ERROR_RETRY: Integer; //I
    {class} function _GetDYNAMODB_DEFAULT: JRetryPolicy; //Lcom/amazonaws/retry/RetryPolicy;
    {class} function _GetDEFAULT_RETRY_CONDITION: JRetryPolicy_RetryCondition; //Lcom/amazonaws/retry/RetryPolicy$RetryCondition;
    {class} function _GetDEFAULT_BACKOFF_STRATEGY: JRetryPolicy_BackoffStrategy; //Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    { static Methods }
    {class} function init: JPredefinedRetryPolicies; cdecl; //()V
    {class} function getDefaultRetryPolicy: JRetryPolicy; cdecl; //()Lcom/amazonaws/retry/RetryPolicy;
    {class} function getDynamoDBDefaultRetryPolicy: JRetryPolicy; cdecl; //()Lcom/amazonaws/retry/RetryPolicy;
    {class} function getDefaultRetryPolicyWithCustomMaxRetries(P1: Integer): JRetryPolicy; cdecl; //(I)Lcom/amazonaws/retry/RetryPolicy;
    {class} function getDynamoDBDefaultRetryPolicyWithCustomMaxRetries(P1: Integer): JRetryPolicy; cdecl; //(I)Lcom/amazonaws/retry/RetryPolicy;

    { static Property }
    {class} property NO_RETRY_POLICY: JRetryPolicy read _GetNO_RETRY_POLICY;
    {class} property DEFAULT_MAX_ERROR_RETRY: Integer read _GetDEFAULT_MAX_ERROR_RETRY;
    {class} property DEFAULT: JRetryPolicy read _GetDEFAULT;
    {class} property DYNAMODB_DEFAULT_MAX_ERROR_RETRY: Integer read _GetDYNAMODB_DEFAULT_MAX_ERROR_RETRY;
    {class} property DYNAMODB_DEFAULT: JRetryPolicy read _GetDYNAMODB_DEFAULT;
    {class} property DEFAULT_RETRY_CONDITION: JRetryPolicy_RetryCondition read _GetDEFAULT_RETRY_CONDITION;
    {class} property DEFAULT_BACKOFF_STRATEGY: JRetryPolicy_BackoffStrategy read _GetDEFAULT_BACKOFF_STRATEGY;
  end;

  [JavaSignature('com/amazonaws/retry/PredefinedRetryPolicies')]
  JPredefinedRetryPolicies = interface(JObject)
  ['{56942424-F5C7-42B1-B88B-84E2F2B8D2CA}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJPredefinedRetryPolicies = class(TJavaGenericImport<JPredefinedRetryPoliciesClass, JPredefinedRetryPolicies>) end;

  JRetryPolicy_BackoffStrategy_1Class = interface(JObjectClass)
  ['{64C2A2D5-53ED-4543-BE50-98967B15DB30}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/retry/RetryPolicy$BackoffStrategy$1')]
  JRetryPolicy_BackoffStrategy_1 = interface(JObject)
  ['{045CA527-F46F-4575-A51E-90910E992014}']
    { Property Methods }

    { methods }
    function delayBeforeNextRetry(originalRequest: JAmazonWebServiceRequest; exception: JAmazonClientException; retriesAttempted: Integer): Int64; cdecl; //(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)J

    { Property }
  end;

  TJRetryPolicy_BackoffStrategy_1 = class(TJavaGenericImport<JRetryPolicy_BackoffStrategy_1Class, JRetryPolicy_BackoffStrategy_1>) end;

  JRetryPolicy_BackoffStrategyClass = interface(JObjectClass)
  ['{CAF41867-A76A-4356-A592-39FAAE1CF9D4}']
    { static Property Methods }
    {class} function _GetNO_DELAY: JRetryPolicy_BackoffStrategy; //Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;

    { static Methods }

    { static Property }
    {class} property NO_DELAY: JRetryPolicy_BackoffStrategy read _GetNO_DELAY;
  end;

  [JavaSignature('com/amazonaws/retry/RetryPolicy$BackoffStrategy')]
  JRetryPolicy_BackoffStrategy = interface(IJavaInstance)
  ['{F0EA3AEC-D762-4E65-A5D5-68CFA2081851}']
    { Property Methods }

    { methods }
    function delayBeforeNextRetry(P1: JAmazonWebServiceRequest; P2: JAmazonClientException; P3: Integer): Int64; cdecl; //(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)J

    { Property }
  end;

  TJRetryPolicy_BackoffStrategy = class(TJavaGenericImport<JRetryPolicy_BackoffStrategyClass, JRetryPolicy_BackoffStrategy>) end;

  JRetryPolicy_RetryCondition_1Class = interface(JObjectClass)
  ['{3C845F4E-5C14-41C6-9B8B-0C5A4C38D7A7}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/retry/RetryPolicy$RetryCondition$1')]
  JRetryPolicy_RetryCondition_1 = interface(JObject)
  ['{C22A23DC-4434-4DEB-ABA2-9DA761A8EA0F}']
    { Property Methods }

    { methods }
    function shouldRetry(originalRequest: JAmazonWebServiceRequest; exception: JAmazonClientException; retriesAttempted: Integer): Boolean; cdecl; //(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)Z

    { Property }
  end;

  TJRetryPolicy_RetryCondition_1 = class(TJavaGenericImport<JRetryPolicy_RetryCondition_1Class, JRetryPolicy_RetryCondition_1>) end;

  JRetryPolicy_RetryConditionClass = interface(JObjectClass)
  ['{E787D8A5-A15F-43F6-A5BC-4DD666AF34E2}']
    { static Property Methods }
    {class} function _GetNO_RETRY_CONDITION: JRetryPolicy_RetryCondition; //Lcom/amazonaws/retry/RetryPolicy$RetryCondition;

    { static Methods }

    { static Property }
    {class} property NO_RETRY_CONDITION: JRetryPolicy_RetryCondition read _GetNO_RETRY_CONDITION;
  end;

  [JavaSignature('com/amazonaws/retry/RetryPolicy$RetryCondition')]
  JRetryPolicy_RetryCondition = interface(IJavaInstance)
  ['{00B39329-7517-49B6-8BB8-B773F081A04C}']
    { Property Methods }

    { methods }
    function shouldRetry(P1: JAmazonWebServiceRequest; P2: JAmazonClientException; P3: Integer): Boolean; cdecl; //(Lcom/amazonaws/AmazonWebServiceRequest;Lcom/amazonaws/AmazonClientException;I)Z

    { Property }
  end;

  TJRetryPolicy_RetryCondition = class(TJavaGenericImport<JRetryPolicy_RetryConditionClass, JRetryPolicy_RetryCondition>) end;

  JRetryPolicyClass = interface(JObjectClass)
  ['{E2B0A5E0-82E7-4DA2-A233-9CFB3C4A96FC}']
    { static Property Methods }

    { static Methods }
    {class} function init(retryCondition: JRetryPolicy_RetryCondition; backoffStrategy: JRetryPolicy_BackoffStrategy; maxErrorRetry: Integer; honorMaxErrorRetryInClientConfig: Boolean): JRetryPolicy; cdecl; //(Lcom/amazonaws/retry/RetryPolicy$RetryCondition;Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;IZ)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/retry/RetryPolicy')]
  JRetryPolicy = interface(JObject)
  ['{1EEC5118-6ECA-402C-AF88-E63251BB87E7}']
    { Property Methods }

    { methods }
    function getRetryCondition: JRetryPolicy_RetryCondition; cdecl; //()Lcom/amazonaws/retry/RetryPolicy$RetryCondition;
    function getBackoffStrategy: JRetryPolicy_BackoffStrategy; cdecl; //()Lcom/amazonaws/retry/RetryPolicy$BackoffStrategy;
    function getMaxErrorRetry: Integer; cdecl; //()I
    function isMaxErrorRetryInClientConfigHonored: Boolean; cdecl; //()Z

    { Property }
  end;

  TJRetryPolicy = class(TJavaGenericImport<JRetryPolicyClass, JRetryPolicy>) end;

  JRetryUtilsClass = interface(JObjectClass)
  ['{15100E11-5513-455A-87BE-6B49D89E70C4}']
    { static Property Methods }

    { static Methods }
    {class} function init: JRetryUtils; cdecl; //()V
    {class} function isThrottlingException(errorCode: JAmazonServiceException): Boolean; cdecl; //(Lcom/amazonaws/AmazonServiceException;)Z
    {class} function isRequestEntityTooLargeException(P1: JAmazonServiceException): Boolean; cdecl; //(Lcom/amazonaws/AmazonServiceException;)Z
    {class} function isClockSkewError(errorCode: JAmazonServiceException): Boolean; cdecl; //(Lcom/amazonaws/AmazonServiceException;)Z
    {class} function isInterrupted(cause: JThrowable): Boolean; cdecl; //(Ljava/lang/Throwable;)Z

    { static Property }
  end;

  [JavaSignature('com/amazonaws/retry/RetryUtils')]
  JRetryUtils = interface(JObject)
  ['{0B333CE6-800D-4BEE-915A-E068A368C3D5}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJRetryUtils = class(TJavaGenericImport<JRetryUtilsClass, JRetryUtils>) end;

  JSDKGlobalConfigurationClass = interface(JObjectClass)
  ['{F4A1A0EF-2C11-4366-9897-FD1D28D932B3}']
    { static Property Methods }
    {class} function _GetDISABLE_CERT_CHECKING_SYSTEM_PROPERTY: JString; //Ljava/lang/String;
    {class} function _GetDEFAULT_METRICS_SYSTEM_PROPERTY: JString; //Ljava/lang/String;
    {class} function _GetACCESS_KEY_SYSTEM_PROPERTY: JString; //Ljava/lang/String;
    {class} function _GetSECRET_KEY_SYSTEM_PROPERTY: JString; //Ljava/lang/String;
    {class} function _GetEC2_METADATA_SERVICE_OVERRIDE_SYSTEM_PROPERTY: JString; //Ljava/lang/String;
    {class} function _GetREGIONS_FILE_OVERRIDE_SYSTEM_PROPERTY: JString; //Ljava/lang/String;
    {class} function _GetDISABLE_REMOTE_REGIONS_FILE_SYSTEM_PROPERTY: JString; //Ljava/lang/String;
    {class} function _GetENABLE_S3_SIGV4_SYSTEM_PROPERTY: JString; //Ljava/lang/String;
    {class} function _GetENFORCE_S3_SIGV4_SYSTEM_PROPERTY: JString; //Ljava/lang/String;
    {class} function _GetDEFAULT_S3_STREAM_BUFFER_SIZE: JString; //Ljava/lang/String;
    {class} function _GetPROFILING_SYSTEM_PROPERTY: JString; //Ljava/lang/String;
    {class} function _GetACCESS_KEY_ENV_VAR: JString; //Ljava/lang/String;
    {class} function _GetALTERNATE_ACCESS_KEY_ENV_VAR: JString; //Ljava/lang/String;
    {class} function _GetSECRET_KEY_ENV_VAR: JString; //Ljava/lang/String;
    {class} function _GetALTERNATE_SECRET_KEY_ENV_VAR: JString; //Ljava/lang/String;
    {class} function _GetAWS_SESSION_TOKEN_ENV_VAR: JString; //Ljava/lang/String;

    { static Methods }
    {class} function init: JSDKGlobalConfiguration; cdecl; //()V
    {class} procedure setGlobalTimeOffset(P1: Integer); cdecl; //(I)V
    {class} function getGlobalTimeOffset: Integer; cdecl; //()I

    { static Property }
    {class} property DISABLE_CERT_CHECKING_SYSTEM_PROPERTY: JString read _GetDISABLE_CERT_CHECKING_SYSTEM_PROPERTY;
    {class} property DEFAULT_METRICS_SYSTEM_PROPERTY: JString read _GetDEFAULT_METRICS_SYSTEM_PROPERTY;
    {class} property ACCESS_KEY_SYSTEM_PROPERTY: JString read _GetACCESS_KEY_SYSTEM_PROPERTY;
    {class} property SECRET_KEY_SYSTEM_PROPERTY: JString read _GetSECRET_KEY_SYSTEM_PROPERTY;
    {class} property EC2_METADATA_SERVICE_OVERRIDE_SYSTEM_PROPERTY: JString read _GetEC2_METADATA_SERVICE_OVERRIDE_SYSTEM_PROPERTY;
    {class} property REGIONS_FILE_OVERRIDE_SYSTEM_PROPERTY: JString read _GetREGIONS_FILE_OVERRIDE_SYSTEM_PROPERTY;
    {class} property DISABLE_REMOTE_REGIONS_FILE_SYSTEM_PROPERTY: JString read _GetDISABLE_REMOTE_REGIONS_FILE_SYSTEM_PROPERTY;
    {class} property ENABLE_S3_SIGV4_SYSTEM_PROPERTY: JString read _GetENABLE_S3_SIGV4_SYSTEM_PROPERTY;
    {class} property ENFORCE_S3_SIGV4_SYSTEM_PROPERTY: JString read _GetENFORCE_S3_SIGV4_SYSTEM_PROPERTY;
    {class} property DEFAULT_S3_STREAM_BUFFER_SIZE: JString read _GetDEFAULT_S3_STREAM_BUFFER_SIZE;
    {class} property PROFILING_SYSTEM_PROPERTY: JString read _GetPROFILING_SYSTEM_PROPERTY;
    {class} property ACCESS_KEY_ENV_VAR: JString read _GetACCESS_KEY_ENV_VAR;
    {class} property ALTERNATE_ACCESS_KEY_ENV_VAR: JString read _GetALTERNATE_ACCESS_KEY_ENV_VAR;
    {class} property SECRET_KEY_ENV_VAR: JString read _GetSECRET_KEY_ENV_VAR;
    {class} property ALTERNATE_SECRET_KEY_ENV_VAR: JString read _GetALTERNATE_SECRET_KEY_ENV_VAR;
    {class} property AWS_SESSION_TOKEN_ENV_VAR: JString read _GetAWS_SESSION_TOKEN_ENV_VAR;
  end;

  [JavaSignature('com/amazonaws/SDKGlobalConfiguration')]
  JSDKGlobalConfiguration = interface(JObject)
  ['{777604D8-5B03-4690-BB92-1530C5CE6D4B}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJSDKGlobalConfiguration = class(TJavaGenericImport<JSDKGlobalConfigurationClass, JSDKGlobalConfiguration>) end;

  JServiceNameFactoryClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{FF41A6E5-7422-46F4-B2B0-63C36CC6F515}']
    { static Property Methods }

    { static Methods }
    {class} function values: TJavaObjectArray<JServiceNameFactory>; cdecl; //()[Lcom/amazonaws/ServiceNameFactory;
    {class} function valueOf(P1: JString): JServiceNameFactory; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/ServiceNameFactory;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/ServiceNameFactory')]
  JServiceNameFactory = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{46DBCF6B-A0E2-43DF-B2D6-98DEFE05D9A8}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJServiceNameFactory = class(TJavaGenericImport<JServiceNameFactoryClass, JServiceNameFactory>) end;

  JAmazonCognitoIdentityClass = interface(JObjectClass)
  ['{BEAEDEFC-6790-4B83-9298-F15F7FCC9ED7}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/AmazonCognitoIdentity')]
  JAmazonCognitoIdentity = interface(IJavaInstance)
  ['{38F55DE0-D881-4784-A0BB-F0F07FC4ECC2}']
    { Property Methods }

    { methods }
    procedure setEndpoint(P1: JString); cdecl; //(Ljava/lang/String;)V
    procedure setRegion(P1: JRegion); cdecl; //(Lcom/amazonaws/regions/Region;)V
    function getCredentialsForIdentity(P1: JGetCredentialsForIdentityRequest): JGetCredentialsForIdentityResult; cdecl; //(Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    function getId(P1: JGetIdRequest): JGetIdResult; cdecl; //(Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;)Lcom/amazonaws/services/cognitoidentity/model/GetIdResult;
    function getOpenIdToken(P1: JGetOpenIdTokenRequest): JGetOpenIdTokenResult; cdecl; //(Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;)Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenResult;
    procedure shutdown; cdecl; //()V
    function getCachedResponseMetadata(P1: JAmazonWebServiceRequest): JResponseMetadata; cdecl; //(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    { Property }
  end;

  TJAmazonCognitoIdentity = class(TJavaGenericImport<JAmazonCognitoIdentityClass, JAmazonCognitoIdentity>) end;

  JAmazonCognitoIdentityClientClass = interface(JAmazonWebServiceClientClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceClient
  ['{D9DD051E-7E29-4B88-8F5A-FA2E8A40C175}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAmazonCognitoIdentityClient; cdecl; overload; //Deprecated //()V
    {class} function init(clientConfiguration: JClientConfiguration): JAmazonCognitoIdentityClient; cdecl; overload; //Deprecated //(Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(awsCredentials: JAWSCredentials): JAmazonCognitoIdentityClient; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentials;)V
    {class} function init(awsCredentials: JAWSCredentials; clientConfiguration: JClientConfiguration): JAmazonCognitoIdentityClient; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(awsCredentialsProvider: JAWSCredentialsProvider): JAmazonCognitoIdentityClient; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    {class} function init(awsCredentialsProvider: JAWSCredentialsProvider; clientConfiguration: JClientConfiguration): JAmazonCognitoIdentityClient; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(awsCredentialsProvider: JAWSCredentialsProvider; clientConfiguration: JClientConfiguration; requestMetricCollector: JRequestMetricCollector): JAmazonCognitoIdentityClient; cdecl; overload; //Deprecated //(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    {class} function init(awsCredentialsProvider: JAWSCredentialsProvider; clientConfiguration: JClientConfiguration; httpClient: JHttpClient): JAmazonCognitoIdentityClient; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/AmazonCognitoIdentityClient')]
  JAmazonCognitoIdentityClient = interface(JAmazonWebServiceClient) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceClient
  ['{05C00DF2-E8F0-4D35-AFB3-F715A39719AD}']
    { Property Methods }

    { methods }
    function getCredentialsForIdentity(getCredentialsForIdentityRequest: JGetCredentialsForIdentityRequest): JGetCredentialsForIdentityResult; cdecl; //(Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    function getId(getIdRequest: JGetIdRequest): JGetIdResult; cdecl; //(Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;)Lcom/amazonaws/services/cognitoidentity/model/GetIdResult;
    function getOpenIdToken(getOpenIdTokenRequest: JGetOpenIdTokenRequest): JGetOpenIdTokenResult; cdecl; //(Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;)Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenResult;
    function getCachedResponseMetadata(request: JAmazonWebServiceRequest): JResponseMetadata; cdecl; //Deprecated //(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    { Property }
  end;

  TJAmazonCognitoIdentityClient = class(TJavaGenericImport<JAmazonCognitoIdentityClientClass, JAmazonCognitoIdentityClient>) end;

  JCredentialsClass = interface(JObjectClass)
  ['{7B2D2630-FC76-4947-B348-21D6C664A477}']
    { static Property Methods }

    { static Methods }
    {class} function init: JCredentials; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/model/Credentials')]
  JCredentials = interface(JObject)
  ['{0EABAD3A-41DB-46B2-9E73-98D002345667}']
    { Property Methods }

    { methods }
    function getAccessKeyId: JString; cdecl; //()Ljava/lang/String;
    procedure setAccessKeyId(accessKeyId: JString); cdecl; //(Ljava/lang/String;)V
    function withAccessKeyId(accessKeyId: JString): JCredentials; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/Credentials;
    function getSecretKey: JString; cdecl; //()Ljava/lang/String;
    procedure setSecretKey(secretKey: JString); cdecl; //(Ljava/lang/String;)V
    function withSecretKey(secretKey: JString): JCredentials; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/Credentials;
    function getSessionToken: JString; cdecl; //()Ljava/lang/String;
    procedure setSessionToken(sessionToken: JString); cdecl; //(Ljava/lang/String;)V
    function withSessionToken(sessionToken: JString): JCredentials; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/Credentials;
    function getExpiration: JDate; cdecl; //()Ljava/util/Date;
    procedure setExpiration(expiration: JDate); cdecl; //(Ljava/util/Date;)V
    function withExpiration(expiration: JDate): JCredentials; cdecl; //(Ljava/util/Date;)Lcom/amazonaws/services/cognitoidentity/model/Credentials;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJCredentials = class(TJavaGenericImport<JCredentialsClass, JCredentials>) end;

  JExternalServiceExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{74FFCE86-1933-4D7C-8071-CE6F2E16ED1F}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JExternalServiceException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/model/ExternalServiceException')]
  JExternalServiceException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{CCCBFA20-9C2B-49F9-A5EA-A9413C519568}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJExternalServiceException = class(TJavaGenericImport<JExternalServiceExceptionClass, JExternalServiceException>) end;

  JGetCredentialsForIdentityRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{189C3457-E735-4508-9DB8-D820EB452A45}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetCredentialsForIdentityRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest')]
  JGetCredentialsForIdentityRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{84641F8E-6DFE-480E-B57A-043A70C6AC01}']
    { Property Methods }

    { methods }
    function getIdentityId: JString; cdecl; //()Ljava/lang/String;
    procedure setIdentityId(identityId: JString); cdecl; //(Ljava/lang/String;)V
    function withIdentityId(identityId: JString): JGetCredentialsForIdentityRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;
    function getLogins: JMap; cdecl; //()Ljava/util/Map;
    procedure setLogins(logins: JMap); cdecl; //(Ljava/util/Map;)V
    function withLogins(logins: JMap): JGetCredentialsForIdentityRequest; cdecl; //(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;
    function addLoginsEntry(key: JString; value: JString): JGetCredentialsForIdentityRequest; cdecl; //(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;
    function clearLoginsEntries: JGetCredentialsForIdentityRequest; cdecl; //()Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;
    function getCustomRoleArn: JString; cdecl; //()Ljava/lang/String;
    procedure setCustomRoleArn(customRoleArn: JString); cdecl; //(Ljava/lang/String;)V
    function withCustomRoleArn(customRoleArn: JString): JGetCredentialsForIdentityRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJGetCredentialsForIdentityRequest = class(TJavaGenericImport<JGetCredentialsForIdentityRequestClass, JGetCredentialsForIdentityRequest>) end;

  JGetCredentialsForIdentityResultClass = interface(JObjectClass)
  ['{B51CF5C1-D66B-46CD-A9C7-E41C9E96612B}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetCredentialsForIdentityResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult')]
  JGetCredentialsForIdentityResult = interface(JObject)
  ['{B21BA588-E589-44A3-8C02-41D3BCFC4FBB}']
    { Property Methods }

    { methods }
    function getIdentityId: JString; cdecl; //()Ljava/lang/String;
    procedure setIdentityId(identityId: JString); cdecl; //(Ljava/lang/String;)V
    function withIdentityId(identityId: JString): JGetCredentialsForIdentityResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    function getCredentials: JCredentials; cdecl; //()Lcom/amazonaws/services/cognitoidentity/model/Credentials;
    procedure setCredentials(credentials: JCredentials); cdecl; //(Lcom/amazonaws/services/cognitoidentity/model/Credentials;)V
    function withCredentials(credentials: JCredentials): JGetCredentialsForIdentityResult; cdecl; //(Lcom/amazonaws/services/cognitoidentity/model/Credentials;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJGetCredentialsForIdentityResult = class(TJavaGenericImport<JGetCredentialsForIdentityResultClass, JGetCredentialsForIdentityResult>) end;

  JGetIdRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{7FF543AC-9149-45C8-AB60-5D72AB3AAEBC}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetIdRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/model/GetIdRequest')]
  JGetIdRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{ABC68248-E32C-4999-88B2-EEC22B84BA83}']
    { Property Methods }

    { methods }
    function getAccountId: JString; cdecl; //()Ljava/lang/String;
    procedure setAccountId(accountId: JString); cdecl; //(Ljava/lang/String;)V
    function withAccountId(accountId: JString): JGetIdRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;
    function getIdentityPoolId: JString; cdecl; //()Ljava/lang/String;
    procedure setIdentityPoolId(identityPoolId: JString); cdecl; //(Ljava/lang/String;)V
    function withIdentityPoolId(identityPoolId: JString): JGetIdRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;
    function getLogins: JMap; cdecl; //()Ljava/util/Map;
    procedure setLogins(logins: JMap); cdecl; //(Ljava/util/Map;)V
    function withLogins(logins: JMap): JGetIdRequest; cdecl; //(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;
    function addLoginsEntry(key: JString; value: JString): JGetIdRequest; cdecl; //(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;
    function clearLoginsEntries: JGetIdRequest; cdecl; //()Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJGetIdRequest = class(TJavaGenericImport<JGetIdRequestClass, JGetIdRequest>) end;

  JGetIdResultClass = interface(JObjectClass)
  ['{97C5AF0B-2834-4BC9-B178-CC48A6CFE4B2}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetIdResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/model/GetIdResult')]
  JGetIdResult = interface(JObject)
  ['{04655668-3411-4F95-8871-9A939A70140B}']
    { Property Methods }

    { methods }
    function getIdentityId: JString; cdecl; //()Ljava/lang/String;
    procedure setIdentityId(identityId: JString); cdecl; //(Ljava/lang/String;)V
    function withIdentityId(identityId: JString): JGetIdResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetIdResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJGetIdResult = class(TJavaGenericImport<JGetIdResultClass, JGetIdResult>) end;

  JGetOpenIdTokenRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{8163576D-0ABF-44B0-A7B7-9A233C2B2DF8}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetOpenIdTokenRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest')]
  JGetOpenIdTokenRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{79D3C3B1-DE9E-4D63-9547-E07BFAA3F621}']
    { Property Methods }

    { methods }
    function getIdentityId: JString; cdecl; //()Ljava/lang/String;
    procedure setIdentityId(identityId: JString); cdecl; //(Ljava/lang/String;)V
    function withIdentityId(identityId: JString): JGetOpenIdTokenRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;
    function getLogins: JMap; cdecl; //()Ljava/util/Map;
    procedure setLogins(logins: JMap); cdecl; //(Ljava/util/Map;)V
    function withLogins(logins: JMap): JGetOpenIdTokenRequest; cdecl; //(Ljava/util/Map;)Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;
    function addLoginsEntry(key: JString; value: JString): JGetOpenIdTokenRequest; cdecl; //(Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;
    function clearLoginsEntries: JGetOpenIdTokenRequest; cdecl; //()Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJGetOpenIdTokenRequest = class(TJavaGenericImport<JGetOpenIdTokenRequestClass, JGetOpenIdTokenRequest>) end;

  JGetOpenIdTokenResultClass = interface(JObjectClass)
  ['{FC04C0A6-CEE8-4E5C-A2FC-E62ADF5823B7}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetOpenIdTokenResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/model/GetOpenIdTokenResult')]
  JGetOpenIdTokenResult = interface(JObject)
  ['{52330E59-A14C-4848-9F84-685A0B4204F8}']
    { Property Methods }

    { methods }
    function getIdentityId: JString; cdecl; //()Ljava/lang/String;
    procedure setIdentityId(identityId: JString); cdecl; //(Ljava/lang/String;)V
    function withIdentityId(identityId: JString): JGetOpenIdTokenResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenResult;
    function getToken: JString; cdecl; //()Ljava/lang/String;
    procedure setToken(token: JString); cdecl; //(Ljava/lang/String;)V
    function withToken(token: JString): JGetOpenIdTokenResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJGetOpenIdTokenResult = class(TJavaGenericImport<JGetOpenIdTokenResultClass, JGetOpenIdTokenResult>) end;

  JInternalErrorExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{746A5961-65AA-4C45-86F9-36B10298C9E7}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JInternalErrorException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/model/InternalErrorException')]
  JInternalErrorException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{2E3ADAF3-B9AF-4A51-861B-BB664A16A3B2}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJInternalErrorException = class(TJavaGenericImport<JInternalErrorExceptionClass, JInternalErrorException>) end;

  JInvalidIdentityPoolConfigurationExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{2C3E33FF-F5F7-4F97-A9CC-4DBF9660DFE3}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JInvalidIdentityPoolConfigurationException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/model/InvalidIdentityPoolConfigurationException')]
  JInvalidIdentityPoolConfigurationException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{770EEA3C-9A99-490D-B25B-C5459D5FE63F}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJInvalidIdentityPoolConfigurationException = class(TJavaGenericImport<JInvalidIdentityPoolConfigurationExceptionClass, JInvalidIdentityPoolConfigurationException>) end;

  JInvalidParameterExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{0FB28009-E7A0-4A92-88A9-E164358BF1E9}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JInvalidParameterException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/model/InvalidParameterException')]
  JInvalidParameterException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{1B92B28C-C7B2-4842-9644-832FBE3EA431}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJInvalidParameterException = class(TJavaGenericImport<JInvalidParameterExceptionClass, JInvalidParameterException>) end;

  JLimitExceededExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{F8588567-C499-4305-A2C9-156EABC95069}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JLimitExceededException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/model/LimitExceededException')]
  JLimitExceededException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{9FB26FF9-2342-4C9A-9E28-120AE6CB79D9}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJLimitExceededException = class(TJavaGenericImport<JLimitExceededExceptionClass, JLimitExceededException>) end;

  JNotAuthorizedExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{F0103197-1DE5-4A27-837A-1D953F97128D}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JNotAuthorizedException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/model/NotAuthorizedException')]
  JNotAuthorizedException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{47AB31B0-B8D9-45A0-9D34-6010119CBFE0}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJNotAuthorizedException = class(TJavaGenericImport<JNotAuthorizedExceptionClass, JNotAuthorizedException>) end;

  JResourceConflictExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{7B337F3E-5E5D-4458-A5CA-2C301A48BF1E}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JResourceConflictException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/model/ResourceConflictException')]
  JResourceConflictException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{63E49BCE-BF2A-4468-A226-5A074FC4DFD3}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJResourceConflictException = class(TJavaGenericImport<JResourceConflictExceptionClass, JResourceConflictException>) end;

  JResourceNotFoundExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{4FAE7F48-BB36-41AD-A5B8-E4E40DF9C226}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JResourceNotFoundException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/model/ResourceNotFoundException')]
  JResourceNotFoundException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{D55E3589-176D-4CA0-BBD7-B9704A62BBC3}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJResourceNotFoundException = class(TJavaGenericImport<JResourceNotFoundExceptionClass, JResourceNotFoundException>) end;

  JTooManyRequestsExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{B8C0155A-00CC-49BA-AADA-BA272E7D58C0}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JTooManyRequestsException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/model/TooManyRequestsException')]
  JTooManyRequestsException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{D2C50974-B711-40AE-89AA-4FFC9FBFEC80}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJTooManyRequestsException = class(TJavaGenericImport<JTooManyRequestsExceptionClass, JTooManyRequestsException>) end;

  JCredentialsJsonMarshallerClass = interface(JObjectClass)
  ['{0805053A-5BF1-4688-A1BB-E18BF0245DB1}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JCredentialsJsonMarshaller; cdecl; //()Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonMarshaller')]
  JCredentialsJsonMarshaller = interface(JObject)
  ['{8EAF3189-8510-4620-98FE-90979EA7FB24}']
    { Property Methods }

    { methods }
    procedure marshall(credentials: JCredentials; jsonWriter: JAwsJsonWriter); cdecl; //(Lcom/amazonaws/services/cognitoidentity/model/Credentials;Lcom/amazonaws/util/json/AwsJsonWriter;)V

    { Property }
  end;

  TJCredentialsJsonMarshaller = class(TJavaGenericImport<JCredentialsJsonMarshallerClass, JCredentialsJsonMarshaller>) end;

  JCredentialsJsonUnmarshallerClass = interface(JObjectClass)
  ['{626EEAD8-0662-4EE5-9B07-FA15B4D2973D}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JCredentialsJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/model/transform/CredentialsJsonUnmarshaller')]
  JCredentialsJsonUnmarshaller = interface(JObject)
  ['{B1A8C435-3412-46B6-B19F-B1705DAC9A71}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JCredentials; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentity/model/Credentials;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJCredentialsJsonUnmarshaller = class(TJavaGenericImport<JCredentialsJsonUnmarshallerClass, JCredentialsJsonUnmarshaller>) end;


  JGetCredentialsForIdentityRequestMarshallerClass = interface(JObjectClass)
  ['{B06D3FA9-E500-401F-894A-D999198B7586}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetCredentialsForIdentityRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityRequestMarshaller')]
  JGetCredentialsForIdentityRequestMarshaller = interface(JObject)
  ['{08699887-FEBC-4B8F-9DF0-CFFFD1F6E6D0}']
    { Property Methods }

    { methods }
    function marshall(getCredentialsForIdentityRequest: JGetCredentialsForIdentityRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJGetCredentialsForIdentityRequestMarshaller = class(TJavaGenericImport<JGetCredentialsForIdentityRequestMarshallerClass, JGetCredentialsForIdentityRequestMarshaller>) end;

  JGetCredentialsForIdentityResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{614E5E82-9C7A-4C63-AF75-2E07CBD6E0D0}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetCredentialsForIdentityResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JGetCredentialsForIdentityResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/model/transform/GetCredentialsForIdentityResultJsonUnmarshaller')]
  JGetCredentialsForIdentityResultJsonUnmarshaller = interface(JObject)
  ['{C30173E8-1C0F-4F56-8BF7-4157B3DF2192}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JGetCredentialsForIdentityResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentity/model/GetCredentialsForIdentityResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJGetCredentialsForIdentityResultJsonUnmarshaller = class(TJavaGenericImport<JGetCredentialsForIdentityResultJsonUnmarshallerClass, JGetCredentialsForIdentityResultJsonUnmarshaller>) end;

  JGetIdRequestMarshallerClass = interface(JObjectClass)
  ['{88A6AA5D-0131-4077-8007-ACC3E6B87E44}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetIdRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/model/transform/GetIdRequestMarshaller')]
  JGetIdRequestMarshaller = interface(JObject)
  ['{042461F1-408A-4851-82B0-CDA342DB258E}']
    { Property Methods }

    { methods }
    function marshall(getIdRequest: JGetIdRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/cognitoidentity/model/GetIdRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJGetIdRequestMarshaller = class(TJavaGenericImport<JGetIdRequestMarshallerClass, JGetIdRequestMarshaller>) end;

  JGetIdResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{D20FA867-B254-4E3E-837D-8E9BA5B9398C}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetIdResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JGetIdResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/cognitoidentity/model/transform/GetIdResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/model/transform/GetIdResultJsonUnmarshaller')]
  JGetIdResultJsonUnmarshaller = interface(JObject)
  ['{C2F7533F-A182-40F1-90EE-7FDF14AF2F09}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JGetIdResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentity/model/GetIdResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJGetIdResultJsonUnmarshaller = class(TJavaGenericImport<JGetIdResultJsonUnmarshallerClass, JGetIdResultJsonUnmarshaller>) end;

  JGetOpenIdTokenRequestMarshallerClass = interface(JObjectClass)
  ['{20956B39-57F0-4DD6-BEF8-52757DC74419}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetOpenIdTokenRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenRequestMarshaller')]
  JGetOpenIdTokenRequestMarshaller = interface(JObject)
  ['{6B6AD6F3-5617-4D22-B4C6-A05C20EAD420}']
    { Property Methods }

    { methods }
    function marshall(getOpenIdTokenRequest: JGetOpenIdTokenRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJGetOpenIdTokenRequestMarshaller = class(TJavaGenericImport<JGetOpenIdTokenRequestMarshallerClass, JGetOpenIdTokenRequestMarshaller>) end;

  JGetOpenIdTokenResultJsonUnmarshallerClass = interface(JObjectClass)
  ['{34DC9DAD-EFA4-4463-90CE-BE788373FC9D}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetOpenIdTokenResultJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JGetOpenIdTokenResultJsonUnmarshaller; cdecl; //()Lcom/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenResultJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/cognitoidentity/model/transform/GetOpenIdTokenResultJsonUnmarshaller')]
  JGetOpenIdTokenResultJsonUnmarshaller = interface(JObject)
  ['{7280BC1E-5E32-43C1-B34E-07EA07365E27}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JGetOpenIdTokenResult; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Lcom/amazonaws/services/cognitoidentity/model/GetOpenIdTokenResult;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJGetOpenIdTokenResultJsonUnmarshaller = class(TJavaGenericImport<JGetOpenIdTokenResultJsonUnmarshallerClass, JGetOpenIdTokenResultJsonUnmarshaller>) end;

  JAWSSecurityTokenServiceClass = interface(JObjectClass)
  ['{10D00205-9C2D-42BB-A49E-59D055A05F08}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/AWSSecurityTokenService')]
  JAWSSecurityTokenService = interface(IJavaInstance)
  ['{559CC132-2B30-4AA3-9C55-BEDCC194D8D4}']
    { Property Methods }

    { methods }
    procedure setEndpoint(P1: JString); cdecl; //(Ljava/lang/String;)V
    procedure setRegion(P1: JRegion); cdecl; //(Lcom/amazonaws/regions/Region;)V
    function assumeRole(P1: JAssumeRoleRequest): JAssumeRoleResult; cdecl; //(Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;
    function assumeRoleWithWebIdentity(P1: JAssumeRoleWithWebIdentityRequest): JAssumeRoleWithWebIdentityResult; cdecl; //(Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;
    function getCallerIdentity(P1: JGetCallerIdentityRequest): JGetCallerIdentityResult; cdecl; overload; //(Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityRequest;)Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;
    function getFederationToken(P1: JGetFederationTokenRequest): JGetFederationTokenResult; cdecl; //(Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;)Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;
    function getSessionToken(P1: JGetSessionTokenRequest): JGetSessionTokenResult; cdecl; overload; //(Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;
    function getSessionToken: JGetSessionTokenResult; cdecl; overload; //()Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;
    function getCallerIdentity: JGetCallerIdentityResult; cdecl; overload; //()Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;
    procedure shutdown; cdecl; //()V
    function getCachedResponseMetadata(P1: JAmazonWebServiceRequest): JResponseMetadata; cdecl; //(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    { Property }
  end;

  TJAWSSecurityTokenService = class(TJavaGenericImport<JAWSSecurityTokenServiceClass, JAWSSecurityTokenService>) end;

  JAWSSecurityTokenServiceClientClass = interface(JAmazonWebServiceClientClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceClient
  ['{E9123F8F-1D6E-494E-B48C-E837DFBBE490}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAWSSecurityTokenServiceClient; cdecl; overload; //Deprecated //()V
    {class} function init(clientConfiguration: JClientConfiguration): JAWSSecurityTokenServiceClient; cdecl; overload; //Deprecated //(Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(awsCredentials: JAWSCredentials): JAWSSecurityTokenServiceClient; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentials;)V
    {class} function init(awsCredentials: JAWSCredentials; clientConfiguration: JClientConfiguration): JAWSSecurityTokenServiceClient; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentials;Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(awsCredentialsProvider: JAWSCredentialsProvider): JAWSSecurityTokenServiceClient; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentialsProvider;)V
    {class} function init(awsCredentialsProvider: JAWSCredentialsProvider; clientConfiguration: JClientConfiguration): JAWSSecurityTokenServiceClient; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;)V
    {class} function init(awsCredentialsProvider: JAWSCredentialsProvider; clientConfiguration: JClientConfiguration; requestMetricCollector: JRequestMetricCollector): JAWSSecurityTokenServiceClient; cdecl; overload; //Deprecated //(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/metrics/RequestMetricCollector;)V
    {class} function init(awsCredentialsProvider: JAWSCredentialsProvider; clientConfiguration: JClientConfiguration; httpClient: JHttpClient): JAWSSecurityTokenServiceClient; cdecl; overload; //(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/ClientConfiguration;Lcom/amazonaws/http/HttpClient;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/AWSSecurityTokenServiceClient')]
  JAWSSecurityTokenServiceClient = interface(JAmazonWebServiceClient) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceClient
  ['{FFEDE348-8DCA-48E0-BD1C-7BF7C7358C2D}']
    { Property Methods }

    { methods }
    function assumeRole(assumeRoleRequest: JAssumeRoleRequest): JAssumeRoleResult; cdecl; //(Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;
    function assumeRoleWithWebIdentity(assumeRoleWithWebIdentityRequest: JAssumeRoleWithWebIdentityRequest): JAssumeRoleWithWebIdentityResult; cdecl; //(Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;
    function getCallerIdentity(getCallerIdentityRequest: JGetCallerIdentityRequest): JGetCallerIdentityResult; cdecl; overload; //(Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityRequest;)Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;
    function getFederationToken(getFederationTokenRequest: JGetFederationTokenRequest): JGetFederationTokenResult; cdecl; //(Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;)Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;
    function getSessionToken(getSessionTokenRequest: JGetSessionTokenRequest): JGetSessionTokenResult; cdecl; overload; //(Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;
    function getSessionToken: JGetSessionTokenResult; cdecl; overload; //()Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;
    function getCallerIdentity: JGetCallerIdentityResult; cdecl; overload; //()Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;
    function getCachedResponseMetadata(request: JAmazonWebServiceRequest): JResponseMetadata; cdecl; //Deprecated //(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/ResponseMetadata;

    { Property }
  end;

  TJAWSSecurityTokenServiceClient = class(TJavaGenericImport<JAWSSecurityTokenServiceClientClass, JAWSSecurityTokenServiceClient>) end;

  JAssumedRoleUserClass = interface(JObjectClass)
  ['{2FEBA387-EB41-49A7-BEC6-BD3C711C5AAA}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAssumedRoleUser; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/AssumedRoleUser')]
  JAssumedRoleUser = interface(JObject)
  ['{F6FBD0ED-E085-4EB3-BE0A-327366F36126}']
    { Property Methods }

    { methods }
    function getAssumedRoleId: JString; cdecl; //()Ljava/lang/String;
    procedure setAssumedRoleId(assumedRoleId: JString); cdecl; //(Ljava/lang/String;)V
    function withAssumedRoleId(assumedRoleId: JString): JAssumedRoleUser; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;
    function getArn: JString; cdecl; //()Ljava/lang/String;
    procedure setArn(arn: JString); cdecl; //(Ljava/lang/String;)V
    function withArn(arn: JString): JAssumedRoleUser; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJAssumedRoleUser = class(TJavaGenericImport<JAssumedRoleUserClass, JAssumedRoleUser>) end;

  JAssumeRoleRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{202F3FC7-9531-4622-9F67-43CDBABE7644}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAssumeRoleRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/AssumeRoleRequest')]
  JAssumeRoleRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{87B69089-1F14-4DB5-A266-5C5FA9B78C2C}']
    { Property Methods }

    { methods }
    function getRoleArn: JString; cdecl; //()Ljava/lang/String;
    procedure setRoleArn(roleArn: JString); cdecl; //(Ljava/lang/String;)V
    function withRoleArn(roleArn: JString): JAssumeRoleRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    function getRoleSessionName: JString; cdecl; //()Ljava/lang/String;
    procedure setRoleSessionName(roleSessionName: JString); cdecl; //(Ljava/lang/String;)V
    function withRoleSessionName(roleSessionName: JString): JAssumeRoleRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    function getPolicy: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicy(policy: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicy(policy: JString): JAssumeRoleRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    function getDurationSeconds: JInteger; cdecl; //()Ljava/lang/Integer;
    procedure setDurationSeconds(durationSeconds: JInteger); cdecl; //(Ljava/lang/Integer;)V
    function withDurationSeconds(durationSeconds: JInteger): JAssumeRoleRequest; cdecl; //(Ljava/lang/Integer;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    function getExternalId: JString; cdecl; //()Ljava/lang/String;
    procedure setExternalId(externalId: JString); cdecl; //(Ljava/lang/String;)V
    function withExternalId(externalId: JString): JAssumeRoleRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    function getSerialNumber: JString; cdecl; //()Ljava/lang/String;
    procedure setSerialNumber(serialNumber: JString); cdecl; //(Ljava/lang/String;)V
    function withSerialNumber(serialNumber: JString): JAssumeRoleRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    function getTokenCode: JString; cdecl; //()Ljava/lang/String;
    procedure setTokenCode(tokenCode: JString); cdecl; //(Ljava/lang/String;)V
    function withTokenCode(tokenCode: JString): JAssumeRoleRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJAssumeRoleRequest = class(TJavaGenericImport<JAssumeRoleRequestClass, JAssumeRoleRequest>) end;

  JAssumeRoleResultClass = interface(JObjectClass)
  ['{B7AA0845-B8F7-49B8-AE78-3F09959AC825}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAssumeRoleResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/AssumeRoleResult')]
  JAssumeRoleResult = interface(JObject)
  ['{CD578D2B-8490-4833-8E29-772F9CA3E37E}']
    { Property Methods }

    { methods }
    function getCredentials: JCredentials; cdecl; //()Lcom/amazonaws/services/securitytoken/model/Credentials;
    procedure setCredentials(credentials: JCredentials); cdecl; //(Lcom/amazonaws/services/securitytoken/model/Credentials;)V
    function withCredentials(credentials: JCredentials): JAssumeRoleResult; cdecl; //(Lcom/amazonaws/services/securitytoken/model/Credentials;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;
    function getAssumedRoleUser: JAssumedRoleUser; cdecl; //()Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;
    procedure setAssumedRoleUser(assumedRoleUser: JAssumedRoleUser); cdecl; //(Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;)V
    function withAssumedRoleUser(assumedRoleUser: JAssumedRoleUser): JAssumeRoleResult; cdecl; //(Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;
    function getPackedPolicySize: JInteger; cdecl; //()Ljava/lang/Integer;
    procedure setPackedPolicySize(packedPolicySize: JInteger); cdecl; //(Ljava/lang/Integer;)V
    function withPackedPolicySize(packedPolicySize: JInteger): JAssumeRoleResult; cdecl; //(Ljava/lang/Integer;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJAssumeRoleResult = class(TJavaGenericImport<JAssumeRoleResultClass, JAssumeRoleResult>) end;

  JAssumeRoleWithWebIdentityRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{9ADF2A0D-4C69-4984-A603-ED04A7616127}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAssumeRoleWithWebIdentityRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest')]
  JAssumeRoleWithWebIdentityRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{4A904C02-C867-440D-9FFA-930C59893B17}']
    { Property Methods }

    { methods }
    function getRoleArn: JString; cdecl; //()Ljava/lang/String;
    procedure setRoleArn(roleArn: JString); cdecl; //(Ljava/lang/String;)V
    function withRoleArn(roleArn: JString): JAssumeRoleWithWebIdentityRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;
    function getRoleSessionName: JString; cdecl; //()Ljava/lang/String;
    procedure setRoleSessionName(roleSessionName: JString); cdecl; //(Ljava/lang/String;)V
    function withRoleSessionName(roleSessionName: JString): JAssumeRoleWithWebIdentityRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;
    function getWebIdentityToken: JString; cdecl; //()Ljava/lang/String;
    procedure setWebIdentityToken(webIdentityToken: JString); cdecl; //(Ljava/lang/String;)V
    function withWebIdentityToken(webIdentityToken: JString): JAssumeRoleWithWebIdentityRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;
    function getProviderId: JString; cdecl; //()Ljava/lang/String;
    procedure setProviderId(providerId: JString); cdecl; //(Ljava/lang/String;)V
    function withProviderId(providerId: JString): JAssumeRoleWithWebIdentityRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;
    function getPolicy: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicy(policy: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicy(policy: JString): JAssumeRoleWithWebIdentityRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;
    function getDurationSeconds: JInteger; cdecl; //()Ljava/lang/Integer;
    procedure setDurationSeconds(durationSeconds: JInteger); cdecl; //(Ljava/lang/Integer;)V
    function withDurationSeconds(durationSeconds: JInteger): JAssumeRoleWithWebIdentityRequest; cdecl; //(Ljava/lang/Integer;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJAssumeRoleWithWebIdentityRequest = class(TJavaGenericImport<JAssumeRoleWithWebIdentityRequestClass, JAssumeRoleWithWebIdentityRequest>) end;

  JAssumeRoleWithWebIdentityResultClass = interface(JObjectClass)
  ['{AFFE9821-7F5F-4D3A-88FF-A5135A623079}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAssumeRoleWithWebIdentityResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult')]
  JAssumeRoleWithWebIdentityResult = interface(JObject)
  ['{B68AA50D-1EC6-41C0-BDFA-B1E5D710602F}']
    { Property Methods }

    { methods }
    function getCredentials: JCredentials; cdecl; //()Lcom/amazonaws/services/securitytoken/model/Credentials;
    procedure setCredentials(credentials: JCredentials); cdecl; //(Lcom/amazonaws/services/securitytoken/model/Credentials;)V
    function withCredentials(credentials: JCredentials): JAssumeRoleWithWebIdentityResult; cdecl; //(Lcom/amazonaws/services/securitytoken/model/Credentials;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;
    function getSubjectFromWebIdentityToken: JString; cdecl; //()Ljava/lang/String;
    procedure setSubjectFromWebIdentityToken(subjectFromWebIdentityToken: JString); cdecl; //(Ljava/lang/String;)V
    function withSubjectFromWebIdentityToken(subjectFromWebIdentityToken: JString): JAssumeRoleWithWebIdentityResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;
    function getAssumedRoleUser: JAssumedRoleUser; cdecl; //()Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;
    procedure setAssumedRoleUser(assumedRoleUser: JAssumedRoleUser); cdecl; //(Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;)V
    function withAssumedRoleUser(assumedRoleUser: JAssumedRoleUser): JAssumeRoleWithWebIdentityResult; cdecl; //(Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;
    function getPackedPolicySize: JInteger; cdecl; //()Ljava/lang/Integer;
    procedure setPackedPolicySize(packedPolicySize: JInteger); cdecl; //(Ljava/lang/Integer;)V
    function withPackedPolicySize(packedPolicySize: JInteger): JAssumeRoleWithWebIdentityResult; cdecl; //(Ljava/lang/Integer;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;
    function getProvider: JString; cdecl; //()Ljava/lang/String;
    procedure setProvider(provider: JString); cdecl; //(Ljava/lang/String;)V
    function withProvider(provider: JString): JAssumeRoleWithWebIdentityResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;
    function getAudience: JString; cdecl; //()Ljava/lang/String;
    procedure setAudience(audience: JString); cdecl; //(Ljava/lang/String;)V
    function withAudience(audience: JString): JAssumeRoleWithWebIdentityResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJAssumeRoleWithWebIdentityResult = class(TJavaGenericImport<JAssumeRoleWithWebIdentityResultClass, JAssumeRoleWithWebIdentityResult>) end;

  JExpiredTokenExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{6126593E-97CC-4A31-A13E-94DFD9EFAD34}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JExpiredTokenException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/ExpiredTokenException')]
  JExpiredTokenException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{52F58DC0-45E1-4A08-A717-1C56EDF4A0C6}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJExpiredTokenException = class(TJavaGenericImport<JExpiredTokenExceptionClass, JExpiredTokenException>) end;

  JFederatedUserClass = interface(JObjectClass)
  ['{D0234089-7BD4-46AE-ADAB-563722A4AF1C}']
    { static Property Methods }

    { static Methods }
    {class} function init: JFederatedUser; cdecl; overload; //()V
    {class} function init(federatedUserId: JString; arn: JString): JFederatedUser; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/FederatedUser')]
  JFederatedUser = interface(JObject)
  ['{DC2436F9-1CC4-47C1-A8AA-A8030EF484A9}']
    { Property Methods }

    { methods }
    function getFederatedUserId: JString; cdecl; //()Ljava/lang/String;
    procedure setFederatedUserId(federatedUserId: JString); cdecl; //(Ljava/lang/String;)V
    function withFederatedUserId(federatedUserId: JString): JFederatedUser; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/FederatedUser;
    function getArn: JString; cdecl; //()Ljava/lang/String;
    procedure setArn(arn: JString); cdecl; //(Ljava/lang/String;)V
    function withArn(arn: JString): JFederatedUser; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/FederatedUser;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJFederatedUser = class(TJavaGenericImport<JFederatedUserClass, JFederatedUser>) end;

  JGetCallerIdentityRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{3F6C0F12-3CBF-4F6D-BA6C-6F5917A8595B}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetCallerIdentityRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/GetCallerIdentityRequest')]
  JGetCallerIdentityRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{798EE5CB-F6A7-4562-9871-9CF015701ECD}']
    { Property Methods }

    { methods }
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJGetCallerIdentityRequest = class(TJavaGenericImport<JGetCallerIdentityRequestClass, JGetCallerIdentityRequest>) end;

  JGetCallerIdentityResultClass = interface(JObjectClass)
  ['{DBC075B4-9808-4398-9AC0-D0546D22F9E8}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetCallerIdentityResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/GetCallerIdentityResult')]
  JGetCallerIdentityResult = interface(JObject)
  ['{3638CEF1-4BF7-4957-977C-4E55D1DF92CE}']
    { Property Methods }

    { methods }
    function getUserId: JString; cdecl; //()Ljava/lang/String;
    procedure setUserId(userId: JString); cdecl; //(Ljava/lang/String;)V
    function withUserId(userId: JString): JGetCallerIdentityResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;
    function getAccount: JString; cdecl; //()Ljava/lang/String;
    procedure setAccount(account: JString); cdecl; //(Ljava/lang/String;)V
    function withAccount(account: JString): JGetCallerIdentityResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;
    function getArn: JString; cdecl; //()Ljava/lang/String;
    procedure setArn(arn: JString); cdecl; //(Ljava/lang/String;)V
    function withArn(arn: JString): JGetCallerIdentityResult; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJGetCallerIdentityResult = class(TJavaGenericImport<JGetCallerIdentityResultClass, JGetCallerIdentityResult>) end;

  JGetFederationTokenRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{857B0D65-CA7A-4C3C-831D-F10DFA397D84}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetFederationTokenRequest; cdecl; overload; //()V
    {class} function init(name: JString): JGetFederationTokenRequest; cdecl; overload; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/GetFederationTokenRequest')]
  JGetFederationTokenRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{5F65F355-8232-49E1-B108-86AE8159BF71}']
    { Property Methods }

    { methods }
    function getName: JString; cdecl; //()Ljava/lang/String;
    procedure setName(name: JString); cdecl; //(Ljava/lang/String;)V
    function withName(name: JString): JGetFederationTokenRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;
    function getPolicy: JString; cdecl; //()Ljava/lang/String;
    procedure setPolicy(policy: JString); cdecl; //(Ljava/lang/String;)V
    function withPolicy(policy: JString): JGetFederationTokenRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;
    function getDurationSeconds: JInteger; cdecl; //()Ljava/lang/Integer;
    procedure setDurationSeconds(durationSeconds: JInteger); cdecl; //(Ljava/lang/Integer;)V
    function withDurationSeconds(durationSeconds: JInteger): JGetFederationTokenRequest; cdecl; //(Ljava/lang/Integer;)Lcom/amazonaws/services/securitytoken/model/GetFederationTokenRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJGetFederationTokenRequest = class(TJavaGenericImport<JGetFederationTokenRequestClass, JGetFederationTokenRequest>) end;

  JGetFederationTokenResultClass = interface(JObjectClass)
  ['{A00BF047-26EE-4D8E-A4BD-F659018EC808}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetFederationTokenResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/GetFederationTokenResult')]
  JGetFederationTokenResult = interface(JObject)
  ['{144CAD1E-A00D-418F-8A64-1BFE90C24096}']
    { Property Methods }

    { methods }
    function getCredentials: JCredentials; cdecl; //()Lcom/amazonaws/services/securitytoken/model/Credentials;
    procedure setCredentials(credentials: JCredentials); cdecl; //(Lcom/amazonaws/services/securitytoken/model/Credentials;)V
    function withCredentials(credentials: JCredentials): JGetFederationTokenResult; cdecl; //(Lcom/amazonaws/services/securitytoken/model/Credentials;)Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;
    function getFederatedUser: JFederatedUser; cdecl; //()Lcom/amazonaws/services/securitytoken/model/FederatedUser;
    procedure setFederatedUser(federatedUser: JFederatedUser); cdecl; //(Lcom/amazonaws/services/securitytoken/model/FederatedUser;)V
    function withFederatedUser(federatedUser: JFederatedUser): JGetFederationTokenResult; cdecl; //(Lcom/amazonaws/services/securitytoken/model/FederatedUser;)Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;
    function getPackedPolicySize: JInteger; cdecl; //()Ljava/lang/Integer;
    procedure setPackedPolicySize(packedPolicySize: JInteger); cdecl; //(Ljava/lang/Integer;)V
    function withPackedPolicySize(packedPolicySize: JInteger): JGetFederationTokenResult; cdecl; //(Ljava/lang/Integer;)Lcom/amazonaws/services/securitytoken/model/GetFederationTokenResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJGetFederationTokenResult = class(TJavaGenericImport<JGetFederationTokenResultClass, JGetFederationTokenResult>) end;

  JGetSessionTokenRequestClass = interface(JAmazonWebServiceRequestClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{A34E1176-AFF2-47D4-82A8-84C395ADFC5B}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetSessionTokenRequest; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/GetSessionTokenRequest')]
  JGetSessionTokenRequest = interface(JAmazonWebServiceRequest) // or JObject // SuperSignature: com/amazonaws/AmazonWebServiceRequest
  ['{68508473-C65F-4BF4-990A-F01665F68D55}']
    { Property Methods }

    { methods }
    function getDurationSeconds: JInteger; cdecl; //()Ljava/lang/Integer;
    procedure setDurationSeconds(durationSeconds: JInteger); cdecl; //(Ljava/lang/Integer;)V
    function withDurationSeconds(durationSeconds: JInteger): JGetSessionTokenRequest; cdecl; //(Ljava/lang/Integer;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;
    function getSerialNumber: JString; cdecl; //()Ljava/lang/String;
    procedure setSerialNumber(serialNumber: JString); cdecl; //(Ljava/lang/String;)V
    function withSerialNumber(serialNumber: JString): JGetSessionTokenRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;
    function getTokenCode: JString; cdecl; //()Ljava/lang/String;
    procedure setTokenCode(tokenCode: JString); cdecl; //(Ljava/lang/String;)V
    function withTokenCode(tokenCode: JString): JGetSessionTokenRequest; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJGetSessionTokenRequest = class(TJavaGenericImport<JGetSessionTokenRequestClass, JGetSessionTokenRequest>) end;

  JGetSessionTokenResultClass = interface(JObjectClass)
  ['{0C5923AE-804B-44C0-A65A-C9C36F73F05D}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetSessionTokenResult; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/GetSessionTokenResult')]
  JGetSessionTokenResult = interface(JObject)
  ['{23F28E5E-8752-4E1A-9175-263A36EE4875}']
    { Property Methods }

    { methods }
    function getCredentials: JCredentials; cdecl; //()Lcom/amazonaws/services/securitytoken/model/Credentials;
    procedure setCredentials(credentials: JCredentials); cdecl; //(Lcom/amazonaws/services/securitytoken/model/Credentials;)V
    function withCredentials(credentials: JCredentials): JGetSessionTokenResult; cdecl; //(Lcom/amazonaws/services/securitytoken/model/Credentials;)Lcom/amazonaws/services/securitytoken/model/GetSessionTokenResult;
    function toString: JString; cdecl; //()Ljava/lang/String;
    function hashCode: Integer; cdecl; //()I
    function equals(obj: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z

    { Property }
  end;

  TJGetSessionTokenResult = class(TJavaGenericImport<JGetSessionTokenResultClass, JGetSessionTokenResult>) end;

  JIDPCommunicationErrorExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{879B02FF-B12D-47F4-A848-AC12FD41F997}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JIDPCommunicationErrorException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/IDPCommunicationErrorException')]
  JIDPCommunicationErrorException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{3D8122BB-3D8C-4ACF-95C2-EE358270E15E}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIDPCommunicationErrorException = class(TJavaGenericImport<JIDPCommunicationErrorExceptionClass, JIDPCommunicationErrorException>) end;

  JIDPRejectedClaimExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{79B16397-4A7F-496B-B447-482FC53D8C86}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JIDPRejectedClaimException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/IDPRejectedClaimException')]
  JIDPRejectedClaimException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{A9E1E8E3-FF41-4BD8-A50E-DCE63E1A600E}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJIDPRejectedClaimException = class(TJavaGenericImport<JIDPRejectedClaimExceptionClass, JIDPRejectedClaimException>) end;

  JInvalidIdentityTokenExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{9433FEFF-1BC0-440B-B2EB-F072AA0CEA4B}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JInvalidIdentityTokenException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/InvalidIdentityTokenException')]
  JInvalidIdentityTokenException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{5A0E4F9A-2A0C-4C55-A912-CF83A7E138D5}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJInvalidIdentityTokenException = class(TJavaGenericImport<JInvalidIdentityTokenExceptionClass, JInvalidIdentityTokenException>) end;

  JMalformedPolicyDocumentExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{887D9332-1210-4BFE-B7D2-A1CAD69EC63A}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JMalformedPolicyDocumentException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/MalformedPolicyDocumentException')]
  JMalformedPolicyDocumentException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{2DCED71D-E8ED-4550-9EEA-513942388AA2}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJMalformedPolicyDocumentException = class(TJavaGenericImport<JMalformedPolicyDocumentExceptionClass, JMalformedPolicyDocumentException>) end;

  JPackedPolicyTooLargeExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{8C48196D-44A5-4212-BFF4-65C9324E916D}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JPackedPolicyTooLargeException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/PackedPolicyTooLargeException')]
  JPackedPolicyTooLargeException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{95EE24A8-44C8-4387-B34D-EE2BA6187FF5}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJPackedPolicyTooLargeException = class(TJavaGenericImport<JPackedPolicyTooLargeExceptionClass, JPackedPolicyTooLargeException>) end;

  JRegionDisabledExceptionClass = interface(JAmazonServiceExceptionClass) // or JObjectClass // SuperSignature: com/amazonaws/AmazonServiceException
  ['{38228D68-E4C6-421A-9A00-7C562EF80DE4}']
    { static Property Methods }

    { static Methods }
    {class} function init(amessage: JString): JRegionDisabledException; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/RegionDisabledException')]
  JRegionDisabledException = interface(JAmazonServiceException) // or JObject // SuperSignature: com/amazonaws/AmazonServiceException
  ['{94F41E08-10F0-45A1-9EB7-0645BB0213A9}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJRegionDisabledException = class(TJavaGenericImport<JRegionDisabledExceptionClass, JRegionDisabledException>) end;

  JAssumedRoleUserStaxMarshallerClass = interface(JObjectClass)
  ['{A75C2CE7-534A-4288-8E45-0DDB54C0AA4B}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JAssumedRoleUserStaxMarshaller; cdecl; //()Lcom/amazonaws/services/securitytoken/model/transform/AssumedRoleUserStaxMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/transform/AssumedRoleUserStaxMarshaller')]
  JAssumedRoleUserStaxMarshaller = interface(JObject)
  ['{37C1DA23-3C43-4278-8ACF-E0E8E0CDFF19}']
    { Property Methods }

    { methods }
    procedure marshall(_assumedRoleUser: JAssumedRoleUser; request: JRequest; _prefix: JString); cdecl; //(Lcom/amazonaws/services/securitytoken/model/AssumedRoleUser;Lcom/amazonaws/Request;Ljava/lang/String;)V

    { Property }
  end;

  TJAssumedRoleUserStaxMarshaller = class(TJavaGenericImport<JAssumedRoleUserStaxMarshallerClass, JAssumedRoleUserStaxMarshaller>) end;

  JAssumeRoleRequestMarshallerClass = interface(JObjectClass)
  ['{8A4D3DB9-37B7-4BC2-B2BB-D3E94301083F}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAssumeRoleRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/transform/AssumeRoleRequestMarshaller')]
  JAssumeRoleRequestMarshaller = interface(JObject)
  ['{786D7211-9F56-48C8-9142-A273848011CE}']
    { Property Methods }

    { methods }
    function marshall(assumeRoleRequest: JAssumeRoleRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/securitytoken/model/AssumeRoleRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJAssumeRoleRequestMarshaller = class(TJavaGenericImport<JAssumeRoleRequestMarshallerClass, JAssumeRoleRequestMarshaller>) end;

  JAssumeRoleWithWebIdentityRequestMarshallerClass = interface(JObjectClass)
  ['{E5E03DC3-8778-4B47-A314-A55F1BABB618}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAssumeRoleWithWebIdentityRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/transform/AssumeRoleWithWebIdentityRequestMarshaller')]
  JAssumeRoleWithWebIdentityRequestMarshaller = interface(JObject)
  ['{3EDBD51B-A02E-4AFE-9C12-C78CCAAE70F7}']
    { Property Methods }

    { methods }
    function marshall(assumeRoleWithWebIdentityRequest: JAssumeRoleWithWebIdentityRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/securitytoken/model/AssumeRoleWithWebIdentityRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJAssumeRoleWithWebIdentityRequestMarshaller = class(TJavaGenericImport<JAssumeRoleWithWebIdentityRequestMarshallerClass, JAssumeRoleWithWebIdentityRequestMarshaller>) end;

 
  JCredentialsStaxMarshallerClass = interface(JObjectClass)
  ['{5EB7EB72-72A3-4E88-A25E-EA928D827CB2}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JCredentialsStaxMarshaller; cdecl; //()Lcom/amazonaws/services/securitytoken/model/transform/CredentialsStaxMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/transform/CredentialsStaxMarshaller')]
  JCredentialsStaxMarshaller = interface(JObject)
  ['{C01EC964-C134-429F-9273-E31F85295460}']
    { Property Methods }

    { methods }
    procedure marshall(_credentials: JCredentials; request: JRequest; _prefix: JString); cdecl; //(Lcom/amazonaws/services/securitytoken/model/Credentials;Lcom/amazonaws/Request;Ljava/lang/String;)V

    { Property }
  end;

  TJCredentialsStaxMarshaller = class(TJavaGenericImport<JCredentialsStaxMarshallerClass, JCredentialsStaxMarshaller>) end;


  JFederatedUserStaxMarshallerClass = interface(JObjectClass)
  ['{3104E698-D789-4D3D-8506-DC1F6402B44C}']
    { static Property Methods }

    { static Methods }
    {class} function getInstance: JFederatedUserStaxMarshaller; cdecl; //()Lcom/amazonaws/services/securitytoken/model/transform/FederatedUserStaxMarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/transform/FederatedUserStaxMarshaller')]
  JFederatedUserStaxMarshaller = interface(JObject)
  ['{B39E9D1E-90F4-4BB2-B695-DAD81C017D74}']
    { Property Methods }

    { methods }
    procedure marshall(_federatedUser: JFederatedUser; request: JRequest; _prefix: JString); cdecl; //(Lcom/amazonaws/services/securitytoken/model/FederatedUser;Lcom/amazonaws/Request;Ljava/lang/String;)V

    { Property }
  end;

  TJFederatedUserStaxMarshaller = class(TJavaGenericImport<JFederatedUserStaxMarshallerClass, JFederatedUserStaxMarshaller>) end;

  JGetCallerIdentityRequestMarshallerClass = interface(JObjectClass)
  ['{97DB12C0-7140-4F8D-8E40-EAC6EEA40636}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetCallerIdentityRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/transform/GetCallerIdentityRequestMarshaller')]
  JGetCallerIdentityRequestMarshaller = interface(JObject)
  ['{EC1D2273-6823-45F2-8FD8-AAC2D06A6170}']
    { Property Methods }

    { methods }
    function marshall(getCallerIdentityRequest: JGetCallerIdentityRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/securitytoken/model/GetCallerIdentityRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJGetCallerIdentityRequestMarshaller = class(TJavaGenericImport<JGetCallerIdentityRequestMarshallerClass, JGetCallerIdentityRequestMarshaller>) end;

  JGetSessionTokenRequestMarshallerClass = interface(JObjectClass)
  ['{05F2AD18-12B2-4CAF-84A9-A2C0C832155D}']
    { static Property Methods }

    { static Methods }
    {class} function init: JGetSessionTokenRequestMarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/services/securitytoken/model/transform/GetSessionTokenRequestMarshaller')]
  JGetSessionTokenRequestMarshaller = interface(JObject)
  ['{F7630A5D-C527-4B4D-B8DD-418F969DB9F6}']
    { Property Methods }

    { methods }
    function marshall(getSessionTokenRequest: JGetSessionTokenRequest): JRequest; cdecl; overload; //(Lcom/amazonaws/services/securitytoken/model/GetSessionTokenRequest;)Lcom/amazonaws/Request;
    function marshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJGetSessionTokenRequestMarshaller = class(TJavaGenericImport<JGetSessionTokenRequestMarshallerClass, JGetSessionTokenRequestMarshaller>) end;

  JJsonUnmarshallerContextClass = interface(JObjectClass)
  ['{D425A6F7-224A-4415-AE04-FA9D78BC8B85}']
    { static Property Methods }

    { static Methods }
    {class} function init(reader: JAwsJsonReader): JJsonUnmarshallerContext; cdecl; overload; //(Lcom/amazonaws/util/json/AwsJsonReader;)V
    {class} function init(reader: JAwsJsonReader; httpResponse: JHttpResponse): JJsonUnmarshallerContext; cdecl; overload; //(Lcom/amazonaws/util/json/AwsJsonReader;Lcom/amazonaws/http/HttpResponse;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/transform/JsonUnmarshallerContext')]
  JJsonUnmarshallerContext = interface(JObject)
  ['{7476F5E7-3028-474A-A244-0120F69BEB4D}']
    { Property Methods }

    { methods }
    function getReader: JAwsJsonReader; cdecl; //()Lcom/amazonaws/util/json/AwsJsonReader;
    function getHeader(header: JString): JString; cdecl; //(Ljava/lang/String;)Ljava/lang/String;
    function getHttpResponse: JHttpResponse; cdecl; //()Lcom/amazonaws/http/HttpResponse;

    { Property }
  end;

  TJJsonUnmarshallerContext = class(TJavaGenericImport<JJsonUnmarshallerContextClass, JJsonUnmarshallerContext>) end;

  JListUnmarshallerClass = interface(JObjectClass)
  ['{792043BB-0405-4A39-B9E8-462984C27F5C}']
    { static Property Methods }

    { static Methods }
    {class} function init(itemUnmarshaller: JUnmarshaller): JListUnmarshaller; cdecl; //(Lcom/amazonaws/transform/Unmarshaller;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/transform/ListUnmarshaller')]
  JListUnmarshaller = interface(JObject)
  ['{717A55A4-B29D-44F1-8753-65F31CF90B18}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JList; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/List;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJListUnmarshaller = class(TJavaGenericImport<JListUnmarshallerClass, JListUnmarshaller>) end;

  JMapEntryClass = interface(JObjectClass)
  ['{F7A52631-6E62-48EF-87FF-5A62E58FA01B}']
    { static Property Methods }

    { static Methods }
    {class} function init: JMapEntry; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/transform/MapEntry')]
  JMapEntry = interface(JObject)
  ['{6DC1F3CA-2EC8-44E8-9EE5-6B815BA06915}']
    { Property Methods }

    { methods }
    function getKey: JObject; cdecl; //()Ljava/lang/Object;
    function getValue: JObject; cdecl; //()Ljava/lang/Object;
    function setValue(value: JObject): JObject; cdecl; //(Ljava/lang/Object;)Ljava/lang/Object;
    function setKey(key: JObject): JObject; cdecl; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJMapEntry = class(TJavaGenericImport<JMapEntryClass, JMapEntry>) end;

  JMapUnmarshallerClass = interface(JObjectClass)
  ['{CBF2F276-862A-415C-9454-C72C65253706}']
    { static Property Methods }

    { static Methods }
    {class} function init(valueUnmarshaller: JUnmarshaller): JMapUnmarshaller; cdecl; //(Lcom/amazonaws/transform/Unmarshaller;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/transform/MapUnmarshaller')]
  JMapUnmarshaller = interface(JObject)
  ['{AAB77F57-853D-426A-A0C2-10538E6A4828}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JMap; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/Map;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJMapUnmarshaller = class(TJavaGenericImport<JMapUnmarshallerClass, JMapUnmarshaller>) end;

  JMarshallerClass = interface(JObjectClass)
  ['{33790EA1-6655-4870-B8D7-B3C0EA9A9849}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/transform/Marshaller')]
  JMarshaller = interface(IJavaInstance)
  ['{D2B186AE-7942-41AD-8BBD-385C42496F76}']
    { Property Methods }

    { methods }
    function marshall(P1: JObject): JObject; cdecl; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJMarshaller = class(TJavaGenericImport<JMarshallerClass, JMarshaller>) end;

 
  JSimpleTypeJsonUnmarshallers_BigIntegerJsonUnmarshallerClass = interface(JObjectClass)
  ['{729BBCE5-F63C-4FFB-95B2-791934AFB23E}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSimpleTypeJsonUnmarshallers_BigIntegerJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JSimpleTypeJsonUnmarshallers_BigIntegerJsonUnmarshaller; cdecl; //()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BigIntegerJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/transform/SimpleTypeJsonUnmarshallers$BigIntegerJsonUnmarshaller')]
  JSimpleTypeJsonUnmarshallers_BigIntegerJsonUnmarshaller = interface(JObject)
  ['{79F8E192-794A-4C19-96C6-ACC2F4785C0C}']
    { Property Methods }

    { methods }
    function unmarshall(unmarshallerContext: JJsonUnmarshallerContext): JBigInteger; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/math/BigInteger;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJSimpleTypeJsonUnmarshallers_BigIntegerJsonUnmarshaller = class(TJavaGenericImport<JSimpleTypeJsonUnmarshallers_BigIntegerJsonUnmarshallerClass, JSimpleTypeJsonUnmarshallers_BigIntegerJsonUnmarshaller>) end;

  JSimpleTypeJsonUnmarshallers_BooleanJsonUnmarshallerClass = interface(JObjectClass)
  ['{3BFF1207-9313-454F-927E-E58BB0585945}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSimpleTypeJsonUnmarshallers_BooleanJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JSimpleTypeJsonUnmarshallers_BooleanJsonUnmarshaller; cdecl; //()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller')]
  JSimpleTypeJsonUnmarshallers_BooleanJsonUnmarshaller = interface(JObject)
  ['{CCDE3D7A-4C5D-487E-A136-671A92C776B8}']
    { Property Methods }

    { methods }
    function unmarshall(unmarshallerContext: JJsonUnmarshallerContext): JBoolean; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Boolean;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJSimpleTypeJsonUnmarshallers_BooleanJsonUnmarshaller = class(TJavaGenericImport<JSimpleTypeJsonUnmarshallers_BooleanJsonUnmarshallerClass, JSimpleTypeJsonUnmarshallers_BooleanJsonUnmarshaller>) end;

  JSimpleTypeJsonUnmarshallers_ByteBufferJsonUnmarshallerClass = interface(JObjectClass)
  ['{261EDA0A-DF0B-4196-B0E3-A13B0BA5615E}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSimpleTypeJsonUnmarshallers_ByteBufferJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JSimpleTypeJsonUnmarshallers_ByteBufferJsonUnmarshaller; cdecl; //()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller')]
  JSimpleTypeJsonUnmarshallers_ByteBufferJsonUnmarshaller = interface(JObject)
  ['{3F30F68C-B960-4C63-B8CA-F56A74A738B2}']
    { Property Methods }

    { methods }
    function unmarshall(unmarshallerContext: JJsonUnmarshallerContext): JByteBuffer; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/nio/ByteBuffer;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJSimpleTypeJsonUnmarshallers_ByteBufferJsonUnmarshaller = class(TJavaGenericImport<JSimpleTypeJsonUnmarshallers_ByteBufferJsonUnmarshallerClass, JSimpleTypeJsonUnmarshallers_ByteBufferJsonUnmarshaller>) end;

  JSimpleTypeJsonUnmarshallers_ByteJsonUnmarshallerClass = interface(JObjectClass)
  ['{9CF3EE5D-3387-4120-AFC1-C2A237F2AD77}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSimpleTypeJsonUnmarshallers_ByteJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JSimpleTypeJsonUnmarshallers_ByteJsonUnmarshaller; cdecl; //()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteJsonUnmarshaller')]
  JSimpleTypeJsonUnmarshallers_ByteJsonUnmarshaller = interface(JObject)
  ['{17EDC029-75B9-4AC6-BA9E-95C1B68A85AF}']
    { Property Methods }

    { methods }
    function unmarshall(unmarshallerContext: JJsonUnmarshallerContext): JByte; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Byte;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJSimpleTypeJsonUnmarshallers_ByteJsonUnmarshaller = class(TJavaGenericImport<JSimpleTypeJsonUnmarshallers_ByteJsonUnmarshallerClass, JSimpleTypeJsonUnmarshallers_ByteJsonUnmarshaller>) end;

  JSimpleTypeJsonUnmarshallers_DateJsonUnmarshallerClass = interface(JObjectClass)
  ['{428A638F-9EBD-43B7-A6F8-9B8EA8B171E4}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSimpleTypeJsonUnmarshallers_DateJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JSimpleTypeJsonUnmarshallers_DateJsonUnmarshaller; cdecl; //()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/transform/SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller')]
  JSimpleTypeJsonUnmarshallers_DateJsonUnmarshaller = interface(JObject)
  ['{3B21C04C-6C94-49BE-8A93-9E7296DE1870}']
    { Property Methods }

    { methods }
    function unmarshall(unmarshallerContext: JJsonUnmarshallerContext): JDate; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/util/Date;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJSimpleTypeJsonUnmarshallers_DateJsonUnmarshaller = class(TJavaGenericImport<JSimpleTypeJsonUnmarshallers_DateJsonUnmarshallerClass, JSimpleTypeJsonUnmarshallers_DateJsonUnmarshaller>) end;

  JSimpleTypeJsonUnmarshallers_DoubleJsonUnmarshallerClass = interface(JObjectClass)
  ['{68515EF4-45AD-4159-8206-3DDE308F7EAB}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSimpleTypeJsonUnmarshallers_DoubleJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JSimpleTypeJsonUnmarshallers_DoubleJsonUnmarshaller; cdecl; //()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller')]
  JSimpleTypeJsonUnmarshallers_DoubleJsonUnmarshaller = interface(JObject)
  ['{55114A14-ED21-42A5-9BAD-D1C304F56C8E}']
    { Property Methods }

    { methods }
    function unmarshall(unmarshallerContext: JJsonUnmarshallerContext): JDouble; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Double;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJSimpleTypeJsonUnmarshallers_DoubleJsonUnmarshaller = class(TJavaGenericImport<JSimpleTypeJsonUnmarshallers_DoubleJsonUnmarshallerClass, JSimpleTypeJsonUnmarshallers_DoubleJsonUnmarshaller>) end;

  JSimpleTypeJsonUnmarshallers_FloatJsonUnmarshallerClass = interface(JObjectClass)
  ['{4D8B2372-6B10-4BFD-B221-E7810DCAAFCA}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSimpleTypeJsonUnmarshallers_FloatJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JSimpleTypeJsonUnmarshallers_FloatJsonUnmarshaller; cdecl; //()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$FloatJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/transform/SimpleTypeJsonUnmarshallers$FloatJsonUnmarshaller')]
  JSimpleTypeJsonUnmarshallers_FloatJsonUnmarshaller = interface(JObject)
  ['{57FD16C7-D076-4ABC-842D-1ED779257A83}']
    { Property Methods }

    { methods }
    function unmarshall(unmarshallerContext: JJsonUnmarshallerContext): JFloat; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Float;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJSimpleTypeJsonUnmarshallers_FloatJsonUnmarshaller = class(TJavaGenericImport<JSimpleTypeJsonUnmarshallers_FloatJsonUnmarshallerClass, JSimpleTypeJsonUnmarshallers_FloatJsonUnmarshaller>) end;

  JSimpleTypeJsonUnmarshallers_IntegerJsonUnmarshallerClass = interface(JObjectClass)
  ['{1E2C9125-6C9D-42EA-8384-5BEA5D4394F9}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSimpleTypeJsonUnmarshallers_IntegerJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JSimpleTypeJsonUnmarshallers_IntegerJsonUnmarshaller; cdecl; //()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/transform/SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller')]
  JSimpleTypeJsonUnmarshallers_IntegerJsonUnmarshaller = interface(JObject)
  ['{9F4E4B57-DBF9-401D-B55E-1E498FA3A538}']
    { Property Methods }

    { methods }
    function unmarshall(unmarshallerContext: JJsonUnmarshallerContext): JInteger; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Integer;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJSimpleTypeJsonUnmarshallers_IntegerJsonUnmarshaller = class(TJavaGenericImport<JSimpleTypeJsonUnmarshallers_IntegerJsonUnmarshallerClass, JSimpleTypeJsonUnmarshallers_IntegerJsonUnmarshaller>) end;

  JSimpleTypeJsonUnmarshallers_LongJsonUnmarshallerClass = interface(JObjectClass)
  ['{376787F8-52B1-4577-BB49-9577EB528514}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSimpleTypeJsonUnmarshallers_LongJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JSimpleTypeJsonUnmarshallers_LongJsonUnmarshaller; cdecl; //()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller')]
  JSimpleTypeJsonUnmarshallers_LongJsonUnmarshaller = interface(JObject)
  ['{C483CD08-AA00-4C3F-9BDE-E39BC91C7291}']
    { Property Methods }

    { methods }
    function unmarshall(unmarshallerContext: JJsonUnmarshallerContext): JLong; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Long;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJSimpleTypeJsonUnmarshallers_LongJsonUnmarshaller = class(TJavaGenericImport<JSimpleTypeJsonUnmarshallers_LongJsonUnmarshallerClass, JSimpleTypeJsonUnmarshallers_LongJsonUnmarshaller>) end;

  JSimpleTypeJsonUnmarshallers_StringJsonUnmarshallerClass = interface(JObjectClass)
  ['{3C899F7B-A1E7-4209-9FBF-A97FDD87CBE9}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSimpleTypeJsonUnmarshallers_StringJsonUnmarshaller; cdecl; //()V
    {class} function getInstance: JSimpleTypeJsonUnmarshallers_StringJsonUnmarshaller; cdecl; //()Lcom/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller')]
  JSimpleTypeJsonUnmarshallers_StringJsonUnmarshaller = interface(JObject)
  ['{CA9DAF38-4685-4530-AA78-357BE8800B68}']
    { Property Methods }

    { methods }
    function unmarshall(unmarshallerContext: JJsonUnmarshallerContext): JString; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/String;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJSimpleTypeJsonUnmarshallers_StringJsonUnmarshaller = class(TJavaGenericImport<JSimpleTypeJsonUnmarshallers_StringJsonUnmarshallerClass, JSimpleTypeJsonUnmarshallers_StringJsonUnmarshaller>) end;

  JSimpleTypeJsonUnmarshallersClass = interface(JObjectClass)
  ['{40ABDE3E-A211-4EAA-8003-F0EE12DD4292}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSimpleTypeJsonUnmarshallers; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/transform/SimpleTypeJsonUnmarshallers')]
  JSimpleTypeJsonUnmarshallers = interface(JObject)
  ['{7E922BD5-7BB2-4710-B556-BD91CAC00F8D}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJSimpleTypeJsonUnmarshallers = class(TJavaGenericImport<JSimpleTypeJsonUnmarshallersClass, JSimpleTypeJsonUnmarshallers>) end;

  JSimpleTypeStaxUnmarshallersClass = interface(JObjectClass)
  ['{BBDB4B5F-1A44-4C81-8AD7-745452880302}']
    { static Property Methods }

    { static Methods }
    {class} function init: JSimpleTypeStaxUnmarshallers; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/transform/SimpleTypeStaxUnmarshallers')]
  JSimpleTypeStaxUnmarshallers = interface(JObject)
  ['{ED7329DC-89D6-48B1-BA4D-3A4605C5F652}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJSimpleTypeStaxUnmarshallers = class(TJavaGenericImport<JSimpleTypeStaxUnmarshallersClass, JSimpleTypeStaxUnmarshallers>) end;

  JStaxUnmarshallerContext_MetadataExpressionClass = interface(JObjectClass)
  ['{9D2F725B-AAF8-4463-8F17-6C533FF3A75F}']
    { static Property Methods }

    { static Methods }
    {class} function init(expression: JString; targetDepth: Integer; key: JString): JStaxUnmarshallerContext_MetadataExpression; cdecl; //(Ljava/lang/String;ILjava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/transform/StaxUnmarshallerContext$MetadataExpression')]
  JStaxUnmarshallerContext_MetadataExpression = interface(JObject)
  ['{3A8ACBFD-C835-4413-AD35-B0F89819789C}']
    { Property Methods }
    function _Getexpression: JString; //Ljava/lang/String;
    procedure _Setexpression(aexpression: JString); //(Ljava/lang/String;)V
    function _GettargetDepth: Integer; //I
    procedure _SettargetDepth(atargetDepth: Integer); //(I)V
    function _Getkey: JString; //Ljava/lang/String;
    procedure _Setkey(akey: JString); //(Ljava/lang/String;)V

    { methods }

    { Property }
    property expression: JString read _Getexpression write _Setexpression;
    property targetDepth: Integer read _GettargetDepth write _SettargetDepth;
    property key: JString read _Getkey write _Setkey;
  end;

  TJStaxUnmarshallerContext_MetadataExpression = class(TJavaGenericImport<JStaxUnmarshallerContext_MetadataExpressionClass, JStaxUnmarshallerContext_MetadataExpression>) end;


  JUnmarshallerClass = interface(JObjectClass)
  ['{9E19ED6B-6988-40E9-AF4B-DE8B0A70AB8E}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/transform/Unmarshaller')]
  JUnmarshaller = interface(IJavaInstance)
  ['{6659E14A-5ED0-481C-AA39-C27A8F18A7D2}']
    { Property Methods }

    { methods }
    function unmarshall(P1: JObject): JObject; cdecl; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJUnmarshaller = class(TJavaGenericImport<JUnmarshallerClass, JUnmarshaller>) end;

  JVoidJsonUnmarshallerClass = interface(JObjectClass)
  ['{2EFE18CB-C106-45FD-9BCE-B1A052BA8AF6}']
    { static Property Methods }

    { static Methods }
    {class} function init: JVoidJsonUnmarshaller; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/transform/VoidJsonUnmarshaller')]
  JVoidJsonUnmarshaller = interface(JObject)
  ['{E4353BB1-9E0E-4D7F-97AC-F125A2192C09}']
    { Property Methods }

    { methods }
    function unmarshall(context: JJsonUnmarshallerContext): JObject; cdecl; overload; //(Lcom/amazonaws/transform/JsonUnmarshallerContext;)Ljava/lang/Object;
    function unmarshall(P1: JObject): JObject; cdecl; overload; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJVoidJsonUnmarshaller = class(TJavaGenericImport<JVoidJsonUnmarshallerClass, JVoidJsonUnmarshaller>) end;

  JAbstractBase32CodecClass = interface(JObjectClass)
  ['{D9C5ECEF-CE3E-4756-84EB-62C1BCC997B0}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/AbstractBase32Codec')]
  JAbstractBase32Codec = interface(JObject)
  ['{67A45091-8692-4AB8-A5CB-7641CC2E343E}']
    { Property Methods }

    { methods }
    function encode(src: TJavaArray<Byte>): TJavaArray<Byte>; cdecl; //([B)[B
    function decode(src: TJavaArray<Byte>; length: Integer): TJavaArray<Byte>; cdecl; //([BI)[B

    { Property }
  end;

  TJAbstractBase32Codec = class(TJavaGenericImport<JAbstractBase32CodecClass, JAbstractBase32Codec>) end;

  JAwsHostNameUtilsClass = interface(JObjectClass)
  ['{62CF3466-6AAE-4C7F-8C4A-C414D72C967B}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAwsHostNameUtils; cdecl; //()V
    {class} function parseRegionName(P1: JURI): JString; cdecl; overload; //Deprecated //(Ljava/net/URI;)Ljava/lang/String;
    {class} function parseRegionName(serviceHint: JString; regionNameInInternalConfig: JString): JString; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    {class} function parseServiceName(host: JURI): JString; cdecl; //Deprecated //(Ljava/net/URI;)Ljava/lang/String;
    {class} function localHostName: JString; cdecl; //()Ljava/lang/String;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/AwsHostNameUtils')]
  JAwsHostNameUtils = interface(JObject)
  ['{248B249F-3AEE-470F-BC98-A59427F6856B}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJAwsHostNameUtils = class(TJavaGenericImport<JAwsHostNameUtilsClass, JAwsHostNameUtils>) end;

  JAWSRequestMetrics_FieldClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{7D03A73C-57C4-4F67-92C8-5CCADEBA2542}']
    { static Property Methods }
    {class} function _GetAWSErrorCode: JAWSRequestMetrics_Field; //Lcom/amazonaws/util/AWSRequestMetrics$Field;
    {class} function _GetAWSRequestID: JAWSRequestMetrics_Field; //Lcom/amazonaws/util/AWSRequestMetrics$Field;
    {class} function _GetBytesProcessed: JAWSRequestMetrics_Field; //Lcom/amazonaws/util/AWSRequestMetrics$Field;
    {class} function _GetClientExecuteTime: JAWSRequestMetrics_Field; //Lcom/amazonaws/util/AWSRequestMetrics$Field;
    {class} function _GetCredentialsRequestTime: JAWSRequestMetrics_Field; //Lcom/amazonaws/util/AWSRequestMetrics$Field;
    {class} function _GetException: JAWSRequestMetrics_Field; //Lcom/amazonaws/util/AWSRequestMetrics$Field;
    {class} function _GetHttpRequestTime: JAWSRequestMetrics_Field; //Lcom/amazonaws/util/AWSRequestMetrics$Field;
    {class} function _GetRedirectLocation: JAWSRequestMetrics_Field; //Lcom/amazonaws/util/AWSRequestMetrics$Field;
    {class} function _GetRequestMarshallTime: JAWSRequestMetrics_Field; //Lcom/amazonaws/util/AWSRequestMetrics$Field;
    {class} function _GetRequestSigningTime: JAWSRequestMetrics_Field; //Lcom/amazonaws/util/AWSRequestMetrics$Field;
    {class} function _GetResponseProcessingTime: JAWSRequestMetrics_Field; //Lcom/amazonaws/util/AWSRequestMetrics$Field;
    {class} function _GetRequestCount: JAWSRequestMetrics_Field; //Lcom/amazonaws/util/AWSRequestMetrics$Field;
    {class} function _GetRetryCount: JAWSRequestMetrics_Field; //Lcom/amazonaws/util/AWSRequestMetrics$Field;
    {class} function _GetHttpClientRetryCount: JAWSRequestMetrics_Field; //Lcom/amazonaws/util/AWSRequestMetrics$Field;
    {class} function _GetHttpClientSendRequestTime: JAWSRequestMetrics_Field; //Lcom/amazonaws/util/AWSRequestMetrics$Field;
    {class} function _GetHttpClientReceiveResponseTime: JAWSRequestMetrics_Field; //Lcom/amazonaws/util/AWSRequestMetrics$Field;
    {class} function _GetHttpClientPoolAvailableCount: JAWSRequestMetrics_Field; //Lcom/amazonaws/util/AWSRequestMetrics$Field;
    {class} function _GetHttpClientPoolLeasedCount: JAWSRequestMetrics_Field; //Lcom/amazonaws/util/AWSRequestMetrics$Field;
    {class} function _GetHttpClientPoolPendingCount: JAWSRequestMetrics_Field; //Lcom/amazonaws/util/AWSRequestMetrics$Field;
    {class} function _GetRetryPauseTime: JAWSRequestMetrics_Field; //Lcom/amazonaws/util/AWSRequestMetrics$Field;
    {class} function _GetServiceEndpoint: JAWSRequestMetrics_Field; //Lcom/amazonaws/util/AWSRequestMetrics$Field;
    {class} function _GetServiceName: JAWSRequestMetrics_Field; //Lcom/amazonaws/util/AWSRequestMetrics$Field;
    {class} function _GetStatusCode: JAWSRequestMetrics_Field; //Lcom/amazonaws/util/AWSRequestMetrics$Field;

    { static Methods }
    {class} function values: TJavaObjectArray<JAWSRequestMetrics_Field>; cdecl; //()[Lcom/amazonaws/util/AWSRequestMetrics$Field;
    {class} function valueOf(P1: JString): JAWSRequestMetrics_Field; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/util/AWSRequestMetrics$Field;

    { static Property }
    {class} property AWSErrorCode: JAWSRequestMetrics_Field read _GetAWSErrorCode;
    {class} property AWSRequestID: JAWSRequestMetrics_Field read _GetAWSRequestID;
    {class} property BytesProcessed: JAWSRequestMetrics_Field read _GetBytesProcessed;
    {class} property ClientExecuteTime: JAWSRequestMetrics_Field read _GetClientExecuteTime;
    {class} property CredentialsRequestTime: JAWSRequestMetrics_Field read _GetCredentialsRequestTime;
    {class} property Exception: JAWSRequestMetrics_Field read _GetException;
    {class} property HttpRequestTime: JAWSRequestMetrics_Field read _GetHttpRequestTime;
    {class} property RedirectLocation: JAWSRequestMetrics_Field read _GetRedirectLocation;
    {class} property RequestMarshallTime: JAWSRequestMetrics_Field read _GetRequestMarshallTime;
    {class} property RequestSigningTime: JAWSRequestMetrics_Field read _GetRequestSigningTime;
    {class} property ResponseProcessingTime: JAWSRequestMetrics_Field read _GetResponseProcessingTime;
    {class} property RequestCount: JAWSRequestMetrics_Field read _GetRequestCount;
    {class} property RetryCount: JAWSRequestMetrics_Field read _GetRetryCount;
    {class} property HttpClientRetryCount: JAWSRequestMetrics_Field read _GetHttpClientRetryCount;
    {class} property HttpClientSendRequestTime: JAWSRequestMetrics_Field read _GetHttpClientSendRequestTime;
    {class} property HttpClientReceiveResponseTime: JAWSRequestMetrics_Field read _GetHttpClientReceiveResponseTime;
    {class} property HttpClientPoolAvailableCount: JAWSRequestMetrics_Field read _GetHttpClientPoolAvailableCount;
    {class} property HttpClientPoolLeasedCount: JAWSRequestMetrics_Field read _GetHttpClientPoolLeasedCount;
    {class} property HttpClientPoolPendingCount: JAWSRequestMetrics_Field read _GetHttpClientPoolPendingCount;
    {class} property RetryPauseTime: JAWSRequestMetrics_Field read _GetRetryPauseTime;
    {class} property ServiceEndpoint: JAWSRequestMetrics_Field read _GetServiceEndpoint;
    {class} property ServiceName: JAWSRequestMetrics_Field read _GetServiceName;
    {class} property StatusCode: JAWSRequestMetrics_Field read _GetStatusCode;
  end;

  [JavaSignature('com/amazonaws/util/AWSRequestMetrics$Field')]
  JAWSRequestMetrics_Field = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{3A5DE0AF-1770-4534-A012-79443CF31D91}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJAWSRequestMetrics_Field = class(TJavaGenericImport<JAWSRequestMetrics_FieldClass, JAWSRequestMetrics_Field>) end;

  JAWSRequestMetricsClass = interface(JObjectClass)
  ['{7A0FA473-1B1A-4152-90EA-DBA5DC28B0FD}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAWSRequestMetrics; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/AWSRequestMetrics')]
  JAWSRequestMetrics = interface(JObject)
  ['{E1D0A0CD-3A5A-4946-A6A6-EDEA991C521C}']
    { Property Methods }

    { methods }
    function getTimingInfo: JTimingInfo; cdecl; //()Lcom/amazonaws/util/TimingInfo;
    function isEnabled: Boolean; cdecl; //()Z
    procedure startEvent(eventName: JString); cdecl; overload; //(Ljava/lang/String;)V
    procedure startEvent(f: JMetricType); cdecl; overload; //(Lcom/amazonaws/metrics/MetricType;)V
    procedure endEvent(eventName: JString); cdecl; overload; //(Ljava/lang/String;)V
    procedure endEvent(f: JMetricType); cdecl; overload; //(Lcom/amazonaws/metrics/MetricType;)V
    procedure incrementCounter(event: JString); cdecl; overload; //(Ljava/lang/String;)V
    procedure incrementCounter(f: JMetricType); cdecl; overload; //(Lcom/amazonaws/metrics/MetricType;)V
    procedure setCounter(counterName: JString; count: Int64); cdecl; overload; //(Ljava/lang/String;J)V
    procedure setCounter(f: JMetricType; count: Int64); cdecl; overload; //(Lcom/amazonaws/metrics/MetricType;J)V
    procedure addProperty(propertyName: JString; value: JObject); cdecl; overload; //(Ljava/lang/String;Ljava/lang/Object;)V
    procedure addProperty(f: JMetricType; value: JObject); cdecl; overload; //(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    procedure log; cdecl; //()V
    function getProperty(propertyName: JString): JList; cdecl; overload; //(Ljava/lang/String;)Ljava/util/List;
    function getProperty(f: JMetricType): JList; cdecl; overload; //(Lcom/amazonaws/metrics/MetricType;)Ljava/util/List;

    { Property }
  end;

  TJAWSRequestMetrics = class(TJavaGenericImport<JAWSRequestMetricsClass, JAWSRequestMetrics>) end;

  JAWSRequestMetricsFullSupportClass = interface(JAWSRequestMetricsClass) // or JObjectClass // SuperSignature: com/amazonaws/util/AWSRequestMetrics
  ['{0E374411-FF09-4DBC-9439-F92E8A8D94FA}']
    { static Property Methods }

    { static Methods }
    {class} function init: JAWSRequestMetricsFullSupport; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/AWSRequestMetricsFullSupport')]
  JAWSRequestMetricsFullSupport = interface(JAWSRequestMetrics) // or JObject // SuperSignature: com/amazonaws/util/AWSRequestMetrics
  ['{44E5FB38-239B-4623-9B3C-D132A5CF69A9}']
    { Property Methods }

    { methods }
    procedure startEvent(eventName: JString); cdecl; overload; //(Ljava/lang/String;)V
    procedure startEvent(f: JMetricType); cdecl; overload; //(Lcom/amazonaws/metrics/MetricType;)V
    procedure endEvent(eventName: JString); cdecl; overload; //(Ljava/lang/String;)V
    procedure endEvent(f: JMetricType); cdecl; overload; //(Lcom/amazonaws/metrics/MetricType;)V
    procedure incrementCounter(event: JString); cdecl; overload; //(Ljava/lang/String;)V
    procedure incrementCounter(f: JMetricType); cdecl; overload; //(Lcom/amazonaws/metrics/MetricType;)V
    procedure setCounter(counterName: JString; count: Int64); cdecl; overload; //(Ljava/lang/String;J)V
    procedure setCounter(f: JMetricType; count: Int64); cdecl; overload; //(Lcom/amazonaws/metrics/MetricType;J)V
    procedure addProperty(propertyName: JString; value: JObject); cdecl; overload; //(Ljava/lang/String;Ljava/lang/Object;)V
    procedure addProperty(f: JMetricType; value: JObject); cdecl; overload; //(Lcom/amazonaws/metrics/MetricType;Ljava/lang/Object;)V
    procedure log; cdecl; //()V
    function getProperty(propertyName: JString): JList; cdecl; overload; //(Ljava/lang/String;)Ljava/util/List;
    function getProperty(f: JMetricType): JList; cdecl; overload; //(Lcom/amazonaws/metrics/MetricType;)Ljava/util/List;
    function isEnabled: Boolean; cdecl; //()Z

    { Property }
  end;

  TJAWSRequestMetricsFullSupport = class(TJavaGenericImport<JAWSRequestMetricsFullSupportClass, JAWSRequestMetricsFullSupport>) end;

  JAWSServiceMetricsClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{1EFB5BF7-0D1F-40BD-943C-58213E9E06AE}']
    { static Property Methods }
    {class} function _GetHttpClientGetConnectionTime: JAWSServiceMetrics; //Lcom/amazonaws/util/AWSServiceMetrics;

    { static Methods }
    {class} function values: TJavaObjectArray<JAWSServiceMetrics>; cdecl; //()[Lcom/amazonaws/util/AWSServiceMetrics;
    {class} function valueOf(P1: JString): JAWSServiceMetrics; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/util/AWSServiceMetrics;

    { static Property }
    {class} property HttpClientGetConnectionTime: JAWSServiceMetrics read _GetHttpClientGetConnectionTime;
  end;

  [JavaSignature('com/amazonaws/util/AWSServiceMetrics')]
  JAWSServiceMetrics = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{CC03162D-AB05-4B86-98A6-174495D8E40B}']
    { Property Methods }

    { methods }
    function getServiceName: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJAWSServiceMetrics = class(TJavaGenericImport<JAWSServiceMetricsClass, JAWSServiceMetrics>) end;

  JBase16Class = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{3D191830-F5E8-4488-B288-9E3C51E8FFF0}']
    { static Property Methods }

    { static Methods }
    {class} function values: TJavaObjectArray<JBase16>; cdecl; //()[Lcom/amazonaws/util/Base16;
    {class} function valueOf(P1: JString): JBase16; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/util/Base16;
    {class} function encodeAsString(P1: TJavaArray<Byte>): JString; cdecl; //([B)Ljava/lang/String;
    {class} function encode(P1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl; //([B)[B
    {class} function decode(buf: JString): TJavaArray<Byte>; cdecl; overload; //(Ljava/lang/String;)[B
    {class} function decode(P1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl; overload; //([B)[B

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/Base16')]
  JBase16 = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{0ED2F244-BD74-42F5-8E66-8C5A76DE134E}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJBase16 = class(TJavaGenericImport<JBase16Class, JBase16>) end;

  JBase16Codec_LazyHolderClass = interface(JObjectClass)
  ['{C29A0385-03FA-4028-893B-37D4EB43BA00}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/Base16Codec$LazyHolder')]
  JBase16Codec_LazyHolder = interface(JObject)
  ['{30CE2A06-ED5B-438C-A35E-A0BD36D953E5}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJBase16Codec_LazyHolder = class(TJavaGenericImport<JBase16Codec_LazyHolderClass, JBase16Codec_LazyHolder>) end;

  JBase16CodecClass = interface(JObjectClass)
  ['{08C3DDA9-9EA7-40D3-8D8F-EEECC0FEA7A3}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/Base16Codec')]
  JBase16Codec = interface(JObject)
  ['{D32931E7-82F7-43DE-B7BB-017D37066E5D}']
    { Property Methods }

    { methods }
    function encode(src: TJavaArray<Byte>): TJavaArray<Byte>; cdecl; //([B)[B
    function decode(src: TJavaArray<Byte>; length: Integer): TJavaArray<Byte>; cdecl; //([BI)[B

    { Property }
  end;

  TJBase16Codec = class(TJavaGenericImport<JBase16CodecClass, JBase16Codec>) end;

  JBase32Class = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{6C0B6C5A-7595-4E31-9320-77085A2B4C24}']
    { static Property Methods }

    { static Methods }
    {class} function values: TJavaObjectArray<JBase32>; cdecl; //()[Lcom/amazonaws/util/Base32;
    {class} function valueOf(P1: JString): JBase32; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/util/Base32;
    {class} function encodeAsString(P1: TJavaArray<Byte>): JString; cdecl; //([B)Ljava/lang/String;
    {class} function encode(P1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl; //([B)[B
    {class} function decode(buf: JString): TJavaArray<Byte>; cdecl; overload; //(Ljava/lang/String;)[B
    {class} function decode(P1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl; overload; //([B)[B

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/Base32')]
  JBase32 = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{1CF0E981-FE12-4EA5-98D7-1C3187334197}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJBase32 = class(TJavaGenericImport<JBase32Class, JBase32>) end;

  JBase32Codec_LazyHolderClass = interface(JObjectClass)
  ['{559D2E67-5D64-4997-BD3B-13066F79F3E7}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/Base32Codec$LazyHolder')]
  JBase32Codec_LazyHolder = interface(JObject)
  ['{66D41E06-CEBB-4C0A-82DB-D8EF3A1B4D74}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJBase32Codec_LazyHolder = class(TJavaGenericImport<JBase32Codec_LazyHolderClass, JBase32Codec_LazyHolder>) end;

  JBase32CodecClass = interface(JAbstractBase32CodecClass) // or JObjectClass // SuperSignature: com/amazonaws/util/AbstractBase32Codec
  ['{9D76E7EB-B0B5-47D6-B7E6-26E7CF2B2935}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/Base32Codec')]
  JBase32Codec = interface(JAbstractBase32Codec) // or JObject // SuperSignature: com/amazonaws/util/AbstractBase32Codec
  ['{2FDECC8D-47B8-4BCD-BFFC-D23552E5DC0F}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJBase32Codec = class(TJavaGenericImport<JBase32CodecClass, JBase32Codec>) end;

  JBase64Class = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{52A36C05-E874-4570-963F-8A58AB4B6E4D}']
    { static Property Methods }

    { static Methods }
    {class} function values: TJavaObjectArray<JBase64>; cdecl; //()[Lcom/amazonaws/util/Base64;
    {class} function valueOf(P1: JString): JBase64; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/util/Base64;
    {class} function encodeAsString(P1: TJavaArray<Byte>): JString; cdecl; //([B)Ljava/lang/String;
    {class} function encode(P1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl; //([B)[B
    {class} function decode(buf: JString): TJavaArray<Byte>; cdecl; overload; //(Ljava/lang/String;)[B
    {class} function decode(P1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl; overload; //([B)[B

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/Base64')]
  JBase64 = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{C090205E-0BEB-427D-A803-EB5B74BDC560}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJBase64 = class(TJavaGenericImport<JBase64Class, JBase64>) end;

  JBase64Codec_LazyHolderClass = interface(JObjectClass)
  ['{5FC75209-FC00-4F37-BCEE-8063CD004083}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/Base64Codec$LazyHolder')]
  JBase64Codec_LazyHolder = interface(JObject)
  ['{D03ED3E8-E04F-4278-97BB-AFDD967032C2}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJBase64Codec_LazyHolder = class(TJavaGenericImport<JBase64Codec_LazyHolderClass, JBase64Codec_LazyHolder>) end;

  JBase64CodecClass = interface(JObjectClass)
  ['{154D3611-4F6E-4014-A7B8-CA124DCB8221}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/Base64Codec')]
  JBase64Codec = interface(JObject)
  ['{CFEC0F38-014C-4762-B300-554447EB6789}']
    { Property Methods }

    { methods }
    function encode(src: TJavaArray<Byte>): TJavaArray<Byte>; cdecl; //([B)[B
    function decode(src: TJavaArray<Byte>; length: Integer): TJavaArray<Byte>; cdecl; //([BI)[B

    { Property }
  end;

  TJBase64Codec = class(TJavaGenericImport<JBase64CodecClass, JBase64Codec>) end;

  JBinaryUtilsClass = interface(JObjectClass)
  ['{68E1E222-6919-4A9D-89E8-24169624AB92}']
    { static Property Methods }

    { static Methods }
    {class} function init: JBinaryUtils; cdecl; //()V
    {class} function toHex(sb: TJavaArray<Byte>): JString; cdecl; //([B)Ljava/lang/String;
    {class} function fromHex(result: JString): TJavaArray<Byte>; cdecl; //(Ljava/lang/String;)[B
    {class} function toBase64(P1: TJavaArray<Byte>): JString; cdecl; //([B)Ljava/lang/String;
    {class} function fromBase64(P1: JString): TJavaArray<Byte>; cdecl; //(Ljava/lang/String;)[B
    {class} function toStream(bytes: JByteBuffer): JInputStream; cdecl; //(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;
    {class} function copyAllBytesFrom(copy: JByteBuffer): TJavaArray<Byte>; cdecl; //(Ljava/nio/ByteBuffer;)[B

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/BinaryUtils')]
  JBinaryUtils = interface(JObject)
  ['{0D756150-1B0E-445A-B034-452108879EDD}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJBinaryUtils = class(TJavaGenericImport<JBinaryUtilsClass, JBinaryUtils>) end;

 
  JClassLoaderHelperClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{6755E545-9B89-48FA-A94E-E326B864E626}']
    { static Property Methods }

    { static Methods }
    {class} function values: TJavaObjectArray<JClassLoaderHelper>; cdecl; //()[Lcom/amazonaws/util/ClassLoaderHelper;
    {class} function valueOf(P1: JString): JClassLoaderHelper; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/util/ClassLoaderHelper;
    {class} function getResource(classes: JString; P2: TJavaObjectArray<Jlang_Class>): JURL; cdecl; overload; //(Ljava/lang/String;[Ljava/lang/Class;)Ljava/net/URL;
    {class} function getResource(classesFirst: JString; classes: Boolean; url: TJavaObjectArray<Jlang_Class>): JURL; cdecl; overload; //(Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/net/URL;
    {class} function loadClass(classes: JString; P2: TJavaObjectArray<Jlang_Class>): Jlang_Class; cdecl; overload; //(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Class;
    {class} function loadClass(classesFirst: JString; classes: Boolean; target: TJavaObjectArray<Jlang_Class>): Jlang_Class; cdecl; overload; //(Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/lang/Class;
    {class} function getResourceAsStream(classes: JString; P2: TJavaObjectArray<Jlang_Class>): JInputStream; cdecl; overload; //(Ljava/lang/String;[Ljava/lang/Class;)Ljava/io/InputStream;
    {class} function getResourceAsStream(classesFirst: JString; classes: Boolean; url: TJavaObjectArray<Jlang_Class>): JInputStream; cdecl; overload; //(Ljava/lang/String;Z[Ljava/lang/Class;)Ljava/io/InputStream;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/ClassLoaderHelper')]
  JClassLoaderHelper = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{798A6CB0-67A5-47AF-92C3-4FA5CA63EE7A}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJClassLoaderHelper = class(TJavaGenericImport<JClassLoaderHelperClass, JClassLoaderHelper>) end;

  JCodecClass = interface(JObjectClass)
  ['{39A0F9D6-3B87-4CE4-8E46-A927D305A7DA}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/Codec')]
  JCodec = interface(IJavaInstance)
  ['{8D6ED3DE-DAF2-42DB-B825-7007F420A9C5}']
    { Property Methods }

    { methods }
    function encode(P1: TJavaArray<Byte>): TJavaArray<Byte>; cdecl; //([B)[B
    function decode(P1: TJavaArray<Byte>; P2: Integer): TJavaArray<Byte>; cdecl; //([BI)[B

    { Property }
  end;

  TJCodec = class(TJavaGenericImport<JCodecClass, JCodec>) end;

  JCodecUtilsClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{8E4A2774-E392-485B-A0E8-8A2AA5B9D7D1}']
    { static Property Methods }

    { static Methods }
    {class} function values: TJavaObjectArray<JCodecUtils>; cdecl; //()[Lcom/amazonaws/util/CodecUtils;
    {class} function valueOf(P1: JString): JCodecUtils; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/util/CodecUtils;
    {class} function toBytesDirect(src: JString): TJavaArray<Byte>; cdecl; //(Ljava/lang/String;)[B
    {class} function toStringDirect(dest: TJavaArray<Byte>): JString; cdecl; //([B)Ljava/lang/String;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/CodecUtils')]
  JCodecUtils = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{AE2EC0D9-6849-4117-8E98-D811A2100C19}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJCodecUtils = class(TJavaGenericImport<JCodecUtilsClass, JCodecUtils>) end;

  JCountingInputStreamClass = interface(JSdkFilterInputStreamClass) // or JObjectClass // SuperSignature: com/amazonaws/internal/SdkFilterInputStream
  ['{9DA436A4-D206-413A-9AB7-9FDC3C185309}']
    { static Property Methods }

    { static Methods }
    {class} function init(ain: JInputStream): JCountingInputStream; cdecl; //(Ljava/io/InputStream;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/CountingInputStream')]
  JCountingInputStream = interface(JSdkFilterInputStream) // or JObject // SuperSignature: com/amazonaws/internal/SdkFilterInputStream
  ['{ECD1D9FB-B934-4503-BC60-4EBEF584DACB}']
    { Property Methods }

    { methods }
    function getByteCount: Int64; cdecl; //()J
    function read: Integer; cdecl; overload; //()I
    function read(b: TJavaArray<Byte>; off: Integer; len: Integer): Integer; cdecl; overload; //([BII)I

    { Property }
  end;

  TJCountingInputStream = class(TJavaGenericImport<JCountingInputStreamClass, JCountingInputStream>) end;

  JCRC32ChecksumCalculatingInputStreamClass = interface(JSdkFilterInputStreamClass) // or JObjectClass // SuperSignature: com/amazonaws/internal/SdkFilterInputStream
  ['{403E82A6-6363-4F62-BBA6-54E78C2733C1}']
    { static Property Methods }

    { static Methods }
    {class} function init(ain: JInputStream): JCRC32ChecksumCalculatingInputStream; cdecl; //(Ljava/io/InputStream;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/CRC32ChecksumCalculatingInputStream')]
  JCRC32ChecksumCalculatingInputStream = interface(JSdkFilterInputStream) // or JObject // SuperSignature: com/amazonaws/internal/SdkFilterInputStream
  ['{9FA27EDE-48AD-4AE9-9973-2ED05D1219B3}']
    { Property Methods }

    { methods }
    function getCRC32Checksum: Int64; cdecl; //()J
    procedure reset; cdecl; //()V
    function read: Integer; cdecl; overload; //()I
    function read(b: TJavaArray<Byte>; off: Integer; len: Integer): Integer; cdecl; overload; //([BII)I

    { Property }
  end;

  TJCRC32ChecksumCalculatingInputStream = class(TJavaGenericImport<JCRC32ChecksumCalculatingInputStreamClass, JCRC32ChecksumCalculatingInputStream>) end;

  JDateUtilsClass = interface(JObjectClass)
  ['{FC14F91F-549A-4D62-826B-653FD25A5D42}']
    { static Property Methods }
    {class} function _GetISO8601_DATE_PATTERN: JString; //Ljava/lang/String;
    {class} function _GetALTERNATE_ISO8601_DATE_PATTERN: JString; //Ljava/lang/String;
    {class} function _GetRFC822_DATE_PATTERN: JString; //Ljava/lang/String;
    {class} function _GetCOMPRESSED_DATE_PATTERN: JString; //Ljava/lang/String;

    { static Methods }
    {class} function init: JDateUtils; cdecl; //()V
    {class} function parse(dateString: JString; pe: JString): JDate; cdecl; //(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    {class} function format(date: JString; P2: JDate): JString; cdecl; //(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    {class} function parseISO8601Date(e: JString): JDate; cdecl; //(Ljava/lang/String;)Ljava/util/Date;
    {class} function formatISO8601Date(P1: JDate): JString; cdecl; //(Ljava/util/Date;)Ljava/lang/String;
    {class} function parseRFC822Date(P1: JString): JDate; cdecl; //(Ljava/lang/String;)Ljava/util/Date;
    {class} function formatRFC822Date(P1: JDate): JString; cdecl; //(Ljava/util/Date;)Ljava/lang/String;
    {class} function parseCompressedISO8601Date(P1: JString): JDate; cdecl; //(Ljava/lang/String;)Ljava/util/Date;
    {class} function cloneDate(P1: JDate): JDate; cdecl; //(Ljava/util/Date;)Ljava/util/Date;
    {class} function numberOfDaysSinceEpoch(P1: Int64): Int64; cdecl; //(J)J

    { static Property }
    {class} property ISO8601_DATE_PATTERN: JString read _GetISO8601_DATE_PATTERN;
    {class} property ALTERNATE_ISO8601_DATE_PATTERN: JString read _GetALTERNATE_ISO8601_DATE_PATTERN;
    {class} property RFC822_DATE_PATTERN: JString read _GetRFC822_DATE_PATTERN;
    {class} property COMPRESSED_DATE_PATTERN: JString read _GetCOMPRESSED_DATE_PATTERN;
  end;

  [JavaSignature('com/amazonaws/util/DateUtils')]
  JDateUtils = interface(JObject)
  ['{88AA6E10-C0AA-4ACE-9E22-54B659A5247D}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJDateUtils = class(TJavaGenericImport<JDateUtilsClass, JDateUtils>) end;

  JEncodingSchemeClass = interface(JObjectClass)
  ['{2B9DA3E0-84BE-4BE0-A7A2-B353BBFCAA7C}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/EncodingScheme')]
  JEncodingScheme = interface(IJavaInstance)
  ['{6E5FDF3A-B721-4492-952F-502A0E2C56D4}']
    { Property Methods }

    { methods }
    function encodeAsString(P1: TJavaArray<Byte>): JString; cdecl; //([B)Ljava/lang/String;
    function decode(P1: JString): TJavaArray<Byte>; cdecl; //(Ljava/lang/String;)[B

    { Property }
  end;

  TJEncodingScheme = class(TJavaGenericImport<JEncodingSchemeClass, JEncodingScheme>) end;

  JEncodingSchemeEnumClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{119FE3DC-670A-4AD0-8BC5-C2FE3E3B1795}']
    { static Property Methods }
    {class} function _GetBASE16: JEncodingSchemeEnum; //Lcom/amazonaws/util/EncodingSchemeEnum;
    {class} function _GetBASE32: JEncodingSchemeEnum; //Lcom/amazonaws/util/EncodingSchemeEnum;
    {class} function _GetBASE64: JEncodingSchemeEnum; //Lcom/amazonaws/util/EncodingSchemeEnum;

    { static Methods }
    {class} function values: TJavaObjectArray<JEncodingSchemeEnum>; cdecl; //()[Lcom/amazonaws/util/EncodingSchemeEnum;
    {class} function valueOf(P1: JString): JEncodingSchemeEnum; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/util/EncodingSchemeEnum;

    { static Property }
    {class} property BASE16: JEncodingSchemeEnum read _GetBASE16;
    {class} property BASE32: JEncodingSchemeEnum read _GetBASE32;
    {class} property BASE64: JEncodingSchemeEnum read _GetBASE64;
  end;

  [JavaSignature('com/amazonaws/util/EncodingSchemeEnum')]
  JEncodingSchemeEnum = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{97890D53-87EF-4086-8D03-840F8700FFCD}']
    { Property Methods }

    { methods }
    function encodeAsString(P1: TJavaArray<Byte>): JString; cdecl; //([B)Ljava/lang/String;

    { Property }
  end;

  TJEncodingSchemeEnum = class(TJavaGenericImport<JEncodingSchemeEnumClass, JEncodingSchemeEnum>) end;

  JHttpClientWrappingInputStreamClass = interface(JSdkFilterInputStreamClass) // or JObjectClass // SuperSignature: com/amazonaws/internal/SdkFilterInputStream
  ['{BBB86FD7-FAFE-420E-81AB-E215EFD7C8C5}']
    { static Property Methods }

    { static Methods }
    {class} function init(client: JHttpClient; stream: JInputStream): JHttpClientWrappingInputStream; cdecl; //(Lorg/apache/http/client/HttpClient;Ljava/io/InputStream;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/HttpClientWrappingInputStream')]
  JHttpClientWrappingInputStream = interface(JSdkFilterInputStream) // or JObject // SuperSignature: com/amazonaws/internal/SdkFilterInputStream
  ['{5CEFBB55-88C6-4917-A139-2381F9C7E8B5}']
    { Property Methods }

    { methods }
    procedure close; cdecl; //()V

    { Property }
  end;

  TJHttpClientWrappingInputStream = class(TJavaGenericImport<JHttpClientWrappingInputStreamClass, JHttpClientWrappingInputStream>) end;

  JHttpUtilsClass = interface(JObjectClass)
  ['{25AED9F7-7E15-4DD2-8E6C-2AABFE61D7CF}']
    { static Property Methods }

    { static Methods }
    {class} function init: JHttpUtils; cdecl; //()V
    {class} function urlEncode(path: JString; encoded: Boolean): JString; cdecl; //(Ljava/lang/String;Z)Ljava/lang/String;
    {class} function urlDecode(ex: JString): JString; cdecl; //(Ljava/lang/String;)Ljava/lang/String;
    {class} function isUsingNonDefaultPort(scheme: JURI): Boolean; cdecl; //(Ljava/net/URI;)Z
    {class} function usePayloadForQueryParameters(requestIsPOST: JRequest): Boolean; cdecl; //(Lcom/amazonaws/Request;)Z
    {class} function encodeParameters(sb: JRequest): JString; cdecl; //(Lcom/amazonaws/Request;)Ljava/lang/String;
    {class} function appendUri(path: JString; P2: JString): JString; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    {class} function appendUri(path: JString; escapeDoubleSlash: JString; resultUri: Boolean): JString; cdecl; overload; //(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    {class} function fetchFile(config: JURI; url: JClientConfiguration): JInputStream; cdecl; //(Ljava/net/URI;Lcom/amazonaws/ClientConfiguration;)Ljava/io/InputStream;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/HttpUtils')]
  JHttpUtils = interface(JObject)
  ['{32C1ED1B-A132-42DA-820E-12BB1D0477B7}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJHttpUtils = class(TJavaGenericImport<JHttpUtilsClass, JHttpUtils>) end;

  JImmutableMapParameter_1Class = interface(JObjectClass)
  ['{796734EA-5436-4577-A76D-3C5A749D19BC}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/ImmutableMapParameter$1')]
  JImmutableMapParameter_1 = interface(JObject)
  ['{D8595DB3-2735-49A5-89B3-D44C408924B7}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJImmutableMapParameter_1 = class(TJavaGenericImport<JImmutableMapParameter_1Class, JImmutableMapParameter_1>) end;

  JImmutableMapParameter_BuilderClass = interface(JObjectClass)
  ['{8E7177F0-A4A5-4E44-9C89-7E9849A9C4B9}']
    { static Property Methods }

    { static Methods }
    {class} function init: JImmutableMapParameter_Builder; cdecl; //()V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/ImmutableMapParameter$Builder')]
  JImmutableMapParameter_Builder = interface(JObject)
  ['{977E202C-95C5-45A4-A1A0-E853D8C5B3A1}']
    { Property Methods }

    { methods }
    function put(key: JObject; value: JObject): JImmutableMapParameter_Builder; cdecl; //(Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazonaws/util/ImmutableMapParameter$Builder;
    function build: JImmutableMapParameter; cdecl; //()Lcom/amazonaws/util/ImmutableMapParameter;

    { Property }
  end;

  TJImmutableMapParameter_Builder = class(TJavaGenericImport<JImmutableMapParameter_BuilderClass, JImmutableMapParameter_Builder>) end;

  JImmutableMapParameterClass = interface(JObjectClass)
  ['{2F276B1A-EB87-41BE-A1D3-F2D0D3293630}']
    { static Property Methods }

    { static Methods }
    {class} function builder: JImmutableMapParameter_Builder; cdecl; //()Lcom/amazonaws/util/ImmutableMapParameter$Builder;
    {class} function &of(v0: JObject; map: JObject): JImmutableMapParameter; cdecl; overload; //(Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazonaws/util/ImmutableMapParameter;
    {class} function &of(v0: JObject; k1: JObject; v1: JObject; map: JObject): JImmutableMapParameter; cdecl; overload; //(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazonaws/util/ImmutableMapParameter;
    {class} function &of(v0: JObject; k1: JObject; v1: JObject; k2: JObject; v2: JObject; map: JObject): JImmutableMapParameter; cdecl; overload; //(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazonaws/util/ImmutableMapParameter;
    {class} function &of(v0: JObject; k1: JObject; v1: JObject; k2: JObject; v2: JObject; k3: JObject; v3: JObject; map: JObject): JImmutableMapParameter; cdecl; overload; //(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazonaws/util/ImmutableMapParameter;
    {class} function &of(v0: JObject; k1: JObject; v1: JObject; k2: JObject; v2: JObject; k3: JObject; v3: JObject; k4: JObject; v4: JObject; map: JObject): JImmutableMapParameter; cdecl; overload; //(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/amazonaws/util/ImmutableMapParameter;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/ImmutableMapParameter')]
  JImmutableMapParameter = interface(JObject)
  ['{E984FC3F-B2E4-445D-8F41-2FC9D972D40F}']
    { Property Methods }

    { methods }
    function containsKey(key: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z
    function containsValue(value: JObject): Boolean; cdecl; //(Ljava/lang/Object;)Z
    function entrySet: JSet; cdecl; //()Ljava/util/Set;
    function get(key: JObject): JObject; cdecl; //(Ljava/lang/Object;)Ljava/lang/Object;
    function isEmpty: Boolean; cdecl; //()Z
    function keySet: JSet; cdecl; //()Ljava/util/Set;
    function size: Integer; cdecl; //()I
    function values: JCollection; cdecl; //()Ljava/util/Collection;
    procedure clear; cdecl; //()V
    function put(key: JObject; value: JObject): JObject; cdecl; //(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    procedure putAll(map: JMap); cdecl; //(Ljava/util/Map;)V
    function remove(key: JObject): JObject; cdecl; //(Ljava/lang/Object;)Ljava/lang/Object;

    { Property }
  end;

  TJImmutableMapParameter = class(TJavaGenericImport<JImmutableMapParameterClass, JImmutableMapParameter>) end;

  JAwsJsonFactoryClass = interface(JObjectClass)
  ['{D9AADA66-1F65-4750-8770-4D4A6BDB3588}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/json/AwsJsonFactory')]
  JAwsJsonFactory = interface(IJavaInstance)
  ['{B9CCFF3A-E917-4141-BCC9-2F5E11672927}']
    { Property Methods }

    { methods }
    function getJsonReader(P1: JReader): JAwsJsonReader; cdecl; //(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;
    function getJsonWriter(P1: JWriter): JAwsJsonWriter; cdecl; //(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    { Property }
  end;

  TJAwsJsonFactory = class(TJavaGenericImport<JAwsJsonFactoryClass, JAwsJsonFactory>) end;

  JAwsJsonReaderClass = interface(JObjectClass)
  ['{C1BAA965-69B0-481A-B52D-EFA9C3C9EAD2}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/json/AwsJsonReader')]
  JAwsJsonReader = interface(IJavaInstance)
  ['{1A45388B-02B3-4F10-84BB-BF2596CB39C7}']
    { Property Methods }

    { methods }
    procedure beginArray; cdecl; //()V
    procedure endArray; cdecl; //()V
    procedure beginObject; cdecl; //()V
    procedure endObject; cdecl; //()V
    function isContainer: Boolean; cdecl; //()Z
    function hasNext: Boolean; cdecl; //()Z
    function nextName: JString; cdecl; //()Ljava/lang/String;
    function nextString: JString; cdecl; //()Ljava/lang/String;
    function peek: JAwsJsonToken; cdecl; //()Lcom/amazonaws/util/json/AwsJsonToken;
    procedure skipValue; cdecl; //()V
    procedure close; cdecl; //()V

    { Property }
  end;

  TJAwsJsonReader = class(TJavaGenericImport<JAwsJsonReaderClass, JAwsJsonReader>) end;

  JAwsJsonTokenClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{36A160C2-0DA8-4212-935A-3B4E659C5A9C}']
    { static Property Methods }
    {class} function _GetBEGIN_ARRAY: JAwsJsonToken; //Lcom/amazonaws/util/json/AwsJsonToken;
    {class} function _GetEND_ARRAY: JAwsJsonToken; //Lcom/amazonaws/util/json/AwsJsonToken;
    {class} function _GetBEGIN_OBJECT: JAwsJsonToken; //Lcom/amazonaws/util/json/AwsJsonToken;
    {class} function _GetEND_OBJECT: JAwsJsonToken; //Lcom/amazonaws/util/json/AwsJsonToken;
    {class} function _GetFIELD_NAME: JAwsJsonToken; //Lcom/amazonaws/util/json/AwsJsonToken;
    {class} function _GetVALUE_BOOLEAN: JAwsJsonToken; //Lcom/amazonaws/util/json/AwsJsonToken;
    {class} function _GetVALUE_NULL: JAwsJsonToken; //Lcom/amazonaws/util/json/AwsJsonToken;
    {class} function _GetVALUE_NUMBER: JAwsJsonToken; //Lcom/amazonaws/util/json/AwsJsonToken;
    {class} function _GetVALUE_STRING: JAwsJsonToken; //Lcom/amazonaws/util/json/AwsJsonToken;
    {class} function _GetUNKNOWN: JAwsJsonToken; //Lcom/amazonaws/util/json/AwsJsonToken;

    { static Methods }
    {class} function values: TJavaObjectArray<JAwsJsonToken>; cdecl; //()[Lcom/amazonaws/util/json/AwsJsonToken;
    {class} function valueOf(P1: JString): JAwsJsonToken; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonToken;

    { static Property }
    {class} property BEGIN_ARRAY: JAwsJsonToken read _GetBEGIN_ARRAY;
    {class} property END_ARRAY: JAwsJsonToken read _GetEND_ARRAY;
    {class} property BEGIN_OBJECT: JAwsJsonToken read _GetBEGIN_OBJECT;
    {class} property END_OBJECT: JAwsJsonToken read _GetEND_OBJECT;
    {class} property FIELD_NAME: JAwsJsonToken read _GetFIELD_NAME;
    {class} property VALUE_BOOLEAN: JAwsJsonToken read _GetVALUE_BOOLEAN;
    {class} property VALUE_NULL: JAwsJsonToken read _GetVALUE_NULL;
    {class} property VALUE_NUMBER: JAwsJsonToken read _GetVALUE_NUMBER;
    {class} property VALUE_STRING: JAwsJsonToken read _GetVALUE_STRING;
    {class} property UNKNOWN: JAwsJsonToken read _GetUNKNOWN;
  end;

  [JavaSignature('com/amazonaws/util/json/AwsJsonToken')]
  JAwsJsonToken = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{D23849A4-AEFD-4F11-B953-C04C3A8F2A28}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJAwsJsonToken = class(TJavaGenericImport<JAwsJsonTokenClass, JAwsJsonToken>) end;

  JAwsJsonWriterClass = interface(JObjectClass)
  ['{118108D4-0778-44E8-BE17-D24FC1E2B85F}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/json/AwsJsonWriter')]
  JAwsJsonWriter = interface(IJavaInstance)
  ['{4EE30FFA-7F4C-4132-BA94-2C7655BCCD35}']
    { Property Methods }

    { methods }
    function beginArray: JAwsJsonWriter; cdecl; //()Lcom/amazonaws/util/json/AwsJsonWriter;
    function endArray: JAwsJsonWriter; cdecl; //()Lcom/amazonaws/util/json/AwsJsonWriter;
    function beginObject: JAwsJsonWriter; cdecl; //()Lcom/amazonaws/util/json/AwsJsonWriter;
    function endObject: JAwsJsonWriter; cdecl; //()Lcom/amazonaws/util/json/AwsJsonWriter;
    function name(P1: JString): JAwsJsonWriter; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;
    function value(P1: JString): JAwsJsonWriter; cdecl; overload; //(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;
    function value(P1: Boolean): JAwsJsonWriter; cdecl; overload; //(Z)Lcom/amazonaws/util/json/AwsJsonWriter;
    function value(P1: Double): JAwsJsonWriter; cdecl; overload; //(D)Lcom/amazonaws/util/json/AwsJsonWriter;
    function value(P1: Int64): JAwsJsonWriter; cdecl; overload; //(J)Lcom/amazonaws/util/json/AwsJsonWriter;
    function value(P1: JNumber): JAwsJsonWriter; cdecl; overload; //(Ljava/lang/Number;)Lcom/amazonaws/util/json/AwsJsonWriter;
    function value(P1: JDate): JAwsJsonWriter; cdecl; overload; //(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;
    function value(P1: JByteBuffer): JAwsJsonWriter; cdecl; overload; //(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/AwsJsonWriter;
    function value: JAwsJsonWriter; cdecl; overload; //()Lcom/amazonaws/util/json/AwsJsonWriter;
    procedure flush; cdecl; //()V
    procedure close; cdecl; //()V

    { Property }
  end;

  TJAwsJsonWriter = class(TJavaGenericImport<JAwsJsonWriterClass, JAwsJsonWriter>) end;

  JGsonFactory_GsonReaderClass = interface(JObjectClass)
  ['{6492AC88-7E6E-48EF-B70D-B27D6234A909}']
    { static Property Methods }

    { static Methods }
    {class} function init(ain: JReader): JGsonFactory_GsonReader; cdecl; //(Ljava/io/Reader;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/json/GsonFactory$GsonReader')]
  JGsonFactory_GsonReader = interface(JObject)
  ['{D9D2F1CE-B875-4BFB-AE73-D1EFBEA45A5F}']
    { Property Methods }

    { methods }
    procedure beginArray; cdecl; //()V
    procedure endArray; cdecl; //()V
    procedure beginObject; cdecl; //()V
    procedure endObject; cdecl; //()V
    function isContainer: Boolean; cdecl; //()Z
    function hasNext: Boolean; cdecl; //()Z
    function nextName: JString; cdecl; //()Ljava/lang/String;
    function nextString: JString; cdecl; //()Ljava/lang/String;
    procedure skipValue; cdecl; //()V
    function peek: JAwsJsonToken; cdecl; //()Lcom/amazonaws/util/json/AwsJsonToken;
    procedure close; cdecl; //()V

    { Property }
  end;

  TJGsonFactory_GsonReader = class(TJavaGenericImport<JGsonFactory_GsonReaderClass, JGsonFactory_GsonReader>) end;

  JGsonFactory_GsonWriterClass = interface(JObjectClass)
  ['{992B16CB-ECE6-489D-B96A-55A28A2AA32E}']
    { static Property Methods }

    { static Methods }
    {class} function init(aout: JWriter): JGsonFactory_GsonWriter; cdecl; //(Ljava/io/Writer;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/json/GsonFactory$GsonWriter')]
  JGsonFactory_GsonWriter = interface(JObject)
  ['{71A1FA53-C9FC-40A2-81FC-EAD71B2A408A}']
    { Property Methods }

    { methods }
    function beginArray: JAwsJsonWriter; cdecl; //()Lcom/amazonaws/util/json/AwsJsonWriter;
    function endArray: JAwsJsonWriter; cdecl; //()Lcom/amazonaws/util/json/AwsJsonWriter;
    function beginObject: JAwsJsonWriter; cdecl; //()Lcom/amazonaws/util/json/AwsJsonWriter;
    function endObject: JAwsJsonWriter; cdecl; //()Lcom/amazonaws/util/json/AwsJsonWriter;
    function name(name: JString): JAwsJsonWriter; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;
    function value(value: JString): JAwsJsonWriter; cdecl; overload; //(Ljava/lang/String;)Lcom/amazonaws/util/json/AwsJsonWriter;
    function value(value: Boolean): JAwsJsonWriter; cdecl; overload; //(Z)Lcom/amazonaws/util/json/AwsJsonWriter;
    function value(value: Double): JAwsJsonWriter; cdecl; overload; //(D)Lcom/amazonaws/util/json/AwsJsonWriter;
    function value(value: Int64): JAwsJsonWriter; cdecl; overload; //(J)Lcom/amazonaws/util/json/AwsJsonWriter;
    function value(value: JNumber): JAwsJsonWriter; cdecl; overload; //(Ljava/lang/Number;)Lcom/amazonaws/util/json/AwsJsonWriter;
    function value(value: JDate): JAwsJsonWriter; cdecl; overload; //(Ljava/util/Date;)Lcom/amazonaws/util/json/AwsJsonWriter;
    function value(value: JByteBuffer): JAwsJsonWriter; cdecl; overload; //(Ljava/nio/ByteBuffer;)Lcom/amazonaws/util/json/AwsJsonWriter;
    function value: JAwsJsonWriter; cdecl; overload; //()Lcom/amazonaws/util/json/AwsJsonWriter;
    procedure flush; cdecl; //()V
    procedure close; cdecl; //()V

    { Property }
  end;

  TJGsonFactory_GsonWriter = class(TJavaGenericImport<JGsonFactory_GsonWriterClass, JGsonFactory_GsonWriter>) end;

  JGsonFactoryClass = interface(JObjectClass)
  ['{D0AA457D-3AB1-49CC-BA06-0CA9555F1AA9}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/json/GsonFactory')]
  JGsonFactory = interface(JObject)
  ['{6EFFEB3A-12D1-4728-A9B7-E01BB6837024}']
    { Property Methods }

    { methods }
    function getJsonReader(ain: JReader): JAwsJsonReader; cdecl; //(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;
    function getJsonWriter(aout: JWriter): JAwsJsonWriter; cdecl; //(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    { Property }
  end;

  TJGsonFactory = class(TJavaGenericImport<JGsonFactoryClass, JGsonFactory>) end;

 
  JJacksonFactoryClass = interface(JObjectClass)
  ['{43B30902-4E0E-468A-A83F-C0B747947C5F}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/json/JacksonFactory')]
  JJacksonFactory = interface(JObject)
  ['{61D82DB5-36EB-4D3F-9D7C-76BAC3CD2907}']
    { Property Methods }

    { methods }
    function getJsonReader(ain: JReader): JAwsJsonReader; cdecl; //(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;
    function getJsonWriter(aout: JWriter): JAwsJsonWriter; cdecl; //(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;

    { Property }
  end;

  TJJacksonFactory = class(TJavaGenericImport<JJacksonFactoryClass, JJacksonFactory>) end;

  JJsonUtils_JsonEngineClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{C2D99186-A9A6-44E3-AE20-413D73C8E785}']
    { static Property Methods }
    {class} function _GetGson: JJsonUtils_JsonEngine; //Lcom/amazonaws/util/json/JsonUtils$JsonEngine;
    {class} function _GetJackson: JJsonUtils_JsonEngine; //Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    { static Methods }
    {class} function values: TJavaObjectArray<JJsonUtils_JsonEngine>; cdecl; //()[Lcom/amazonaws/util/json/JsonUtils$JsonEngine;
    {class} function valueOf(P1: JString): JJsonUtils_JsonEngine; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/util/json/JsonUtils$JsonEngine;

    { static Property }
    {class} property Gson: JJsonUtils_JsonEngine read _GetGson;
    {class} property Jackson: JJsonUtils_JsonEngine read _GetJackson;
  end;

  [JavaSignature('com/amazonaws/util/json/JsonUtils$JsonEngine')]
  JJsonUtils_JsonEngine = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{5BE6A53C-9CE5-43DE-AFF9-1031194748B0}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJJsonUtils_JsonEngine = class(TJavaGenericImport<JJsonUtils_JsonEngineClass, JJsonUtils_JsonEngine>) end;

  JJsonUtilsClass = interface(JObjectClass)
  ['{8CC85E52-48EA-4492-AE2B-EDADB7F7A667}']
    { static Property Methods }

    { static Methods }
    {class} function init: JJsonUtils; cdecl; //()V
    {class} procedure setJsonEngine(P1: JJsonUtils_JsonEngine); cdecl; //(Lcom/amazonaws/util/json/JsonUtils$JsonEngine;)V
    {class} function getJsonReader(P1: JReader): JAwsJsonReader; cdecl; //(Ljava/io/Reader;)Lcom/amazonaws/util/json/AwsJsonReader;
    {class} function getJsonWriter(P1: JWriter): JAwsJsonWriter; cdecl; //(Ljava/io/Writer;)Lcom/amazonaws/util/json/AwsJsonWriter;
    {class} function jsonToMap(reader: JReader): JMap; cdecl; overload; //(Ljava/io/Reader;)Ljava/util/Map;
    {class} function jsonToMap(P1: JString): JMap; cdecl; overload; //(Ljava/lang/String;)Ljava/util/Map;
    {class} function mapToString(aout: JMap): JString; cdecl; //(Ljava/util/Map;)Ljava/lang/String;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/json/JsonUtils')]
  JJsonUtils = interface(JObject)
  ['{F1255390-04A3-465E-9B15-AE2F65851F45}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJJsonUtils = class(TJavaGenericImport<JJsonUtilsClass, JJsonUtils>) end;

  JLengthCheckInputStreamClass = interface(JSdkFilterInputStreamClass) // or JObjectClass // SuperSignature: com/amazonaws/internal/SdkFilterInputStream
  ['{0B3CD4D8-1208-4731-941A-6DBC664997C3}']
    { static Property Methods }
    {class} function _GetINCLUDE_SKIPPED_BYTES: Boolean; //Z
    {class} function _GetEXCLUDE_SKIPPED_BYTES: Boolean; //Z

    { static Methods }
    {class} function init(ain: JInputStream; expectedLength: Int64; includeSkipped: Boolean): JLengthCheckInputStream; cdecl; //(Ljava/io/InputStream;JZ)V

    { static Property }
    {class} property INCLUDE_SKIPPED_BYTES: Boolean read _GetINCLUDE_SKIPPED_BYTES;
    {class} property EXCLUDE_SKIPPED_BYTES: Boolean read _GetEXCLUDE_SKIPPED_BYTES;
  end;

  [JavaSignature('com/amazonaws/util/LengthCheckInputStream')]
  JLengthCheckInputStream = interface(JSdkFilterInputStream) // or JObject // SuperSignature: com/amazonaws/internal/SdkFilterInputStream
  ['{500B0E64-BDE1-458F-AEDC-2AC0315B2CB6}']
    { Property Methods }

    { methods }
    function read: Integer; cdecl; overload; //()I
    function read(b: TJavaArray<Byte>; off: Integer; len: Integer): Integer; cdecl; overload; //([BII)I
    procedure mark(readlimit: Integer); cdecl; //(I)V
    procedure reset; cdecl; //()V
    function skip(n: Int64): Int64; cdecl; //(J)J

    { Property }
  end;

  TJLengthCheckInputStream = class(TJavaGenericImport<JLengthCheckInputStreamClass, JLengthCheckInputStream>) end;

  JMd5UtilsClass = interface(JObjectClass)
  ['{757C4893-CD19-41DC-B486-5E3AE4738AD3}']
    { static Property Methods }

    { static Methods }
    {class} function init: JMd5Utils; cdecl; //()V
    {class} function computeMD5Hash(bis: JInputStream): TJavaArray<Byte>; cdecl; overload; //(Ljava/io/InputStream;)[B
    {class} function md5AsBase64(P1: JInputStream): JString; cdecl; overload; //(Ljava/io/InputStream;)Ljava/lang/String;
    {class} function computeMD5Hash(md: TJavaArray<Byte>): TJavaArray<Byte>; cdecl; overload; //([B)[B
    {class} function md5AsBase64(P1: TJavaArray<Byte>): JString; cdecl; overload; //([B)Ljava/lang/String;
    {class} function computeMD5Hash(P1: JFile): TJavaArray<Byte>; cdecl; overload; //(Ljava/io/File;)[B
    {class} function md5AsBase64(P1: JFile): JString; cdecl; overload; //(Ljava/io/File;)Ljava/lang/String;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/Md5Utils')]
  JMd5Utils = interface(JObject)
  ['{DB65A4FE-1ABC-4E4F-BFD3-87019591E802}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJMd5Utils = class(TJavaGenericImport<JMd5UtilsClass, JMd5Utils>) end;

  JNamespaceRemovingInputStream_StringPrefixSlicerClass = interface(JObjectClass)
  ['{32F3F3A8-3B53-4192-875D-87B8221ECC96}']
    { static Property Methods }

    { static Methods }
    {class} function init(s: JString): JNamespaceRemovingInputStream_StringPrefixSlicer; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/NamespaceRemovingInputStream$StringPrefixSlicer')]
  JNamespaceRemovingInputStream_StringPrefixSlicer = interface(JObject)
  ['{4D377D75-717B-4932-9CDC-1282BAA9FCBE}']
    { Property Methods }

    { methods }
    function getString: JString; cdecl; //()Ljava/lang/String;
    function removePrefix(prefix: JString): Boolean; cdecl; //(Ljava/lang/String;)Z
    function removeRepeatingPrefix(prefix: JString): Boolean; cdecl; //(Ljava/lang/String;)Z
    function removePrefixEndingWith(marker: JString): Boolean; cdecl; //(Ljava/lang/String;)Z

    { Property }
  end;

  TJNamespaceRemovingInputStream_StringPrefixSlicer = class(TJavaGenericImport<JNamespaceRemovingInputStream_StringPrefixSlicerClass, JNamespaceRemovingInputStream_StringPrefixSlicer>) end;

  JNamespaceRemovingInputStreamClass = interface(JSdkFilterInputStreamClass) // or JObjectClass // SuperSignature: com/amazonaws/internal/SdkFilterInputStream
  ['{40C35B51-F94E-454C-BB3F-D8AB0CE8D3E7}']
    { static Property Methods }

    { static Methods }
    {class} function init(ain: JInputStream): JNamespaceRemovingInputStream; cdecl; //(Ljava/io/InputStream;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/NamespaceRemovingInputStream')]
  JNamespaceRemovingInputStream = interface(JSdkFilterInputStream) // or JObject // SuperSignature: com/amazonaws/internal/SdkFilterInputStream
  ['{9910FB69-B879-46C9-8FC8-C353ADD41E70}']
    { Property Methods }

    { methods }
    function read: Integer; cdecl; overload; //()I
    function read(b: TJavaArray<Byte>; off: Integer; len: Integer): Integer; cdecl; overload; //([BII)I
    function read(b: TJavaArray<Byte>): Integer; cdecl; overload; //([B)I

    { Property }
  end;

  TJNamespaceRemovingInputStream = class(TJavaGenericImport<JNamespaceRemovingInputStreamClass, JNamespaceRemovingInputStream>) end;

  JResponseMetadataCacheClass = interface(JObjectClass)
  ['{F0FD9F3E-3C84-484E-9EB9-EC7A90F56CFD}']
    { static Property Methods }

    { static Methods }
    {class} function init(maxEntries: Integer): JResponseMetadataCache; cdecl; //(I)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/ResponseMetadataCache')]
  JResponseMetadataCache = interface(JObject)
  ['{6A10E10E-4192-4532-8F7A-AA8472ED9AA3}']
    { Property Methods }

    { methods }
    procedure add(obj: JObject; metadata: JResponseMetadata); cdecl; //(Ljava/lang/Object;Lcom/amazonaws/ResponseMetadata;)V
    function get(obj: JObject): JResponseMetadata; cdecl; //(Ljava/lang/Object;)Lcom/amazonaws/ResponseMetadata;

    { Property }
  end;

  TJResponseMetadataCache = class(TJavaGenericImport<JResponseMetadataCacheClass, JResponseMetadataCache>) end;

  JRuntimeHttpUtilsClass = interface(JObjectClass)
  ['{6B284298-2818-4B97-AB80-669C748038B9}']
    { static Property Methods }

    { static Methods }
    {class} function init: JRuntimeHttpUtils; cdecl; //()V
    {class} function toUri(config: JString; P2: JClientConfiguration): JURI; cdecl; overload; //(Ljava/lang/String;Lcom/amazonaws/ClientConfiguration;)Ljava/net/URI;
    {class} function toUri(protocol: JString; e: JProtocol): JURI; cdecl; overload; //(Ljava/lang/String;Lcom/amazonaws/Protocol;)Ljava/net/URI;
    {class} function convertRequestToUrl(removeLeadingSlashInResourcePath: JRequest; urlEncode: Boolean; resourcePath: Boolean): JURL; cdecl; //(Lcom/amazonaws/Request;ZZ)Ljava/net/URL;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/RuntimeHttpUtils')]
  JRuntimeHttpUtils = interface(JObject)
  ['{1A36AFD4-280B-4FB0-BD47-4DF401CEAF24}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJRuntimeHttpUtils = class(TJavaGenericImport<JRuntimeHttpUtilsClass, JRuntimeHttpUtils>) end;

  JServiceClientHolderInputStreamClass = interface(JSdkFilterInputStreamClass) // or JObjectClass // SuperSignature: com/amazonaws/internal/SdkFilterInputStream
  ['{BC0C009F-DD8B-4555-9DD6-ADA38369AE9D}']
    { static Property Methods }

    { static Methods }
    {class} function init(ain: JInputStream; client: JAmazonWebServiceClient): JServiceClientHolderInputStream; cdecl; //(Ljava/io/InputStream;Lcom/amazonaws/AmazonWebServiceClient;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/ServiceClientHolderInputStream')]
  JServiceClientHolderInputStream = interface(JSdkFilterInputStream) // or JObject // SuperSignature: com/amazonaws/internal/SdkFilterInputStream
  ['{EAFA1FDF-5042-4A21-B4A4-A0E6118DFA53}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJServiceClientHolderInputStream = class(TJavaGenericImport<JServiceClientHolderInputStreamClass, JServiceClientHolderInputStream>) end;

  JStringInputStreamClass = interface(JByteArrayInputStreamClass) // or JObjectClass // SuperSignature: java/io/ByteArrayInputStream
  ['{E3309CF6-5406-4EDD-B2B3-C5FF4813E2D5}']
    { static Property Methods }

    { static Methods }
    {class} function init(s: JString): JStringInputStream; cdecl; //(Ljava/lang/String;)V

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/StringInputStream')]
  JStringInputStream = interface(JByteArrayInputStream) // or JObject // SuperSignature: java/io/ByteArrayInputStream
  ['{DEDCC099-C861-475E-AEAB-D596A3DAF497}']
    { Property Methods }

    { methods }
    function getString: JString; cdecl; //()Ljava/lang/String;

    { Property }
  end;

  TJStringInputStream = class(TJavaGenericImport<JStringInputStreamClass, JStringInputStream>) end;

  JThrowablesClass = interface(JEnumClass) // or JObjectClass // SuperSignature: java/lang/Enum
  ['{3F6DD1E8-6A7B-4BF3-8033-B8A86948884E}']
    { static Property Methods }

    { static Methods }
    {class} function values: TJavaObjectArray<JThrowables>; cdecl; //()[Lcom/amazonaws/util/Throwables;
    {class} function valueOf(P1: JString): JThrowables; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/util/Throwables;
    {class} function getRootCause(t: JThrowable): JThrowable; cdecl; //(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/Throwables')]
  JThrowables = interface(JEnum) // or JObject // SuperSignature: java/lang/Enum
  ['{1B44626E-2C4D-4EB0-AF1B-028F1FC4DE49}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJThrowables = class(TJavaGenericImport<JThrowablesClass, JThrowables>) end;

  JTimingInfoClass = interface(JObjectClass)
  ['{1DA09236-2D0B-48B7-816E-ECF836F60ED7}']
    { static Property Methods }

    { static Methods }
    {class} function startTiming: JTimingInfo; cdecl; //()Lcom/amazonaws/util/TimingInfo;
    {class} function startTimingFullSupport: JTimingInfo; cdecl; overload; //()Lcom/amazonaws/util/TimingInfo;
    {class} function startTimingFullSupport(P1: Int64): JTimingInfo; cdecl; overload; //(J)Lcom/amazonaws/util/TimingInfo;
    {class} function newTimingInfoFullSupport(endTimeNano: Int64; P2: Int64): JTimingInfo; cdecl; overload; //(JJ)Lcom/amazonaws/util/TimingInfo;
    {class} function newTimingInfoFullSupport(startTimeNano: Int64; P2: Int64; P3: Int64): JTimingInfo; cdecl; overload; //(JJJ)Lcom/amazonaws/util/TimingInfo;
    {class} function unmodifiableTimingInfo(endTimeNano: Int64; P2: JLong): JTimingInfo; cdecl; overload; //(JLjava/lang/Long;)Lcom/amazonaws/util/TimingInfo;
    {class} function unmodifiableTimingInfo(startTimeNano: Int64; P2: Int64; P3: JLong): JTimingInfo; cdecl; overload; //(JJLjava/lang/Long;)Lcom/amazonaws/util/TimingInfo;
    {class} function durationMilliOf(endTimeNano: Int64; P2: Int64): Double; cdecl; //(JJ)D

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/TimingInfo')]
  JTimingInfo = interface(JObject)
  ['{3E67BE1D-D1EC-4602-A2D1-AF97C8DD87D0}']
    { Property Methods }

    { methods }
    function getStartTime: Int64; cdecl; //Deprecated //()J
    function getStartEpochTimeMilli: Int64; cdecl; //Deprecated //()J
    function getStartEpochTimeMilliIfKnown: JLong; cdecl; //()Ljava/lang/Long;
    function getStartTimeNano: Int64; cdecl; //()J
    function getEndTime: Int64; cdecl; //Deprecated //()J
    function getEndEpochTimeMilli: Int64; cdecl; //Deprecated //()J
    function getEndEpochTimeMilliIfKnown: JLong; cdecl; //()Ljava/lang/Long;
    function getEndTimeNano: Int64; cdecl; //()J
    function getEndTimeNanoIfKnown: JLong; cdecl; //()Ljava/lang/Long;
    function getTimeTakenMillis: Double; cdecl; //Deprecated //()D
    function getTimeTakenMillisIfKnown: JDouble; cdecl; //()Ljava/lang/Double;
    function getElapsedTimeMillis: Int64; cdecl; //Deprecated //()J
    function isEndTimeKnown: Boolean; cdecl; //()Z
    function isStartEpochTimeMilliKnown: Boolean; cdecl; //()Z
    function toString: JString; cdecl; //()Ljava/lang/String;
    procedure setEndTime(endTimeMilli: Int64); cdecl; //Deprecated //(J)V
    procedure setEndTimeNano(endTimeNano: Int64); cdecl; //(J)V
    function endTiming: JTimingInfo; cdecl; //()Lcom/amazonaws/util/TimingInfo;
    procedure addSubMeasurement(subMeasurementName: JString; timingInfo: JTimingInfo); cdecl; //(Ljava/lang/String;Lcom/amazonaws/util/TimingInfo;)V
    function getSubMeasurement(subMeasurementName: JString): JTimingInfo; cdecl; overload; //(Ljava/lang/String;)Lcom/amazonaws/util/TimingInfo;
    function getSubMeasurement(subMesurementName: JString; index: Integer): JTimingInfo; cdecl; overload; //(Ljava/lang/String;I)Lcom/amazonaws/util/TimingInfo;
    function getLastSubMeasurement(subMeasurementName: JString): JTimingInfo; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/util/TimingInfo;
    function getAllSubMeasurements(subMeasurementName: JString): JList; cdecl; //(Ljava/lang/String;)Ljava/util/List;
    function getSubMeasurementsByName: JMap; cdecl; //()Ljava/util/Map;
    function getCounter(key: JString): JNumber; cdecl; //(Ljava/lang/String;)Ljava/lang/Number;
    function getAllCounters: JMap; cdecl; //()Ljava/util/Map;
    procedure setCounter(key: JString; count: Int64); cdecl; //(Ljava/lang/String;J)V
    procedure incrementCounter(key: JString); cdecl; //(Ljava/lang/String;)V

    { Property }
  end;

  TJTimingInfo = class(TJavaGenericImport<JTimingInfoClass, JTimingInfo>) end;

  JTimingInfoFullSupportClass = interface(JTimingInfoClass) // or JObjectClass // SuperSignature: com/amazonaws/util/TimingInfo
  ['{05F86A94-CCEE-4042-A467-87198FDAA637}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/TimingInfoFullSupport')]
  JTimingInfoFullSupport = interface(JTimingInfo) // or JObject // SuperSignature: com/amazonaws/util/TimingInfo
  ['{6B6E7786-A157-4EDA-A8CC-4D7FB73EA69A}']
    { Property Methods }

    { methods }
    procedure addSubMeasurement(subMeasurementName: JString; ti: JTimingInfo); cdecl; //(Ljava/lang/String;Lcom/amazonaws/util/TimingInfo;)V
    function getSubMeasurement(subMeasurementName: JString): JTimingInfo; cdecl; overload; //(Ljava/lang/String;)Lcom/amazonaws/util/TimingInfo;
    function getSubMeasurement(subMesurementName: JString; index: Integer): JTimingInfo; cdecl; overload; //(Ljava/lang/String;I)Lcom/amazonaws/util/TimingInfo;
    function getLastSubMeasurement(subMeasurementName: JString): JTimingInfo; cdecl; //(Ljava/lang/String;)Lcom/amazonaws/util/TimingInfo;
    function getAllSubMeasurements(subMeasurementName: JString): JList; cdecl; //(Ljava/lang/String;)Ljava/util/List;
    function getSubMeasurementsByName: JMap; cdecl; //()Ljava/util/Map;
    function getCounter(key: JString): JNumber; cdecl; //(Ljava/lang/String;)Ljava/lang/Number;
    function getAllCounters: JMap; cdecl; //()Ljava/util/Map;
    procedure setCounter(key: JString; count: Int64); cdecl; //(Ljava/lang/String;J)V
    procedure incrementCounter(key: JString); cdecl; //(Ljava/lang/String;)V

    { Property }
  end;

  TJTimingInfoFullSupport = class(TJavaGenericImport<JTimingInfoFullSupportClass, JTimingInfoFullSupport>) end;

  JTimingInfoUnmodifiableClass = interface(JTimingInfoClass) // or JObjectClass // SuperSignature: com/amazonaws/util/TimingInfo
  ['{A02FD793-34FF-42DD-84CA-117F3477157A}']
    { static Property Methods }

    { static Methods }

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/TimingInfoUnmodifiable')]
  JTimingInfoUnmodifiable = interface(JTimingInfo) // or JObject // SuperSignature: com/amazonaws/util/TimingInfo
  ['{B88B67E1-EC28-451D-8F76-774C5B6D3E4A}']
    { Property Methods }

    { methods }
    procedure setEndTime(_: Int64); cdecl; //(J)V
    procedure setEndTimeNano(_: Int64); cdecl; //(J)V
    function endTiming: JTimingInfo; cdecl; //()Lcom/amazonaws/util/TimingInfo;

    { Property }
  end;

  TJTimingInfoUnmodifiable = class(TJavaGenericImport<JTimingInfoUnmodifiableClass, JTimingInfoUnmodifiable>) end;

  JValidationUtilsClass = interface(JObjectClass)
  ['{07333000-6F53-4F0A-9B57-80C44FEB5809}']
    { static Property Methods }

    { static Methods }
    {class} function init: JValidationUtils; cdecl; //()V
    {class} function assertNotNull(fieldName: JObject; P2: JString): JObject; cdecl; //(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    {class} procedure assertParameterNotNull(errorMessage: JObject; P2: JString); cdecl; //(Ljava/lang/Object;Ljava/lang/String;)V
    {class} procedure assertAllAreNull(objects: JString; P2: TJavaObjectArray<JObject>); cdecl; //(Ljava/lang/String;[Ljava/lang/Object;)V
    {class} function assertIsPositive(fieldName: Integer; P2: JString): Integer; cdecl; //(ILjava/lang/String;)I
    {class} function assertNotEmpty(fieldName: JCollection; P2: JString): JCollection; cdecl; overload; //(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;
    {class} function assertNotEmpty(fieldName: TJavaObjectArray<JObject>; P2: JString): TJavaObjectArray<JObject>; cdecl; overload; //([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;
    {class} function assertStringNotEmpty(fieldName: JString; P2: JString): JString; cdecl; //(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/ValidationUtils')]
  JValidationUtils = interface(JObject)
  ['{8EBBB848-49B6-4FFD-B2A9-ABE4A6CC9A1C}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJValidationUtils = class(TJavaGenericImport<JValidationUtilsClass, JValidationUtils>) end;

  JVersionInfoUtilsClass = interface(JObjectClass)
  ['{497517D5-CE7C-4E7F-98EA-55B4C13874C2}']
    { static Property Methods }

    { static Methods }
    {class} function init: JVersionInfoUtils; cdecl; //()V
    {class} function getVersion: JString; cdecl; //()Ljava/lang/String;
    {class} function getPlatform: JString; cdecl; //()Ljava/lang/String;
    {class} function getUserAgent: JString; cdecl; //()Ljava/lang/String;

    { static Property }
  end;

  [JavaSignature('com/amazonaws/util/VersionInfoUtils')]
  JVersionInfoUtils = interface(JObject)
  ['{47B9B68F-5142-4855-8FF6-A98B4633B817}']
    { Property Methods }

    { methods }

    { Property }
  end;

  TJVersionInfoUtils = class(TJavaGenericImport<JVersionInfoUtilsClass, JVersionInfoUtils>) end;

implementation

procedure RegisterTypes;
begin
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAbortedException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAbortedException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAmazonClientException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAmazonClientException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAmazonServiceException_ErrorType',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAmazonServiceException_ErrorType));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAmazonServiceException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAmazonServiceException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAmazonWebServiceClient',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAmazonWebServiceClient));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAmazonWebServiceRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAmazonWebServiceRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAmazonWebServiceResponse',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAmazonWebServiceResponse));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAbstractAWSSigner',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAbstractAWSSigner));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAnonymousAWSCredentials',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAnonymousAWSCredentials));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAWS3Signer',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAWS3Signer));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAWS4Signer_HeaderSigningResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAWS4Signer_HeaderSigningResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAWS4Signer',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAWS4Signer));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAWSAbstractCognitoDeveloperIdentityProvider',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAWSAbstractCognitoDeveloperIdentityProvider));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAWSAbstractCognitoIdentityProvider',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAWSAbstractCognitoIdentityProvider));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAWSBasicCognitoIdentityProvider',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAWSBasicCognitoIdentityProvider));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAWSCognitoIdentityProvider',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAWSCognitoIdentityProvider));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAWSCredentials',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAWSCredentials));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAWSCredentialsProvider',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAWSCredentialsProvider));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAWSCredentialsProviderChain',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAWSCredentialsProviderChain));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAWSEnhancedCognitoIdentityProvider',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAWSEnhancedCognitoIdentityProvider));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAWSIdentityProvider',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAWSIdentityProvider));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAWSRefreshableSessionCredentials',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAWSRefreshableSessionCredentials));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAWSSessionCredentials',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAWSSessionCredentials));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JBasicAWSCredentials',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JBasicAWSCredentials));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JBasicSessionCredentials',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JBasicSessionCredentials));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JClasspathPropertiesFileCredentialsProvider',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JClasspathPropertiesFileCredentialsProvider));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JCognitoCachingCredentialsProvider',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JCognitoCachingCredentialsProvider));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JCognitoCredentialsProvider',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JCognitoCredentialsProvider));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JDefaultAWSCredentialsProviderChain',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JDefaultAWSCredentialsProviderChain));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JIdentityChangedListener',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JIdentityChangedListener));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JNoOpSigner',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JNoOpSigner));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JNoSessionSupportCredentials',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JNoSessionSupportCredentials));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAction',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAction));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSecurityTokenServiceActions',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSecurityTokenServiceActions));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JCondition',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JCondition));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JArnCondition_ArnComparisonType',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JArnCondition_ArnComparisonType));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JArnCondition',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JArnCondition));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JBooleanCondition',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JBooleanCondition));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JConditionFactory',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JConditionFactory));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JDateCondition_DateComparisonType',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JDateCondition_DateComparisonType));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JDateCondition',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JDateCondition));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JIpAddressCondition_IpAddressComparisonType',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JIpAddressCondition_IpAddressComparisonType));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JIpAddressCondition',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JIpAddressCondition));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JNumericCondition_NumericComparisonType',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JNumericCondition_NumericComparisonType));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JNumericCondition',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JNumericCondition));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JStringCondition_StringComparisonType',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JStringCondition_StringComparisonType));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JStringCondition',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JStringCondition));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JJsonDocumentFields',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JJsonDocumentFields));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JJsonPolicyReader_NamedAction',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JJsonPolicyReader_NamedAction));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JJsonPolicyReader',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JJsonPolicyReader));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JJsonPolicyWriter_ConditionsByKey',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JJsonPolicyWriter_ConditionsByKey));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JJsonPolicyWriter',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JJsonPolicyWriter));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JPolicy',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JPolicy));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JPrincipal_Services',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JPrincipal_Services));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JPrincipal_WebIdentityProviders',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JPrincipal_WebIdentityProviders));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JPrincipal',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JPrincipal));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JResource',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JResource));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JStatement_Effect',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JStatement_Effect));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JStatement',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JStatement));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSTSActions',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSTSActions));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JPresigner',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JPresigner));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JPropertiesCredentials',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JPropertiesCredentials));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JPropertiesFileCredentialsProvider',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JPropertiesFileCredentialsProvider));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JQueryStringSigner',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JQueryStringSigner));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JRegionAwareSigner',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JRegionAwareSigner));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JServiceAwareSigner',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JServiceAwareSigner));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSessionCredentialsProviderFactory_Key',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSessionCredentialsProviderFactory_Key));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSessionCredentialsProviderFactory',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSessionCredentialsProviderFactory));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSignatureVersion',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSignatureVersion));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSigner',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSigner));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSignerFactory',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSignerFactory));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSigningAlgorithm',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSigningAlgorithm));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSTSAssumeRoleSessionCredentialsProvider',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSTSAssumeRoleSessionCredentialsProvider));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSTSSessionCredentials',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSTSSessionCredentials));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSTSSessionCredentialsProvider',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSTSSessionCredentialsProvider));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSystemPropertiesCredentialsProvider',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSystemPropertiesCredentialsProvider));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JWebIdentityFederationSessionCredentialsProvider',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JWebIdentityFederationSessionCredentialsProvider));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JClientConfiguration',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JClientConfiguration));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JConfigurationConstant',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JConfigurationConstant));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JUserContextDataProvider_1',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JUserContextDataProvider_1));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JUserContextDataProvider_ContextDataJsonKeys',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JUserContextDataProvider_ContextDataJsonKeys));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JUserContextDataProvider_InstanceHolder',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JUserContextDataProvider_InstanceHolder));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JUserContextDataProvider',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JUserContextDataProvider));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JApplicationDataCollector',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JApplicationDataCollector));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JBuildDataCollector',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JBuildDataCollector));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JContextDataAggregator_1',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JContextDataAggregator_1));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JContextDataAggregator_InstanceHolder',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JContextDataAggregator_InstanceHolder));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JContextDataAggregator',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JContextDataAggregator));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JDataCollector',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JDataCollector));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JDataRecordKey',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JDataRecordKey));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JDeviceDataCollector',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JDeviceDataCollector));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JTelephonyDataCollector',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JTelephonyDataCollector));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSignatureGenerator',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSignatureGenerator));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JDefaultRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JDefaultRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JProgressEvent',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JProgressEvent));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JProgressListener',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JProgressListener));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JProgressListenerCallbackExecutor_1',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JProgressListenerCallbackExecutor_1));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JProgressListenerCallbackExecutor_2',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JProgressListenerCallbackExecutor_2));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JProgressListenerCallbackExecutor_3',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JProgressListenerCallbackExecutor_3));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JProgressListenerCallbackExecutor',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JProgressListenerCallbackExecutor));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JProgressListenerChain_ProgressEventFilter',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JProgressListenerChain_ProgressEventFilter));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JProgressListenerChain',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JProgressListenerChain));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JProgressReportingInputStream',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JProgressReportingInputStream));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAbstractRequestHandler',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAbstractRequestHandler));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAsyncHandler',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAsyncHandler));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JCredentialsRequestHandler',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JCredentialsRequestHandler));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JHandlerChainFactory',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JHandlerChainFactory));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JRequestHandler',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JRequestHandler));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JRequestHandler2',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JRequestHandler2));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JRequestHandler2Adaptor',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JRequestHandler2Adaptor));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAmazonHttpClient',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAmazonHttpClient));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JApacheHttpClient',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JApacheHttpClient));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JClientConnectionManagerFactory_Handler',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JClientConnectionManagerFactory_Handler));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JClientConnectionRequestFactory_Handler',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JClientConnectionRequestFactory_Handler));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JClientConnectionRequestFactory',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JClientConnectionRequestFactory));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JWrapped',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JWrapped));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JDefaultErrorResponseHandler',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JDefaultErrorResponseHandler));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JExecutionContext',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JExecutionContext));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JHttpClient',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JHttpClient));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JHttpClientFactory',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JHttpClientFactory));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JHttpHeader',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JHttpHeader));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JHttpMethodName',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JHttpMethodName));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JHttpRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JHttpRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JHttpRequestFactory',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JHttpRequestFactory));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JHttpResponse_1',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JHttpResponse_1));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JHttpResponse_Builder',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JHttpResponse_Builder));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JHttpResponse',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JHttpResponse));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JHttpResponseHandler',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JHttpResponseHandler));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JJsonErrorResponseHandler_JsonErrorResponse',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JJsonErrorResponseHandler_JsonErrorResponse));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JJsonErrorResponseHandler',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JJsonErrorResponseHandler));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JStaxResponseHandler',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JStaxResponseHandler));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JUrlHttpClient_CurlBuilder',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JUrlHttpClient_CurlBuilder));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JUrlHttpClient',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JUrlHttpClient));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JHttpMethod',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JHttpMethod));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JHostRegexToRegionMapping',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JHostRegexToRegionMapping));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JHttpClientConfig',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JHttpClientConfig));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JInternalConfig_Factory',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JInternalConfig_Factory));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JInternalConfig',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JInternalConfig));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSignerConfig',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSignerConfig));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JCRC32MismatchException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JCRC32MismatchException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JCustomBackoffStrategy',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JCustomBackoffStrategy));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JDynamoDBBackoffStrategy',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JDynamoDBBackoffStrategy));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JListWithAutoConstructFlag',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JListWithAutoConstructFlag));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JMetricAware',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JMetricAware));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JReleasable',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JReleasable));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JReleasableInputStream',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JReleasableInputStream));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JResettableInputStream',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JResettableInputStream));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSdkFilterInputStream',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSdkFilterInputStream));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSdkFilterOutputStream',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSdkFilterOutputStream));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSdkInputStream',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSdkInputStream));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JStaticCredentialsProvider',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JStaticCredentialsProvider));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAwsSdkMetrics_MetricRegistry',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAwsSdkMetrics_MetricRegistry));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAwsSdkMetrics',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAwsSdkMetrics));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JByteThroughputProvider',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JByteThroughputProvider));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JServiceMetricTypeGuesser',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JServiceMetricTypeGuesser));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JMetricCollector_Factory',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JMetricCollector_Factory));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JMetricCollector',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JMetricCollector));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JMetricFilterInputStream',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JMetricFilterInputStream));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JMetricType',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JMetricType));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JRequestMetricCollector_Factory',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JRequestMetricCollector_Factory));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JRequestMetricCollector',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JRequestMetricCollector));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JRequestMetricType',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JRequestMetricType));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JServiceLatencyProvider',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JServiceLatencyProvider));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JServiceMetricCollector_Factory',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JServiceMetricCollector_Factory));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JServiceMetricCollector',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JServiceMetricCollector));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JServiceMetricType',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JServiceMetricType));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSimpleMetricType',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSimpleMetricType));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSimpleServiceMetricType',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSimpleServiceMetricType));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSimpleThroughputMetricType',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSimpleThroughputMetricType));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JThroughputMetricType',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JThroughputMetricType));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAWSConfigurable',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAWSConfigurable));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAWSConfiguration',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAWSConfiguration));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JProtocol',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JProtocol));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JRegion',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JRegion));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JRegionDefaults',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JRegionDefaults));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JRegionMetadata',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JRegionMetadata));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JRegionMetadataParser',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JRegionMetadataParser));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JRegions',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JRegions));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JRegionUtils',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JRegionUtils));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JServiceAbbreviations',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JServiceAbbreviations));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JRequestClientOptions_Marker',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JRequestClientOptions_Marker));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JRequestClientOptions',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JRequestClientOptions));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JResponse',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JResponse));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JResponseMetadata',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JResponseMetadata));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JPredefinedRetryPolicies_1',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JPredefinedRetryPolicies_1));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JPredefinedRetryPolicies_SDKDefaultBackoffStrategy',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JPredefinedRetryPolicies_SDKDefaultBackoffStrategy));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JPredefinedRetryPolicies_SDKDefaultRetryCondition',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JPredefinedRetryPolicies_SDKDefaultRetryCondition));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JPredefinedRetryPolicies',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JPredefinedRetryPolicies));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JRetryPolicy_BackoffStrategy_1',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JRetryPolicy_BackoffStrategy_1));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JRetryPolicy_BackoffStrategy',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JRetryPolicy_BackoffStrategy));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JRetryPolicy_RetryCondition_1',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JRetryPolicy_RetryCondition_1));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JRetryPolicy_RetryCondition',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JRetryPolicy_RetryCondition));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JRetryPolicy',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JRetryPolicy));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JRetryUtils',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JRetryUtils));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSDKGlobalConfiguration',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSDKGlobalConfiguration));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JServiceNameFactory',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JServiceNameFactory));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAmazonCognitoIdentity',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAmazonCognitoIdentity));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAmazonCognitoIdentityClient',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAmazonCognitoIdentityClient));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JCredentials',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JCredentials));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JExternalServiceException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JExternalServiceException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JGetCredentialsForIdentityRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JGetCredentialsForIdentityRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JGetCredentialsForIdentityResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JGetCredentialsForIdentityResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JGetIdRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JGetIdRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JGetIdResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JGetIdResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JGetOpenIdTokenRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JGetOpenIdTokenRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JGetOpenIdTokenResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JGetOpenIdTokenResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JInternalErrorException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JInternalErrorException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JInvalidIdentityPoolConfigurationException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JInvalidIdentityPoolConfigurationException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JInvalidParameterException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JInvalidParameterException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JLimitExceededException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JLimitExceededException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JNotAuthorizedException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JNotAuthorizedException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JResourceConflictException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JResourceConflictException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JResourceNotFoundException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JResourceNotFoundException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JTooManyRequestsException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JTooManyRequestsException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JCredentialsJsonMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JCredentialsJsonMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JCredentialsJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JCredentialsJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JGetCredentialsForIdentityRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JGetCredentialsForIdentityRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JGetCredentialsForIdentityResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JGetCredentialsForIdentityResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JGetIdRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JGetIdRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JGetIdResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JGetIdResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JGetOpenIdTokenRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JGetOpenIdTokenRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JGetOpenIdTokenResultJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JGetOpenIdTokenResultJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAWSSecurityTokenService',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAWSSecurityTokenService));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAWSSecurityTokenServiceClient',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAWSSecurityTokenServiceClient));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAssumedRoleUser',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAssumedRoleUser));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAssumeRoleRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAssumeRoleRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAssumeRoleResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAssumeRoleResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAssumeRoleWithWebIdentityRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAssumeRoleWithWebIdentityRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAssumeRoleWithWebIdentityResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAssumeRoleWithWebIdentityResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JExpiredTokenException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JExpiredTokenException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JFederatedUser',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JFederatedUser));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JGetCallerIdentityRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JGetCallerIdentityRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JGetCallerIdentityResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JGetCallerIdentityResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JGetFederationTokenRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JGetFederationTokenRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JGetFederationTokenResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JGetFederationTokenResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JGetSessionTokenRequest',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JGetSessionTokenRequest));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JGetSessionTokenResult',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JGetSessionTokenResult));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JIDPCommunicationErrorException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JIDPCommunicationErrorException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JIDPRejectedClaimException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JIDPRejectedClaimException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JInvalidIdentityTokenException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JInvalidIdentityTokenException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JMalformedPolicyDocumentException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JMalformedPolicyDocumentException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JPackedPolicyTooLargeException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JPackedPolicyTooLargeException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JRegionDisabledException',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JRegionDisabledException));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAssumedRoleUserStaxMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAssumedRoleUserStaxMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAssumeRoleRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAssumeRoleRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAssumeRoleWithWebIdentityRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAssumeRoleWithWebIdentityRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JCredentialsStaxMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JCredentialsStaxMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JFederatedUserStaxMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JFederatedUserStaxMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JGetCallerIdentityRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JGetCallerIdentityRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JGetSessionTokenRequestMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JGetSessionTokenRequestMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JJsonUnmarshallerContext',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JJsonUnmarshallerContext));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JListUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JListUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JMapEntry',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JMapEntry));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JMapUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JMapUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JMarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JMarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSimpleTypeJsonUnmarshallers_BigIntegerJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSimpleTypeJsonUnmarshallers_BigIntegerJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSimpleTypeJsonUnmarshallers_BooleanJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSimpleTypeJsonUnmarshallers_BooleanJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSimpleTypeJsonUnmarshallers_ByteBufferJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSimpleTypeJsonUnmarshallers_ByteBufferJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSimpleTypeJsonUnmarshallers_ByteJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSimpleTypeJsonUnmarshallers_ByteJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSimpleTypeJsonUnmarshallers_DateJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSimpleTypeJsonUnmarshallers_DateJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSimpleTypeJsonUnmarshallers_DoubleJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSimpleTypeJsonUnmarshallers_DoubleJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSimpleTypeJsonUnmarshallers_FloatJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSimpleTypeJsonUnmarshallers_FloatJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSimpleTypeJsonUnmarshallers_IntegerJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSimpleTypeJsonUnmarshallers_IntegerJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSimpleTypeJsonUnmarshallers_LongJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSimpleTypeJsonUnmarshallers_LongJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSimpleTypeJsonUnmarshallers_StringJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSimpleTypeJsonUnmarshallers_StringJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSimpleTypeJsonUnmarshallers',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSimpleTypeJsonUnmarshallers));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JSimpleTypeStaxUnmarshallers',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JSimpleTypeStaxUnmarshallers));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JStaxUnmarshallerContext_MetadataExpression',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JStaxUnmarshallerContext_MetadataExpression));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JVoidJsonUnmarshaller',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JVoidJsonUnmarshaller));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAbstractBase32Codec',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAbstractBase32Codec));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAwsHostNameUtils',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAwsHostNameUtils));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAWSRequestMetrics_Field',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAWSRequestMetrics_Field));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAWSRequestMetrics',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAWSRequestMetrics));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAWSRequestMetricsFullSupport',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAWSRequestMetricsFullSupport));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAWSServiceMetrics',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAWSServiceMetrics));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JBase16',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JBase16));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JBase16Codec_LazyHolder',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JBase16Codec_LazyHolder));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JBase16Codec',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JBase16Codec));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JBase32',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JBase32));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JBase32Codec_LazyHolder',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JBase32Codec_LazyHolder));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JBase32Codec',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JBase32Codec));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JBase64',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JBase64));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JBase64Codec_LazyHolder',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JBase64Codec_LazyHolder));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JBase64Codec',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JBase64Codec));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JBinaryUtils',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JBinaryUtils));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JClassLoaderHelper',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JClassLoaderHelper));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JCodec',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JCodec));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JCodecUtils',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JCodecUtils));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JCountingInputStream',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JCountingInputStream));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JCRC32ChecksumCalculatingInputStream',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JCRC32ChecksumCalculatingInputStream));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JDateUtils',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JDateUtils));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JEncodingScheme',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JEncodingScheme));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JEncodingSchemeEnum',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JEncodingSchemeEnum));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JHttpClientWrappingInputStream',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JHttpClientWrappingInputStream));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JHttpUtils',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JHttpUtils));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JImmutableMapParameter_1',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JImmutableMapParameter_1));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JImmutableMapParameter_Builder',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JImmutableMapParameter_Builder));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JImmutableMapParameter',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JImmutableMapParameter));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAwsJsonFactory',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAwsJsonFactory));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAwsJsonReader',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAwsJsonReader));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAwsJsonToken',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAwsJsonToken));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JAwsJsonWriter',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JAwsJsonWriter));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JGsonFactory_GsonReader',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JGsonFactory_GsonReader));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JGsonFactory_GsonWriter',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JGsonFactory_GsonWriter));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JGsonFactory',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JGsonFactory));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JJacksonFactory',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JJacksonFactory));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JJsonUtils_JsonEngine',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JJsonUtils_JsonEngine));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JJsonUtils',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JJsonUtils));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JLengthCheckInputStream',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JLengthCheckInputStream));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JMd5Utils',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JMd5Utils));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JNamespaceRemovingInputStream_StringPrefixSlicer',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JNamespaceRemovingInputStream_StringPrefixSlicer));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JNamespaceRemovingInputStream',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JNamespaceRemovingInputStream));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JResponseMetadataCache',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JResponseMetadataCache));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JRuntimeHttpUtils',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JRuntimeHttpUtils));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JServiceClientHolderInputStream',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JServiceClientHolderInputStream));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JStringInputStream',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JStringInputStream));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JThrowables',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JThrowables));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JTimingInfo',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JTimingInfo));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JTimingInfoFullSupport',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JTimingInfoFullSupport));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JTimingInfoUnmodifiable',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JTimingInfoUnmodifiable));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JValidationUtils',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JValidationUtils));
  TRegTypes.RegisterType('Androidapi.JNI.aws.android.sdk.core.JVersionInfoUtils',
    TypeInfo(Androidapi.JNI.aws.android.sdk.core.JVersionInfoUtils));
end;


initialization
  RegisterTypes;

end.
