{ *********************************************************** }
{ }
{ CodeGear Delphi Runtime Library }
{ }
{ Copyright(c) 2012-2014 Embarcadero Technologies, Inc. }
{ }
{ *********************************************************** }

//
// Delphi-Objective-C Bridge
// Interfaces for Cocoa framework AWSCore
//

unit iOSapi.AWSCore;

interface

uses
  Macapi.CoreFoundation,
  Macapi.CoreServices,
  Macapi.Dispatch,
  Macapi.Mach,
  Macapi.ObjCRuntime,
  Macapi.ObjectiveC,
  iOSapi.CocoaTypes,
  iOSapi.CoreData,
  iOSapi.CoreGraphics,
  iOSapi.Foundation,
  iOSapi.Security,
  iOSapi.UIKit;

const
  AWSRegionUnknown = 0;
  AWSRegionUSEast1 = 1;
  AWSRegionUSEast2 = 2;
  AWSRegionUSWest1 = 3;
  AWSRegionUSWest2 = 4;
  AWSRegionEUWest1 = 5;
  AWSRegionEUWest2 = 6;
  AWSRegionEUCentral1 = 7;
  AWSRegionAPSoutheast1 = 8;
  AWSRegionAPNortheast1 = 9;
  AWSRegionAPNortheast2 = 10;
  AWSRegionAPSoutheast2 = 11;
  AWSRegionAPSouth1 = 12;
  AWSRegionSAEast1 = 13;
  AWSRegionCNNorth1 = 14;
  AWSRegionCACentral1 = 15;
  AWSRegionUSGovWest1 = 16;
  AWSRegionCNNorthWest1 = 17;
  AWSRegionEUWest3 = 18;
  AWSServiceUnknown = 0;
  AWSServiceAPIGateway = 1;
  AWSServiceAutoScaling = 2;
  AWSServiceCloudWatch = 3;
  AWSServiceCognitoIdentity = 4;
  AWSServiceCognitoIdentityProvider = 5;
  AWSServiceCognitoSync = 6;
  AWSServiceDynamoDB = 7;
  AWSServiceEC2 = 8;
  AWSServiceElasticLoadBalancing = 9;
  AWSServiceIoT = 10;
  AWSServiceIoTData = 11;
  AWSServiceFirehose = 12;
  AWSServiceKinesis = 13;
  AWSServiceKMS = 14;
  AWSServiceLambda = 15;
  AWSServiceLexRuntime = 16;
  AWSServiceLogs = 17;
  AWSServiceMachineLearning = 18;
  AWSServiceMobileAnalytics = 19;
  AWSServiceMobileTargeting = 20;
  AWSServicePolly = 21;
  AWSServiceRekognition = 22;
  AWSServiceS3 = 23;
  AWSServiceSES = 24;
  AWSServiceSimpleDB = 25;
  AWSServiceSNS = 26;
  AWSServiceSQS = 27;
  AWSServiceSTS = 28;
  AWSDDLogFlagError = (1 shl 0);
  AWSDDLogFlagWarning = (1 shl 1);
  AWSDDLogFlagInfo = (1 shl 2);
  AWSDDLogFlagDebug = (1 shl 3);
  AWSDDLogFlagVerbose = (1 shl 4);
  AWSDDLogLevelOff = 0;
  AWSDDLogLevelError = (AWSDDLogFlagError);
  AWSDDLogLevelWarning = (AWSDDLogLevelError or AWSDDLogFlagWarning);
  AWSDDLogLevelInfo = (AWSDDLogLevelWarning or AWSDDLogFlagInfo);
  AWSDDLogLevelDebug = (AWSDDLogLevelInfo or AWSDDLogFlagDebug);
  AWSDDLogLevelVerbose = (AWSDDLogLevelDebug or AWSDDLogFlagVerbose);
  AWSDDLogLevelAll = 4294967295;
  AWSDDLogMessageCopyFile = 1 shl 0;
  AWSDDLogMessageCopyFunction = 1 shl 1;
  AWSDDLogMessageDontCopyMessage = 1 shl 2;
  AWSMTLModelEncodingBehaviorExcluded = 0;
  AWSMTLModelEncodingBehaviorUnconditional = 1;
  AWSMTLModelEncodingBehaviorConditional = 2;
  AWSNetworkingErrorUnknown = 0;
  AWSNetworkingErrorCancelled = 1;
  AWSNetworkingRetryTypeUnknown = 0;
  AWSNetworkingRetryTypeShouldNotRetry = 1;
  AWSNetworkingRetryTypeShouldRetry = 2;
  AWSNetworkingRetryTypeShouldRefreshCredentialsAndRetry = 3;
  AWSNetworkingRetryTypeShouldCorrectClockSkewAndRetry = 4;
  AWSNetworkingRetryTypeResetStreamAndRetry = 5;
  AWSHTTPMethodUnknown = 0;
  AWSHTTPMethodGET = 1;
  AWSHTTPMethodHEAD = 2;
  AWSHTTPMethodPOST = 3;
  AWSHTTPMethodPUT = 4;
  AWSHTTPMethodPATCH = 5;
  AWSHTTPMethodDELETE = 6;
  AWSCognitoCredentialsProviderHelperErrorTypeIdentityIsNil = 0;
  AWSCognitoCredentialsProviderHelperErrorTypeTokenRefreshTimeout = 1;
  AWSCognitoCredentialsProviderErrorUnknown = 0;
  AWSCognitoCredentialsProviderIdentityIdIsNil = 1;
  AWSCognitoCredentialsProviderInvalidConfiguration = 2;
  AWSCognitoCredentialsProviderInvalidCognitoIdentityToken = 3;
  AWSCognitoCredentialsProviderCredentialsRefreshTimeout = 4;
  AWSServiceErrorUnknown = 0;
  AWSServiceErrorRequestTimeTooSkewed = 1;
  AWSServiceErrorInvalidSignatureException = 2;
  AWSServiceErrorSignatureDoesNotMatch = 3;
  AWSServiceErrorRequestExpired = 4;
  AWSServiceErrorAuthFailure = 5;
  AWSServiceErrorAccessDeniedException = 6;
  AWSServiceErrorUnrecognizedClientException = 7;
  AWSServiceErrorIncompleteSignature = 8;
  AWSServiceErrorInvalidClientTokenId = 9;
  AWSServiceErrorMissingAuthenticationToken = 10;
  AWSServiceErrorAccessDenied = 11;
  AWSServiceErrorExpiredToken = 12;
  AWSServiceErrorInvalidAccessKeyId = 13;
  AWSServiceErrorInvalidToken = 14;
  AWSServiceErrorTokenRefreshRequired = 15;
  AWSServiceErrorAccessFailure = 16;
  AWSServiceErrorAuthMissingFailure = 17;
  AWSServiceErrorThrottling = 18;
  AWSServiceErrorThrottlingException = 19;
  AWSLogLevelUnknown = -1;
  AWSLogLevelNone = 0;
  AWSLogLevelError = 1;
  AWSLogLevelWarn = 2;
  AWSLogLevelInfo = 3;
  AWSLogLevelDebug = 4;
  AWSLogLevelVerbose = 5;
  AWSXMLBuilderUnknownError = 900;
  AWSXMLBuilderDefinitionFileIsEmpty = 901;
  AWSXMLBuilderUndefinedXMLNamespace = 902;
  AWSXMLBuilderUndefinedActionRule = 903;
  AWSXMLBuilderMissingRequiredXMLElements = 904;
  AWSXMLBuilderInvalidXMLValue = 905;
  AWSXMLBuilderUnCatchedRuleTypeInDifinitionFile = 906;
  AWSXMLParserUnknownError = 0;
  AWSXMLParserNoTypeDefinitionInRule = 1;
  AWSXMLParserUnHandledType = 2;
  AWSXMLParserUnExpectedType = 3;
  AWSXMLParserDefinitionFileIsEmpty = 4;
  AWSXMLParserUnexpectedXMLElement = 5;
  AWSXMLParserXMLNameNotFoundInDefinition = 6;
  AWSXMLParserMissingRequiredXMLElements = 7;
  AWSXMLParserInvalidXMLValue = 8;
  AWSQueryParamBuilderUnknownError = 0;
  AWSQueryParamBuilderDefinitionFileIsEmpty = 1;
  AWSQueryParamBuilderUndefinedActionRule = 2;
  AWSQueryParamBuilderInternalError = 3;
  AWSQueryParamBuilderInvalidParameter = 4;
  AWSEC2ParamBuilderUnknownError = 0;
  AWSEC2ParamBuilderDefinitionFileIsEmpty = 1;
  AWSEC2ParamBuilderUndefinedActionRule = 2;
  AWSEC2ParamBuilderInternalError = 3;
  AWSEC2ParamBuilderInvalidParameter = 4;
  AWSJSONBuilderUnknownError = 0;
  AWSJSONBuilderDefinitionFileIsEmpty = 1;
  AWSJSONBuilderUndefinedActionRule = 2;
  AWSJSONBuilderInternalError = 3;
  AWSJSONBuilderInvalidParameter = 4;
  AWSJSONParserUnknownError = 0;
  AWSJSONParserDefinitionFileIsEmpty = 1;
  AWSJSONParserUndefinedActionRule = 2;
  AWSJSONParserInternalError = 3;
  AWSJSONParserInvalidParameter = 4;
  AWSValidationUnknownError = 0;
  AWSValidationUnexpectedParameter = 1;
  AWSValidationUnhandledType = 2;
  AWSValidationMissingRequiredParameter = 3;
  AWSValidationOutOfRangeParameter = 4;
  AWSValidationInvalidStringParameter = 5;
  AWSValidationUnexpectedStringParameter = 6;
  AWSValidationInvalidParameterType = 7;
  AWSValidationInvalidBase64Data = 8;
  AWSValidationHeaderTargetInvalid = 9;
  AWSValidationHeaderAPIActionIsUndefined = 10;
  AWSValidationHeaderDefinitionFileIsNotFound = 11;
  AWSValidationHeaderDefinitionFileIsEmpty = 12;
  AWSValidationHeaderAPIActionIsInvalid = 13;
  AWSValidationURIIsInvalid = 14;
  AWSUICKeyChainStoreErrorInvalidArguments = 1;
  AWSUICKeyChainStoreItemClassGenericPassword = 1;
  AWSUICKeyChainStoreItemClassInternetPassword = 2;
  AWSUICKeyChainStoreProtocolTypeFTP = 1;
  AWSUICKeyChainStoreProtocolTypeFTPAccount = 2;
  AWSUICKeyChainStoreProtocolTypeHTTP = 3;
  AWSUICKeyChainStoreProtocolTypeIRC = 4;
  AWSUICKeyChainStoreProtocolTypeNNTP = 5;
  AWSUICKeyChainStoreProtocolTypePOP3 = 6;
  AWSUICKeyChainStoreProtocolTypeSMTP = 7;
  AWSUICKeyChainStoreProtocolTypeSOCKS = 8;
  AWSUICKeyChainStoreProtocolTypeIMAP = 9;
  AWSUICKeyChainStoreProtocolTypeLDAP = 10;
  AWSUICKeyChainStoreProtocolTypeAppleTalk = 11;
  AWSUICKeyChainStoreProtocolTypeAFP = 12;
  AWSUICKeyChainStoreProtocolTypeTelnet = 13;
  AWSUICKeyChainStoreProtocolTypeSSH = 14;
  AWSUICKeyChainStoreProtocolTypeFTPS = 15;
  AWSUICKeyChainStoreProtocolTypeHTTPS = 16;
  AWSUICKeyChainStoreProtocolTypeHTTPProxy = 17;
  AWSUICKeyChainStoreProtocolTypeHTTPSProxy = 18;
  AWSUICKeyChainStoreProtocolTypeFTPProxy = 19;
  AWSUICKeyChainStoreProtocolTypeSMB = 20;
  AWSUICKeyChainStoreProtocolTypeRTSP = 21;
  AWSUICKeyChainStoreProtocolTypeRTSPProxy = 22;
  AWSUICKeyChainStoreProtocolTypeDAAP = 23;
  AWSUICKeyChainStoreProtocolTypeEPPC = 24;
  AWSUICKeyChainStoreProtocolTypeNNTPS = 25;
  AWSUICKeyChainStoreProtocolTypeLDAPS = 26;
  AWSUICKeyChainStoreProtocolTypeTelnetS = 27;
  AWSUICKeyChainStoreProtocolTypeIRCS = 28;
  AWSUICKeyChainStoreProtocolTypePOP3S = 29;
  AWSUICKeyChainStoreAuthenticationTypeNTLM = 1;
  AWSUICKeyChainStoreAuthenticationTypeMSN = 2;
  AWSUICKeyChainStoreAuthenticationTypeDPA = 3;
  AWSUICKeyChainStoreAuthenticationTypeRPA = 4;
  AWSUICKeyChainStoreAuthenticationTypeHTTPBasic = 5;
  AWSUICKeyChainStoreAuthenticationTypeHTTPDigest = 6;
  AWSUICKeyChainStoreAuthenticationTypeHTMLForm = 7;
  AWSUICKeyChainStoreAuthenticationTypeDefault = 8;
  AWSUICKeyChainStoreAccessibilityWhenUnlocked = 1;
  AWSUICKeyChainStoreAccessibilityAfterFirstUnlock = 2;
  AWSUICKeyChainStoreAccessibilityAlways = 3;
  AWSUICKeyChainStoreAccessibilityWhenPasscodeSetThisDeviceOnly = 4;
  AWSUICKeyChainStoreAccessibilityWhenUnlockedThisDeviceOnly = 5;
  AWSUICKeyChainStoreAccessibilityAfterFirstUnlockThisDeviceOnly = 6;
  AWSUICKeyChainStoreAccessibilityAlwaysThisDeviceOnly = 7;

  //Security.Framework
  kSecAccessControlUserPresence = 1;
  AWSUICKeyChainStoreAuthenticationPolicyUserPresence = kSecAccessControlUserPresence;
  AWSSTSErrorUnknown = 0;
  AWSSTSErrorExpiredToken = 1;
  AWSSTSErrorIDPCommunicationError = 2;
  AWSSTSErrorIDPRejectedClaim = 3;
  AWSSTSErrorInvalidAuthorizationMessage = 4;
  AWSSTSErrorInvalidIdentityToken = 5;
  AWSSTSErrorMalformedPolicyDocument = 6;
  AWSSTSErrorPackedPolicyTooLarge = 7;
  AWSSTSErrorRegionDisabled = 8;
  AWSCognitoIdentityErrorUnknown = 0;
  AWSCognitoIdentityErrorConcurrentModification = 1;
  AWSCognitoIdentityErrorDeveloperUserAlreadyRegistered = 2;
  AWSCognitoIdentityErrorExternalService = 3;
  AWSCognitoIdentityErrorInternalError = 4;
  AWSCognitoIdentityErrorInvalidIdentityPoolConfiguration = 5;
  AWSCognitoIdentityErrorInvalidParameter = 6;
  AWSCognitoIdentityErrorLimitExceeded = 7;
  AWSCognitoIdentityErrorNotAuthorized = 8;
  AWSCognitoIdentityErrorResourceConflict = 9;
  AWSCognitoIdentityErrorResourceNotFound = 10;
  AWSCognitoIdentityErrorTooManyRequests = 11;
  AWSCognitoIdentityErrorCodeUnknown = 0;
  AWSCognitoIdentityErrorCodeAccessDenied = 1;
  AWSCognitoIdentityErrorCodeInternalServerError = 2;

type

  // ===== Forward declarations =====
{$M+}
  AWSCancellationTokenRegistration = interface;
  AWSCancellationToken = interface;
  AWSCancellationTokenSource = interface;
  AWSExecutor = interface;
  AWSTask = interface;
  AWSTaskCompletionSource = interface;
  AWS = interface;
  AWSClientContext = interface;
  AWSDDLogMessage = interface;
  AWSDDLoggerInformation = interface;
  AWSDDLogger = interface;
  AWSDDLogFormatter = interface;
  AWSDDLog = interface;
  AWSDDRegisteredDynamicLogging = interface;
  AWSDDAbstractLogger = interface;
  AWSDDASLLogger = interface;
  AWSDDASLLogCapture = interface;
  AWSDDTTYLogger = interface;
  AWSDDLogFileInfo = interface;
  AWSDDLogFileManager = interface;
  AWSDDLogFileManagerDefault = interface;
  AWSDDLogFileFormatterDefault = interface;
  AWSDDFileLogger = interface;
  AWSDDOSLogger = interface;
  AWSMTLModel = interface;
  AWSMTLJSONSerializing = interface;
  AWSMTLJSONAdapter = interface;
  AWSMTLManagedObjectSerializing = interface;
  AWSMTLManagedObjectAdapter = interface;
  AWSMTLValueTransformer = interface;
  AWSMTLManipulationAdditions = interface;
  AWSMTLInversionAdditions = interface;
  AWSMTLPredefinedTransformerAdditions = interface;
  UnavailableAWSMTLPredefinedTransformerAdditions = interface;
  AWSModel = interface;
  AWSModelUtility = interface;
  AWSNetworkingConfiguration = interface;
  AWSNetworkingRequest = interface;
  AWSHTTPMethod = interface;
  AWSNetworking = interface;
  AWSURLRequestSerializer = interface;
  AWSNetworkingRequestInterceptor = interface;
  AWSNetworkingHTTPResponseInterceptor = interface;
  AWSHTTPURLResponseSerializer = interface;
  AWSURLRequestRetryHandler = interface;
  AWSRequest = interface;
  AWSIdentityProvider = interface;
  AWSIdentityProviderManager = interface;
  AWSCognitoCredentialsProviderHelper = interface;
  AWSAbstractCognitoCredentialsProviderHelper = interface;
  AWSCredentials = interface;
  AWSCredentialsProvider = interface;
  AWSStaticCredentialsProvider = interface;
  AWSBasicSessionCredentialsProvider = interface;
  AWSAnonymousCredentialsProvider = interface;
  AWSWebIdentityCredentialsProvider = interface;
  AWSCognitoCredentialsProvider = interface;
  AWSEndpoint = interface;
  AWSService = interface;
  AWSServiceConfiguration = interface;
  AWSServiceManager = interface;
  AWSLogger = interface;
  AWSSynchronizedMutableDictionary = interface;
  AWSJSONDictionary = interface;
  AWSXMLBuilder = interface;
  AWSXMLParser = interface;
  AWSQueryParamBuilder = interface;
  AWSEC2ParamBuilder = interface;
  AWSJSONBuilder = interface;
  AWSJSONParser = interface;
  AWSJSONRequestSerializer = interface;
  AWSXMLRequestSerializer = interface;
  AWSQueryStringRequestSerializer = interface;
  AWSJSONResponseSerializer = interface;
  AWSXMLResponseSerializer = interface;
  AWSURLSessionManager = interface;
  AWSSignatureSignerUtility = interface;
  AWSSignatureV4Signer = interface;
  AWSSignatureV2Signer = interface;
  AWSS3ChunkedEncodingInputStream = interface;
  AWSServiceInfo = interface;
  AWSInfo = interface;
  AWSGZIP = interface;
  AWSFMDatabase = interface;
  AWSFMStatement = interface;
  AWSFMResultSet = interface;
  AWSFMDatabasePool = interface;
  AWSFMDatabasePoolDelegate = interface;
  AWSFMDatabaseQueue = interface;
  AWSKSReachability = interface;
  AWSKSReachableOperation = interface;
  AWSTMDiskCache = interface;
  AWSTMCacheBackgroundTaskManager = interface;
  AWSTMMemoryCache = interface;
  AWSTMCache = interface;
  AWSUICKeyChainStore = interface;
  AWSSTSAssumeRoleRequest = interface;
  AWSSTSAssumeRoleResponse = interface;
  AWSSTSAssumeRoleWithSAMLRequest = interface;
  AWSSTSAssumeRoleWithSAMLResponse = interface;
  AWSSTSAssumeRoleWithWebIdentityRequest = interface;
  AWSSTSAssumeRoleWithWebIdentityResponse = interface;
  AWSSTSAssumedRoleUser = interface;
  AWSSTSCredentials = interface;
  AWSSTSDecodeAuthorizationMessageRequest = interface;
  AWSSTSDecodeAuthorizationMessageResponse = interface;
  AWSSTSFederatedUser = interface;
  AWSSTSGetCallerIdentityRequest = interface;
  AWSSTSGetCallerIdentityResponse = interface;
  AWSSTSGetFederationTokenRequest = interface;
  AWSSTSGetFederationTokenResponse = interface;
  AWSSTSGetSessionTokenRequest = interface;
  AWSSTSGetSessionTokenResponse = interface;
  AWSSTSResources = interface;
  AWSSTS = interface;
  AWSCognitoIdentityCognitoIdentityProvider = interface;
  AWSCognitoIdentityCreateIdentityPoolInput = interface;
  AWSCognitoIdentityCredentials = interface;
  AWSCognitoIdentityDeleteIdentitiesInput = interface;
  AWSCognitoIdentityDeleteIdentitiesResponse = interface;
  AWSCognitoIdentityDeleteIdentityPoolInput = interface;
  AWSCognitoIdentityDescribeIdentityInput = interface;
  AWSCognitoIdentityDescribeIdentityPoolInput = interface;
  AWSCognitoIdentityGetCredentialsForIdentityInput = interface;
  AWSCognitoIdentityGetCredentialsForIdentityResponse = interface;
  AWSCognitoIdentityGetIdInput = interface;
  AWSCognitoIdentityGetIdResponse = interface;
  AWSCognitoIdentityGetIdentityPoolRolesInput = interface;
  AWSCognitoIdentityGetIdentityPoolRolesResponse = interface;
  AWSCognitoIdentityGetOpenIdTokenForDeveloperIdentityInput = interface;
  AWSCognitoIdentityGetOpenIdTokenForDeveloperIdentityResponse = interface;
  AWSCognitoIdentityGetOpenIdTokenInput = interface;
  AWSCognitoIdentityGetOpenIdTokenResponse = interface;
  AWSCognitoIdentityIdentityDescription = interface;
  AWSCognitoIdentityIdentityPool = interface;
  AWSCognitoIdentityIdentityPoolShortDescription = interface;
  AWSCognitoIdentityListIdentitiesInput = interface;
  AWSCognitoIdentityListIdentitiesResponse = interface;
  AWSCognitoIdentityListIdentityPoolsInput = interface;
  AWSCognitoIdentityListIdentityPoolsResponse = interface;
  AWSCognitoIdentityLookupDeveloperIdentityInput = interface;
  AWSCognitoIdentityLookupDeveloperIdentityResponse = interface;
  AWSCognitoIdentityMergeDeveloperIdentitiesInput = interface;
  AWSCognitoIdentityMergeDeveloperIdentitiesResponse = interface;
  AWSCognitoIdentitySetIdentityPoolRolesInput = interface;
  AWSCognitoIdentityUnlinkDeveloperIdentityInput = interface;
  AWSCognitoIdentityUnlinkIdentityInput = interface;
  AWSCognitoIdentityUnprocessedIdentityId = interface;
  AWSCognitoIdentityResources = interface;
  AWSCognitoIdentity = interface;

  // ===== Framework typedefs =====
{$M+}
  AWSCancellationBlock = procedure() of object;
  TAWSCoreBlock = procedure() of object;
  TAWSCoreBlock1 = procedure(param1: TAWSCoreBlock) of object;
  dispatch_queue_t = Pointer;
  //@Class  _AWSVoid_Nonexistant
  _AWSVoid_Nonexistant = NSObject;
  AWSVoid = _AWSVoid_Nonexistant;
  NSInteger = Integer;
  ResultType = Pointer;
  TAWSCoreWithBlock = function(): Pointer; cdecl;
  AWSContinuationBlock = function(param1: AWSTask): Pointer; cdecl;
  AWSRegionType = NSInteger;
  AWSServiceType = NSInteger;
  NSTimeInterval = Double;
  NSUInteger = Cardinal;
  NSJSONWritingOptions = NSUInteger;
  AWSDDLogFlag = NSUInteger;
  AWSDDLogLevel = NSUInteger;
  __builtin_va_list = Pointer;
  __darwin_va_list = __builtin_va_list;
  AWSDDLogMessageOptions = NSInteger;
  AWSDDColor = UIColor;
  CGFloat = Single;
  NSComparisonResult = NSInteger;
  AWSMTLModelEncodingBehavior = NSUInteger;
  AWSMTLValueTransformerBlock = function(param1: Pointer): Pointer; cdecl;
  AWSNetworkingErrorType = NSInteger;
  AWSNetworkingRetryType = NSInteger;
  AWSNetworkingUploadProgressBlock = procedure(param1: Int64; param2: Int64;
    param3: Int64) of object;
  AWSNetworkingDownloadProgressBlock = procedure(param1: Int64; param2: Int64;
    param3: Int64) of object;

  AWSCognitoCredentialsProviderHelperErrorType = NSInteger;
  AWSCognitoCredentialsProviderErrorType = NSInteger;
  AWSServiceErrorType = NSInteger;
  AWSLogLevel = NSInteger;
  AWSXMLBuilderErrorType = NSInteger;
  AWSXMLParserErrorType = NSInteger;
  AWSQueryParamBuilderErrorType = NSInteger;
  AWSEC2ParamBuilderErrorType = NSInteger;
  AWSJSONBuilderErrorType = NSInteger;
  AWSJSONParserErrorType = NSInteger;
  AWSValidationErrorType = NSInteger;
  TAWSCoreBlock2 = procedure(param1: AWSFMDatabase) of object;
  TAWSCoreBlock3 = procedure(param1: AWSFMDatabase; param2: PBoolean) of object;
  AWSFMDBExecuteStatementsCallbackBlock = function(param1: NSDictionary)
    : Integer; cdecl;
  TAWSCoreBlock4 = procedure(param1: PBoolean) of object;
  TAWSCoreWithBlock1 = procedure(param1: Pointer; param2: Integer;
    param3: Pointer) of object;
  AWSKSReachabilityCallback = procedure(param1: AWSKSReachability) of object;
  SCNetworkReachabilityFlags = LongWord;
  AWSTMDiskCacheBlock = procedure(param1: AWSTMDiskCache) of object;
  AWSTMDiskCacheObjectBlock = procedure(param1: AWSTMDiskCache;
    param2: NSString; param3: Pointer; param4: NSURL) of object;
  AWSTMMemoryCacheBlock = procedure(param1: AWSTMMemoryCache) of object;
  AWSTMMemoryCacheObjectBlock = procedure(param1: AWSTMMemoryCache;
    param2: NSString; param3: Pointer) of object;
  AWSTMCacheBlock = procedure(param1: AWSTMCache) of object;
  AWSTMCacheObjectBlock = procedure(param1: AWSTMCache; param2: NSString;
    param3: Pointer) of object;
  AWSUICKeyChainStoreErrorCode = NSInteger;
  AWSUICKeyChainStoreItemClass = NSInteger;
  AWSUICKeyChainStoreProtocolType = NSInteger;
  AWSUICKeyChainStoreAuthenticationType = NSInteger;
  AWSUICKeyChainStoreAccessibility = NSInteger;
  AWSUICKeyChainStoreAuthenticationPolicy = NSInteger;
  TAWSCoreCompletion = procedure(param1: NSString; param2: NSString;
    param3: NSError) of object;
  TAWSCoreCompletion1 = procedure(param1: NSString; param2: NSError) of object;
  TAWSCoreCompletion2 = procedure(param1: NSError) of object;
  TAWSCoreCompletion3 = procedure(param1: NSArray; param2: NSError) of object;
  AWSSTSErrorType = NSInteger;
  TAWSCoreCompletionHandler = procedure(param1: AWSSTSAssumeRoleResponse;
    param2: NSError) of object;
  TAWSCoreCompletionHandler1 = procedure
    (param1: AWSSTSAssumeRoleWithSAMLResponse; param2: NSError) of object;
  TAWSCoreCompletionHandler2 = procedure
    (param1: AWSSTSAssumeRoleWithWebIdentityResponse; param2: NSError)
    of object;
  TAWSCoreCompletionHandler3 = procedure
    (param1: AWSSTSDecodeAuthorizationMessageResponse; param2: NSError)
    of object;
  TAWSCoreCompletionHandler4 = procedure
    (param1: AWSSTSGetCallerIdentityResponse; param2: NSError) of object;
  TAWSCoreCompletionHandler5 = procedure
    (param1: AWSSTSGetFederationTokenResponse; param2: NSError) of object;
  TAWSCoreCompletionHandler6 = procedure(param1: AWSSTSGetSessionTokenResponse;
    param2: NSError) of object;
  AWSCognitoIdentityErrorType = NSInteger;
  AWSCognitoIdentityErrorCode = NSInteger;
  TAWSCoreCompletionHandler7 = procedure(param1: AWSCognitoIdentityIdentityPool;
    param2: NSError) of object;
  TAWSCoreCompletionHandler8 = procedure
    (param1: AWSCognitoIdentityDeleteIdentitiesResponse; param2: NSError)
    of object;
  TAWSCoreCompletionHandler9 = procedure
    (param1: AWSCognitoIdentityIdentityDescription; param2: NSError) of object;
  TAWSCoreCompletionHandler10 = procedure
    (param1: AWSCognitoIdentityGetCredentialsForIdentityResponse;
    param2: NSError) of object;
  TAWSCoreCompletionHandler11 = procedure
    (param1: AWSCognitoIdentityGetIdResponse; param2: NSError) of object;
  TAWSCoreCompletionHandler12 = procedure
    (param1: AWSCognitoIdentityGetIdentityPoolRolesResponse; param2: NSError)
    of object;
  TAWSCoreCompletionHandler13 = procedure
    (param1: AWSCognitoIdentityGetOpenIdTokenResponse; param2: NSError)
    of object;
  TAWSCoreCompletionHandler14 = procedure
    (param1: AWSCognitoIdentityGetOpenIdTokenForDeveloperIdentityResponse;
    param2: NSError) of object;
  TAWSCoreCompletionHandler15 = procedure
    (param1: AWSCognitoIdentityListIdentitiesResponse; param2: NSError)
    of object;
  TAWSCoreCompletionHandler16 = procedure
    (param1: AWSCognitoIdentityListIdentityPoolsResponse; param2: NSError)
    of object;
  TAWSCoreCompletionHandler17 = procedure
    (param1: AWSCognitoIdentityLookupDeveloperIdentityResponse; param2: NSError)
    of object;
  TAWSCoreCompletionHandler18 = procedure
    (param1: AWSCognitoIdentityMergeDeveloperIdentitiesResponse;
    param2: NSError) of object;
  // ===== Interface declarations =====

  AWSCancellationTokenRegistrationClass = interface(NSObjectClass)
    ['{EA9F1F2C-F2A9-4CA3-802A-6DB230B8FA85}']
  end;

  AWSCancellationTokenRegistration = interface(NSObject)
    ['{1108B8F8-6A61-4565-9EF3-743644F92649}']
    procedure dispose; cdecl;
  end;

  TAWSCancellationTokenRegistration = class
    (TOCGenericImport<AWSCancellationTokenRegistrationClass,
    AWSCancellationTokenRegistration>)
  end;

  PAWSCancellationTokenRegistration = Pointer;

  AWSCancellationTokenClass = interface(NSObjectClass)
    ['{D701D2BE-BA34-40A6-9E75-38EA9BD51B3B}']
  end;

  AWSCancellationToken = interface(NSObject)
    ['{D0B2D7CB-E9A2-4533-9F17-63FD84322190}']
    function isCancellationRequested: Boolean; cdecl;
    function registerCancellationObserverWithBlock(block: AWSCancellationBlock)
      : AWSCancellationTokenRegistration; cdecl;
  end;

  TAWSCancellationToken = class(TOCGenericImport<AWSCancellationTokenClass,
    AWSCancellationToken>)
  end;

  PAWSCancellationToken = Pointer;

  AWSCancellationTokenSourceClass = interface(NSObjectClass)
    ['{90DC8C80-0370-4BBE-9F85-AFF8BD19C90F}']
    { class } function cancellationTokenSource: Pointer { instancetype }; cdecl;
  end;

  AWSCancellationTokenSource = interface(NSObject)
    ['{84D6A7C6-5C78-4B29-8E5B-09BEA6C28A7A}']
    function token: AWSCancellationToken; cdecl;
    function isCancellationRequested: Boolean; cdecl;
    procedure cancel; cdecl;
    procedure cancelAfterDelay(millis: Integer); cdecl;
    procedure dispose; cdecl;
  end;

  TAWSCancellationTokenSource = class
    (TOCGenericImport<AWSCancellationTokenSourceClass,
    AWSCancellationTokenSource>)
  end;

  PAWSCancellationTokenSource = Pointer;

  AWSExecutorClass = interface(NSObjectClass)
    ['{8D6D03BB-A148-4D34-A696-7A265B3C4838}']
    { class } function defaultExecutor: Pointer { instancetype }; cdecl;
    { class } function immediateExecutor: Pointer { instancetype }; cdecl;
    { class } function mainThreadExecutor: Pointer { instancetype }; cdecl;
    { class } function executorWithBlock(block: TAWSCoreBlock1)
      : Pointer { instancetype }; cdecl;
    { class } function executorWithDispatchQueue(queue: dispatch_queue_t)
      : Pointer { instancetype }; cdecl;
    { class } function executorWithOperationQueue(queue: NSOperationQueue)
      : Pointer { instancetype }; cdecl;
  end;

  AWSExecutor = interface(NSObject)
    ['{5E0D15C8-7365-4783-B222-700321F4C08C}']
    procedure execute(block: TAWSCoreBlock); cdecl;
  end;

  TAWSExecutor = class(TOCGenericImport<AWSExecutorClass, AWSExecutor>)
  end;

  PAWSExecutor = Pointer;

  AWSTaskClass = interface(NSObjectClass)
    ['{36401A08-E1A4-4BF1-B4B1-D0AE7C6E61A8}']
    { class } function taskWithResult(result: ResultType)
      : Pointer { instancetype }; cdecl;
    { class } function taskWithError(error: NSError)
      : Pointer { instancetype }; cdecl;
    { class } function cancelledTask: Pointer { instancetype }; cdecl;
    { class } function taskForCompletionOfAllTasks(tasks: NSArray)
      : Pointer { instancetype }; cdecl;
    { class } function taskForCompletionOfAllTasksWithResults(tasks: NSArray)
      : Pointer { instancetype }; cdecl;
    { class } function taskForCompletionOfAnyTask(tasks: NSArray)
      : Pointer { instancetype }; cdecl;
    [MethodName('taskWithDelay:')]
    { class } function taskWithDelay(millis: Integer): AWSTask; cdecl;
    [MethodName('taskWithDelay:cancellationToken:')]
    { class } function taskWithDelayCancellationToken(millis: Integer;
      cancellationToken: AWSCancellationToken): AWSTask; cdecl;
    { class } function taskFromExecutor(executor: AWSExecutor;
      withBlock: TAWSCoreWithBlock): Pointer { instancetype }; cdecl;
  end;

  AWSTask = interface(NSObject)
    ['{73A9ABB0-C7B6-412B-A506-BC5D5789D928}']
    function result: ResultType; cdecl;
    function error: NSError; cdecl;
    function isCancelled: Boolean; cdecl;
    function isFaulted: Boolean; cdecl;
    function isCompleted: Boolean; cdecl;
    [MethodName('continueWithBlock:')]
    function continueWithBlock(block: AWSContinuationBlock): AWSTask; cdecl;
    [MethodName('continueWithBlock:cancellationToken:')]
    function continueWithBlockCancellationToken(block: AWSContinuationBlock;
      cancellationToken: AWSCancellationToken): AWSTask; cdecl;
    [MethodName('continueWithExecutor:withBlock:')]
    function continueWithExecutorWithBlock(executor: AWSExecutor;
      withBlock: AWSContinuationBlock): AWSTask; cdecl;
    [MethodName('continueWithExecutor:block:cancellationToken:')]
    function continueWithExecutorBlockCancellationToken(executor: AWSExecutor;
      block: AWSContinuationBlock; cancellationToken: AWSCancellationToken)
      : AWSTask; cdecl;
    [MethodName('continueWithSuccessBlock:')]
    function continueWithSuccessBlock(block: AWSContinuationBlock)
      : AWSTask; cdecl;
    [MethodName('continueWithSuccessBlock:cancellationToken:')]
    function continueWithSuccessBlockCancellationToken
      (block: AWSContinuationBlock; cancellationToken: AWSCancellationToken)
      : AWSTask; cdecl;
    [MethodName('continueWithExecutor:withSuccessBlock:')]
    function continueWithExecutorWithSuccessBlock(executor: AWSExecutor;
      withSuccessBlock: AWSContinuationBlock): AWSTask; cdecl;
    [MethodName('continueWithExecutor:successBlock:cancellationToken:')]
    function continueWithExecutorSuccessBlockCancellationToken
      (executor: AWSExecutor; successBlock: AWSContinuationBlock;
      cancellationToken: AWSCancellationToken): AWSTask; cdecl;
    procedure waitUntilFinished; cdecl;
  end;

  TAWSTask = class(TOCGenericImport<AWSTaskClass, AWSTask>)
  end;

  PAWSTask = Pointer;

  AWSTaskCompletionSourceClass = interface(NSObjectClass)
    ['{1DCC8941-8ACA-4FFA-993A-A57B00F8B338}']
    { class } function taskCompletionSource: Pointer { instancetype }; cdecl;
  end;

  AWSTaskCompletionSource = interface(NSObject)
    ['{A2CC0ABA-2BB6-41EC-9948-E75869E0C9B1}']
    function task: AWSTask; cdecl;
    procedure setResult(result: ResultType); cdecl;
    procedure setError(error: NSError); cdecl;
    procedure cancel; cdecl;
    function trySetResult(result: ResultType): Boolean; cdecl;
    function trySetError(error: NSError): Boolean; cdecl;
    function trySetCancelled: Boolean; cdecl;
  end;

  TAWSTaskCompletionSource = class
    (TOCGenericImport<AWSTaskCompletionSourceClass, AWSTaskCompletionSource>)
  end;

  PAWSTaskCompletionSource = Pointer;

  AWS = interface(IObjectiveC)
    ['{19FED1C1-C66C-4162-9DA8-6E150A129307}']
    function aws_clockSkewFixedDate: NSDate; cdecl;
    [MethodName('aws_dateFromString:')]
    function aws_dateFromString(&string: NSString): NSDate; cdecl;
    [MethodName('aws_dateFromString:format:')]
    function aws_dateFromStringFormat(&string: NSString; format: NSString)
      : NSDate; cdecl;
    function aws_stringValue(dateFormat: NSString): NSString; cdecl;
    procedure aws_setRuntimeClockSkew(clockskew: NSTimeInterval); cdecl;
    function aws_getRuntimeClockSkew: NSTimeInterval; cdecl;
    function aws_removeNullValues: NSDictionary; cdecl;
    function aws_objectForCaseInsensitiveKey(aKey: Pointer): Pointer; cdecl;
    function aws_dataWithJSONObject(obj: Pointer; options: NSJSONWritingOptions;
      error: NSError): NSData; cdecl;
    function aws_numberFromString(&string: NSString): NSNumber; cdecl;
    function aws_properties: NSDictionary; cdecl;
    procedure aws_copyPropertiesFromObject(&object: NSObject); cdecl;
    function aws_base64md5FromData(data: NSData): NSString; cdecl;
    function aws_isBase64Data: Boolean; cdecl;
    function aws_stringWithURLEncoding: NSString; cdecl;
    function aws_stringWithURLEncodingPath: NSString; cdecl;
    function aws_stringWithURLEncodingPathWithoutPriorDecoding: NSString; cdecl;
    function aws_md5String: NSString; cdecl;
    function aws_md5StringLittleEndian: NSString; cdecl;
    function aws_isVirtualHostedStyleCompliant: Boolean; cdecl;
    function aws_regionTypeValue: AWSRegionType; cdecl;
    function aws_atomicallyCopyItemAtURL(sourceURL: NSURL; toURL: NSURL;
      backupItemName: NSString; error: NSError): Boolean; cdecl;
  end;

  AWSClientContextClass = interface(NSObjectClass)
    ['{7BBADF13-6D46-4556-A6DD-B69FB8BB9B82}']
  end;

  AWSClientContext = interface(NSObject)
    ['{E65E3371-1F47-42CD-9CF4-99203E123F9E}']
    function installationId: NSString; cdecl;
    procedure setAppVersion(appVersion: NSString); cdecl;
    function appVersion: NSString; cdecl;
    procedure setAppBuild(appBuild: NSString); cdecl;
    function appBuild: NSString; cdecl;
    procedure setAppPackageName(appPackageName: NSString); cdecl;
    function appPackageName: NSString; cdecl;
    procedure setAppName(appName: NSString); cdecl;
    function appName: NSString; cdecl;
    procedure setDevicePlatformVersion(devicePlatformVersion: NSString); cdecl;
    function devicePlatformVersion: NSString; cdecl;
    procedure setDevicePlatform(devicePlatform: NSString); cdecl;
    function devicePlatform: NSString; cdecl;
    procedure setDeviceManufacturer(deviceManufacturer: NSString); cdecl;
    function deviceManufacturer: NSString; cdecl;
    procedure setDeviceModel(deviceModel: NSString); cdecl;
    function deviceModel: NSString; cdecl;
    procedure setDeviceModelVersion(deviceModelVersion: NSString); cdecl;
    function deviceModelVersion: NSString; cdecl;
    procedure setDeviceLocale(deviceLocale: NSString); cdecl;
    function deviceLocale: NSString; cdecl;
    procedure setCustomAttributes(customAttributes: NSDictionary); cdecl;
    function customAttributes: NSDictionary; cdecl;
    function serviceDetails: NSDictionary; cdecl;
    function init: Pointer { instancetype }; cdecl;
    function dictionaryRepresentation: NSDictionary; cdecl;
    function JSONString: NSString; cdecl;
    function base64EncodedJSONString: NSString; cdecl;
    procedure setDetails(details: Pointer; forService: NSString); cdecl;
  end;

  TAWSClientContext = class(TOCGenericImport<AWSClientContextClass,
    AWSClientContext>)
  end;

  PAWSClientContext = Pointer;

  AWSDDLogMessageClass = interface(NSObjectClass)
    ['{AD1DFF8F-3AC0-422A-8086-4725460376A7}']
  end;

  AWSDDLogMessage = interface(NSObject)
    ['{8D1AAC37-EBC4-4428-91C0-C6EC13A0C675}']
    function init: Pointer { instancetype }; cdecl;
    function initWithMessage(message: NSString; level: AWSDDLogLevel;
      flag: AWSDDLogFlag; context: NSInteger; &file: NSString;
      &function: NSString; line: NSUInteger; tag: Pointer;
      options: AWSDDLogMessageOptions; timestamp: NSDate)
      : Pointer { instancetype }; cdecl;
    function message: NSString; cdecl;
    function level: AWSDDLogLevel; cdecl;
    function flag: AWSDDLogFlag; cdecl;
    function context: NSInteger; cdecl;
    function &file: NSString; cdecl;
    function fileName: NSString; cdecl;
    function &function: NSString; cdecl;
    function line: NSUInteger; cdecl;
    function tag: Pointer; cdecl;
    function options: AWSDDLogMessageOptions; cdecl;
    function timestamp: NSDate; cdecl;
    function threadID: NSString; cdecl;
    function threadName: NSString; cdecl;
    function queueLabel: NSString; cdecl;
  end;

  TAWSDDLogMessage = class(TOCGenericImport<AWSDDLogMessageClass,
    AWSDDLogMessage>)
  end;

  PAWSDDLogMessage = Pointer;

  AWSDDLoggerInformationClass = interface(NSObjectClass)
    ['{2B7B0E40-9D35-44C0-8EC1-DBBFB8005E2D}']
    { class } function informationWithLogger(logger: Pointer;
      andLevel: AWSDDLogLevel): AWSDDLoggerInformation; cdecl;
  end;

  AWSDDLoggerInformation = interface(NSObject)
    ['{50CEB5FE-A112-42EE-A512-DD3929057162}']
    function logger: Pointer; cdecl;
    function level: AWSDDLogLevel; cdecl;
  end;

  TAWSDDLoggerInformation = class(TOCGenericImport<AWSDDLoggerInformationClass,
    AWSDDLoggerInformation>)
  end;

  PAWSDDLoggerInformation = Pointer;

  AWSDDLogClass = interface(NSObjectClass)
    ['{CFCA7D18-8498-461A-BC53-330984818DE5}']
    [MethodName('log:level:flag:context:file:function:line:tag:format:')]
    { class } procedure logLevelFlagContextFileFunctionLineTagFormat
      (asynchronous: Boolean; level: AWSDDLogLevel; flag: AWSDDLogFlag;
      context: NSInteger; &file: MarshaledAString; &function: MarshaledAString;
      line: NSUInteger; tag: Pointer; format: NSString); cdecl;
    [MethodName('log:level:flag:context:file:function:line:tag:format:args:')]
    { class } procedure logLevelFlagContextFileFunctionLineTagFormatArgs
      (asynchronous: Boolean; level: AWSDDLogLevel; flag: AWSDDLogFlag;
      context: NSInteger; &file: MarshaledAString; &function: MarshaledAString;
      line: NSUInteger; tag: Pointer; format: NSString;
      args: array of const); cdecl;
    [MethodName('log:message:')]
    { class } procedure logMessage(asynchronous: Boolean;
      message: AWSDDLogMessage); cdecl;
    { class } procedure flushLog; cdecl;
    [MethodName('addLogger:')]
    { class } procedure addLogger(logger: Pointer); cdecl;
    [MethodName('addLogger:withLevel:')]
    { class } procedure addLoggerWithLevel(logger: Pointer;
      withLevel: AWSDDLogLevel); cdecl;
    { class } procedure removeLogger(logger: Pointer); cdecl;
    { class } procedure removeAllLoggers; cdecl;
    { class } function levelForClass(aClass: Pointer): AWSDDLogLevel; cdecl;
    { class } function levelForClassWithName(aClassName: NSString)
      : AWSDDLogLevel; cdecl;
    [MethodName('setLevel:forClass:')]
    { class } procedure setLevelForClass(level: AWSDDLogLevel;
      forClass: Pointer); cdecl;
    [MethodName('setLevel:forClassWithName:')]
    { class } procedure setLevelForClassWithName(level: AWSDDLogLevel;
      forClassWithName: NSString); cdecl;
  end;

  AWSDDLog = interface(NSObject)
    ['{F6EBD23A-FDEA-41B3-9CF7-B52B26855956}']
    procedure setSharedInstance(sharedInstance: AWSDDLog); cdecl;
    function sharedInstance: AWSDDLog; cdecl;
    procedure setLogLevel(logLevel: AWSDDLogLevel); cdecl;
    function logLevel: AWSDDLogLevel; cdecl;
    procedure setLoggingQueue(loggingQueue: dispatch_queue_t); cdecl;
    function loggingQueue: dispatch_queue_t; cdecl;
    [MethodName('log:level:flag:context:file:function:line:tag:format:')]
    procedure logLevelFlagContextFileFunctionLineTagFormat
      (asynchronous: Boolean; level: AWSDDLogLevel; flag: AWSDDLogFlag;
      context: NSInteger; &file: MarshaledAString; &function: MarshaledAString;
      line: NSUInteger; tag: Pointer; format: NSString); cdecl;
    [MethodName('log:level:flag:context:file:function:line:tag:format:args:')]
    procedure logLevelFlagContextFileFunctionLineTagFormatArgs
      (asynchronous: Boolean; level: AWSDDLogLevel; flag: AWSDDLogFlag;
      context: NSInteger; &file: MarshaledAString; &function: MarshaledAString;
      line: NSUInteger; tag: Pointer; format: NSString;
      args: array of const); cdecl;
    [MethodName('log:message:')]
    procedure logMessage(asynchronous: Boolean;
      message: AWSDDLogMessage); cdecl;
    procedure flushLog; cdecl;
    [MethodName('addLogger:')]
    procedure addLogger(logger: Pointer); cdecl;
    [MethodName('addLogger:withLevel:')]
    procedure addLoggerWithLevel(logger: Pointer;
      withLevel: AWSDDLogLevel); cdecl;
    procedure removeLogger(logger: Pointer); cdecl;
    procedure removeAllLoggers; cdecl;
    procedure setAllLoggers(allLoggers: NSArray); cdecl;
    function allLoggers: NSArray; cdecl;
    procedure setAllLoggersWithLevel(allLoggersWithLevel: NSArray); cdecl;
    function allLoggersWithLevel: NSArray; cdecl;
    procedure setRegisteredClasses(registeredClasses: NSArray); cdecl;
    function registeredClasses: NSArray; cdecl;
    procedure setRegisteredClassNames(registeredClassNames: NSArray); cdecl;
    function registeredClassNames: NSArray; cdecl;
  end;

  TAWSDDLog = class(TOCGenericImport<AWSDDLogClass, AWSDDLog>)
  end;

  PAWSDDLog = Pointer;

  AWSDDAbstractLoggerClass = interface(NSObjectClass)
    ['{2DABA0F1-7764-4DCF-8377-62196BF8E9E7}']
  end;

  AWSDDAbstractLogger = interface(NSObject)
    ['{28D3E380-6A5C-4188-99A1-659D33410ECB}']
    procedure setLogFormatter(logFormatter: Pointer); cdecl;
    function logFormatter: Pointer; cdecl;
    procedure setLoggerQueue(loggerQueue: dispatch_queue_t); cdecl;
    function loggerQueue: dispatch_queue_t; cdecl;
    function isOnGlobalLoggingQueue: Boolean; cdecl;
    function isOnInternalLoggerQueue: Boolean; cdecl;
  end;

  TAWSDDAbstractLogger = class(TOCGenericImport<AWSDDAbstractLoggerClass,
    AWSDDAbstractLogger>)
  end;

  PAWSDDAbstractLogger = Pointer;

  AWSDDASLLoggerClass = interface(AWSDDAbstractLoggerClass)
    ['{F97FBFF0-B7C7-4597-906A-4FF4C95E0908}']
  end;

  AWSDDASLLogger = interface(AWSDDAbstractLogger)
    ['{0716740F-9960-42D2-9D61-0B3919454907}']
    procedure setSharedInstance(sharedInstance: AWSDDASLLogger); cdecl;
    function sharedInstance: AWSDDASLLogger; cdecl;
  end;

  TAWSDDASLLogger = class(TOCGenericImport<AWSDDASLLoggerClass, AWSDDASLLogger>)
  end;

  PAWSDDASLLogger = Pointer;

  AWSDDASLLogCaptureClass = interface(NSObjectClass)
    ['{38542A08-2DC0-4295-8F91-B581BB31591E}']
    { class } procedure start; cdecl;
    { class } procedure stop; cdecl;
  end;

  AWSDDASLLogCapture = interface(NSObject)
    ['{22C0078C-C1A1-49D6-A523-1040BFBD6F83}']
    procedure setCaptureLevel(captureLevel: AWSDDLogLevel); cdecl;
    function captureLevel: AWSDDLogLevel; cdecl;
  end;

  TAWSDDASLLogCapture = class(TOCGenericImport<AWSDDASLLogCaptureClass,
    AWSDDASLLogCapture>)
  end;

  PAWSDDASLLogCapture = Pointer;

  AWSDDTTYLoggerClass = interface(AWSDDAbstractLoggerClass)
    ['{6C4259B2-7ABB-4063-8E2B-1CE4A4D851A6}']
  end;

  AWSDDTTYLogger = interface(AWSDDAbstractLogger)
    ['{5290151C-0126-4909-B5C5-BD1181859426}']
    procedure setSharedInstance(sharedInstance: AWSDDTTYLogger); cdecl;
    function sharedInstance: AWSDDTTYLogger; cdecl;
    procedure setColorsEnabled(colorsEnabled: Boolean); cdecl;
    function colorsEnabled: Boolean; cdecl;
    procedure setAutomaticallyAppendNewlineForCustomFormatters
      (automaticallyAppendNewlineForCustomFormatters: Boolean); cdecl;
    function automaticallyAppendNewlineForCustomFormatters: Boolean; cdecl;
    [MethodName('setForegroundColor:backgroundColor:forFlag:')]
    procedure setForegroundColorBackgroundColorForFlag(txtColor: AWSDDColor;
      backgroundColor: AWSDDColor; forFlag: AWSDDLogFlag); cdecl;
    [MethodName('setForegroundColor:backgroundColor:forFlag:context:')]
    procedure setForegroundColorBackgroundColorForFlagContext
      (txtColor: AWSDDColor; backgroundColor: AWSDDColor; forFlag: AWSDDLogFlag;
      context: NSInteger); cdecl;
    [MethodName('setForegroundColor:backgroundColor:forTag:')]
    procedure setForegroundColorBackgroundColorForTag(txtColor: AWSDDColor;
      backgroundColor: AWSDDColor; forTag: Pointer); cdecl;
    [MethodName('clearColorsForFlag:')]
    procedure clearColorsForFlag(mask: AWSDDLogFlag); cdecl;
    [MethodName('clearColorsForFlag:context:')]
    procedure clearColorsForFlagContext(mask: AWSDDLogFlag;
      context: NSInteger); cdecl;
    procedure clearColorsForTag(tag: Pointer); cdecl;
    procedure clearColorsForAllFlags; cdecl;
    procedure clearColorsForAllTags; cdecl;
    procedure clearAllColors; cdecl;
  end;

  TAWSDDTTYLogger = class(TOCGenericImport<AWSDDTTYLoggerClass, AWSDDTTYLogger>)
  end;

  PAWSDDTTYLogger = Pointer;

  AWSDDLogFileInfoClass = interface(NSObjectClass)
    ['{5264D5FD-B995-4FC7-9692-77C15A5B69F4}']
    { class } function logFileWithPath(filePath: NSString)
      : Pointer { instancetype }; cdecl;
  end;

  AWSDDLogFileInfo = interface(NSObject)
    ['{93C10424-F63E-4563-A134-9D86E05D1C08}']
    function filePath: NSString; cdecl;
    function fileName: NSString; cdecl;
    function fileAttributes: NSDictionary; cdecl;
    function creationDate: NSDate; cdecl;
    function modificationDate: NSDate; cdecl;
    function fileSize: UInt64; cdecl;
    function age: NSTimeInterval; cdecl;
    procedure setIsArchived(isArchived: Boolean); cdecl;
    function isArchived: Boolean; cdecl;
    function initWithFilePath(filePath: NSString)
      : Pointer { instancetype }; cdecl;
    procedure reset; cdecl;
    procedure renameFile(newFileName: NSString); cdecl;
    function hasExtendedAttributeWithName(attrName: NSString): Boolean; cdecl;
    procedure addExtendedAttributeWithName(attrName: NSString); cdecl;
    procedure removeExtendedAttributeWithName(attrName: NSString); cdecl;
    function reverseCompareByCreationDate(another: AWSDDLogFileInfo)
      : NSComparisonResult; cdecl;
    function reverseCompareByModificationDate(another: AWSDDLogFileInfo)
      : NSComparisonResult; cdecl;
  end;

  TAWSDDLogFileInfo = class(TOCGenericImport<AWSDDLogFileInfoClass,
    AWSDDLogFileInfo>)
  end;

  PAWSDDLogFileInfo = Pointer;

  AWSDDLogFileManagerDefaultClass = interface(NSObjectClass)
    ['{E81E1F4A-7E8F-43FB-87E8-09CFCFB434EE}']
  end;

  AWSDDLogFileManagerDefault = interface(NSObject)
    ['{FC529BF4-7104-40CA-B95B-D95E9396A419}']
    function init: Pointer { instancetype }; cdecl;
    [MethodName('initWithLogsDirectory:')]
    function initWithLogsDirectory(logsDirectory: NSString)
      : Pointer { instancetype }; cdecl;
    [MethodName('initWithLogsDirectory:defaultFileProtectionLevel:')]
    function initWithLogsDirectoryDefaultFileProtectionLevel
      (logsDirectory: NSString; defaultFileProtectionLevel: NSString)
      : Pointer { instancetype }; cdecl;
    function newLogFileName: NSString; cdecl;
    function isLogFile(fileName: NSString): Boolean; cdecl;
  end;

  TAWSDDLogFileManagerDefault = class
    (TOCGenericImport<AWSDDLogFileManagerDefaultClass,
    AWSDDLogFileManagerDefault>)
  end;

  PAWSDDLogFileManagerDefault = Pointer;

  AWSDDLogFileFormatterDefaultClass = interface(NSObjectClass)
    ['{CA300B6B-76C3-47CE-AD93-405F2AE9310A}']
  end;

  AWSDDLogFileFormatterDefault = interface(NSObject)
    ['{9DF4A40B-98D8-4558-ACDA-DC8A87B5248A}']
    function init: Pointer { instancetype }; cdecl;
    function initWithDateFormatter(dateFormatter: NSDateFormatter)
      : Pointer { instancetype }; cdecl;
  end;

  TAWSDDLogFileFormatterDefault = class
    (TOCGenericImport<AWSDDLogFileFormatterDefaultClass,
    AWSDDLogFileFormatterDefault>)
  end;

  PAWSDDLogFileFormatterDefault = Pointer;

  AWSDDFileLoggerClass = interface(AWSDDAbstractLoggerClass)
    ['{8278DF29-EC3D-4C51-AF8D-62DDED056F02}']
  end;

  AWSDDFileLogger = interface(AWSDDAbstractLogger)
    ['{2C640017-73EE-44A6-906E-991E80680739}']
    function init: Pointer { instancetype }; cdecl;
    function initWithLogFileManager(logFileManager: Pointer)
      : Pointer { instancetype }; cdecl;
    procedure willLogMessage; cdecl;
    procedure didLogMessage; cdecl;
    function shouldArchiveRecentLogFileInfo(recentLogFileInfo: AWSDDLogFileInfo)
      : Boolean; cdecl;
    procedure setMaximumFileSize(maximumFileSize: UInt64); cdecl;
    function maximumFileSize: UInt64; cdecl;
    procedure setRollingFrequency(rollingFrequency: NSTimeInterval); cdecl;
    function rollingFrequency: NSTimeInterval; cdecl;
    procedure setDoNotReuseLogFiles(doNotReuseLogFiles: Boolean); cdecl;
    function doNotReuseLogFiles: Boolean; cdecl;
    function logFileManager: Pointer; cdecl;
    procedure setAutomaticallyAppendNewlineForCustomFormatters
      (automaticallyAppendNewlineForCustomFormatters: Boolean); cdecl;
    function automaticallyAppendNewlineForCustomFormatters: Boolean; cdecl;
    procedure rollLogFileWithCompletionBlock(completionBlock
      : TAWSCoreBlock); cdecl;
    procedure rollLogFile; cdecl;
    function currentLogFileInfo: AWSDDLogFileInfo; cdecl;
  end;

  TAWSDDFileLogger = class(TOCGenericImport<AWSDDFileLoggerClass,
    AWSDDFileLogger>)
  end;

  PAWSDDFileLogger = Pointer;

  AWSDDOSLoggerClass = interface(AWSDDAbstractLoggerClass)
    ['{F35FFD44-F864-4E7D-8D73-AEC61B8448C6}']
  end;

  AWSDDOSLogger = interface(AWSDDAbstractLogger)
    ['{99549824-C3A8-4223-8235-EB42082647C7}']
    procedure setSharedInstance(sharedInstance: AWSDDOSLogger); cdecl;
    function sharedInstance: AWSDDOSLogger; cdecl;
  end;

  TAWSDDOSLogger = class(TOCGenericImport<AWSDDOSLoggerClass, AWSDDOSLogger>)
  end;

  PAWSDDOSLogger = Pointer;

  AWSMTLModelClass = interface(NSObjectClass)
    ['{FD05A62D-F991-4881-863A-97857AECF675}']
    [MethodName('modelWithDictionary:error:')]
    { class } function modelWithDictionaryError(dictionaryValue: NSDictionary;
      error: NSError): Pointer { instancetype }; cdecl;
    { class } function propertyKeys: NSSet; cdecl;
    [MethodName('modelWithDictionary:')]
    { class } function modelWithDictionary(dictionaryValue: NSDictionary)
      : Pointer { instancetype }; cdecl;
    { class } function modelWithExternalRepresentation(externalRepresentation
      : NSDictionary): Pointer { instancetype }; cdecl;
    { class } function externalRepresentationKeyPathsByPropertyKey
      : NSDictionary; cdecl;
    { class } function transformerForKey(key: NSString)
      : NSValueTransformer; cdecl;
    { class } function migrateExternalRepresentation(externalRepresentation
      : NSDictionary; fromVersion: NSUInteger): NSDictionary; cdecl;
    { class } function encodingBehaviorsByPropertyKey: NSDictionary; cdecl;
    { class } function allowedSecureCodingClassesByPropertyKey
      : NSDictionary; cdecl;
    { class } function modelVersion: NSUInteger; cdecl;
    { class } function dictionaryValueFromArchivedExternalRepresentation
      (externalRepresentation: NSDictionary; version: NSUInteger)
      : NSDictionary; cdecl;
  end;

  AWSMTLModel = interface(NSObject)
    ['{BB9DE0DC-D862-4121-B8F4-4A438BAD3BB1}']
    function init: Pointer { instancetype }; cdecl;
    [MethodName('initWithDictionary:error:')]
    function initWithDictionaryError(dictionaryValue: NSDictionary;
      error: NSError): Pointer { instancetype }; cdecl;
    function dictionaryValue: NSDictionary; cdecl;
    procedure mergeValueForKey(key: NSString; fromModel: AWSMTLModel); cdecl;
    procedure mergeValuesForKeysFromModel(model: AWSMTLModel); cdecl;
    function isEqual(&object: Pointer): Boolean; cdecl;
    function description: NSString; cdecl;
    function validate(error: NSError): Boolean; cdecl;
    [MethodName('initWithDictionary:')]
    function initWithDictionary(dictionaryValue: NSDictionary)
      : Pointer { instancetype }; cdecl;
    function initWithExternalRepresentation(externalRepresentation
      : NSDictionary): Pointer { instancetype }; cdecl;
    function externalRepresentation: NSDictionary; cdecl;
    function initWithCoder(coder: NSCoder): Pointer; cdecl;
    procedure encodeWithCoder(coder: NSCoder); cdecl;
    function decodeValueForKey(key: NSString; withCoder: NSCoder;
      modelVersion: NSUInteger): Pointer; cdecl;
  end;

  TAWSMTLModel = class(TOCGenericImport<AWSMTLModelClass, AWSMTLModel>)
  end;

  PAWSMTLModel = Pointer;

  AWSMTLJSONAdapterClass = interface(NSObjectClass)
    ['{F3647379-6FF3-447D-9B9C-05D693FA0EF6}']
    [MethodName('modelOfClass:fromJSONDictionary:error:')]
    { class } function modelOfClassFromJSONDictionaryError(modelClass: Pointer;
      fromJSONDictionary: NSDictionary; error: NSError): Pointer; cdecl;
    { class } function modelsOfClass(modelClass: Pointer;
      fromJSONArray: NSArray; error: NSError): NSArray; cdecl;
    { class } function JSONDictionaryFromModel(model: AWSMTLModel)
      : NSDictionary; cdecl;
    { class } function JSONArrayFromModels(models: NSArray): NSArray; cdecl;
    [MethodName('modelOfClass:fromJSONDictionary:')]
    { class } function modelOfClassFromJSONDictionary(modelClass: Pointer;
      fromJSONDictionary: NSDictionary): Pointer; cdecl;
  end;

  AWSMTLJSONAdapter = interface(NSObject)
    ['{02F49C71-F474-4EBC-AE52-187AA9741580}']
    function model: AWSMTLModel; cdecl;
    [MethodName('initWithJSONDictionary:modelClass:error:')]
    function initWithJSONDictionaryModelClassError(JSONDictionary: NSDictionary;
      modelClass: Pointer; error: NSError): Pointer; cdecl;
    function initWithModel(model: AWSMTLModel): Pointer; cdecl;
    function JSONDictionary: NSDictionary; cdecl;
    function JSONKeyPathForPropertyKey(key: NSString): NSString; cdecl;
    [MethodName('initWithJSONDictionary:modelClass:')]
    function initWithJSONDictionaryModelClass(JSONDictionary: NSDictionary;
      modelClass: Pointer): Pointer; cdecl;
  end;

  TAWSMTLJSONAdapter = class(TOCGenericImport<AWSMTLJSONAdapterClass,
    AWSMTLJSONAdapter>)
  end;

  PAWSMTLJSONAdapter = Pointer;

  AWSMTLManagedObjectAdapterClass = interface(NSObjectClass)
    ['{6EAEC0DA-8943-4E66-BFA3-04028872F245}']
    { class } function modelOfClass(modelClass: Pointer;
      fromManagedObject: NSManagedObject; error: NSError): Pointer; cdecl;
    { class } function managedObjectFromModel(model: AWSMTLModel;
      insertingIntoContext: NSManagedObjectContext; error: NSError)
      : Pointer; cdecl;
  end;

  AWSMTLManagedObjectAdapter = interface(NSObject)
    ['{F167251F-9D2B-4F08-95A9-728049480E96}']
  end;

  TAWSMTLManagedObjectAdapter = class
    (TOCGenericImport<AWSMTLManagedObjectAdapterClass,
    AWSMTLManagedObjectAdapter>)
  end;

  PAWSMTLManagedObjectAdapter = Pointer;

  AWSMTLValueTransformerClass = interface(NSValueTransformerClass)
    ['{2450B3B2-8618-4CAF-A12B-9A6F05700522}']
    { class } function transformerWithBlock(transformationBlock
      : AWSMTLValueTransformerBlock): Pointer { instancetype }; cdecl;
    { class } function reversibleTransformerWithBlock(transformationBlock
      : AWSMTLValueTransformerBlock): Pointer { instancetype }; cdecl;
    { class } function reversibleTransformerWithForwardBlock
      (forwardBlock: AWSMTLValueTransformerBlock;
      reverseBlock: AWSMTLValueTransformerBlock)
      : Pointer { instancetype }; cdecl;
  end;

  AWSMTLValueTransformer = interface(NSValueTransformer)
    ['{F5724932-47BC-43E9-9ADA-6E8C0F1D769B}']
  end;

  TAWSMTLValueTransformer = class(TOCGenericImport<AWSMTLValueTransformerClass,
    AWSMTLValueTransformer>)
  end;

  PAWSMTLValueTransformer = Pointer;

  AWSMTLManipulationAdditions = interface(IObjectiveC)
    ['{DBC4EA35-82A9-417D-97F9-97C72DE02C54}']
    function awsmtl_firstObject: Pointer; cdecl;
    function awsmtl_arrayByRemovingObject(&object: Pointer): NSArray; cdecl;
    function awsmtl_arrayByRemovingFirstObject: NSArray; cdecl;
    function awsmtl_arrayByRemovingLastObject: NSArray; cdecl;
    function awsmtl_dictionaryByAddingEntriesFromDictionary
      (dictionary: NSDictionary): NSDictionary; cdecl;
    function awsmtl_dictionaryByRemovingEntriesWithKeys(keys: NSSet)
      : NSDictionary; cdecl;
  end;

  AWSMTLInversionAdditions = interface(IObjectiveC)
    ['{37801D4A-BECF-471E-B484-65E88EE8A406}']
    function awsmtl_invertedTransformer: NSValueTransformer; cdecl;
  end;

  AWSMTLPredefinedTransformerAdditions = interface(IObjectiveC)
    ['{E8A09594-E54C-406D-9777-F9517AF15685}']
    function awsmtl_JSONDictionaryTransformerWithModelClass(modelClass: Pointer)
      : NSValueTransformer; cdecl;
    function awsmtl_JSONArrayTransformerWithModelClass(modelClass: Pointer)
      : NSValueTransformer; cdecl;
    [MethodName
      ('awsmtl_valueMappingTransformerWithDictionary:defaultValue:reverseDefaultValue:')
      ]
    function awsmtl_valueMappingTransformerWithDictionaryDefaultValueReverseDefaultValue
      (dictionary: NSDictionary; defaultValue: Pointer;
      reverseDefaultValue: Pointer): NSValueTransformer; cdecl;
    [MethodName('awsmtl_valueMappingTransformerWithDictionary:')]
    function awsmtl_valueMappingTransformerWithDictionary
      (dictionary: NSDictionary): NSValueTransformer; cdecl;
  end;

  UnavailableAWSMTLPredefinedTransformerAdditions = interface(IObjectiveC)
    ['{A6688F41-411D-4A0E-B931-B0A0C73C305C}']
    function awsmtl_externalRepresentationTransformerWithModelClass
      (modelClass: Pointer): NSValueTransformer; cdecl;
    function awsmtl_externalRepresentationArrayTransformerWithModelClass
      (modelClass: Pointer): NSValueTransformer; cdecl;
  end;

  AWSModelClass = interface(AWSMTLModelClass)
    ['{8789306D-A473-4809-8637-2282376B67EE}']
  end;

  AWSModel = interface(AWSMTLModel)
    ['{33F8E152-41F9-4D83-BBF8-03E522E50602}']
  end;

  TAWSModel = class(TOCGenericImport<AWSModelClass, AWSModel>)
  end;

  PAWSModel = Pointer;

  AWSModelUtilityClass = interface(NSObjectClass)
    ['{07392484-0634-47F1-9326-9B21B29EE73C}']
    { class } function mapMTLDictionaryFromJSONArrayDictionary
      (JSONArrayDictionary: NSDictionary; arrayElementType: NSString;
      withModelClass: Pointer): NSDictionary; cdecl;
    { class } function JSONArrayDictionaryFromMapMTLDictionary(mapMTLDictionary
      : NSDictionary; arrayElementType: NSString): NSDictionary; cdecl;
    { class } function mapMTLArrayFromJSONArray(JSONArray: NSArray;
      withModelClass: Pointer): NSArray; cdecl;
    { class } function JSONArrayFromMapMTLArray(mapMTLArray: NSArray)
      : NSArray; cdecl;
    { class } function mapMTLDictionaryFromJSONDictionary(JSONDictionary
      : NSDictionary; withModelClass: Pointer): NSDictionary; cdecl;
    { class } function JSONDictionaryFromMapMTLDictionary(mapMTLDictionary
      : NSDictionary): NSDictionary; cdecl;
  end;

  AWSModelUtility = interface(NSObject)
    ['{6E79B28A-9EB4-4C94-94B4-5AFDB20BF245}']
  end;

  TAWSModelUtility = class(TOCGenericImport<AWSModelUtilityClass,
    AWSModelUtility>)
  end;

  PAWSModelUtility = Pointer;

  AWSNetworkingConfigurationClass = interface(NSObjectClass)
    ['{E545B29D-4820-4CB1-A026-7BACB882ADFF}']
  end;

  AWSNetworkingConfiguration = interface(NSObject)
    ['{2B1FCDF3-405D-4524-AF5E-03669589D7FB}']
    function URL: NSURL; cdecl;
    procedure setBaseURL(baseURL: NSURL); cdecl;
    function baseURL: NSURL; cdecl;
    procedure setURLString(URLString: NSString); cdecl;
    function URLString: NSString; cdecl;
    procedure setHTTPMethod(HTTPMethod: AWSHTTPMethod); cdecl;
    function HTTPMethod: AWSHTTPMethod; cdecl;
    procedure setHeaders(headers: NSDictionary); cdecl;
    function headers: NSDictionary; cdecl;
    procedure setAllowsCellularAccess(allowsCellularAccess: Boolean); cdecl;
    function allowsCellularAccess: Boolean; cdecl;
    procedure setSharedContainerIdentifier(sharedContainerIdentifier
      : NSString); cdecl;
    function sharedContainerIdentifier: NSString; cdecl;
    procedure setRequestSerializer(requestSerializer: Pointer); cdecl;
    function requestSerializer: Pointer; cdecl;
    procedure setRequestInterceptors(requestInterceptors: NSArray); cdecl;
    function requestInterceptors: NSArray; cdecl;
    procedure setResponseSerializer(responseSerializer: Pointer); cdecl;
    function responseSerializer: Pointer; cdecl;
    procedure setResponseInterceptors(responseInterceptors: NSArray); cdecl;
    function responseInterceptors: NSArray; cdecl;
    procedure setRetryHandler(retryHandler: Pointer); cdecl;
    function retryHandler: Pointer; cdecl;
    procedure setMaxRetryCount(maxRetryCount: LongWord); cdecl;
    function maxRetryCount: LongWord; cdecl;
    procedure setTimeoutIntervalForRequest(timeoutIntervalForRequest
      : NSTimeInterval); cdecl;
    function timeoutIntervalForRequest: NSTimeInterval; cdecl;
    procedure setTimeoutIntervalForResource(timeoutIntervalForResource
      : NSTimeInterval); cdecl;
    function timeoutIntervalForResource: NSTimeInterval; cdecl;
  end;

  TAWSNetworkingConfiguration = class
    (TOCGenericImport<AWSNetworkingConfigurationClass,
    AWSNetworkingConfiguration>)
  end;

  PAWSNetworkingConfiguration = Pointer;

  AWSNetworkingRequestClass = interface(AWSNetworkingConfigurationClass)
    ['{C6AF8727-52F2-4B54-BA77-D251A7B1448D}']
  end;

  AWSNetworkingRequest = interface(AWSNetworkingConfiguration)
    ['{3914BD8F-AD09-44DB-A28B-125ED94726EA}']
    procedure setParameters(parameters: NSDictionary); cdecl;
    function parameters: NSDictionary; cdecl;
    procedure setUploadingFileURL(uploadingFileURL: NSURL); cdecl;
    function uploadingFileURL: NSURL; cdecl;
    procedure setDownloadingFileURL(downloadingFileURL: NSURL); cdecl;
    function downloadingFileURL: NSURL; cdecl;
    procedure setShouldWriteDirectly(shouldWriteDirectly: Boolean); cdecl;
    function shouldWriteDirectly: Boolean; cdecl;
    procedure setUploadProgress(uploadProgress
      : AWSNetworkingUploadProgressBlock); cdecl;
    function uploadProgress: AWSNetworkingUploadProgressBlock; cdecl;
    procedure setDownloadProgress(downloadProgress
      : AWSNetworkingDownloadProgressBlock); cdecl;
    function downloadProgress: AWSNetworkingDownloadProgressBlock; cdecl;
    function task: NSURLSessionTask; cdecl;
    function isCancelled: Boolean; cdecl;
    procedure assignProperties(configuration
      : AWSNetworkingConfiguration); cdecl;
    procedure cancel; cdecl;
    procedure pause; cdecl;
  end;

  TAWSNetworkingRequest = class(TOCGenericImport<AWSNetworkingRequestClass,
    AWSNetworkingRequest>)
  end;

  PAWSNetworkingRequest = Pointer;

  AWSHTTPMethod = interface(IObjectiveC)
    ['{7118CAB2-FF6F-4EDE-AB10-A754CC542D83}']
    function aws_stringWithHTTPMethod(HTTPMethod: AWSHTTPMethod)
      : Pointer { instancetype }; cdecl;
  end;

  AWSNetworkingClass = interface(NSObjectClass)
    ['{6082E2BB-E6DB-4643-9215-B8A5975E50CC}']
  end;

  AWSNetworking = interface(NSObject)
    ['{B9D8DE27-5EEA-40DD-8615-1AD810BF79CC}']
    function initWithConfiguration(configuration: AWSNetworkingConfiguration)
      : Pointer { instancetype }; cdecl;
    function sendRequest(request: AWSNetworkingRequest): AWSTask; cdecl;
  end;

  TAWSNetworking = class(TOCGenericImport<AWSNetworkingClass, AWSNetworking>)
  end;

  PAWSNetworking = Pointer;

  AWSRequestClass = interface(AWSModelClass)
    ['{424F3E33-6440-4F07-91EF-491BE6B6D800}']
  end;

  AWSRequest = interface(AWSModel)
    ['{4C66C4DD-A286-4171-962E-66F1AB99355E}']
    procedure setUploadProgress(uploadProgress
      : AWSNetworkingUploadProgressBlock); cdecl;
    function uploadProgress: AWSNetworkingUploadProgressBlock; cdecl;
    procedure setDownloadProgress(downloadProgress
      : AWSNetworkingDownloadProgressBlock); cdecl;
    function downloadProgress: AWSNetworkingDownloadProgressBlock; cdecl;
    function isCancelled: Boolean; cdecl;
    procedure setDownloadingFileURL(downloadingFileURL: NSURL); cdecl;
    function downloadingFileURL: NSURL; cdecl;
    function cancel: AWSTask; cdecl;
    function pause: AWSTask; cdecl;
  end;

  TAWSRequest = class(TOCGenericImport<AWSRequestClass, AWSRequest>)
  end;

  PAWSRequest = Pointer;

  AWSNetworkingRequestInterceptor = interface(IObjectiveC)
    ['{5E628DE9-FE76-49EE-83D9-34A0636C3EE0}']
    function interceptRequest(request: NSMutableURLRequest): AWSTask; cdecl;
    function userAgent: NSString; cdecl;
    function initWithUserAgent(userAgent: NSString)
      : Pointer { instancetype }; cdecl;
  end;

  AWSAbstractCognitoCredentialsProviderHelperClass = interface(NSObjectClass)
    ['{55109BCF-CA8A-4A5F-891A-C76D7BD3F78D}']
  end;

  AWSAbstractCognitoCredentialsProviderHelper = interface(NSObject)
    ['{B65B680F-233C-4EB8-9068-0C9F6821EE71}']
    function identityPoolId: NSString; cdecl;
    procedure setIdentityId(identityId: NSString); cdecl;
    function identityId: NSString; cdecl;
    function identityProviderManager: Pointer; cdecl;
  end;

  TAWSAbstractCognitoCredentialsProviderHelper = class
    (TOCGenericImport<AWSAbstractCognitoCredentialsProviderHelperClass,
    AWSAbstractCognitoCredentialsProviderHelper>)
  end;

  PAWSAbstractCognitoCredentialsProviderHelper = Pointer;

  AWSCognitoCredentialsProviderHelper = interface(IObjectiveC)
    ['{DD8779CD-4307-40C7-B934-FF7AE1AA86FE}']
    function identityPoolId: NSString; cdecl;
    procedure setIdentityId(identityId: NSString); cdecl;
    function identityId: NSString; cdecl;
    function identityProviderManager: Pointer; cdecl;
    function getIdentityId: AWSTask; cdecl;
    function isAuthenticated: Boolean; cdecl;
    procedure clear; cdecl;
    procedure setUseEnhancedFlow(useEnhancedFlow: Boolean); cdecl;
    function useEnhancedFlow: Boolean; cdecl;
    function initWithRegionType(regionType: AWSRegionType;
      identityPoolId: NSString; useEnhancedFlow: Boolean;
      identityProviderManager: Pointer): Pointer { instancetype }; cdecl;
  end;

  AWSCredentialsClass = interface(NSObjectClass)
    ['{5CCB5D25-E565-4D3D-8837-B79A4A2C21DE}']
  end;

  AWSCredentials = interface(NSObject)
    ['{DFED458B-8CD8-4DC9-A193-63D07041FDE1}']
    function accessKey: NSString; cdecl;
    function secretKey: NSString; cdecl;
    function sessionKey: NSString; cdecl;
    function expiration: NSDate; cdecl;
    function initWithAccessKey(accessKey: NSString; secretKey: NSString;
      sessionKey: NSString; expiration: NSDate)
      : Pointer { instancetype }; cdecl;
  end;

  TAWSCredentials = class(TOCGenericImport<AWSCredentialsClass, AWSCredentials>)
  end;

  PAWSCredentials = Pointer;

  AWSStaticCredentialsProviderClass = interface(NSObjectClass)
    ['{F6B3C628-969A-4E5C-899F-E2D72A35C4C4}']
  end;

  AWSStaticCredentialsProvider = interface(NSObject)
    ['{5DDE8191-6672-42A6-AFD1-67F8C7E20B10}']
    function initWithAccessKey(accessKey: NSString; secretKey: NSString)
      : Pointer { instancetype }; cdecl;
  end;

  TAWSStaticCredentialsProvider = class
    (TOCGenericImport<AWSStaticCredentialsProviderClass,
    AWSStaticCredentialsProvider>)
  end;

  PAWSStaticCredentialsProvider = Pointer;

  AWSBasicSessionCredentialsProviderClass = interface(NSObjectClass)
    ['{3AC314E5-35A4-4760-9928-6877DDF47A18}']
  end;

  AWSBasicSessionCredentialsProvider = interface(NSObject)
    ['{3FDB16BF-0F0E-45D4-9A35-9251A50DAFFA}']
    function initWithAccessKey(accessKey: NSString; secretKey: NSString;
      sessionToken: NSString): Pointer { instancetype }; cdecl;
  end;

  TAWSBasicSessionCredentialsProvider = class
    (TOCGenericImport<AWSBasicSessionCredentialsProviderClass,
    AWSBasicSessionCredentialsProvider>)
  end;

  PAWSBasicSessionCredentialsProvider = Pointer;

  AWSAnonymousCredentialsProviderClass = interface(NSObjectClass)
    ['{61F9A40B-D7CE-4912-9A2B-23C856A936E2}']
  end;

  AWSAnonymousCredentialsProvider = interface(NSObject)
    ['{9A89AB9F-AD2B-4E93-80D7-9A667C3798BB}']
  end;

  TAWSAnonymousCredentialsProvider = class
    (TOCGenericImport<AWSAnonymousCredentialsProviderClass,
    AWSAnonymousCredentialsProvider>)
  end;

  PAWSAnonymousCredentialsProvider = Pointer;

  AWSWebIdentityCredentialsProviderClass = interface(NSObjectClass)
    ['{D85D05BB-32D5-423A-9827-98537E4F1D69}']
  end;

  AWSWebIdentityCredentialsProvider = interface(NSObject)
    ['{8A6F719A-AF84-4149-BA5C-50FD227B3004}']
    procedure setWebIdentityToken(webIdentityToken: NSString); cdecl;
    function webIdentityToken: NSString; cdecl;
    procedure setRoleArn(roleArn: NSString); cdecl;
    function roleArn: NSString; cdecl;
    procedure setRoleSessionName(roleSessionName: NSString); cdecl;
    function roleSessionName: NSString; cdecl;
    procedure setProviderId(providerId: NSString); cdecl;
    function providerId: NSString; cdecl;
    function initWithRegionType(regionType: AWSRegionType; providerId: NSString;
      roleArn: NSString; roleSessionName: NSString; webIdentityToken: NSString)
      : Pointer { instancetype }; cdecl;
  end;

  TAWSWebIdentityCredentialsProvider = class
    (TOCGenericImport<AWSWebIdentityCredentialsProviderClass,
    AWSWebIdentityCredentialsProvider>)
  end;

  PAWSWebIdentityCredentialsProvider = Pointer;

  AWSCognitoCredentialsProviderClass = interface(NSObjectClass)
    ['{55DA4148-106F-428E-B062-7C8F4A15CB62}']
  end;

  AWSCognitoCredentialsProvider = interface(NSObject)
    ['{F2B610D3-233A-4EF8-9537-7C6788D6D319}']
    function identityProvider: Pointer; cdecl;
    function identityId: NSString; cdecl;
    function identityPoolId: NSString; cdecl;
    [MethodName('initWithRegionType:identityPoolId:')]
    function initWithRegionTypeIdentityPoolId(regionType: AWSRegionType;
      identityPoolId: NSString): Pointer { instancetype }; cdecl;
    [MethodName('initWithRegionType:identityPoolId:identityProviderManager:')]
    function initWithRegionTypeIdentityPoolIdIdentityProviderManager
      (regionType: AWSRegionType; identityPoolId: NSString;
      identityProviderManager: Pointer): Pointer { instancetype }; cdecl;
    [MethodName('initWithRegionType:identityProvider:')]
    function initWithRegionTypeIdentityProvider(regionType: AWSRegionType;
      identityProvider: Pointer): Pointer { instancetype }; cdecl;
    [MethodName
      ('initWithRegionType:unauthRoleArn:authRoleArn:identityProvider:')]
    function initWithRegionTypeUnauthRoleArnAuthRoleArnIdentityProvider
      (regionType: AWSRegionType; unauthRoleArn: NSString;
      authRoleArn: NSString; identityProvider: Pointer)
      : Pointer { instancetype }; cdecl;
    [MethodName('initWithRegionType:identityPoolId:unauthRoleArn:authRoleArn:identityProviderManager:')]
    function initWithRegionTypeIdentityPoolIdUnauthRoleArnAuthRoleArnIdentityProviderManager
      (regionType: AWSRegionType; identityPoolId: NSString;
      unauthRoleArn: NSString; authRoleArn: NSString;
      identityProviderManager: Pointer): Pointer { instancetype }; cdecl;
    function getIdentityId: AWSTask; cdecl;
    procedure clearKeychain; cdecl;
    procedure clearCredentials; cdecl;
    procedure setIdentityProviderManagerOnce(identityProviderManager
      : Pointer); cdecl;
  end;

  TAWSCognitoCredentialsProvider = class
    (TOCGenericImport<AWSCognitoCredentialsProviderClass,
    AWSCognitoCredentialsProvider>)
  end;

  PAWSCognitoCredentialsProvider = Pointer;

  AWSEndpointClass = interface(NSObjectClass)
    ['{7DE77900-86CC-45C6-8663-05F62174840D}']
  end;

  AWSEndpoint = interface(NSObject)
    ['{97912B35-F76B-4274-82E5-718ED9227387}']
    function regionType: AWSRegionType; cdecl;
    function regionName: NSString; cdecl;
    function serviceType: AWSServiceType; cdecl;
    function serviceName: NSString; cdecl;
    function URL: NSURL; cdecl;
    function hostName: NSString; cdecl;
    function useUnsafeURL: Boolean; cdecl;
    [MethodName('initWithRegion:service:useUnsafeURL:')]
    function initWithRegionServiceUseUnsafeURL(regionType: AWSRegionType;
      service: AWSServiceType; useUnsafeURL: Boolean)
      : Pointer { instancetype }; cdecl;
    [MethodName('initWithRegion:service:URL:')]
    function initWithRegionServiceURL(regionType: AWSRegionType;
      service: AWSServiceType; URL: NSURL): Pointer { instancetype }; cdecl;
    [MethodName('initWithRegion:serviceName:URL:')]
    function initWithRegionServiceNameURL(regionType: AWSRegionType;
      serviceName: NSString; URL: NSURL): Pointer { instancetype }; cdecl;
    function initWithURL(URL: NSURL): Pointer { instancetype }; cdecl;
    function initWithURLString(URLString: NSString)
      : Pointer { instancetype }; cdecl;
  end;

  TAWSEndpoint = class(TOCGenericImport<AWSEndpointClass, AWSEndpoint>)
  end;

  PAWSEndpoint = Pointer;

  AWSServiceClass = interface(NSObjectClass)
    ['{8FBE7298-1BDC-4591-8513-1F81F318A9E9}']
    { class } function errorCodeDictionary: NSDictionary; cdecl;
  end;

  AWSService = interface(NSObject)
    ['{1691C4DC-0176-4E83-BEB2-F50D67E43A28}']
  end;

  TAWSService = class(TOCGenericImport<AWSServiceClass, AWSService>)
  end;

  PAWSService = Pointer;

  AWSServiceConfigurationClass = interface(AWSNetworkingConfigurationClass)
    ['{F4CDBA85-0247-44B7-9477-9F64980AB85F}']
    { class } function baseUserAgent: NSString; cdecl;
    { class } procedure addGlobalUserAgentProductToken
      (productToken: NSString); cdecl;
  end;

  AWSServiceConfiguration = interface(AWSNetworkingConfiguration)
    ['{463F916F-6F14-43AF-9885-D3D796DDAA90}']
    function regionType: AWSRegionType; cdecl;
    function credentialsProvider: Pointer; cdecl;
    function endpoint: AWSEndpoint; cdecl;
    function userAgent: NSString; cdecl;
    [MethodName('initWithRegion:credentialsProvider:')]
    function initWithRegionCredentialsProvider(regionType: AWSRegionType;
      credentialsProvider: Pointer): Pointer { instancetype }; cdecl;
    [MethodName('initWithRegion:endpoint:credentialsProvider:')]
    function initWithRegionEndpointCredentialsProvider
      (regionType: AWSRegionType; endpoint: AWSEndpoint;
      credentialsProvider: Pointer): Pointer { instancetype }; cdecl;
    procedure addUserAgentProductToken(productToken: NSString); cdecl;
  end;

  TAWSServiceConfiguration = class
    (TOCGenericImport<AWSServiceConfigurationClass, AWSServiceConfiguration>)
  end;

  PAWSServiceConfiguration = Pointer;

  AWSServiceManagerClass = interface(NSObjectClass)
    ['{A9012318-AAF9-4607-859C-962B9120A0F8}']
    { class } function defaultServiceManager: Pointer { instancetype }; cdecl;
  end;

  AWSServiceManager = interface(NSObject)
    ['{734D2D14-AD4F-416C-9E47-67C5D1D715AF}']
    procedure setDefaultServiceConfiguration(defaultServiceConfiguration
      : AWSServiceConfiguration); cdecl;
    function defaultServiceConfiguration: AWSServiceConfiguration; cdecl;
  end;

  TAWSServiceManager = class(TOCGenericImport<AWSServiceManagerClass,
    AWSServiceManager>)
  end;

  PAWSServiceManager = Pointer;

  AWSLoggerClass = interface(NSObjectClass)
    ['{E339A793-42EC-4242-9467-41FE8E93C912}']
    { class } function defaultLogger: Pointer { instancetype }; cdecl;
  end;

  AWSLogger = interface(NSObject)
    ['{FE8C0CEC-A3E8-44AA-9E73-35B94624D963}']
    procedure setLogLevel(logLevel: AWSLogLevel); cdecl;
    function logLevel: AWSLogLevel; cdecl;
    procedure log(logLevel: AWSLogLevel; format: NSString); cdecl;
  end;

  TAWSLogger = class(TOCGenericImport<AWSLoggerClass, AWSLogger>)
  end;

  PAWSLogger = Pointer;

  AWSSynchronizedMutableDictionaryClass = interface(NSObjectClass)
    ['{6F7B1D9E-FA54-45D8-A616-17A99373FBB6}']
  end;

  AWSSynchronizedMutableDictionary = interface(NSObject)
    ['{092564A3-81FF-4812-8291-DC1A73D005C2}']
    function objectForKey(aKey: Pointer): Pointer; cdecl;
    procedure removeObjectForKey(aKey: Pointer); cdecl;
    procedure removeObject(&object: Pointer); cdecl;
    procedure setObject(anObject: Pointer; forKey: Pointer); cdecl;
    function allKeys: NSArray; cdecl;
  end;

  TAWSSynchronizedMutableDictionary = class
    (TOCGenericImport<AWSSynchronizedMutableDictionaryClass,
    AWSSynchronizedMutableDictionary>)
  end;

  PAWSSynchronizedMutableDictionary = Pointer;

  AWSJSONDictionaryClass = interface(NSDictionaryClass)
    ['{BA6A7A97-F7D5-47BA-B4D4-F13732BC15AF}']
  end;

  AWSJSONDictionary = interface(NSDictionary)
    ['{0CCABB06-92ED-4ED0-8286-DAE3834088B6}']
    function initWithDictionary(otherDictionary: NSDictionary;
      JSONDefinitionRule: NSDictionary): Pointer { instancetype }; cdecl;
    function count: NSUInteger; cdecl;
    function objectForKey(aKey: Pointer): Pointer; cdecl;
  end;

  TAWSJSONDictionary = class(TOCGenericImport<AWSJSONDictionaryClass,
    AWSJSONDictionary>)
  end;

  PAWSJSONDictionary = Pointer;

  AWSXMLBuilderClass = interface(NSObjectClass)
    ['{C4BCB783-9C81-4457-A128-E44282EE3884}']
    { class } function xmlDataForDictionary(params: NSDictionary;
      actionName: NSString; serviceDefinitionRule: NSDictionary; error: NSError)
      : NSData; cdecl;
    { class } function xmlStringForDictionary(params: NSDictionary;
      actionName: NSString; serviceDefinitionRule: NSDictionary; error: NSError)
      : NSString; cdecl;
  end;

  AWSXMLBuilder = interface(NSObject)
    ['{BCC28DDB-EC99-4999-B516-54E3CF15A4D7}']
  end;

  TAWSXMLBuilder = class(TOCGenericImport<AWSXMLBuilderClass, AWSXMLBuilder>)
  end;

  PAWSXMLBuilder = Pointer;

  AWSXMLParserClass = interface(NSObjectClass)
    ['{C5670C4B-2A8A-477F-B050-FA3F5323E1B6}']
    { class } function sharedInstance: AWSXMLParser; cdecl;
  end;

  AWSXMLParser = interface(NSObject)
    ['{1F8415E6-2595-43E1-A885-B697474BDAC9}']
    function dictionaryForXMLData(data: NSData; actionName: NSString;
      serviceDefinitionRule: NSDictionary; error: NSError)
      : NSMutableDictionary; cdecl;
  end;

  TAWSXMLParser = class(TOCGenericImport<AWSXMLParserClass, AWSXMLParser>)
  end;

  PAWSXMLParser = Pointer;

  AWSQueryParamBuilderClass = interface(NSObjectClass)
    ['{CF876C6D-0136-435D-A3DD-87AF9528B9DA}']
    { class } function buildFormattedParams(params: NSDictionary;
      actionName: NSString; serviceDefinitionRule: NSDictionary; error: NSError)
      : NSDictionary; cdecl;
  end;

  AWSQueryParamBuilder = interface(NSObject)
    ['{0F3A8D4F-C7C1-43C4-9271-E43DB96543B8}']
  end;

  TAWSQueryParamBuilder = class(TOCGenericImport<AWSQueryParamBuilderClass,
    AWSQueryParamBuilder>)
  end;

  PAWSQueryParamBuilder = Pointer;

  AWSEC2ParamBuilderClass = interface(NSObjectClass)
    ['{9E010293-912F-46CA-B9A2-16FCE249C888}']
    { class } function buildFormattedParams(params: NSDictionary;
      actionName: NSString; serviceDefinitionRule: NSDictionary; error: NSError)
      : NSDictionary; cdecl;
  end;

  AWSEC2ParamBuilder = interface(NSObject)
    ['{19B77807-97D6-4287-88D3-E3F1B605E9E6}']
  end;

  TAWSEC2ParamBuilder = class(TOCGenericImport<AWSEC2ParamBuilderClass,
    AWSEC2ParamBuilder>)
  end;

  PAWSEC2ParamBuilder = Pointer;

  AWSJSONBuilderClass = interface(NSObjectClass)
    ['{F634EEC6-BD01-468B-9F7E-1A3ED0D40512}']
    { class } function jsonDataForDictionary(params: NSDictionary;
      actionName: NSString; serviceDefinitionRule: NSDictionary; error: NSError)
      : NSData; cdecl;
  end;

  AWSJSONBuilder = interface(NSObject)
    ['{5637496D-6A70-49B4-BFBB-B8D31B1A2EF6}']
  end;

  TAWSJSONBuilder = class(TOCGenericImport<AWSJSONBuilderClass, AWSJSONBuilder>)
  end;

  PAWSJSONBuilder = Pointer;

  AWSJSONParserClass = interface(NSObjectClass)
    ['{A78E4A62-9EB8-46CD-A55C-AB23E89F380C}']
    { class } function dictionaryForJsonData(data: NSData;
      response: NSHTTPURLResponse; actionName: NSString;
      serviceDefinitionRule: NSDictionary; error: NSError): NSDictionary; cdecl;
  end;

  AWSJSONParser = interface(NSObject)
    ['{06FA1967-CA30-4C55-BF1E-37BF46F3FF45}']
  end;

  TAWSJSONParser = class(TOCGenericImport<AWSJSONParserClass, AWSJSONParser>)
  end;

  PAWSJSONParser = Pointer;

  AWSJSONRequestSerializerClass = interface(NSObjectClass)
    ['{2E1D13EC-72B0-4AD1-99BB-D51D19E93E9C}']
  end;

  AWSJSONRequestSerializer = interface(NSObject)
    ['{9D9F9E80-7DFB-41D3-A08F-AB31269D87B6}']
    function initWithJSONDefinition(JSONDefinition: NSDictionary;
      actionName: NSString): Pointer { instancetype }; cdecl;
  end;

  TAWSJSONRequestSerializer = class
    (TOCGenericImport<AWSJSONRequestSerializerClass, AWSJSONRequestSerializer>)
  end;

  PAWSJSONRequestSerializer = Pointer;

  AWSXMLRequestSerializerClass = interface(NSObjectClass)
    ['{1C2855EE-A877-439E-9D29-BE231107A14F}']
    { class } function constructURIandHeadersAndBody
      (request: NSMutableURLRequest; rules: AWSJSONDictionary;
      parameters: NSDictionary; uriSchema: NSString; error: NSError)
      : Boolean; cdecl;
  end;

  AWSXMLRequestSerializer = interface(NSObject)
    ['{DBAB4C11-4E10-4F2B-ABE6-1547BC87AC52}']
    function initWithJSONDefinition(JSONDefinition: NSDictionary;
      actionName: NSString): Pointer { instancetype }; cdecl;
  end;

  TAWSXMLRequestSerializer = class
    (TOCGenericImport<AWSXMLRequestSerializerClass, AWSXMLRequestSerializer>)
  end;

  PAWSXMLRequestSerializer = Pointer;

  AWSQueryStringRequestSerializerClass = interface(NSObjectClass)
    ['{59BB38A7-B54B-4EE1-80F7-5714128EFEEA}']
  end;

  AWSQueryStringRequestSerializer = interface(NSObject)
    ['{D9B214F7-FF5E-4E80-BB2B-2A7FE06DBD8D}']
    function initWithJSONDefinition(JSONDefinition: NSDictionary;
      actionName: NSString): Pointer { instancetype }; cdecl;
    procedure setAdditionalParameters(additionalParameters
      : NSDictionary); cdecl;
    function additionalParameters: NSDictionary; cdecl;
  end;

  TAWSQueryStringRequestSerializer = class
    (TOCGenericImport<AWSQueryStringRequestSerializerClass,
    AWSQueryStringRequestSerializer>)
  end;

  PAWSQueryStringRequestSerializer = Pointer;

  AWSJSONResponseSerializerClass = interface(NSObjectClass)
    ['{99C82363-4C14-47AD-9959-C00775AA4697}']
  end;

  AWSJSONResponseSerializer = interface(NSObject)
    ['{D0E3E113-6C4D-42AA-A2A6-3EA7130AFA57}']
    function serviceDefinitionJSON: NSDictionary; cdecl;
    function actionName: NSString; cdecl;
    function outputClass: Pointer; cdecl;
    function initWithJSONDefinition(JSONDefinition: NSDictionary;
      actionName: NSString; outputClass: Pointer)
      : Pointer { instancetype }; cdecl;
  end;

  TAWSJSONResponseSerializer = class
    (TOCGenericImport<AWSJSONResponseSerializerClass,
    AWSJSONResponseSerializer>)
  end;

  PAWSJSONResponseSerializer = Pointer;

  AWSXMLResponseSerializerClass = interface(NSObjectClass)
    ['{320E46FF-DBEC-488A-AAD2-37B633303B44}']
    { class } function parseResponse(response: NSHTTPURLResponse;
      rules: AWSJSONDictionary; bodyDictionary: NSMutableDictionary;
      error: NSError): NSMutableDictionary; cdecl;
  end;

  AWSXMLResponseSerializer = interface(NSObject)
    ['{1636D08C-DAA5-46EA-8D5A-52E3312F3241}']
    procedure setOutputClass(outputClass: Pointer); cdecl;
    function outputClass: Pointer; cdecl;
    function initWithJSONDefinition(JSONDefinition: NSDictionary;
      actionName: NSString; outputClass: Pointer)
      : Pointer { instancetype }; cdecl;
  end;

  TAWSXMLResponseSerializer = class
    (TOCGenericImport<AWSXMLResponseSerializerClass, AWSXMLResponseSerializer>)
  end;

  PAWSXMLResponseSerializer = Pointer;

  AWSURLSessionManagerClass = interface(NSObjectClass)
    ['{029AFADD-1DD2-4051-AE45-188678FE216A}']
  end;

  AWSURLSessionManager = interface(NSObject)
    ['{8170938A-EBEB-4A85-9F9E-AFEF6C1B0224}']
    procedure setConfiguration(configuration
      : AWSNetworkingConfiguration); cdecl;
    function configuration: AWSNetworkingConfiguration; cdecl;
    function initWithConfiguration(configuration: AWSNetworkingConfiguration)
      : Pointer { instancetype }; cdecl;
    function dataTaskWithRequest(request: AWSNetworkingRequest): AWSTask; cdecl;
  end;

  TAWSURLSessionManager = class(TOCGenericImport<AWSURLSessionManagerClass,
    AWSURLSessionManager>)
  end;

  PAWSURLSessionManager = Pointer;

  AWSSignatureSignerUtilityClass = interface(NSObjectClass)
    ['{50A00480-6799-45E4-BC2E-A1968DF13DBD}']
    { class } function sha256HMacWithData(data: NSData; withKey: NSData)
      : NSData; cdecl;
    { class } function hashString(stringToHash: NSString): NSString; cdecl;
    { class } function hash(dataToHash: NSData): NSData; cdecl;
    { class } function hexEncode(&string: NSString): NSString; cdecl;
    { class } function HMACSign(data: NSData; withKey: NSString;
      usingAlgorithm: LongWord): NSString; cdecl;
  end;

  AWSSignatureSignerUtility = interface(NSObject)
    ['{C336C402-EAB4-4A5D-9001-4746159EBDAF}']
  end;

  TAWSSignatureSignerUtility = class
    (TOCGenericImport<AWSSignatureSignerUtilityClass,
    AWSSignatureSignerUtility>)
  end;

  PAWSSignatureSignerUtility = Pointer;

  AWSSignatureV4SignerClass = interface(NSObjectClass)
    ['{90523B24-7A86-4132-A023-FBDE80903BF1}']
    { class } function generateQueryStringForSignatureV4WithCredentialProvider
      (credentialsProvider: Pointer; HTTPMethod: AWSHTTPMethod;
      expireDuration: Int32; endpoint: AWSEndpoint; keyPath: NSString;
      requestHeaders: NSDictionary; requestParameters: NSDictionary;
      signBody: Boolean): AWSTask; cdecl;
    { class } function getCanonicalizedRequest(method: NSString; path: NSString;
      query: NSString; headers: NSDictionary; contentSha256: NSString)
      : NSString; cdecl;
    { class } function getV4DerivedKey(secret: NSString; date: NSString;
      region: NSString; service: NSString): NSData; cdecl;
    { class } function getSignedHeadersString(headers: NSDictionary)
      : NSString; cdecl;
  end;

  AWSSignatureV4Signer = interface(NSObject)
    ['{7AF34FA5-A140-4B2A-9E6C-2F216678DE7F}']
    function credentialsProvider: Pointer; cdecl;
    function initWithCredentialsProvider(credentialsProvider: Pointer;
      endpoint: AWSEndpoint): Pointer { instancetype }; cdecl;
  end;

  TAWSSignatureV4Signer = class(TOCGenericImport<AWSSignatureV4SignerClass,
    AWSSignatureV4Signer>)
  end;

  PAWSSignatureV4Signer = Pointer;

  AWSSignatureV2SignerClass = interface(NSObjectClass)
    ['{425BCA20-3093-4BE0-A2B9-0BBE32817668}']
    { class } function signerWithCredentialsProvider(credentialsProvider
      : Pointer; endpoint: AWSEndpoint): Pointer { instancetype }; cdecl;
  end;

  AWSSignatureV2Signer = interface(NSObject)
    ['{219DB853-CD9D-47BA-9F01-8B7C0F08FFDC}']
    function credentialsProvider: Pointer; cdecl;
    function initWithCredentialsProvider(credentialsProvider: Pointer;
      endpoint: AWSEndpoint): Pointer { instancetype }; cdecl;
  end;

  TAWSSignatureV2Signer = class(TOCGenericImport<AWSSignatureV2SignerClass,
    AWSSignatureV2Signer>)
  end;

  PAWSSignatureV2Signer = Pointer;

  AWSS3ChunkedEncodingInputStreamClass = interface(NSInputStreamClass)
    ['{4F71EC2D-7547-4A35-846A-CCAB290B0372}']
    { class } function computeContentLengthForChunkedData
      (dataLength: NSUInteger): NSUInteger; cdecl;
  end;

  AWSS3ChunkedEncodingInputStream = interface(NSInputStream)
    ['{B9EDBB92-DF34-4962-9FCE-A6656B6D584C}']
    procedure setTotalLengthOfChunkSignatureSent(totalLengthOfChunkSignatureSent
      : Int64); cdecl;
    function totalLengthOfChunkSignatureSent: Int64; cdecl;
    function initWithInputStream(stream: NSInputStream; date: NSDate;
      scope: NSString; kSigning: NSData; headerSignature: NSString)
      : Pointer { instancetype }; cdecl;
  end;

  TAWSS3ChunkedEncodingInputStream = class
    (TOCGenericImport<AWSS3ChunkedEncodingInputStreamClass,
    AWSS3ChunkedEncodingInputStream>)
  end;

  PAWSS3ChunkedEncodingInputStream = Pointer;

  AWSURLRequestRetryHandler = interface(IObjectiveC)
    ['{2D51BAB3-DD42-43B0-8BE5-F4D9BF71D5B5}']
    procedure setMaxRetryCount(maxRetryCount: LongWord); cdecl;
    function maxRetryCount: LongWord; cdecl;
    function shouldRetry(currentRetryCount: LongWord;
      originalRequest: AWSNetworkingRequest; response: NSHTTPURLResponse;
      data: NSData; error: NSError): AWSNetworkingRetryType; cdecl;
    function timeIntervalForRetry(currentRetryCount: LongWord;
      response: NSHTTPURLResponse; data: NSData; error: NSError)
      : NSTimeInterval; cdecl;
    function resetParameters(parameters: NSDictionary): NSDictionary; cdecl;
    function initWithMaximumRetryCount(maxRetryCount: LongWord)
      : Pointer { instancetype }; cdecl;
  end;

  AWSServiceInfoClass = interface(NSObjectClass)
    ['{A97007DD-FDED-4BA0-B5F6-84AAF937617F}']
  end;

  AWSServiceInfo = interface(NSObject)
    ['{B44BD37C-6833-4585-A3E9-80C9F54B311E}']
    function cognitoCredentialsProvider: AWSCognitoCredentialsProvider; cdecl;
    function region: AWSRegionType; cdecl;
    function infoDictionary: NSDictionary; cdecl;
  end;

  TAWSServiceInfo = class(TOCGenericImport<AWSServiceInfoClass, AWSServiceInfo>)
  end;

  PAWSServiceInfo = Pointer;

  AWSInfoClass = interface(NSObjectClass)
    ['{E17F6733-A346-4142-90A5-9A81F28C7BA9}']
    { class } function defaultAWSInfo: Pointer { instancetype }; cdecl;
  end;

  AWSInfo = interface(NSObject)
    ['{8334D3AB-6CCF-4E71-932A-2AD3B42857D6}']
    function rootInfoDictionary: NSDictionary; cdecl;
    function serviceInfo(serviceName: NSString; forKey: NSString)
      : AWSServiceInfo; cdecl;
    function defaultServiceInfo(serviceName: NSString): AWSServiceInfo; cdecl;
  end;

  TAWSInfo = class(TOCGenericImport<AWSInfoClass, AWSInfo>)
  end;

  PAWSInfo = Pointer;

  AWSGZIP = interface(IObjectiveC)
    ['{A97EBB33-F7B9-44F5-AD7F-3FFCF3616534}']
    function awsgzip_gzippedDataWithCompressionLevel(level: Single)
      : NSData; cdecl;
    function awsgzip_gzippedData: NSData; cdecl;
    function awsgzip_gunzippedData: NSData; cdecl;
  end;

  AWSFMDatabaseClass = interface(NSObjectClass)
    ['{8A273F65-4B0F-4141-9265-733EADB5CD44}']
    { class } function databaseWithPath(inPath: NSString)
      : Pointer { instancetype }; cdecl;
    { class } function isSQLiteThreadSafe: Boolean; cdecl;
    { class } function sqliteLibVersion: NSString; cdecl;
    { class } function AWSFMDBUserVersion: NSString; cdecl;
    { class } function AWSFMDBVersion: Int32; cdecl;
    { class } function storeableDateFormat(format: NSString)
      : NSDateFormatter; cdecl;
  end;

  AWSFMDatabase = interface(NSObject)
    ['{68E1DD11-65B6-4331-AFF5-2E32CD36F877}']
    procedure setTraceExecution(traceExecution: Boolean); cdecl;
    function traceExecution: Boolean; cdecl;
    procedure setCheckedOut(checkedOut: Boolean); cdecl;
    function checkedOut: Boolean; cdecl;
    procedure setCrashOnErrors(crashOnErrors: Boolean); cdecl;
    function crashOnErrors: Boolean; cdecl;
    procedure setLogsErrors(logsErrors: Boolean); cdecl;
    function logsErrors: Boolean; cdecl;
    procedure setCachedStatements(cachedStatements: NSMutableDictionary); cdecl;
    function cachedStatements: NSMutableDictionary; cdecl;
    function initWithPath(inPath: NSString): Pointer { instancetype }; cdecl;
    function open: Boolean; cdecl;
    [MethodName('openWithFlags:')]
    function openWithFlags(flags: Integer): Boolean; cdecl;
    [MethodName('openWithFlags:vfs:')]
    function openWithFlagsVfs(flags: Integer; vfs: NSString): Boolean; cdecl;
    function close: Boolean; cdecl;
    function goodConnection: Boolean; cdecl;
    [MethodName('executeUpdate:withErrorAndBindings:')]
    function executeUpdateWithErrorAndBindings(sql: NSString;
      withErrorAndBindings: NSError): Boolean; cdecl;
    function update(sql: NSString; withErrorAndBindings: NSError)
      : Boolean; cdecl;
    [MethodName('executeUpdate:')]
    function executeUpdate(sql: NSString): Boolean; cdecl;
    function executeUpdateWithFormat(format: NSString): Boolean; cdecl;
    [MethodName('executeUpdate:withArgumentsInArray:')]
    function executeUpdateWithArgumentsInArray(sql: NSString;
      withArgumentsInArray: NSArray): Boolean; cdecl;
    [MethodName('executeUpdate:withParameterDictionary:')]
    function executeUpdateWithParameterDictionary(sql: NSString;
      withParameterDictionary: NSDictionary): Boolean; cdecl;
    [MethodName('executeUpdate:withVAList:')]
    function executeUpdateWithVAList(sql: NSString; withVAList: array of const)
      : Boolean; cdecl;
    [MethodName('executeStatements:')]
    function executeStatements(sql: NSString): Boolean; cdecl;
    [MethodName('executeStatements:withResultBlock:')]
    function executeStatementsWithResultBlock(sql: NSString;
      withResultBlock: AWSFMDBExecuteStatementsCallbackBlock): Boolean; cdecl;
    function lastInsertRowId: Int64; cdecl;
    function changes: Integer; cdecl;
    [MethodName('executeQuery:')]
    function executeQuery(sql: NSString): AWSFMResultSet; cdecl;
    function executeQueryWithFormat(format: NSString): AWSFMResultSet; cdecl;
    [MethodName('executeQuery:withArgumentsInArray:')]
    function executeQueryWithArgumentsInArray(sql: NSString;
      withArgumentsInArray: NSArray): AWSFMResultSet; cdecl;
    [MethodName('executeQuery:withParameterDictionary:')]
    function executeQueryWithParameterDictionary(sql: NSString;
      withParameterDictionary: NSDictionary): AWSFMResultSet; cdecl;
    [MethodName('executeQuery:withVAList:')]
    function executeQueryWithVAList(sql: NSString; withVAList: array of const)
      : AWSFMResultSet; cdecl;
    function beginTransaction: Boolean; cdecl;
    function beginDeferredTransaction: Boolean; cdecl;
    function commit: Boolean; cdecl;
    function rollback: Boolean; cdecl;
    function inTransaction: Boolean; cdecl;
    procedure clearCachedStatements; cdecl;
    procedure closeOpenResultSets; cdecl;
    function hasOpenResultSets: Boolean; cdecl;
    function shouldCacheStatements: Boolean; cdecl;
    procedure setShouldCacheStatements(value: Boolean); cdecl;
    function setKey(key: NSString): Boolean; cdecl;
    function rekey(key: NSString): Boolean; cdecl;
    function setKeyWithData(keyData: NSData): Boolean; cdecl;
    function rekeyWithData(keyData: NSData): Boolean; cdecl;
    function databasePath: NSString; cdecl;
    function sqliteHandle: Pointer; cdecl;
    function lastErrorMessage: NSString; cdecl;
    function lastErrorCode: Integer; cdecl;
    function hadError: Boolean; cdecl;
    function lastError: NSError; cdecl;
    procedure setMaxBusyRetryTimeInterval(timeoutInSeconds
      : NSTimeInterval); cdecl;
    function maxBusyRetryTimeInterval: NSTimeInterval; cdecl;
    function startSavePointWithName(name: NSString; error: NSError)
      : Boolean; cdecl;
    function releaseSavePointWithName(name: NSString; error: NSError)
      : Boolean; cdecl;
    function rollbackToSavePointWithName(name: NSString; error: NSError)
      : Boolean; cdecl;
    function inSavePoint(block: TAWSCoreBlock4): NSError; cdecl;
    procedure makeFunctionNamed(name: NSString; maximumArguments: Integer;
      withBlock: TAWSCoreWithBlock1); cdecl;
    function hasDateFormatter: Boolean; cdecl;
    procedure setDateFormat(format: NSDateFormatter); cdecl;
    function dateFromString(s: NSString): NSDate; cdecl;
    function stringFromDate(date: NSDate): NSString; cdecl;
    function intForQuery(query: NSString): Integer; cdecl;
    function longForQuery(query: NSString): LongInt; cdecl;
    function boolForQuery(query: NSString): Boolean; cdecl;
    function doubleForQuery(query: NSString): Double; cdecl;
    function stringForQuery(query: NSString): NSString; cdecl;
    function dataForQuery(query: NSString): NSData; cdecl;
    function dateForQuery(query: NSString): NSDate; cdecl;
    function tableExists(tableName: NSString): Boolean; cdecl;
    function getSchema: AWSFMResultSet; cdecl;
    function getTableSchema(tableName: NSString): AWSFMResultSet; cdecl;
    [MethodName('columnExists:inTableWithName:')]
    function columnExistsInTableWithName(columnName: NSString;
      inTableWithName: NSString): Boolean; cdecl;
    [MethodName('columnExists:columnName:')]
    function columnExistsColumnName(tableName: NSString; columnName: NSString)
      : Boolean; cdecl;
    function validateSQL(sql: NSString; error: NSError): Boolean; cdecl;
    function applicationID: LongWord; cdecl;
    procedure setApplicationID(appID: LongWord); cdecl;
    function userVersion: LongWord; cdecl;
    procedure setUserVersion(version: LongWord); cdecl;
  end;

  TAWSFMDatabase = class(TOCGenericImport<AWSFMDatabaseClass, AWSFMDatabase>)
  end;

  PAWSFMDatabase = Pointer;

  AWSFMStatementClass = interface(NSObjectClass)
    ['{12A4D955-917A-404D-924D-FFA24CD7BBAF}']
  end;

  AWSFMStatement = interface(NSObject)
    ['{3483E766-4608-4823-9640-37134B483EAE}']
    procedure setUseCount(useCount: LongInt); cdecl;
    function useCount: LongInt; cdecl;
    procedure setQuery(query: NSString); cdecl;
    function query: NSString; cdecl;
    procedure setStatement(statement: Pointer); cdecl;
    function statement: Pointer; cdecl;
    procedure setInUse(inUse: Boolean); cdecl;
    function inUse: Boolean; cdecl;
    procedure close; cdecl;
    procedure reset; cdecl;
  end;

  TAWSFMStatement = class(TOCGenericImport<AWSFMStatementClass, AWSFMStatement>)
  end;

  PAWSFMStatement = Pointer;

  AWSFMResultSetClass = interface(NSObjectClass)
    ['{2341DF85-8A7C-4806-8D21-75E87C520273}']
    { class } function resultSetWithStatement(statement: AWSFMStatement;
      usingParentDatabase: AWSFMDatabase): Pointer { instancetype }; cdecl;
  end;

  AWSFMResultSet = interface(NSObject)
    ['{005810A6-4B56-406B-9850-57DEE18D5E53}']
    procedure setQuery(query: NSString); cdecl;
    function query: NSString; cdecl;
    function columnNameToIndexMap: NSMutableDictionary; cdecl;
    procedure setStatement(statement: AWSFMStatement); cdecl;
    function statement: AWSFMStatement; cdecl;
    procedure close; cdecl;
    procedure setParentDB(newDb: AWSFMDatabase); cdecl;
    function next: Boolean; cdecl;
    function nextWithError(outErr: NSError): Boolean; cdecl;
    function hasAnotherRow: Boolean; cdecl;
    function columnCount: Integer; cdecl;
    function columnIndexForName(columnName: NSString): Integer; cdecl;
    function columnNameForIndex(columnIdx: Integer): NSString; cdecl;
    function intForColumn(columnName: NSString): Integer; cdecl;
    function intForColumnIndex(columnIdx: Integer): Integer; cdecl;
    function longForColumn(columnName: NSString): LongInt; cdecl;
    function longForColumnIndex(columnIdx: Integer): LongInt; cdecl;
    function longLongIntForColumn(columnName: NSString): Int64; cdecl;
    function longLongIntForColumnIndex(columnIdx: Integer): Int64; cdecl;
    function unsignedLongLongIntForColumn(columnName: NSString): UInt64; cdecl;
    function unsignedLongLongIntForColumnIndex(columnIdx: Integer)
      : UInt64; cdecl;
    function boolForColumn(columnName: NSString): Boolean; cdecl;
    function boolForColumnIndex(columnIdx: Integer): Boolean; cdecl;
    function doubleForColumn(columnName: NSString): Double; cdecl;
    function doubleForColumnIndex(columnIdx: Integer): Double; cdecl;
    function stringForColumn(columnName: NSString): NSString; cdecl;
    function stringForColumnIndex(columnIdx: Integer): NSString; cdecl;
    function dateForColumn(columnName: NSString): NSDate; cdecl;
    function dateForColumnIndex(columnIdx: Integer): NSDate; cdecl;
    function dataForColumn(columnName: NSString): NSData; cdecl;
    function dataForColumnIndex(columnIdx: Integer): NSData; cdecl;
    function UTF8StringForColumnName(columnName: NSString): PByte; cdecl;
    function UTF8StringForColumnIndex(columnIdx: Integer): PByte; cdecl;
    function objectForColumnName(columnName: NSString): Pointer; cdecl;
    function objectForColumnIndex(columnIdx: Integer): Pointer; cdecl;
    function objectForKeyedSubscript(columnName: NSString): Pointer; cdecl;
    function objectAtIndexedSubscript(columnIdx: Integer): Pointer; cdecl;
    function dataNoCopyForColumn(columnName: NSString): NSData; cdecl;
    function dataNoCopyForColumnIndex(columnIdx: Integer): NSData; cdecl;
    function columnIndexIsNull(columnIdx: Integer): Boolean; cdecl;
    function columnIsNull(columnName: NSString): Boolean; cdecl;
    function resultDictionary: NSDictionary; cdecl;
    function resultDict: NSDictionary; cdecl;
    procedure kvcMagic(&object: Pointer); cdecl;
  end;

  TAWSFMResultSet = class(TOCGenericImport<AWSFMResultSetClass, AWSFMResultSet>)
  end;

  PAWSFMResultSet = Pointer;

  AWSFMDatabasePoolClass = interface(NSObjectClass)
    ['{6351C1B0-E77A-4B0D-8EE9-802A43C299E4}']
    [MethodName('databasePoolWithPath:')]
    { class } function databasePoolWithPath(aPath: NSString)
      : Pointer { instancetype }; cdecl;
    [MethodName('databasePoolWithPath:flags:')]
    { class } function databasePoolWithPathFlags(aPath: NSString;
      flags: Integer): Pointer { instancetype }; cdecl;
  end;

  AWSFMDatabasePool = interface(NSObject)
    ['{F74E226D-3A1A-48CD-895A-9CBAF23D885F}']
    procedure setPath(path: NSString); cdecl;
    function path: NSString; cdecl;
    procedure setDelegate(delegate: Pointer); cdecl;
    function delegate: Pointer; cdecl;
    procedure setMaximumNumberOfDatabasesToCreate
      (maximumNumberOfDatabasesToCreate: NSUInteger); cdecl;
    function maximumNumberOfDatabasesToCreate: NSUInteger; cdecl;
    function openFlags: Integer; cdecl;
    [MethodName('initWithPath:')]
    function initWithPath(aPath: NSString): Pointer { instancetype }; cdecl;
    [MethodName('initWithPath:flags:')]
    function initWithPathFlags(aPath: NSString; flags: Integer)
      : Pointer { instancetype }; cdecl;
    function countOfCheckedInDatabases: NSUInteger; cdecl;
    function countOfCheckedOutDatabases: NSUInteger; cdecl;
    function countOfOpenDatabases: NSUInteger; cdecl;
    procedure releaseAllDatabases; cdecl;
    procedure inDatabase(block: TAWSCoreBlock2); cdecl;
    procedure inTransaction(block: TAWSCoreBlock3); cdecl;
    procedure inDeferredTransaction(block: TAWSCoreBlock3); cdecl;
    function inSavePoint(block: TAWSCoreBlock3): NSError; cdecl;
  end;

  TAWSFMDatabasePool = class(TOCGenericImport<AWSFMDatabasePoolClass,
    AWSFMDatabasePool>)
  end;

  PAWSFMDatabasePool = Pointer;

  AWSFMDatabasePoolDelegate = interface(IObjectiveC)
    ['{2EAB1180-D459-4CCC-812B-1E241AB62098}']
    [MethodName('databasePool:shouldAddDatabaseToPool:')]
    function databasePoolShouldAddDatabaseToPool(pool: AWSFMDatabasePool;
      shouldAddDatabaseToPool: AWSFMDatabase): Boolean; cdecl;
    [MethodName('databasePool:didAddDatabase:')]
    procedure databasePoolDidAddDatabase(pool: AWSFMDatabasePool;
      didAddDatabase: AWSFMDatabase); cdecl;
  end;

  AWSFMDatabaseQueueClass = interface(NSObjectClass)
    ['{3FA058EB-1269-407B-A6FB-C9F2E68016BB}']
    [MethodName('databaseQueueWithPath:')]
    { class } function databaseQueueWithPath(aPath: NSString)
      : Pointer { instancetype }; cdecl;
    [MethodName('databaseQueueWithPath:flags:')]
    { class } function databaseQueueWithPathFlags(aPath: NSString;
      flags: Integer): Pointer { instancetype }; cdecl;
    { class } function databaseClass: Pointer; cdecl;
  end;

  AWSFMDatabaseQueue = interface(NSObject)
    ['{5EC76506-CC68-4F3B-8B76-3BA39398B0BA}']
    procedure setPath(path: NSString); cdecl;
    function path: NSString; cdecl;
    function openFlags: Integer; cdecl;
    [MethodName('initWithPath:')]
    function initWithPath(aPath: NSString): Pointer { instancetype }; cdecl;
    [MethodName('initWithPath:flags:')]
    function initWithPathFlags(aPath: NSString; flags: Integer)
      : Pointer { instancetype }; cdecl;
    [MethodName('initWithPath:flags:vfs:')]
    function initWithPathFlagsVfs(aPath: NSString; flags: Integer;
      vfs: NSString): Pointer { instancetype }; cdecl;
    procedure close; cdecl;
    procedure inDatabase(block: TAWSCoreBlock2); cdecl;
    procedure inTransaction(block: TAWSCoreBlock3); cdecl;
    procedure inDeferredTransaction(block: TAWSCoreBlock3); cdecl;
    function inSavePoint(block: TAWSCoreBlock3): NSError; cdecl;
  end;

  TAWSFMDatabaseQueue = class(TOCGenericImport<AWSFMDatabaseQueueClass,
    AWSFMDatabaseQueue>)
  end;

  PAWSFMDatabaseQueue = Pointer;

  AWSKSReachabilityClass = interface(NSObjectClass)
    ['{282BB84B-75E7-482C-8857-FB7D8A408BF4}']
    { class } function reachabilityToHost(hostName: NSString)
      : AWSKSReachability; cdecl;
    { class } function reachabilityToLocalNetwork: AWSKSReachability; cdecl;
    { class } function reachabilityToInternet: AWSKSReachability; cdecl;
  end;

  AWSKSReachability = interface(NSObject)
    ['{09490CEF-70A8-4549-A4CA-0469854CF692}']
    function hostName: NSString; cdecl;
    procedure setOnInitializationComplete(onInitializationComplete
      : AWSKSReachabilityCallback); cdecl;
    function onInitializationComplete: AWSKSReachabilityCallback; cdecl;
    procedure setOnReachabilityChanged(onReachabilityChanged
      : AWSKSReachabilityCallback); cdecl;
    function onReachabilityChanged: AWSKSReachabilityCallback; cdecl;
    procedure setNotificationName(notificationName: NSString); cdecl;
    function notificationName: NSString; cdecl;
    function flags: SCNetworkReachabilityFlags; cdecl;
    function reachable: Boolean; cdecl;
    function WWANOnly: Boolean; cdecl;
    function initialized: Boolean; cdecl;
  end;

  TAWSKSReachability = class(TOCGenericImport<AWSKSReachabilityClass,
    AWSKSReachability>)
  end;

  PAWSKSReachability = Pointer;

  AWSKSReachableOperationClass = interface(NSObjectClass)
    ['{0D6BDFBB-2981-4F80-98A0-B69127BDEB2D}']
    { class } function operationWithHost(hostName: NSString; allowWWAN: Boolean;
      onReachabilityAchieved: Pointer { dispatch_block_t } )
      : AWSKSReachableOperation; cdecl;
    { class } function operationWithReachability(reachability
      : AWSKSReachability; allowWWAN: Boolean;
      onReachabilityAchieved: Pointer { dispatch_block_t } )
      : AWSKSReachableOperation; cdecl;
  end;

  AWSKSReachableOperation = interface(NSObject)
    ['{24366CAA-1174-4611-AE84-D287C5070A20}']
    function initWithHost(hostName: NSString; allowWWAN: Boolean;
      onReachabilityAchieved: Pointer { dispatch_block_t } ): Pointer; cdecl;
    function initWithReachability(reachability: AWSKSReachability;
      allowWWAN: Boolean; onReachabilityAchieved: Pointer { dispatch_block_t } )
      : Pointer; cdecl;
    function reachability: AWSKSReachability; cdecl;
  end;

  TAWSKSReachableOperation = class
    (TOCGenericImport<AWSKSReachableOperationClass, AWSKSReachableOperation>)
  end;

  PAWSKSReachableOperation = Pointer;

  AWSTMDiskCacheClass = interface(NSObjectClass)
    ['{DDC559B9-DEB0-4676-96BA-1FFC2D5D6E71}']
    { class } function sharedCache: Pointer { instancetype }; cdecl;
    { class } function sharedQueue: dispatch_queue_t; cdecl;
    { class } procedure emptyTrash; cdecl;
    { class } procedure setBackgroundTaskManager(backgroundTaskManager
      : Pointer); cdecl;
  end;

  AWSTMDiskCache = interface(NSObject)
    ['{20069F89-9174-458B-8550-442BD8479C21}']
    function name: NSString; cdecl;
    function cacheURL: NSURL; cdecl;
    function byteCount: NSUInteger; cdecl;
    procedure setByteLimit(byteLimit: NSUInteger); cdecl;
    function byteLimit: NSUInteger; cdecl;
    procedure setAgeLimit(ageLimit: NSTimeInterval); cdecl;
    function ageLimit: NSTimeInterval; cdecl;
    procedure setWillAddObjectBlock(willAddObjectBlock
      : AWSTMDiskCacheObjectBlock); cdecl;
    function willAddObjectBlock: AWSTMDiskCacheObjectBlock; cdecl;
    procedure setWillRemoveObjectBlock(willRemoveObjectBlock
      : AWSTMDiskCacheObjectBlock); cdecl;
    function willRemoveObjectBlock: AWSTMDiskCacheObjectBlock; cdecl;
    procedure setWillRemoveAllObjectsBlock(willRemoveAllObjectsBlock
      : AWSTMDiskCacheBlock); cdecl;
    function willRemoveAllObjectsBlock: AWSTMDiskCacheBlock; cdecl;
    procedure setDidAddObjectBlock(didAddObjectBlock
      : AWSTMDiskCacheObjectBlock); cdecl;
    function didAddObjectBlock: AWSTMDiskCacheObjectBlock; cdecl;
    procedure setDidRemoveObjectBlock(didRemoveObjectBlock
      : AWSTMDiskCacheObjectBlock); cdecl;
    function didRemoveObjectBlock: AWSTMDiskCacheObjectBlock; cdecl;
    procedure setDidRemoveAllObjectsBlock(didRemoveAllObjectsBlock
      : AWSTMDiskCacheBlock); cdecl;
    function didRemoveAllObjectsBlock: AWSTMDiskCacheBlock; cdecl;
    [MethodName('initWithName:')]
    function initWithName(name: NSString): Pointer { instancetype }; cdecl;
    [MethodName('initWithName:rootPath:')]
    function initWithNameRootPath(name: NSString; rootPath: NSString)
      : Pointer { instancetype }; cdecl;
    [MethodName('objectForKey:block:')]
    procedure objectForKeyBlock(key: NSString;
      block: AWSTMDiskCacheObjectBlock); cdecl;
    [MethodName('fileURLForKey:block:')]
    procedure fileURLForKeyBlock(key: NSString;
      block: AWSTMDiskCacheObjectBlock); cdecl;
    [MethodName('setObject:forKey:block:')]
    procedure setObjectForKeyBlock(&object: Pointer; forKey: NSString;
      block: AWSTMDiskCacheObjectBlock); cdecl;
    [MethodName('removeObjectForKey:block:')]
    procedure removeObjectForKeyBlock(key: NSString;
      block: AWSTMDiskCacheObjectBlock); cdecl;
    [MethodName('trimToDate:block:')]
    procedure trimToDateBlock(date: NSDate; block: AWSTMDiskCacheBlock); cdecl;
    [MethodName('trimToSize:block:')]
    procedure trimToSizeBlock(byteCount: NSUInteger;
      block: AWSTMDiskCacheBlock); cdecl;
    [MethodName('trimToSizeByDate:block:')]
    procedure trimToSizeByDateBlock(byteCount: NSUInteger;
      block: AWSTMDiskCacheBlock); cdecl;
    [MethodName('removeAllObjects:')]
    procedure removeAllObjects(block: AWSTMDiskCacheBlock); cdecl; overload;
    [MethodName('enumerateObjectsWithBlock:completionBlock:')]
    procedure enumerateObjectsWithBlockCompletionBlock
      (block: AWSTMDiskCacheObjectBlock;
      completionBlock: AWSTMDiskCacheBlock); cdecl;
    [MethodName('objectForKey:')]
    function objectForKey(key: NSString): Pointer; cdecl;
    [MethodName('fileURLForKey:')]
    function fileURLForKey(key: NSString): NSURL; cdecl;
    [MethodName('setObject:forKey:')]
    procedure setObjectForKey(&object: Pointer; forKey: NSString); cdecl;
    [MethodName('removeObjectForKey:')]
    procedure removeObjectForKey(key: NSString); cdecl;
    [MethodName('trimToDate:')]
    procedure trimToDate(date: NSDate); cdecl;
    [MethodName('trimToSize:')]
    procedure trimToSize(byteCount: NSUInteger); cdecl;
    [MethodName('trimToSizeByDate:')]
    procedure trimToSizeByDate(byteCount: NSUInteger); cdecl;
    [MethodName('removeAllObjects')]
    procedure removeAllObjects; cdecl; overload;
    [MethodName('enumerateObjectsWithBlock:')]
    procedure enumerateObjectsWithBlock
      (block: AWSTMDiskCacheObjectBlock); cdecl;
  end;

  TAWSTMDiskCache = class(TOCGenericImport<AWSTMDiskCacheClass, AWSTMDiskCache>)
  end;

  PAWSTMDiskCache = Pointer;

  AWSTMMemoryCacheClass = interface(NSObjectClass)
    ['{96F503C3-FD73-4EF6-B6FA-8B71D4043220}']
    { class } function sharedCache: Pointer { instancetype }; cdecl;
  end;

  AWSTMMemoryCache = interface(NSObject)
    ['{175CB143-B10B-4895-81E1-0ED86579FE87}']
    function queue: dispatch_queue_t; cdecl;
    function totalCost: NSUInteger; cdecl;
    procedure setCostLimit(costLimit: NSUInteger); cdecl;
    function costLimit: NSUInteger; cdecl;
    procedure setAgeLimit(ageLimit: NSTimeInterval); cdecl;
    function ageLimit: NSTimeInterval; cdecl;
    procedure setRemoveAllObjectsOnMemoryWarning(removeAllObjectsOnMemoryWarning
      : Boolean); cdecl;
    function removeAllObjectsOnMemoryWarning: Boolean; cdecl;
    procedure setRemoveAllObjectsOnEnteringBackground
      (removeAllObjectsOnEnteringBackground: Boolean); cdecl;
    function removeAllObjectsOnEnteringBackground: Boolean; cdecl;
    procedure setWillAddObjectBlock(willAddObjectBlock
      : AWSTMMemoryCacheObjectBlock); cdecl;
    function willAddObjectBlock: AWSTMMemoryCacheObjectBlock; cdecl;
    procedure setWillRemoveObjectBlock(willRemoveObjectBlock
      : AWSTMMemoryCacheObjectBlock); cdecl;
    function willRemoveObjectBlock: AWSTMMemoryCacheObjectBlock; cdecl;
    procedure setWillRemoveAllObjectsBlock(willRemoveAllObjectsBlock
      : AWSTMMemoryCacheBlock); cdecl;
    function willRemoveAllObjectsBlock: AWSTMMemoryCacheBlock; cdecl;
    procedure setDidAddObjectBlock(didAddObjectBlock
      : AWSTMMemoryCacheObjectBlock); cdecl;
    function didAddObjectBlock: AWSTMMemoryCacheObjectBlock; cdecl;
    procedure setDidRemoveObjectBlock(didRemoveObjectBlock
      : AWSTMMemoryCacheObjectBlock); cdecl;
    function didRemoveObjectBlock: AWSTMMemoryCacheObjectBlock; cdecl;
    procedure setDidRemoveAllObjectsBlock(didRemoveAllObjectsBlock
      : AWSTMMemoryCacheBlock); cdecl;
    function didRemoveAllObjectsBlock: AWSTMMemoryCacheBlock; cdecl;
    procedure setDidReceiveMemoryWarningBlock(didReceiveMemoryWarningBlock
      : AWSTMMemoryCacheBlock); cdecl;
    function didReceiveMemoryWarningBlock: AWSTMMemoryCacheBlock; cdecl;
    procedure setDidEnterBackgroundBlock(didEnterBackgroundBlock
      : AWSTMMemoryCacheBlock); cdecl;
    function didEnterBackgroundBlock: AWSTMMemoryCacheBlock; cdecl;
    [MethodName('objectForKey:block:')]
    procedure objectForKeyBlock(key: NSString;
      block: AWSTMMemoryCacheObjectBlock); cdecl;
    [MethodName('setObject:forKey:block:')]
    procedure setObjectForKeyBlock(&object: Pointer; forKey: NSString;
      block: AWSTMMemoryCacheObjectBlock); cdecl;
    [MethodName('setObject:forKey:withCost:block:')]
    procedure setObjectForKeyWithCostBlock(&object: Pointer; forKey: NSString;
      withCost: NSUInteger; block: AWSTMMemoryCacheObjectBlock); cdecl;
    [MethodName('removeObjectForKey:block:')]
    procedure removeObjectForKeyBlock(key: NSString;
      block: AWSTMMemoryCacheObjectBlock); cdecl;
    [MethodName('trimToDate:block:')]
    procedure trimToDateBlock(date: NSDate;
      block: AWSTMMemoryCacheBlock); cdecl;
    [MethodName('trimToCost:block:')]
    procedure trimToCostBlock(cost: NSUInteger;
      block: AWSTMMemoryCacheBlock); cdecl;
    [MethodName('trimToCostByDate:block:')]
    procedure trimToCostByDateBlock(cost: NSUInteger;
      block: AWSTMMemoryCacheBlock); cdecl;
    [MethodName('removeAllObjects:')]
    procedure removeAllObjects(block: AWSTMMemoryCacheBlock); cdecl; overload;
    [MethodName('enumerateObjectsWithBlock:completionBlock:')]
    procedure enumerateObjectsWithBlockCompletionBlock
      (block: AWSTMMemoryCacheObjectBlock;
      completionBlock: AWSTMMemoryCacheBlock); cdecl;
    [MethodName('objectForKey:')]
    function objectForKey(key: NSString): Pointer; cdecl;
    [MethodName('setObject:forKey:')]
    procedure setObjectForKey(&object: Pointer; forKey: NSString); cdecl;
    [MethodName('setObject:forKey:withCost:')]
    procedure setObjectForKeyWithCost(&object: Pointer; forKey: NSString;
      withCost: NSUInteger); cdecl;
    [MethodName('removeObjectForKey:')]
    procedure removeObjectForKey(key: NSString); cdecl;
    [MethodName('trimToDate:')]
    procedure trimToDate(date: NSDate); cdecl;
    [MethodName('trimToCost:')]
    procedure trimToCost(cost: NSUInteger); cdecl;
    [MethodName('trimToCostByDate:')]
    procedure trimToCostByDate(cost: NSUInteger); cdecl;
    [MethodName('removeAllObjects')]
    procedure removeAllObjects; cdecl; overload;
    [MethodName('enumerateObjectsWithBlock:')]
    procedure enumerateObjectsWithBlock
      (block: AWSTMMemoryCacheObjectBlock); cdecl;
    procedure handleMemoryWarning; cdecl;
    procedure handleApplicationBackgrounding; cdecl;
  end;

  TAWSTMMemoryCache = class(TOCGenericImport<AWSTMMemoryCacheClass,
    AWSTMMemoryCache>)
  end;

  PAWSTMMemoryCache = Pointer;

  AWSTMCacheClass = interface(NSObjectClass)
    ['{C60F2244-5F0E-4910-8D81-B8DB48285C2A}']
    { class } function sharedCache: Pointer { instancetype }; cdecl;
  end;

  AWSTMCache = interface(NSObject)
    ['{A8C7F2C0-D85F-42A1-B108-34C0EBCFE652}']
    function name: NSString; cdecl;
    function queue: dispatch_queue_t; cdecl;
    function diskByteCount: NSUInteger; cdecl;
    function diskCache: AWSTMDiskCache; cdecl;
    function memoryCache: AWSTMMemoryCache; cdecl;
    [MethodName('initWithName:')]
    function initWithName(name: NSString): Pointer { instancetype }; cdecl;
    [MethodName('initWithName:rootPath:')]
    function initWithNameRootPath(name: NSString; rootPath: NSString)
      : Pointer { instancetype }; cdecl;
    [MethodName('objectForKey:block:')]
    procedure objectForKeyBlock(key: NSString;
      block: AWSTMCacheObjectBlock); cdecl;
    [MethodName('setObject:forKey:block:')]
    procedure setObjectForKeyBlock(&object: Pointer; forKey: NSString;
      block: AWSTMCacheObjectBlock); cdecl;
    [MethodName('removeObjectForKey:block:')]
    procedure removeObjectForKeyBlock(key: NSString;
      block: AWSTMCacheObjectBlock); cdecl;
    [MethodName('trimToDate:block:')]
    procedure trimToDateBlock(date: NSDate; block: AWSTMCacheBlock); cdecl;
    [MethodName('removeAllObjects:')]
    procedure removeAllObjects(block: AWSTMCacheBlock); cdecl; overload;
    [MethodName('objectForKey:')]
    function objectForKey(key: NSString): Pointer; cdecl;
    [MethodName('setObject:forKey:')]
    procedure setObjectForKey(&object: Pointer; forKey: NSString); cdecl;
    [MethodName('removeObjectForKey:')]
    procedure removeObjectForKey(key: NSString); cdecl;
    [MethodName('trimToDate:')]
    procedure trimToDate(date: NSDate); cdecl;
    [MethodName('removeAllObjects')]
    procedure removeAllObjects; cdecl; overload;
  end;

  TAWSTMCache = class(TOCGenericImport<AWSTMCacheClass, AWSTMCache>)
  end;

  PAWSTMCache = Pointer;

  AWSUICKeyChainStoreClass = interface(NSObjectClass)
    ['{BFE2397F-6E73-4B2C-822D-086EE56946B8}']
    { class } function defaultService: NSString; cdecl;
    { class } procedure setDefaultService(defaultService: NSString); cdecl;
    { class } function keyChainStore: AWSUICKeyChainStore; cdecl;
    [MethodName('keyChainStoreWithService:')]
    { class } function keyChainStoreWithService(service: NSString)
      : AWSUICKeyChainStore; cdecl;
    [MethodName('keyChainStoreWithService:accessGroup:')]
    { class } function keyChainStoreWithServiceAccessGroup(service: NSString;
      accessGroup: NSString): AWSUICKeyChainStore; cdecl;
    [MethodName('keyChainStoreWithServer:protocolType:')]
    { class } function keyChainStoreWithServerProtocolType(server: NSURL;
      protocolType: AWSUICKeyChainStoreProtocolType)
      : AWSUICKeyChainStore; cdecl;
    [MethodName('keyChainStoreWithServer:protocolType:authenticationType:')]
    { class } function keyChainStoreWithServerProtocolTypeAuthenticationType
      (server: NSURL; protocolType: AWSUICKeyChainStoreProtocolType;
      authenticationType: AWSUICKeyChainStoreAuthenticationType)
      : AWSUICKeyChainStore; cdecl;
    [MethodName('stringForKey:')]
    { class } function stringForKey(key: NSString): NSString; cdecl;
    [MethodName('stringForKey:service:')]
    { class } function stringForKeyService(key: NSString; service: NSString)
      : NSString; cdecl;
    [MethodName('stringForKey:service:accessGroup:')]
    { class } function stringForKeyServiceAccessGroup(key: NSString;
      service: NSString; accessGroup: NSString): NSString; cdecl;
    [MethodName('setString:forKey:')]
    { class } function setStringForKey(value: NSString; forKey: NSString)
      : Boolean; cdecl;
    [MethodName('setString:forKey:service:')]
    { class } function setStringForKeyService(value: NSString; forKey: NSString;
      service: NSString): Boolean; cdecl;
    [MethodName('setString:forKey:service:accessGroup:')]
    { class } function setStringForKeyServiceAccessGroup(value: NSString;
      forKey: NSString; service: NSString; accessGroup: NSString)
      : Boolean; cdecl;
    [MethodName('dataForKey:')]
    { class } function dataForKey(key: NSString): NSData; cdecl;
    [MethodName('dataForKey:service:')]
    { class } function dataForKeyService(key: NSString; service: NSString)
      : NSData; cdecl;
    [MethodName('dataForKey:service:accessGroup:')]
    { class } function dataForKeyServiceAccessGroup(key: NSString;
      service: NSString; accessGroup: NSString): NSData; cdecl;
    [MethodName('setData:forKey:')]
    { class } function setDataForKey(data: NSData; forKey: NSString)
      : Boolean; cdecl;
    [MethodName('setData:forKey:service:')]
    { class } function setDataForKeyService(data: NSData; forKey: NSString;
      service: NSString): Boolean; cdecl;
    [MethodName('setData:forKey:service:accessGroup:')]
    { class } function setDataForKeyServiceAccessGroup(data: NSData;
      forKey: NSString; service: NSString; accessGroup: NSString)
      : Boolean; cdecl;
    [MethodName('removeItemForKey:')]
    { class } function removeItemForKey(key: NSString): Boolean; cdecl;
    [MethodName('removeItemForKey:service:')]
    { class } function removeItemForKeyService(key: NSString; service: NSString)
      : Boolean; cdecl;
    [MethodName('removeItemForKey:service:accessGroup:')]
    { class } function removeItemForKeyServiceAccessGroup(key: NSString;
      service: NSString; accessGroup: NSString): Boolean; cdecl;
    { class } function removeAllItems: Boolean; cdecl;
    [MethodName('removeAllItemsForService:')]
    { class } function removeAllItemsForService(service: NSString)
      : Boolean; cdecl;
    [MethodName('removeAllItemsForService:accessGroup:')]
    { class } function removeAllItemsForServiceAccessGroup(service: NSString;
      accessGroup: NSString): Boolean; cdecl;
    { class } function allKeysWithItemClass
      (itemClass: AWSUICKeyChainStoreItemClass): NSArray; cdecl;
    { class } function allItemsWithItemClass
      (itemClass: AWSUICKeyChainStoreItemClass): NSArray; cdecl;
    { class } procedure requestSharedWebCredentialWithCompletion
      (completion: TAWSCoreCompletion3); cdecl;
    { class } procedure requestSharedWebCredentialForDomain(domain: NSString;
      account: NSString; completion: TAWSCoreCompletion3); cdecl;
    { class } function generatePassword: NSString; cdecl;
    [MethodName('stringForKey:error:')]
    { class } function stringForKeyError(key: NSString; error: NSError)
      : NSString; cdecl;
    [MethodName('stringForKey:service:error:')]
    { class } function stringForKeyServiceError(key: NSString;
      service: NSString; error: NSError): NSString; cdecl;
    [MethodName('stringForKey:service:accessGroup:error:')]
    { class } function stringForKeyServiceAccessGroupError(key: NSString;
      service: NSString; accessGroup: NSString; error: NSError)
      : NSString; cdecl;
    [MethodName('setString:forKey:error:')]
    { class } function setStringForKeyError(value: NSString; forKey: NSString;
      error: NSError): Boolean; cdecl;
    [MethodName('setString:forKey:service:error:')]
    { class } function setStringForKeyServiceError(value: NSString;
      forKey: NSString; service: NSString; error: NSError): Boolean; cdecl;
    [MethodName('setString:forKey:service:accessGroup:error:')]
    { class } function setStringForKeyServiceAccessGroupError(value: NSString;
      forKey: NSString; service: NSString; accessGroup: NSString;
      error: NSError): Boolean; cdecl;
    [MethodName('dataForKey:error:')]
    { class } function dataForKeyError(key: NSString; error: NSError)
      : NSData; cdecl;
    [MethodName('dataForKey:service:error:')]
    { class } function dataForKeyServiceError(key: NSString; service: NSString;
      error: NSError): NSData; cdecl;
    [MethodName('dataForKey:service:accessGroup:error:')]
    { class } function dataForKeyServiceAccessGroupError(key: NSString;
      service: NSString; accessGroup: NSString; error: NSError): NSData; cdecl;
    [MethodName('setData:forKey:error:')]
    { class } function setDataForKeyError(data: NSData; forKey: NSString;
      error: NSError): Boolean; cdecl;
    [MethodName('setData:forKey:service:error:')]
    { class } function setDataForKeyServiceError(data: NSData; forKey: NSString;
      service: NSString; error: NSError): Boolean; cdecl;
    [MethodName('setData:forKey:service:accessGroup:error:')]
    { class } function setDataForKeyServiceAccessGroupError(data: NSData;
      forKey: NSString; service: NSString; accessGroup: NSString;
      error: NSError): Boolean; cdecl;
    [MethodName('removeItemForKey:error:')]
    { class } function removeItemForKeyError(key: NSString; error: NSError)
      : Boolean; cdecl;
    [MethodName('removeItemForKey:service:error:')]
    { class } function removeItemForKeyServiceError(key: NSString;
      service: NSString; error: NSError): Boolean; cdecl;
    [MethodName('removeItemForKey:service:accessGroup:error:')]
    { class } function removeItemForKeyServiceAccessGroupError(key: NSString;
      service: NSString; accessGroup: NSString; error: NSError): Boolean; cdecl;
    { class } function removeAllItemsWithError(error: NSError): Boolean; cdecl;
    [MethodName('removeAllItemsForService:error:')]
    { class } function removeAllItemsForServiceError(service: NSString;
      error: NSError): Boolean; cdecl;
    [MethodName('removeAllItemsForService:accessGroup:error:')]
    { class } function removeAllItemsForServiceAccessGroupError
      (service: NSString; accessGroup: NSString; error: NSError)
      : Boolean; cdecl;
    [MethodName('setString:forKey:genericAttribute:')]
    { class } function setStringForKeyGenericAttribute(value: NSString;
      forKey: NSString; genericAttribute: Pointer): Boolean; cdecl;
    [MethodName('setString:forKey:genericAttribute:error:')]
    { class } function setStringForKeyGenericAttributeError(value: NSString;
      forKey: NSString; genericAttribute: Pointer; error: NSError)
      : Boolean; cdecl;
    [MethodName('setString:forKey:service:genericAttribute:')]
    { class } function setStringForKeyServiceGenericAttribute(value: NSString;
      forKey: NSString; service: NSString; genericAttribute: Pointer)
      : Boolean; cdecl;
    [MethodName('setString:forKey:service:genericAttribute:error:')]
    { class } function setStringForKeyServiceGenericAttributeError
      (value: NSString; forKey: NSString; service: NSString;
      genericAttribute: Pointer; error: NSError): Boolean; cdecl;
    [MethodName('setString:forKey:service:accessGroup:genericAttribute:')]
    { class } function setStringForKeyServiceAccessGroupGenericAttribute
      (value: NSString; forKey: NSString; service: NSString;
      accessGroup: NSString; genericAttribute: Pointer): Boolean; cdecl;
    [MethodName('setString:forKey:service:accessGroup:genericAttribute:error:')]
    { class } function setStringForKeyServiceAccessGroupGenericAttributeError
      (value: NSString; forKey: NSString; service: NSString;
      accessGroup: NSString; genericAttribute: Pointer; error: NSError)
      : Boolean; cdecl;
    [MethodName('setData:forKey:genericAttribute:')]
    { class } function setDataForKeyGenericAttribute(data: NSData;
      forKey: NSString; genericAttribute: Pointer): Boolean; cdecl;
    [MethodName('setData:forKey:genericAttribute:error:')]
    { class } function setDataForKeyGenericAttributeError(data: NSData;
      forKey: NSString; genericAttribute: Pointer; error: NSError)
      : Boolean; cdecl;
    [MethodName('setData:forKey:service:genericAttribute:')]
    { class } function setDataForKeyServiceGenericAttribute(data: NSData;
      forKey: NSString; service: NSString; genericAttribute: Pointer)
      : Boolean; cdecl;
    [MethodName('setData:forKey:service:genericAttribute:error:')]
    { class } function setDataForKeyServiceGenericAttributeError(data: NSData;
      forKey: NSString; service: NSString; genericAttribute: Pointer;
      error: NSError): Boolean; cdecl;
    [MethodName('setData:forKey:service:accessGroup:genericAttribute:')]
    { class } function setDataForKeyServiceAccessGroupGenericAttribute
      (data: NSData; forKey: NSString; service: NSString; accessGroup: NSString;
      genericAttribute: Pointer): Boolean; cdecl;
    [MethodName('setData:forKey:service:accessGroup:genericAttribute:error:')]
    { class } function setDataForKeyServiceAccessGroupGenericAttributeError
      (data: NSData; forKey: NSString; service: NSString; accessGroup: NSString;
      genericAttribute: Pointer; error: NSError): Boolean; cdecl;
  end;

  AWSUICKeyChainStore = interface(NSObject)
    ['{8DF6C4E8-F80A-4F2B-B0B1-02097A5F05C6}']
    function itemClass: AWSUICKeyChainStoreItemClass; cdecl;
    function service: NSString; cdecl;
    function accessGroup: NSString; cdecl;
    function server: NSURL; cdecl;
    function protocolType: AWSUICKeyChainStoreProtocolType; cdecl;
    function authenticationType: AWSUICKeyChainStoreAuthenticationType; cdecl;
    [MethodName('setAccessibility:')]
    procedure setAccessibility(accessibility
      : AWSUICKeyChainStoreAccessibility); cdecl;
    function accessibility: AWSUICKeyChainStoreAccessibility; cdecl;
    function authenticationPolicy
      : AWSUICKeyChainStoreAuthenticationPolicy; cdecl;
    procedure setSynchronizable(synchronizable: Boolean); cdecl;
    function synchronizable: Boolean; cdecl;
    procedure setAuthenticationPrompt(authenticationPrompt: NSString); cdecl;
    function authenticationPrompt: NSString; cdecl;
    function init: Pointer { instancetype }; cdecl;
    [MethodName('initWithService:')]
    function initWithService(service: NSString)
      : Pointer { instancetype }; cdecl;
    [MethodName('initWithService:accessGroup:')]
    function initWithServiceAccessGroup(service: NSString;
      accessGroup: NSString): Pointer { instancetype }; cdecl;
    [MethodName('initWithServer:protocolType:')]
    function initWithServerProtocolType(server: NSURL;
      protocolType: AWSUICKeyChainStoreProtocolType)
      : Pointer { instancetype }; cdecl;
    [MethodName('initWithServer:protocolType:authenticationType:')]
    function initWithServerProtocolTypeAuthenticationType(server: NSURL;
      protocolType: AWSUICKeyChainStoreProtocolType;
      authenticationType: AWSUICKeyChainStoreAuthenticationType)
      : Pointer { instancetype }; cdecl;
    function contains(key: NSString): Boolean; cdecl;
    [MethodName('setString:forKey:')]
    function setStringForKey(&string: NSString; forKey: NSString)
      : Boolean; cdecl;
    [MethodName('setString:forKey:label:comment:')]
    function setStringForKeyLabelComment(&string: NSString; forKey: NSString;
      &label: NSString; comment: NSString): Boolean; cdecl;
    [MethodName('stringForKey:')]
    function stringForKey(key: NSString): NSString; cdecl;
    [MethodName('setData:forKey:')]
    function setDataForKey(data: NSData; forKey: NSString): Boolean; cdecl;
    [MethodName('setData:forKey:label:comment:')]
    function setDataForKeyLabelComment(data: NSData; forKey: NSString;
      &label: NSString; comment: NSString): Boolean; cdecl;
    [MethodName('dataForKey:')]
    function dataForKey(key: NSString): NSData; cdecl;
    [MethodName('removeItemForKey:')]
    function removeItemForKey(key: NSString): Boolean; cdecl;
    function removeAllItems: Boolean; cdecl;
    function objectForKeyedSubscript(key: NSString): NSString; cdecl;
    procedure setObject(obj: NSString; forKeyedSubscript: NSString); cdecl;
    function allKeys: NSArray; cdecl;
    function allItems: NSArray; cdecl;
    [MethodName('setAccessibility:authenticationPolicy:')]
    procedure setAccessibilityAuthenticationPolicy(accessibility
      : AWSUICKeyChainStoreAccessibility;
      authenticationPolicy: AWSUICKeyChainStoreAuthenticationPolicy); cdecl;
    procedure sharedPasswordWithCompletion(completion
      : TAWSCoreCompletion); cdecl;
    procedure sharedPasswordForAccount(account: NSString;
      completion: TAWSCoreCompletion1); cdecl;
    procedure setSharedPassword(password: NSString; forAccount: NSString;
      completion: TAWSCoreCompletion2); cdecl;
    procedure removeSharedPasswordForAccount(account: NSString;
      completion: TAWSCoreCompletion2); cdecl;
    [MethodName('setString:forKey:error:')]
    function setStringForKeyError(&string: NSString; forKey: NSString;
      error: NSError): Boolean; cdecl;
    [MethodName('setString:forKey:label:comment:error:')]
    function setStringForKeyLabelCommentError(&string: NSString;
      forKey: NSString; &label: NSString; comment: NSString; error: NSError)
      : Boolean; cdecl;
    [MethodName('setData:forKey:error:')]
    function setDataForKeyError(data: NSData; forKey: NSString; error: NSError)
      : Boolean; cdecl;
    [MethodName('setData:forKey:label:comment:error:')]
    function setDataForKeyLabelCommentError(data: NSData; forKey: NSString;
      &label: NSString; comment: NSString; error: NSError): Boolean; cdecl;
    [MethodName('stringForKey:error:')]
    function stringForKeyError(key: NSString; error: NSError): NSString; cdecl;
    [MethodName('dataForKey:error:')]
    function dataForKeyError(key: NSString; error: NSError): NSData; cdecl;
    [MethodName('removeItemForKey:error:')]
    function removeItemForKeyError(key: NSString; error: NSError)
      : Boolean; cdecl;
    function removeAllItemsWithError(error: NSError): Boolean; cdecl;
    [MethodName('setString:forKey:genericAttribute:')]
    function setStringForKeyGenericAttribute(&string: NSString;
      forKey: NSString; genericAttribute: Pointer): Boolean; cdecl;
    [MethodName('setString:forKey:genericAttribute:error:')]
    function setStringForKeyGenericAttributeError(&string: NSString;
      forKey: NSString; genericAttribute: Pointer; error: NSError)
      : Boolean; cdecl;
    [MethodName('setData:forKey:genericAttribute:')]
    function setDataForKeyGenericAttribute(data: NSData; forKey: NSString;
      genericAttribute: Pointer): Boolean; cdecl;
    [MethodName('setData:forKey:genericAttribute:error:')]
    function setDataForKeyGenericAttributeError(data: NSData; forKey: NSString;
      genericAttribute: Pointer; error: NSError): Boolean; cdecl;
    procedure synchronize; cdecl;
    function synchronizeWithError(error: NSError): Boolean; cdecl;
  end;

  TAWSUICKeyChainStore = class(TOCGenericImport<AWSUICKeyChainStoreClass,
    AWSUICKeyChainStore>)
  end;

  PAWSUICKeyChainStore = Pointer;

  AWSSTSAssumeRoleRequestClass = interface(AWSRequestClass)
    ['{3924A52C-A6FD-4E70-A49D-94291D6098D7}']
  end;

  AWSSTSAssumeRoleRequest = interface(AWSRequest)
    ['{DCFA717C-15FD-4DDB-A763-182D875CF431}']
    procedure setDurationSeconds(durationSeconds: NSNumber); cdecl;
    function durationSeconds: NSNumber; cdecl;
    procedure setExternalId(externalId: NSString); cdecl;
    function externalId: NSString; cdecl;
    procedure setPolicy(policy: NSString); cdecl;
    function policy: NSString; cdecl;
    procedure setRoleArn(roleArn: NSString); cdecl;
    function roleArn: NSString; cdecl;
    procedure setRoleSessionName(roleSessionName: NSString); cdecl;
    function roleSessionName: NSString; cdecl;
    procedure setSerialNumber(serialNumber: NSString); cdecl;
    function serialNumber: NSString; cdecl;
    procedure setTokenCode(tokenCode: NSString); cdecl;
    function tokenCode: NSString; cdecl;
  end;

  TAWSSTSAssumeRoleRequest = class
    (TOCGenericImport<AWSSTSAssumeRoleRequestClass, AWSSTSAssumeRoleRequest>)
  end;

  PAWSSTSAssumeRoleRequest = Pointer;

  AWSSTSAssumeRoleResponseClass = interface(AWSModelClass)
    ['{0BBE8516-A069-4180-BEA6-DA1C41807503}']
  end;

  AWSSTSAssumeRoleResponse = interface(AWSModel)
    ['{02E4BF97-9710-42A6-89A5-2481D1241FB6}']
    procedure setAssumedRoleUser(assumedRoleUser: AWSSTSAssumedRoleUser); cdecl;
    function assumedRoleUser: AWSSTSAssumedRoleUser; cdecl;
    procedure setCredentials(credentials: AWSSTSCredentials); cdecl;
    function credentials: AWSSTSCredentials; cdecl;
    procedure setPackedPolicySize(packedPolicySize: NSNumber); cdecl;
    function packedPolicySize: NSNumber; cdecl;
  end;

  TAWSSTSAssumeRoleResponse = class
    (TOCGenericImport<AWSSTSAssumeRoleResponseClass, AWSSTSAssumeRoleResponse>)
  end;

  PAWSSTSAssumeRoleResponse = Pointer;

  AWSSTSAssumeRoleWithSAMLRequestClass = interface(AWSRequestClass)
    ['{414119B8-6318-417A-81D5-60D220FDB24A}']
  end;

  AWSSTSAssumeRoleWithSAMLRequest = interface(AWSRequest)
    ['{E7590225-3846-4931-8478-F7FB52B8D229}']
    procedure setDurationSeconds(durationSeconds: NSNumber); cdecl;
    function durationSeconds: NSNumber; cdecl;
    procedure setPolicy(policy: NSString); cdecl;
    function policy: NSString; cdecl;
    procedure setPrincipalArn(principalArn: NSString); cdecl;
    function principalArn: NSString; cdecl;
    procedure setRoleArn(roleArn: NSString); cdecl;
    function roleArn: NSString; cdecl;
    procedure setSAMLAssertion(SAMLAssertion: NSString); cdecl;
    function SAMLAssertion: NSString; cdecl;
  end;

  TAWSSTSAssumeRoleWithSAMLRequest = class
    (TOCGenericImport<AWSSTSAssumeRoleWithSAMLRequestClass,
    AWSSTSAssumeRoleWithSAMLRequest>)
  end;

  PAWSSTSAssumeRoleWithSAMLRequest = Pointer;

  AWSSTSAssumeRoleWithSAMLResponseClass = interface(AWSModelClass)
    ['{A988D4C0-8429-4FE8-B615-5BDBF73541B1}']
  end;

  AWSSTSAssumeRoleWithSAMLResponse = interface(AWSModel)
    ['{7B9C9734-59B7-4314-BFF7-FCE29616AA21}']
    procedure setAssumedRoleUser(assumedRoleUser: AWSSTSAssumedRoleUser); cdecl;
    function assumedRoleUser: AWSSTSAssumedRoleUser; cdecl;
    procedure setAudience(audience: NSString); cdecl;
    function audience: NSString; cdecl;
    procedure setCredentials(credentials: AWSSTSCredentials); cdecl;
    function credentials: AWSSTSCredentials; cdecl;
    procedure setIssuer(issuer: NSString); cdecl;
    function issuer: NSString; cdecl;
    procedure setNameQualifier(nameQualifier: NSString); cdecl;
    function nameQualifier: NSString; cdecl;
    procedure setPackedPolicySize(packedPolicySize: NSNumber); cdecl;
    function packedPolicySize: NSNumber; cdecl;
    procedure setSubject(subject: NSString); cdecl;
    function subject: NSString; cdecl;
    procedure setSubjectType(subjectType: NSString); cdecl;
    function subjectType: NSString; cdecl;
  end;

  TAWSSTSAssumeRoleWithSAMLResponse = class
    (TOCGenericImport<AWSSTSAssumeRoleWithSAMLResponseClass,
    AWSSTSAssumeRoleWithSAMLResponse>)
  end;

  PAWSSTSAssumeRoleWithSAMLResponse = Pointer;

  AWSSTSAssumeRoleWithWebIdentityRequestClass = interface(AWSRequestClass)
    ['{BB5BF846-ED7C-4D16-AE75-74DF18E6F140}']
  end;

  AWSSTSAssumeRoleWithWebIdentityRequest = interface(AWSRequest)
    ['{519E82C9-ECC6-46F1-BBED-4AA26AB5809B}']
    procedure setDurationSeconds(durationSeconds: NSNumber); cdecl;
    function durationSeconds: NSNumber; cdecl;
    procedure setPolicy(policy: NSString); cdecl;
    function policy: NSString; cdecl;
    procedure setProviderId(providerId: NSString); cdecl;
    function providerId: NSString; cdecl;
    procedure setRoleArn(roleArn: NSString); cdecl;
    function roleArn: NSString; cdecl;
    procedure setRoleSessionName(roleSessionName: NSString); cdecl;
    function roleSessionName: NSString; cdecl;
    procedure setWebIdentityToken(webIdentityToken: NSString); cdecl;
    function webIdentityToken: NSString; cdecl;
  end;

  TAWSSTSAssumeRoleWithWebIdentityRequest = class
    (TOCGenericImport<AWSSTSAssumeRoleWithWebIdentityRequestClass,
    AWSSTSAssumeRoleWithWebIdentityRequest>)
  end;

  PAWSSTSAssumeRoleWithWebIdentityRequest = Pointer;

  AWSSTSAssumeRoleWithWebIdentityResponseClass = interface(AWSModelClass)
    ['{1678F2C0-1B32-4CCB-A2A0-B5A1438C232B}']
  end;

  AWSSTSAssumeRoleWithWebIdentityResponse = interface(AWSModel)
    ['{2CC80E36-8E14-4F56-8CD8-2EB3C2D08AFF}']
    procedure setAssumedRoleUser(assumedRoleUser: AWSSTSAssumedRoleUser); cdecl;
    function assumedRoleUser: AWSSTSAssumedRoleUser; cdecl;
    procedure setAudience(audience: NSString); cdecl;
    function audience: NSString; cdecl;
    procedure setCredentials(credentials: AWSSTSCredentials); cdecl;
    function credentials: AWSSTSCredentials; cdecl;
    procedure setPackedPolicySize(packedPolicySize: NSNumber); cdecl;
    function packedPolicySize: NSNumber; cdecl;
    procedure setProvider(provider: NSString); cdecl;
    function provider: NSString; cdecl;
    procedure setSubjectFromWebIdentityToken(subjectFromWebIdentityToken
      : NSString); cdecl;
    function subjectFromWebIdentityToken: NSString; cdecl;
  end;

  TAWSSTSAssumeRoleWithWebIdentityResponse = class
    (TOCGenericImport<AWSSTSAssumeRoleWithWebIdentityResponseClass,
    AWSSTSAssumeRoleWithWebIdentityResponse>)
  end;

  PAWSSTSAssumeRoleWithWebIdentityResponse = Pointer;

  AWSSTSAssumedRoleUserClass = interface(AWSModelClass)
    ['{FAE776DF-65BD-4691-B230-8164D8ABF7B8}']
  end;

  AWSSTSAssumedRoleUser = interface(AWSModel)
    ['{3A6BE9CF-691A-41DF-95FB-F6876481BA4A}']
    procedure setArn(arn: NSString); cdecl;
    function arn: NSString; cdecl;
    procedure setAssumedRoleId(assumedRoleId: NSString); cdecl;
    function assumedRoleId: NSString; cdecl;
  end;

  TAWSSTSAssumedRoleUser = class(TOCGenericImport<AWSSTSAssumedRoleUserClass,
    AWSSTSAssumedRoleUser>)
  end;

  PAWSSTSAssumedRoleUser = Pointer;

  AWSSTSCredentialsClass = interface(AWSModelClass)
    ['{139151D5-3A0B-41C0-948E-4224FA6A3768}']
  end;

  AWSSTSCredentials = interface(AWSModel)
    ['{24356374-6069-4A74-913F-AD2C25FD809D}']
    procedure setAccessKeyId(accessKeyId: NSString); cdecl;
    function accessKeyId: NSString; cdecl;
    procedure setExpiration(expiration: NSDate); cdecl;
    function expiration: NSDate; cdecl;
    procedure setSecretAccessKey(secretAccessKey: NSString); cdecl;
    function secretAccessKey: NSString; cdecl;
    procedure setSessionToken(sessionToken: NSString); cdecl;
    function sessionToken: NSString; cdecl;
  end;

  TAWSSTSCredentials = class(TOCGenericImport<AWSSTSCredentialsClass,
    AWSSTSCredentials>)
  end;

  PAWSSTSCredentials = Pointer;

  AWSSTSDecodeAuthorizationMessageRequestClass = interface(AWSRequestClass)
    ['{D52CEA33-97C1-49C0-B138-06B53260082F}']
  end;

  AWSSTSDecodeAuthorizationMessageRequest = interface(AWSRequest)
    ['{09E7D914-45FB-4237-8E4D-4AE03A777F69}']
    procedure setEncodedMessage(encodedMessage: NSString); cdecl;
    function encodedMessage: NSString; cdecl;
  end;

  TAWSSTSDecodeAuthorizationMessageRequest = class
    (TOCGenericImport<AWSSTSDecodeAuthorizationMessageRequestClass,
    AWSSTSDecodeAuthorizationMessageRequest>)
  end;

  PAWSSTSDecodeAuthorizationMessageRequest = Pointer;

  AWSSTSDecodeAuthorizationMessageResponseClass = interface(AWSModelClass)
    ['{62CC33A6-77F3-4024-B8EB-B3EE3FB8D059}']
  end;

  AWSSTSDecodeAuthorizationMessageResponse = interface(AWSModel)
    ['{8F3B0395-DBD4-436D-BF92-87AAB082E33D}']
    procedure setDecodedMessage(decodedMessage: NSString); cdecl;
    function decodedMessage: NSString; cdecl;
  end;

  TAWSSTSDecodeAuthorizationMessageResponse = class
    (TOCGenericImport<AWSSTSDecodeAuthorizationMessageResponseClass,
    AWSSTSDecodeAuthorizationMessageResponse>)
  end;

  PAWSSTSDecodeAuthorizationMessageResponse = Pointer;

  AWSSTSFederatedUserClass = interface(AWSModelClass)
    ['{0F4B2212-6846-4AF6-9C69-A4DA7FBCCAB4}']
  end;

  AWSSTSFederatedUser = interface(AWSModel)
    ['{B19AF0C5-D296-4C35-82AD-C854CB28568D}']
    procedure setArn(arn: NSString); cdecl;
    function arn: NSString; cdecl;
    procedure setFederatedUserId(federatedUserId: NSString); cdecl;
    function federatedUserId: NSString; cdecl;
  end;

  TAWSSTSFederatedUser = class(TOCGenericImport<AWSSTSFederatedUserClass,
    AWSSTSFederatedUser>)
  end;

  PAWSSTSFederatedUser = Pointer;

  AWSSTSGetCallerIdentityRequestClass = interface(AWSRequestClass)
    ['{869A6414-A630-447E-B27F-2022D419FD76}']
  end;

  AWSSTSGetCallerIdentityRequest = interface(AWSRequest)
    ['{19C7D474-065B-4265-A8AF-F7309E3F1A45}']
  end;

  TAWSSTSGetCallerIdentityRequest = class
    (TOCGenericImport<AWSSTSGetCallerIdentityRequestClass,
    AWSSTSGetCallerIdentityRequest>)
  end;

  PAWSSTSGetCallerIdentityRequest = Pointer;

  AWSSTSGetCallerIdentityResponseClass = interface(AWSModelClass)
    ['{92403452-92CD-40DE-A12A-B5E40F381E33}']
  end;

  AWSSTSGetCallerIdentityResponse = interface(AWSModel)
    ['{DE5F2E46-A78D-431C-8B8C-FBC024A33EF4}']
    procedure setAccount(account: NSString); cdecl;
    function account: NSString; cdecl;
    procedure setArn(arn: NSString); cdecl;
    function arn: NSString; cdecl;
    procedure setUserId(userId: NSString); cdecl;
    function userId: NSString; cdecl;
  end;

  TAWSSTSGetCallerIdentityResponse = class
    (TOCGenericImport<AWSSTSGetCallerIdentityResponseClass,
    AWSSTSGetCallerIdentityResponse>)
  end;

  PAWSSTSGetCallerIdentityResponse = Pointer;

  AWSSTSGetFederationTokenRequestClass = interface(AWSRequestClass)
    ['{9BDBFADB-D881-4BFA-8B38-EFCF0D82CCEF}']
  end;

  AWSSTSGetFederationTokenRequest = interface(AWSRequest)
    ['{6E65B1A3-A98B-49B6-A723-880B2FB9BA03}']
    procedure setDurationSeconds(durationSeconds: NSNumber); cdecl;
    function durationSeconds: NSNumber; cdecl;
    procedure setName(name: NSString); cdecl;
    function name: NSString; cdecl;
    procedure setPolicy(policy: NSString); cdecl;
    function policy: NSString; cdecl;
  end;

  TAWSSTSGetFederationTokenRequest = class
    (TOCGenericImport<AWSSTSGetFederationTokenRequestClass,
    AWSSTSGetFederationTokenRequest>)
  end;

  PAWSSTSGetFederationTokenRequest = Pointer;

  AWSSTSGetFederationTokenResponseClass = interface(AWSModelClass)
    ['{B1BAC93C-1322-4FCE-AD5B-0D99B3AF3604}']
  end;

  AWSSTSGetFederationTokenResponse = interface(AWSModel)
    ['{C5454A1B-C175-4B41-AAB6-765A0967AD79}']
    procedure setCredentials(credentials: AWSSTSCredentials); cdecl;
    function credentials: AWSSTSCredentials; cdecl;
    procedure setFederatedUser(federatedUser: AWSSTSFederatedUser); cdecl;
    function federatedUser: AWSSTSFederatedUser; cdecl;
    procedure setPackedPolicySize(packedPolicySize: NSNumber); cdecl;
    function packedPolicySize: NSNumber; cdecl;
  end;

  TAWSSTSGetFederationTokenResponse = class
    (TOCGenericImport<AWSSTSGetFederationTokenResponseClass,
    AWSSTSGetFederationTokenResponse>)
  end;

  PAWSSTSGetFederationTokenResponse = Pointer;

  AWSSTSGetSessionTokenRequestClass = interface(AWSRequestClass)
    ['{C34B6CD2-01DC-437E-BFE9-9189DA2E0F6C}']
  end;

  AWSSTSGetSessionTokenRequest = interface(AWSRequest)
    ['{7872BBE9-8CEB-4249-BE7C-B4DF1E868ECD}']
    procedure setDurationSeconds(durationSeconds: NSNumber); cdecl;
    function durationSeconds: NSNumber; cdecl;
    procedure setSerialNumber(serialNumber: NSString); cdecl;
    function serialNumber: NSString; cdecl;
    procedure setTokenCode(tokenCode: NSString); cdecl;
    function tokenCode: NSString; cdecl;
  end;

  TAWSSTSGetSessionTokenRequest = class
    (TOCGenericImport<AWSSTSGetSessionTokenRequestClass,
    AWSSTSGetSessionTokenRequest>)
  end;

  PAWSSTSGetSessionTokenRequest = Pointer;

  AWSSTSGetSessionTokenResponseClass = interface(AWSModelClass)
    ['{C9BA3FC7-D8DA-47E3-9B0B-07C8D31A514D}']
  end;

  AWSSTSGetSessionTokenResponse = interface(AWSModel)
    ['{EE2F18FE-4419-4EB1-B284-FD9CACF1D55C}']
    procedure setCredentials(credentials: AWSSTSCredentials); cdecl;
    function credentials: AWSSTSCredentials; cdecl;
  end;

  TAWSSTSGetSessionTokenResponse = class
    (TOCGenericImport<AWSSTSGetSessionTokenResponseClass,
    AWSSTSGetSessionTokenResponse>)
  end;

  PAWSSTSGetSessionTokenResponse = Pointer;

  AWSSTSResourcesClass = interface(NSObjectClass)
    ['{DC9B73E4-554A-4B2F-AC11-9A3652C16304}']
    { class } function sharedInstance: Pointer { instancetype }; cdecl;
  end;

  AWSSTSResources = interface(NSObject)
    ['{C1E85CF6-A860-4ECC-803A-05B302A0411A}']
    function JSONObject: NSDictionary; cdecl;
  end;

  TAWSSTSResources = class(TOCGenericImport<AWSSTSResourcesClass,
    AWSSTSResources>)
  end;

  PAWSSTSResources = Pointer;

  AWSSTSClass = interface(AWSServiceClass)
    ['{D6E7259F-02E2-49AA-8DEF-8E96DEBD6FF7}']
    { class } function defaultSTS: Pointer { instancetype }; cdecl;
    { class } procedure registerSTSWithConfiguration(configuration
      : AWSServiceConfiguration; forKey: NSString); cdecl;
    { class } function STSForKey(key: NSString)
      : Pointer { instancetype }; cdecl;
    { class } procedure removeSTSForKey(key: NSString); cdecl;
  end;

  AWSSTS = interface(AWSService)
    ['{7CA3B184-1AB5-43EE-B565-FFBE89FE87B6}']
    function configuration: AWSServiceConfiguration; cdecl;
    [MethodName('assumeRole:')]
    function assumeRole(request: AWSSTSAssumeRoleRequest): AWSTask; cdecl;
    [MethodName('assumeRole:completionHandler:')]
    procedure assumeRoleCompletionHandler(request: AWSSTSAssumeRoleRequest;
      completionHandler: TAWSCoreCompletionHandler); cdecl;
    [MethodName('assumeRoleWithSAML:')]
    function assumeRoleWithSAML(request: AWSSTSAssumeRoleWithSAMLRequest)
      : AWSTask; cdecl;
    [MethodName('assumeRoleWithSAML:completionHandler:')]
    procedure assumeRoleWithSAMLCompletionHandler
      (request: AWSSTSAssumeRoleWithSAMLRequest;
      completionHandler: TAWSCoreCompletionHandler1); cdecl;
    [MethodName('assumeRoleWithWebIdentity:')]
    function assumeRoleWithWebIdentity
      (request: AWSSTSAssumeRoleWithWebIdentityRequest): AWSTask; cdecl;
    [MethodName('assumeRoleWithWebIdentity:completionHandler:')]
    procedure assumeRoleWithWebIdentityCompletionHandler
      (request: AWSSTSAssumeRoleWithWebIdentityRequest;
      completionHandler: TAWSCoreCompletionHandler2); cdecl;
    [MethodName('decodeAuthorizationMessage:')]
    function decodeAuthorizationMessage
      (request: AWSSTSDecodeAuthorizationMessageRequest): AWSTask; cdecl;
    [MethodName('decodeAuthorizationMessage:completionHandler:')]
    procedure decodeAuthorizationMessageCompletionHandler
      (request: AWSSTSDecodeAuthorizationMessageRequest;
      completionHandler: TAWSCoreCompletionHandler3); cdecl;
    [MethodName('getCallerIdentity:')]
    function getCallerIdentity(request: AWSSTSGetCallerIdentityRequest)
      : AWSTask; cdecl;
    [MethodName('getCallerIdentity:completionHandler:')]
    procedure getCallerIdentityCompletionHandler
      (request: AWSSTSGetCallerIdentityRequest;
      completionHandler: TAWSCoreCompletionHandler4); cdecl;
    [MethodName('getFederationToken:')]
    function getFederationToken(request: AWSSTSGetFederationTokenRequest)
      : AWSTask; cdecl;
    [MethodName('getFederationToken:completionHandler:')]
    procedure getFederationTokenCompletionHandler
      (request: AWSSTSGetFederationTokenRequest;
      completionHandler: TAWSCoreCompletionHandler5); cdecl;
    [MethodName('getSessionToken:')]
    function getSessionToken(request: AWSSTSGetSessionTokenRequest)
      : AWSTask; cdecl;
    [MethodName('getSessionToken:completionHandler:')]
    procedure getSessionTokenCompletionHandler
      (request: AWSSTSGetSessionTokenRequest;
      completionHandler: TAWSCoreCompletionHandler6); cdecl;
  end;

  TAWSSTS = class(TOCGenericImport<AWSSTSClass, AWSSTS>)
  end;

  PAWSSTS = Pointer;

  AWSCognitoIdentityCognitoIdentityProviderClass = interface(AWSModelClass)
    ['{0A14D185-ACA6-499C-8128-A7C6F9A3B9E5}']
  end;

  AWSCognitoIdentityCognitoIdentityProvider = interface(AWSModel)
    ['{2DD7FA22-6654-4337-8E99-1A54AE45A79C}']
    procedure setClientId(clientId: NSString); cdecl;
    function clientId: NSString; cdecl;
    procedure setProviderName(providerName: NSString); cdecl;
    function providerName: NSString; cdecl;
  end;

  TAWSCognitoIdentityCognitoIdentityProvider = class
    (TOCGenericImport<AWSCognitoIdentityCognitoIdentityProviderClass,
    AWSCognitoIdentityCognitoIdentityProvider>)
  end;

  PAWSCognitoIdentityCognitoIdentityProvider = Pointer;

  AWSCognitoIdentityCreateIdentityPoolInputClass = interface(AWSRequestClass)
    ['{B79EB250-C7C6-4A22-A4A7-1550E92BA3C8}']
  end;

  AWSCognitoIdentityCreateIdentityPoolInput = interface(AWSRequest)
    ['{5EE1E980-9240-432C-AFD6-63D67DB5D2CE}']
    procedure setAllowUnauthenticatedIdentities(allowUnauthenticatedIdentities
      : NSNumber); cdecl;
    function allowUnauthenticatedIdentities: NSNumber; cdecl;
    procedure setCognitoIdentityProviders(cognitoIdentityProviders
      : NSArray); cdecl;
    function cognitoIdentityProviders: NSArray; cdecl;
    procedure setDeveloperProviderName(developerProviderName: NSString); cdecl;
    function developerProviderName: NSString; cdecl;
    procedure setIdentityPoolName(identityPoolName: NSString); cdecl;
    function identityPoolName: NSString; cdecl;
    procedure setOpenIdConnectProviderARNs(openIdConnectProviderARNs
      : NSArray); cdecl;
    function openIdConnectProviderARNs: NSArray; cdecl;
    procedure setSamlProviderARNs(samlProviderARNs: NSArray); cdecl;
    function samlProviderARNs: NSArray; cdecl;
    procedure setSupportedLoginProviders(supportedLoginProviders
      : NSDictionary); cdecl;
    function supportedLoginProviders: NSDictionary; cdecl;
  end;

  TAWSCognitoIdentityCreateIdentityPoolInput = class
    (TOCGenericImport<AWSCognitoIdentityCreateIdentityPoolInputClass,
    AWSCognitoIdentityCreateIdentityPoolInput>)
  end;

  PAWSCognitoIdentityCreateIdentityPoolInput = Pointer;

  AWSCognitoIdentityCredentialsClass = interface(AWSModelClass)
    ['{DF0E4BFB-03C1-4034-BCE2-35AE72548CB1}']
  end;

  AWSCognitoIdentityCredentials = interface(AWSModel)
    ['{2C0DD055-7837-471A-BA01-F9A0DD583B5C}']
    procedure setAccessKeyId(accessKeyId: NSString); cdecl;
    function accessKeyId: NSString; cdecl;
    procedure setExpiration(expiration: NSDate); cdecl;
    function expiration: NSDate; cdecl;
    procedure setSecretKey(secretKey: NSString); cdecl;
    function secretKey: NSString; cdecl;
    procedure setSessionToken(sessionToken: NSString); cdecl;
    function sessionToken: NSString; cdecl;
  end;

  TAWSCognitoIdentityCredentials = class
    (TOCGenericImport<AWSCognitoIdentityCredentialsClass,
    AWSCognitoIdentityCredentials>)
  end;

  PAWSCognitoIdentityCredentials = Pointer;

  AWSCognitoIdentityDeleteIdentitiesInputClass = interface(AWSRequestClass)
    ['{A05B7923-3C7B-4880-80E2-E50EB6864EFC}']
  end;

  AWSCognitoIdentityDeleteIdentitiesInput = interface(AWSRequest)
    ['{AED28679-CAF6-4D58-BC31-14A479357EDF}']
    procedure setIdentityIdsToDelete(identityIdsToDelete: NSArray); cdecl;
    function identityIdsToDelete: NSArray; cdecl;
  end;

  TAWSCognitoIdentityDeleteIdentitiesInput = class
    (TOCGenericImport<AWSCognitoIdentityDeleteIdentitiesInputClass,
    AWSCognitoIdentityDeleteIdentitiesInput>)
  end;

  PAWSCognitoIdentityDeleteIdentitiesInput = Pointer;

  AWSCognitoIdentityDeleteIdentitiesResponseClass = interface(AWSModelClass)
    ['{A519AD71-935E-4C7B-99C4-30FF3EA94B0E}']
  end;

  AWSCognitoIdentityDeleteIdentitiesResponse = interface(AWSModel)
    ['{64F90F93-2154-45B9-B606-BC6CA5C3FBA6}']
    procedure setUnprocessedIdentityIds(unprocessedIdentityIds: NSArray); cdecl;
    function unprocessedIdentityIds: NSArray; cdecl;
  end;

  TAWSCognitoIdentityDeleteIdentitiesResponse = class
    (TOCGenericImport<AWSCognitoIdentityDeleteIdentitiesResponseClass,
    AWSCognitoIdentityDeleteIdentitiesResponse>)
  end;

  PAWSCognitoIdentityDeleteIdentitiesResponse = Pointer;

  AWSCognitoIdentityDeleteIdentityPoolInputClass = interface(AWSRequestClass)
    ['{7A2079E4-C3A5-4428-9BD7-1D8E56DC3507}']
  end;

  AWSCognitoIdentityDeleteIdentityPoolInput = interface(AWSRequest)
    ['{6C137B61-0B54-4B6E-A666-15B2C25D4CE3}']
    procedure setIdentityPoolId(identityPoolId: NSString); cdecl;
    function identityPoolId: NSString; cdecl;
  end;

  TAWSCognitoIdentityDeleteIdentityPoolInput = class
    (TOCGenericImport<AWSCognitoIdentityDeleteIdentityPoolInputClass,
    AWSCognitoIdentityDeleteIdentityPoolInput>)
  end;

  PAWSCognitoIdentityDeleteIdentityPoolInput = Pointer;

  AWSCognitoIdentityDescribeIdentityInputClass = interface(AWSRequestClass)
    ['{0A5DC83C-2C8C-423A-B3E8-0EC92B007052}']
  end;

  AWSCognitoIdentityDescribeIdentityInput = interface(AWSRequest)
    ['{BEDB2D4B-2CC2-45E4-A260-F61CBE4CA8EB}']
    procedure setIdentityId(identityId: NSString); cdecl;
    function identityId: NSString; cdecl;
  end;

  TAWSCognitoIdentityDescribeIdentityInput = class
    (TOCGenericImport<AWSCognitoIdentityDescribeIdentityInputClass,
    AWSCognitoIdentityDescribeIdentityInput>)
  end;

  PAWSCognitoIdentityDescribeIdentityInput = Pointer;

  AWSCognitoIdentityDescribeIdentityPoolInputClass = interface(AWSRequestClass)
    ['{E7BAC201-7F57-442F-8821-652F826D1792}']
  end;

  AWSCognitoIdentityDescribeIdentityPoolInput = interface(AWSRequest)
    ['{BD2848B0-1A0A-4990-B664-BF9C32518EE3}']
    procedure setIdentityPoolId(identityPoolId: NSString); cdecl;
    function identityPoolId: NSString; cdecl;
  end;

  TAWSCognitoIdentityDescribeIdentityPoolInput = class
    (TOCGenericImport<AWSCognitoIdentityDescribeIdentityPoolInputClass,
    AWSCognitoIdentityDescribeIdentityPoolInput>)
  end;

  PAWSCognitoIdentityDescribeIdentityPoolInput = Pointer;

  AWSCognitoIdentityGetCredentialsForIdentityInputClass = interface
    (AWSRequestClass)
    ['{0BD42299-AF2F-44D3-98B7-C143EFAB8EA6}']
  end;

  AWSCognitoIdentityGetCredentialsForIdentityInput = interface(AWSRequest)
    ['{FB62021D-F0B8-4868-B350-4BA8067B14A9}']
    procedure setCustomRoleArn(customRoleArn: NSString); cdecl;
    function customRoleArn: NSString; cdecl;
    procedure setIdentityId(identityId: NSString); cdecl;
    function identityId: NSString; cdecl;
    procedure setLogins(logins: NSDictionary); cdecl;
    function logins: NSDictionary; cdecl;
  end;

  TAWSCognitoIdentityGetCredentialsForIdentityInput = class
    (TOCGenericImport<AWSCognitoIdentityGetCredentialsForIdentityInputClass,
    AWSCognitoIdentityGetCredentialsForIdentityInput>)
  end;

  PAWSCognitoIdentityGetCredentialsForIdentityInput = Pointer;

  AWSCognitoIdentityGetCredentialsForIdentityResponseClass = interface
    (AWSModelClass)
    ['{FE18A25B-E789-4E03-A689-F1042FDEDD98}']
  end;

  AWSCognitoIdentityGetCredentialsForIdentityResponse = interface(AWSModel)
    ['{58DC4708-5544-4C46-935E-301510E3C835}']
    procedure setCredentials(credentials: AWSCognitoIdentityCredentials); cdecl;
    function credentials: AWSCognitoIdentityCredentials; cdecl;
    procedure setIdentityId(identityId: NSString); cdecl;
    function identityId: NSString; cdecl;
  end;

  TAWSCognitoIdentityGetCredentialsForIdentityResponse = class
    (TOCGenericImport<AWSCognitoIdentityGetCredentialsForIdentityResponseClass,
    AWSCognitoIdentityGetCredentialsForIdentityResponse>)
  end;

  PAWSCognitoIdentityGetCredentialsForIdentityResponse = Pointer;

  AWSCognitoIdentityGetIdInputClass = interface(AWSRequestClass)
    ['{ECB36D45-CF27-4254-BC93-94B727C103E7}']
  end;

  AWSCognitoIdentityGetIdInput = interface(AWSRequest)
    ['{99CD4292-5DCC-41D1-BFE0-F03ED4AE7373}']
    procedure setAccountId(accountId: NSString); cdecl;
    function accountId: NSString; cdecl;
    procedure setIdentityPoolId(identityPoolId: NSString); cdecl;
    function identityPoolId: NSString; cdecl;
    procedure setLogins(logins: NSDictionary); cdecl;
    function logins: NSDictionary; cdecl;
  end;

  TAWSCognitoIdentityGetIdInput = class
    (TOCGenericImport<AWSCognitoIdentityGetIdInputClass,
    AWSCognitoIdentityGetIdInput>)
  end;

  PAWSCognitoIdentityGetIdInput = Pointer;

  AWSCognitoIdentityGetIdResponseClass = interface(AWSModelClass)
    ['{5936253E-2F21-4BF4-9006-7D18CEF80F53}']
  end;

  AWSCognitoIdentityGetIdResponse = interface(AWSModel)
    ['{F6D92AA4-39DE-478A-8227-AF51CC912F13}']
    procedure setIdentityId(identityId: NSString); cdecl;
    function identityId: NSString; cdecl;
  end;

  TAWSCognitoIdentityGetIdResponse = class
    (TOCGenericImport<AWSCognitoIdentityGetIdResponseClass,
    AWSCognitoIdentityGetIdResponse>)
  end;

  PAWSCognitoIdentityGetIdResponse = Pointer;

  AWSCognitoIdentityGetIdentityPoolRolesInputClass = interface(AWSRequestClass)
    ['{84BB5BD4-494A-4506-86FC-EB26BC4C8B9F}']
  end;

  AWSCognitoIdentityGetIdentityPoolRolesInput = interface(AWSRequest)
    ['{1B975F34-8B35-4268-AC74-22B461D78CB4}']
    procedure setIdentityPoolId(identityPoolId: NSString); cdecl;
    function identityPoolId: NSString; cdecl;
  end;

  TAWSCognitoIdentityGetIdentityPoolRolesInput = class
    (TOCGenericImport<AWSCognitoIdentityGetIdentityPoolRolesInputClass,
    AWSCognitoIdentityGetIdentityPoolRolesInput>)
  end;

  PAWSCognitoIdentityGetIdentityPoolRolesInput = Pointer;

  AWSCognitoIdentityGetIdentityPoolRolesResponseClass = interface(AWSModelClass)
    ['{231D5213-EBC5-47A5-8BCD-B65FD28A79EB}']
  end;

  AWSCognitoIdentityGetIdentityPoolRolesResponse = interface(AWSModel)
    ['{F31CF35E-83FE-4412-BDC3-3223E35F40A6}']
    procedure setIdentityPoolId(identityPoolId: NSString); cdecl;
    function identityPoolId: NSString; cdecl;
    procedure setRoles(roles: NSDictionary); cdecl;
    function roles: NSDictionary; cdecl;
  end;

  TAWSCognitoIdentityGetIdentityPoolRolesResponse = class
    (TOCGenericImport<AWSCognitoIdentityGetIdentityPoolRolesResponseClass,
    AWSCognitoIdentityGetIdentityPoolRolesResponse>)
  end;

  PAWSCognitoIdentityGetIdentityPoolRolesResponse = Pointer;

  AWSCognitoIdentityGetOpenIdTokenForDeveloperIdentityInputClass = interface
    (AWSRequestClass)
    ['{A53C9235-8D23-4054-922F-28A1F5199DE8}']
  end;

  AWSCognitoIdentityGetOpenIdTokenForDeveloperIdentityInput = interface
    (AWSRequest)
    ['{0742B511-A3D2-4E74-BE5D-DD8A0937AFEE}']
    procedure setIdentityId(identityId: NSString); cdecl;
    function identityId: NSString; cdecl;
    procedure setIdentityPoolId(identityPoolId: NSString); cdecl;
    function identityPoolId: NSString; cdecl;
    procedure setLogins(logins: NSDictionary); cdecl;
    function logins: NSDictionary; cdecl;
    procedure setTokenDuration(tokenDuration: NSNumber); cdecl;
    function tokenDuration: NSNumber; cdecl;
  end;

  TAWSCognitoIdentityGetOpenIdTokenForDeveloperIdentityInput = class
    (TOCGenericImport<
    AWSCognitoIdentityGetOpenIdTokenForDeveloperIdentityInputClass,
    AWSCognitoIdentityGetOpenIdTokenForDeveloperIdentityInput>)
  end;

  PAWSCognitoIdentityGetOpenIdTokenForDeveloperIdentityInput = Pointer;

  AWSCognitoIdentityGetOpenIdTokenForDeveloperIdentityResponseClass = interface
    (AWSModelClass)
    ['{9BADFC0D-C928-406D-A8A7-B9142F2F471E}']
  end;

  AWSCognitoIdentityGetOpenIdTokenForDeveloperIdentityResponse =
    interface(AWSModel)
    ['{2AE7D821-BEBE-44D9-8550-A0342AD88EA3}']
    procedure setIdentityId(identityId: NSString); cdecl;
    function identityId: NSString; cdecl;
    procedure setToken(token: NSString); cdecl;
    function token: NSString; cdecl;
  end;

  TAWSCognitoIdentityGetOpenIdTokenForDeveloperIdentityResponse = class
    (TOCGenericImport<
    AWSCognitoIdentityGetOpenIdTokenForDeveloperIdentityResponseClass,
    AWSCognitoIdentityGetOpenIdTokenForDeveloperIdentityResponse>)
  end;

  PAWSCognitoIdentityGetOpenIdTokenForDeveloperIdentityResponse = Pointer;

  AWSCognitoIdentityGetOpenIdTokenInputClass = interface(AWSRequestClass)
    ['{4AAF943A-B58A-4DBF-B789-3516B5613C58}']
  end;

  AWSCognitoIdentityGetOpenIdTokenInput = interface(AWSRequest)
    ['{9A1028D3-3296-4AB0-88B2-28E75A293915}']
    procedure setIdentityId(identityId: NSString); cdecl;
    function identityId: NSString; cdecl;
    procedure setLogins(logins: NSDictionary); cdecl;
    function logins: NSDictionary; cdecl;
  end;

  TAWSCognitoIdentityGetOpenIdTokenInput = class
    (TOCGenericImport<AWSCognitoIdentityGetOpenIdTokenInputClass,
    AWSCognitoIdentityGetOpenIdTokenInput>)
  end;

  PAWSCognitoIdentityGetOpenIdTokenInput = Pointer;

  AWSCognitoIdentityGetOpenIdTokenResponseClass = interface(AWSModelClass)
    ['{F70267B0-3126-4B71-AFAE-75071F58075C}']
  end;

  AWSCognitoIdentityGetOpenIdTokenResponse = interface(AWSModel)
    ['{EFE09D69-BE2F-4307-9172-63CCEA665E68}']
    procedure setIdentityId(identityId: NSString); cdecl;
    function identityId: NSString; cdecl;
    procedure setToken(token: NSString); cdecl;
    function token: NSString; cdecl;
  end;

  TAWSCognitoIdentityGetOpenIdTokenResponse = class
    (TOCGenericImport<AWSCognitoIdentityGetOpenIdTokenResponseClass,
    AWSCognitoIdentityGetOpenIdTokenResponse>)
  end;

  PAWSCognitoIdentityGetOpenIdTokenResponse = Pointer;

  AWSCognitoIdentityIdentityDescriptionClass = interface(AWSModelClass)
    ['{33207489-EA91-40D6-AAC2-437FD99641E1}']
  end;

  AWSCognitoIdentityIdentityDescription = interface(AWSModel)
    ['{7A028B49-00FF-4249-B200-1BEA04C54EC8}']
    procedure setCreationDate(creationDate: NSDate); cdecl;
    function creationDate: NSDate; cdecl;
    procedure setIdentityId(identityId: NSString); cdecl;
    function identityId: NSString; cdecl;
    procedure setLastModifiedDate(lastModifiedDate: NSDate); cdecl;
    function lastModifiedDate: NSDate; cdecl;
    procedure setLogins(logins: NSArray); cdecl;
    function logins: NSArray; cdecl;
  end;

  TAWSCognitoIdentityIdentityDescription = class
    (TOCGenericImport<AWSCognitoIdentityIdentityDescriptionClass,
    AWSCognitoIdentityIdentityDescription>)
  end;

  PAWSCognitoIdentityIdentityDescription = Pointer;

  AWSCognitoIdentityIdentityPoolClass = interface(AWSRequestClass)
    ['{C3AD5013-82A8-404F-8806-9A1719F8D367}']
  end;

  AWSCognitoIdentityIdentityPool = interface(AWSRequest)
    ['{6F9B20FB-4746-4E83-A376-DC26FAA4DE2A}']
    procedure setAllowUnauthenticatedIdentities(allowUnauthenticatedIdentities
      : NSNumber); cdecl;
    function allowUnauthenticatedIdentities: NSNumber; cdecl;
    procedure setCognitoIdentityProviders(cognitoIdentityProviders
      : NSArray); cdecl;
    function cognitoIdentityProviders: NSArray; cdecl;
    procedure setDeveloperProviderName(developerProviderName: NSString); cdecl;
    function developerProviderName: NSString; cdecl;
    procedure setIdentityPoolId(identityPoolId: NSString); cdecl;
    function identityPoolId: NSString; cdecl;
    procedure setIdentityPoolName(identityPoolName: NSString); cdecl;
    function identityPoolName: NSString; cdecl;
    procedure setOpenIdConnectProviderARNs(openIdConnectProviderARNs
      : NSArray); cdecl;
    function openIdConnectProviderARNs: NSArray; cdecl;
    procedure setSamlProviderARNs(samlProviderARNs: NSArray); cdecl;
    function samlProviderARNs: NSArray; cdecl;
    procedure setSupportedLoginProviders(supportedLoginProviders
      : NSDictionary); cdecl;
    function supportedLoginProviders: NSDictionary; cdecl;
  end;

  TAWSCognitoIdentityIdentityPool = class
    (TOCGenericImport<AWSCognitoIdentityIdentityPoolClass,
    AWSCognitoIdentityIdentityPool>)
  end;

  PAWSCognitoIdentityIdentityPool = Pointer;

  AWSCognitoIdentityIdentityPoolShortDescriptionClass = interface(AWSModelClass)
    ['{8EA1DEDC-E517-4FE4-B15A-EAE35FE8E04D}']
  end;

  AWSCognitoIdentityIdentityPoolShortDescription = interface(AWSModel)
    ['{00E8EC34-B9F1-4E86-87F5-F6A7FF5802DE}']
    procedure setIdentityPoolId(identityPoolId: NSString); cdecl;
    function identityPoolId: NSString; cdecl;
    procedure setIdentityPoolName(identityPoolName: NSString); cdecl;
    function identityPoolName: NSString; cdecl;
  end;

  TAWSCognitoIdentityIdentityPoolShortDescription = class
    (TOCGenericImport<AWSCognitoIdentityIdentityPoolShortDescriptionClass,
    AWSCognitoIdentityIdentityPoolShortDescription>)
  end;

  PAWSCognitoIdentityIdentityPoolShortDescription = Pointer;

  AWSCognitoIdentityListIdentitiesInputClass = interface(AWSRequestClass)
    ['{C56887DF-FB4C-409F-BE29-1D9F23110A07}']
  end;

  AWSCognitoIdentityListIdentitiesInput = interface(AWSRequest)
    ['{BBF68606-457E-4982-AF9A-1152F526380A}']
    procedure setHideDisabled(hideDisabled: NSNumber); cdecl;
    function hideDisabled: NSNumber; cdecl;
    procedure setIdentityPoolId(identityPoolId: NSString); cdecl;
    function identityPoolId: NSString; cdecl;
    procedure setMaxResults(maxResults: NSNumber); cdecl;
    function maxResults: NSNumber; cdecl;
    procedure setNextToken(nextToken: NSString); cdecl;
    function nextToken: NSString; cdecl;
  end;

  TAWSCognitoIdentityListIdentitiesInput = class
    (TOCGenericImport<AWSCognitoIdentityListIdentitiesInputClass,
    AWSCognitoIdentityListIdentitiesInput>)
  end;

  PAWSCognitoIdentityListIdentitiesInput = Pointer;

  AWSCognitoIdentityListIdentitiesResponseClass = interface(AWSModelClass)
    ['{5D4E21AC-6FB8-45C2-BF90-73D58310FF99}']
  end;

  AWSCognitoIdentityListIdentitiesResponse = interface(AWSModel)
    ['{9DCFEC70-524B-4517-9E0A-7FF5CF274BC6}']
    procedure setIdentities(identities: NSArray); cdecl;
    function identities: NSArray; cdecl;
    procedure setIdentityPoolId(identityPoolId: NSString); cdecl;
    function identityPoolId: NSString; cdecl;
    procedure setNextToken(nextToken: NSString); cdecl;
    function nextToken: NSString; cdecl;
  end;

  TAWSCognitoIdentityListIdentitiesResponse = class
    (TOCGenericImport<AWSCognitoIdentityListIdentitiesResponseClass,
    AWSCognitoIdentityListIdentitiesResponse>)
  end;

  PAWSCognitoIdentityListIdentitiesResponse = Pointer;

  AWSCognitoIdentityListIdentityPoolsInputClass = interface(AWSRequestClass)
    ['{52378C56-1661-4545-A6C7-F6BFDF561495}']
  end;

  AWSCognitoIdentityListIdentityPoolsInput = interface(AWSRequest)
    ['{0B369625-BC43-402F-8DA7-225B6DAAB451}']
    procedure setMaxResults(maxResults: NSNumber); cdecl;
    function maxResults: NSNumber; cdecl;
    procedure setNextToken(nextToken: NSString); cdecl;
    function nextToken: NSString; cdecl;
  end;

  TAWSCognitoIdentityListIdentityPoolsInput = class
    (TOCGenericImport<AWSCognitoIdentityListIdentityPoolsInputClass,
    AWSCognitoIdentityListIdentityPoolsInput>)
  end;

  PAWSCognitoIdentityListIdentityPoolsInput = Pointer;

  AWSCognitoIdentityListIdentityPoolsResponseClass = interface(AWSModelClass)
    ['{00413C07-7FAD-4FD3-95C7-B299A277466D}']
  end;

  AWSCognitoIdentityListIdentityPoolsResponse = interface(AWSModel)
    ['{AE37B066-BE86-4A3A-BE7E-3B3213101997}']
    procedure setIdentityPools(identityPools: NSArray); cdecl;
    function identityPools: NSArray; cdecl;
    procedure setNextToken(nextToken: NSString); cdecl;
    function nextToken: NSString; cdecl;
  end;

  TAWSCognitoIdentityListIdentityPoolsResponse = class
    (TOCGenericImport<AWSCognitoIdentityListIdentityPoolsResponseClass,
    AWSCognitoIdentityListIdentityPoolsResponse>)
  end;

  PAWSCognitoIdentityListIdentityPoolsResponse = Pointer;

  AWSCognitoIdentityLookupDeveloperIdentityInputClass = interface
    (AWSRequestClass)
    ['{FECF5EA3-1160-48A7-B4BF-6790D1B163E3}']
  end;

  AWSCognitoIdentityLookupDeveloperIdentityInput = interface(AWSRequest)
    ['{E75E8405-5D2C-412B-AB41-0AB2B7974D67}']
    procedure setDeveloperUserIdentifier(developerUserIdentifier
      : NSString); cdecl;
    function developerUserIdentifier: NSString; cdecl;
    procedure setIdentityId(identityId: NSString); cdecl;
    function identityId: NSString; cdecl;
    procedure setIdentityPoolId(identityPoolId: NSString); cdecl;
    function identityPoolId: NSString; cdecl;
    procedure setMaxResults(maxResults: NSNumber); cdecl;
    function maxResults: NSNumber; cdecl;
    procedure setNextToken(nextToken: NSString); cdecl;
    function nextToken: NSString; cdecl;
  end;

  TAWSCognitoIdentityLookupDeveloperIdentityInput = class
    (TOCGenericImport<AWSCognitoIdentityLookupDeveloperIdentityInputClass,
    AWSCognitoIdentityLookupDeveloperIdentityInput>)
  end;

  PAWSCognitoIdentityLookupDeveloperIdentityInput = Pointer;

  AWSCognitoIdentityLookupDeveloperIdentityResponseClass = interface
    (AWSModelClass)
    ['{60062A59-B22A-4CDD-8FD8-2A24B77020CC}']
  end;

  AWSCognitoIdentityLookupDeveloperIdentityResponse = interface(AWSModel)
    ['{18FDEF3E-2D89-4A71-981B-BEF8BEF594D1}']
    procedure setDeveloperUserIdentifierList(developerUserIdentifierList
      : NSArray); cdecl;
    function developerUserIdentifierList: NSArray; cdecl;
    procedure setIdentityId(identityId: NSString); cdecl;
    function identityId: NSString; cdecl;
    procedure setNextToken(nextToken: NSString); cdecl;
    function nextToken: NSString; cdecl;
  end;

  TAWSCognitoIdentityLookupDeveloperIdentityResponse = class
    (TOCGenericImport<AWSCognitoIdentityLookupDeveloperIdentityResponseClass,
    AWSCognitoIdentityLookupDeveloperIdentityResponse>)
  end;

  PAWSCognitoIdentityLookupDeveloperIdentityResponse = Pointer;

  AWSCognitoIdentityMergeDeveloperIdentitiesInputClass = interface
    (AWSRequestClass)
    ['{BA35E3E0-604E-469D-B981-7DF776BC12B6}']
  end;

  AWSCognitoIdentityMergeDeveloperIdentitiesInput = interface(AWSRequest)
    ['{B443CF0C-BB7B-45C0-9CAF-D50F67B9F290}']
    procedure setDestinationUserIdentifier(destinationUserIdentifier
      : NSString); cdecl;
    function destinationUserIdentifier: NSString; cdecl;
    procedure setDeveloperProviderName(developerProviderName: NSString); cdecl;
    function developerProviderName: NSString; cdecl;
    procedure setIdentityPoolId(identityPoolId: NSString); cdecl;
    function identityPoolId: NSString; cdecl;
    procedure setSourceUserIdentifier(sourceUserIdentifier: NSString); cdecl;
    function sourceUserIdentifier: NSString; cdecl;
  end;

  TAWSCognitoIdentityMergeDeveloperIdentitiesInput = class
    (TOCGenericImport<AWSCognitoIdentityMergeDeveloperIdentitiesInputClass,
    AWSCognitoIdentityMergeDeveloperIdentitiesInput>)
  end;

  PAWSCognitoIdentityMergeDeveloperIdentitiesInput = Pointer;

  AWSCognitoIdentityMergeDeveloperIdentitiesResponseClass = interface
    (AWSModelClass)
    ['{5824D84A-7BF6-4E2A-BD4A-7F41A4E791B0}']
  end;

  AWSCognitoIdentityMergeDeveloperIdentitiesResponse = interface(AWSModel)
    ['{C6FDC494-A48A-4EF9-B305-5CC43A3A00ED}']
    procedure setIdentityId(identityId: NSString); cdecl;
    function identityId: NSString; cdecl;
  end;

  TAWSCognitoIdentityMergeDeveloperIdentitiesResponse = class
    (TOCGenericImport<AWSCognitoIdentityMergeDeveloperIdentitiesResponseClass,
    AWSCognitoIdentityMergeDeveloperIdentitiesResponse>)
  end;

  PAWSCognitoIdentityMergeDeveloperIdentitiesResponse = Pointer;

  AWSCognitoIdentitySetIdentityPoolRolesInputClass = interface(AWSRequestClass)
    ['{F93B606D-D598-495B-9F27-C6E5FEAE7C9C}']
  end;

  AWSCognitoIdentitySetIdentityPoolRolesInput = interface(AWSRequest)
    ['{D54BCA10-57CD-4311-92EA-0B974AFB8335}']
    procedure setIdentityPoolId(identityPoolId: NSString); cdecl;
    function identityPoolId: NSString; cdecl;
    procedure setRoles(roles: NSDictionary); cdecl;
    function roles: NSDictionary; cdecl;
  end;

  TAWSCognitoIdentitySetIdentityPoolRolesInput = class
    (TOCGenericImport<AWSCognitoIdentitySetIdentityPoolRolesInputClass,
    AWSCognitoIdentitySetIdentityPoolRolesInput>)
  end;

  PAWSCognitoIdentitySetIdentityPoolRolesInput = Pointer;

  AWSCognitoIdentityUnlinkDeveloperIdentityInputClass = interface
    (AWSRequestClass)
    ['{2A241D31-08FA-46DC-A96D-CF02E3725687}']
  end;

  AWSCognitoIdentityUnlinkDeveloperIdentityInput = interface(AWSRequest)
    ['{CA6CC203-1546-4B7B-AF83-EA029AACADAB}']
    procedure setDeveloperProviderName(developerProviderName: NSString); cdecl;
    function developerProviderName: NSString; cdecl;
    procedure setDeveloperUserIdentifier(developerUserIdentifier
      : NSString); cdecl;
    function developerUserIdentifier: NSString; cdecl;
    procedure setIdentityId(identityId: NSString); cdecl;
    function identityId: NSString; cdecl;
    procedure setIdentityPoolId(identityPoolId: NSString); cdecl;
    function identityPoolId: NSString; cdecl;
  end;

  TAWSCognitoIdentityUnlinkDeveloperIdentityInput = class
    (TOCGenericImport<AWSCognitoIdentityUnlinkDeveloperIdentityInputClass,
    AWSCognitoIdentityUnlinkDeveloperIdentityInput>)
  end;

  PAWSCognitoIdentityUnlinkDeveloperIdentityInput = Pointer;

  AWSCognitoIdentityUnlinkIdentityInputClass = interface(AWSRequestClass)
    ['{28DCD973-084F-49AB-BC1A-EFD21E2E4EA5}']
  end;

  AWSCognitoIdentityUnlinkIdentityInput = interface(AWSRequest)
    ['{4FDD77BC-A68F-4CFB-A139-580FDE89D945}']
    procedure setIdentityId(identityId: NSString); cdecl;
    function identityId: NSString; cdecl;
    procedure setLogins(logins: NSDictionary); cdecl;
    function logins: NSDictionary; cdecl;
    procedure setLoginsToRemove(loginsToRemove: NSArray); cdecl;
    function loginsToRemove: NSArray; cdecl;
  end;

  TAWSCognitoIdentityUnlinkIdentityInput = class
    (TOCGenericImport<AWSCognitoIdentityUnlinkIdentityInputClass,
    AWSCognitoIdentityUnlinkIdentityInput>)
  end;

  PAWSCognitoIdentityUnlinkIdentityInput = Pointer;

  AWSCognitoIdentityUnprocessedIdentityIdClass = interface(AWSModelClass)
    ['{7B10C2BE-3C0F-4851-8980-5665911650C4}']
  end;

  AWSCognitoIdentityUnprocessedIdentityId = interface(AWSModel)
    ['{E5BF6484-B54C-473C-9777-65E52BC364E2}']
    procedure setErrorCode(errorCode: AWSCognitoIdentityErrorCode); cdecl;
    function errorCode: AWSCognitoIdentityErrorCode; cdecl;
    procedure setIdentityId(identityId: NSString); cdecl;
    function identityId: NSString; cdecl;
  end;

  TAWSCognitoIdentityUnprocessedIdentityId = class
    (TOCGenericImport<AWSCognitoIdentityUnprocessedIdentityIdClass,
    AWSCognitoIdentityUnprocessedIdentityId>)
  end;

  PAWSCognitoIdentityUnprocessedIdentityId = Pointer;

  AWSCognitoIdentityResourcesClass = interface(NSObjectClass)
    ['{64E703B0-0B48-4A24-8FF4-E93F2EBD1EFF}']
    { class } function sharedInstance: Pointer { instancetype }; cdecl;
  end;

  AWSCognitoIdentityResources = interface(NSObject)
    ['{76BBA5EC-5BD9-4858-AD8C-7E286F38487A}']
    function JSONObject: NSDictionary; cdecl;
  end;

  TAWSCognitoIdentityResources = class
    (TOCGenericImport<AWSCognitoIdentityResourcesClass,
    AWSCognitoIdentityResources>)
  end;

  PAWSCognitoIdentityResources = Pointer;

  AWSCognitoIdentityClass = interface(AWSServiceClass)
    ['{DB6077A6-C68A-4C86-8A7D-F53974663233}']
    { class } function defaultCognitoIdentity: Pointer { instancetype }; cdecl;
    { class } procedure registerCognitoIdentityWithConfiguration
      (configuration: AWSServiceConfiguration; forKey: NSString); cdecl;
    { class } function CognitoIdentityForKey(key: NSString)
      : Pointer { instancetype }; cdecl;
    { class } procedure removeCognitoIdentityForKey(key: NSString); cdecl;
  end;

  AWSCognitoIdentity = interface(AWSService)
    ['{7781CE2E-79F5-4D83-9983-C0239C908889}']
    function configuration: AWSServiceConfiguration; cdecl;
    [MethodName('createIdentityPool:')]
    function createIdentityPool(request
      : AWSCognitoIdentityCreateIdentityPoolInput): AWSTask; cdecl;
    [MethodName('createIdentityPool:completionHandler:')]
    procedure createIdentityPoolCompletionHandler
      (request: AWSCognitoIdentityCreateIdentityPoolInput;
      completionHandler: TAWSCoreCompletionHandler7); cdecl;
    [MethodName('deleteIdentities:')]
    function deleteIdentities(request: AWSCognitoIdentityDeleteIdentitiesInput)
      : AWSTask; cdecl;
    [MethodName('deleteIdentities:completionHandler:')]
    procedure deleteIdentitiesCompletionHandler
      (request: AWSCognitoIdentityDeleteIdentitiesInput;
      completionHandler: TAWSCoreCompletionHandler8); cdecl;
    [MethodName('deleteIdentityPool:')]
    function deleteIdentityPool(request
      : AWSCognitoIdentityDeleteIdentityPoolInput): AWSTask; cdecl;
    [MethodName('deleteIdentityPool:completionHandler:')]
    procedure deleteIdentityPoolCompletionHandler
      (request: AWSCognitoIdentityDeleteIdentityPoolInput;
      completionHandler: TAWSCoreCompletion2); cdecl;
    [MethodName('describeIdentity:')]
    function describeIdentity(request: AWSCognitoIdentityDescribeIdentityInput)
      : AWSTask; cdecl;
    [MethodName('describeIdentity:completionHandler:')]
    procedure describeIdentityCompletionHandler
      (request: AWSCognitoIdentityDescribeIdentityInput;
      completionHandler: TAWSCoreCompletionHandler9); cdecl;
    [MethodName('describeIdentityPool:')]
    function describeIdentityPool
      (request: AWSCognitoIdentityDescribeIdentityPoolInput): AWSTask; cdecl;
    [MethodName('describeIdentityPool:completionHandler:')]
    procedure describeIdentityPoolCompletionHandler
      (request: AWSCognitoIdentityDescribeIdentityPoolInput;
      completionHandler: TAWSCoreCompletionHandler7); cdecl;
    [MethodName('getCredentialsForIdentity:')]
    function getCredentialsForIdentity
      (request: AWSCognitoIdentityGetCredentialsForIdentityInput)
      : AWSTask; cdecl;
    [MethodName('getCredentialsForIdentity:completionHandler:')]
    procedure getCredentialsForIdentityCompletionHandler
      (request: AWSCognitoIdentityGetCredentialsForIdentityInput;
      completionHandler: TAWSCoreCompletionHandler10); cdecl;
    [MethodName('getId:')]
    function getId(request: AWSCognitoIdentityGetIdInput): AWSTask; cdecl;
    [MethodName('getId:completionHandler:')]
    procedure getIdCompletionHandler(request: AWSCognitoIdentityGetIdInput;
      completionHandler: TAWSCoreCompletionHandler11); cdecl;
    [MethodName('getIdentityPoolRoles:')]
    function getIdentityPoolRoles
      (request: AWSCognitoIdentityGetIdentityPoolRolesInput): AWSTask; cdecl;
    [MethodName('getIdentityPoolRoles:completionHandler:')]
    procedure getIdentityPoolRolesCompletionHandler
      (request: AWSCognitoIdentityGetIdentityPoolRolesInput;
      completionHandler: TAWSCoreCompletionHandler12); cdecl;
    [MethodName('getOpenIdToken:')]
    function getOpenIdToken(request: AWSCognitoIdentityGetOpenIdTokenInput)
      : AWSTask; cdecl;
    [MethodName('getOpenIdToken:completionHandler:')]
    procedure getOpenIdTokenCompletionHandler
      (request: AWSCognitoIdentityGetOpenIdTokenInput;
      completionHandler: TAWSCoreCompletionHandler13); cdecl;
    [MethodName('getOpenIdTokenForDeveloperIdentity:')]
    function getOpenIdTokenForDeveloperIdentity
      (request: AWSCognitoIdentityGetOpenIdTokenForDeveloperIdentityInput)
      : AWSTask; cdecl;
    [MethodName('getOpenIdTokenForDeveloperIdentity:completionHandler:')]
    procedure getOpenIdTokenForDeveloperIdentityCompletionHandler
      (request: AWSCognitoIdentityGetOpenIdTokenForDeveloperIdentityInput;
      completionHandler: TAWSCoreCompletionHandler14); cdecl;
    [MethodName('listIdentities:')]
    function listIdentities(request: AWSCognitoIdentityListIdentitiesInput)
      : AWSTask; cdecl;
    [MethodName('listIdentities:completionHandler:')]
    procedure listIdentitiesCompletionHandler
      (request: AWSCognitoIdentityListIdentitiesInput;
      completionHandler: TAWSCoreCompletionHandler15); cdecl;
    [MethodName('listIdentityPools:')]
    function listIdentityPools(request
      : AWSCognitoIdentityListIdentityPoolsInput): AWSTask; cdecl;
    [MethodName('listIdentityPools:completionHandler:')]
    procedure listIdentityPoolsCompletionHandler
      (request: AWSCognitoIdentityListIdentityPoolsInput;
      completionHandler: TAWSCoreCompletionHandler16); cdecl;
    [MethodName('lookupDeveloperIdentity:')]
    function lookupDeveloperIdentity
      (request: AWSCognitoIdentityLookupDeveloperIdentityInput): AWSTask; cdecl;
    [MethodName('lookupDeveloperIdentity:completionHandler:')]
    procedure lookupDeveloperIdentityCompletionHandler
      (request: AWSCognitoIdentityLookupDeveloperIdentityInput;
      completionHandler: TAWSCoreCompletionHandler17); cdecl;
    [MethodName('mergeDeveloperIdentities:')]
    function mergeDeveloperIdentities
      (request: AWSCognitoIdentityMergeDeveloperIdentitiesInput)
      : AWSTask; cdecl;
    [MethodName('mergeDeveloperIdentities:completionHandler:')]
    procedure mergeDeveloperIdentitiesCompletionHandler
      (request: AWSCognitoIdentityMergeDeveloperIdentitiesInput;
      completionHandler: TAWSCoreCompletionHandler18); cdecl;
    [MethodName('setIdentityPoolRoles:')]
    function setIdentityPoolRoles
      (request: AWSCognitoIdentitySetIdentityPoolRolesInput): AWSTask; cdecl;
    [MethodName('setIdentityPoolRoles:completionHandler:')]
    procedure setIdentityPoolRolesCompletionHandler
      (request: AWSCognitoIdentitySetIdentityPoolRolesInput;
      completionHandler: TAWSCoreCompletion2); cdecl;
    [MethodName('unlinkDeveloperIdentity:')]
    function unlinkDeveloperIdentity
      (request: AWSCognitoIdentityUnlinkDeveloperIdentityInput): AWSTask; cdecl;
    [MethodName('unlinkDeveloperIdentity:completionHandler:')]
    procedure unlinkDeveloperIdentityCompletionHandler
      (request: AWSCognitoIdentityUnlinkDeveloperIdentityInput;
      completionHandler: TAWSCoreCompletion2); cdecl;
    [MethodName('unlinkIdentity:')]
    function unlinkIdentity(request: AWSCognitoIdentityUnlinkIdentityInput)
      : AWSTask; cdecl;
    [MethodName('unlinkIdentity:completionHandler:')]
    procedure unlinkIdentityCompletionHandler
      (request: AWSCognitoIdentityUnlinkIdentityInput;
      completionHandler: TAWSCoreCompletion2); cdecl;
    [MethodName('updateIdentityPool:')]
    function updateIdentityPool(request: AWSCognitoIdentityIdentityPool)
      : AWSTask; cdecl;
    [MethodName('updateIdentityPool:completionHandler:')]
    procedure updateIdentityPoolCompletionHandler
      (request: AWSCognitoIdentityIdentityPool;
      completionHandler: TAWSCoreCompletionHandler7); cdecl;
  end;

  TAWSCognitoIdentity = class(TOCGenericImport<AWSCognitoIdentityClass,
    AWSCognitoIdentity>)
  end;

  PAWSCognitoIdentity = Pointer;

  // ===== Protocol declarations =====

  AWSDDLogger = interface(IObjectiveC)
    ['{209CEC2C-D9D9-407C-BF7A-40B9E36A7D7E}']
    procedure logMessage(logMessage: AWSDDLogMessage); cdecl;
    procedure setLogFormatter(logFormatter: Pointer); cdecl;
    function logFormatter: Pointer; cdecl;
    procedure didAddLogger; cdecl;
    procedure didAddLoggerInQueue(queue: dispatch_queue_t); cdecl;
    procedure willRemoveLogger; cdecl;
    procedure flush; cdecl;
    function loggerQueue: dispatch_queue_t; cdecl;
    function loggerName: NSString; cdecl;
  end;

  AWSDDLogFormatter = interface(IObjectiveC)
    ['{5F92CA35-FD89-4C7D-9466-969D79E58233}']
    function formatLogMessage(logMessage: AWSDDLogMessage): NSString; cdecl;
    [MethodName('didAddToLogger:')]
    procedure didAddToLogger(logger: Pointer); cdecl;
    [MethodName('didAddToLogger:inQueue:')]
    procedure didAddToLoggerInQueue(logger: Pointer;
      inQueue: dispatch_queue_t); cdecl;
    procedure willRemoveFromLogger(logger: Pointer); cdecl;
  end;

  AWSDDRegisteredDynamicLogging = interface(IObjectiveC)
    ['{968738E6-0E38-411C-B870-CEDC4E4438AD}']
    procedure setDdLogLevel(ddLogLevel: AWSDDLogLevel); cdecl;
    function ddLogLevel: AWSDDLogLevel; cdecl;
  end;

  AWSDDLogFileManager = interface(IObjectiveC)
    ['{C5A78479-6162-4CB2-9AC4-FD6759C27A24}']
    procedure setMaximumNumberOfLogFiles(maximumNumberOfLogFiles
      : NSUInteger); cdecl;
    function maximumNumberOfLogFiles: NSUInteger; cdecl;
    procedure setLogFilesDiskQuota(logFilesDiskQuota: UInt64); cdecl;
    function logFilesDiskQuota: UInt64; cdecl;
    function logsDirectory: NSString; cdecl;
    function unsortedLogFilePaths: NSArray; cdecl;
    function unsortedLogFileNames: NSArray; cdecl;
    function unsortedLogFileInfos: NSArray; cdecl;
    function sortedLogFilePaths: NSArray; cdecl;
    function sortedLogFileNames: NSArray; cdecl;
    function sortedLogFileInfos: NSArray; cdecl;
    function createNewLogFile: NSString; cdecl;
    procedure didArchiveLogFile(logFilePath: NSString); cdecl;
    procedure didRollAndArchiveLogFile(logFilePath: NSString); cdecl;
  end;

  AWSMTLJSONSerializing = interface(IObjectiveC)
    ['{AFC9A86A-46FB-45B3-B60E-7E87315DF3EC}']
    function JSONKeyPathsByPropertyKey: NSDictionary; cdecl;
    function JSONTransformerForKey(key: NSString): NSValueTransformer; cdecl;
    function classForParsingJSONDictionary(JSONDictionary: NSDictionary)
      : Pointer; cdecl;
  end;

  AWSMTLManagedObjectSerializing = interface(IObjectiveC)
    ['{EF624AEB-0FEB-4973-8E23-B48206D6B79D}']
    function managedObjectEntityName: NSString; cdecl;
    function managedObjectKeysByPropertyKey: NSDictionary; cdecl;
    function propertyKeysForManagedObjectUniquing: NSSet; cdecl;
    function entityAttributeTransformerForKey(key: NSString)
      : NSValueTransformer; cdecl;
    function relationshipModelClassesByPropertyKey: NSDictionary; cdecl;
    function classForDeserializingManagedObject(managedObject: NSManagedObject)
      : Pointer; cdecl;
    procedure mergeValueForKey(key: NSString;
      fromManagedObject: NSManagedObject); cdecl;
    procedure mergeValuesForKeysFromManagedObject(managedObject
      : NSManagedObject); cdecl;
  end;

  AWSURLRequestSerializer = interface(IObjectiveC)
    ['{4F8C2996-3FEE-48A3-84F4-937AE2D5E43C}']
    function validateRequest(request: NSURLRequest): AWSTask; cdecl;
    function serializeRequest(request: NSMutableURLRequest;
      headers: NSDictionary; parameters: NSDictionary): AWSTask; cdecl;
  end;

  AWSNetworkingHTTPResponseInterceptor = interface(IObjectiveC)
    ['{1CE6822C-3611-4938-9AC5-1D00AD8024CE}']
    function interceptResponse(response: NSHTTPURLResponse; data: Pointer;
      originalRequest: NSURLRequest; currentRequest: NSURLRequest)
      : AWSTask; cdecl;
  end;

  AWSHTTPURLResponseSerializer = interface(IObjectiveC)
    ['{597D2851-0B68-470C-84E5-AAADBC281BEA}']
    function validateResponse(response: NSHTTPURLResponse;
      fromRequest: NSURLRequest; data: Pointer; error: NSError): Boolean; cdecl;
    function responseObjectForResponse(response: NSHTTPURLResponse;
      originalRequest: NSURLRequest; currentRequest: NSURLRequest;
      data: Pointer; error: NSError): Pointer; cdecl;
  end;

  AWSIdentityProvider = interface(IObjectiveC)
    ['{CC0468FD-E10B-412C-A852-E8E15B7D5DEC}']
    function identityProviderName: NSString; cdecl;
    function token: AWSTask; cdecl;
  end;

  AWSIdentityProviderManager = interface(IObjectiveC)
    ['{0C32DF16-AAC7-41CD-A1C7-DD240888D7ED}']
    function logins: AWSTask; cdecl;
    function customRoleArn: NSString; cdecl;
  end;

  AWSCredentialsProvider = interface(IObjectiveC)
    ['{86605965-DD83-4508-A721-BAE9148F4934}']
    function credentials: AWSTask; cdecl;
    procedure invalidateCachedTemporaryCredentials; cdecl;
  end;

  AWSTMCacheBackgroundTaskManager = interface(IObjectiveC)
    ['{9AD9B0D9-E842-4D28-81E0-A81576CF9026}']
  end;

  // ===== Exported string consts =====

//function AWSTaskErrorDomain: NSString;
//function kAWSMultipleErrorsError: Pointer;
//function AWSTaskMultipleErrorsUserInfoKey: NSString;
//function AWSBoltsFrameworkVersionString: NSString;
//function AWSDateRFC822DateFormat1: NSString;
//function AWSDateISO8601DateFormat1: NSString;
//function AWSDateISO8601DateFormat2: NSString;
//function AWSDateISO8601DateFormat3: NSString;
//function AWSDateShortDateFormat1: NSString;
//function AWSDateShortDateFormat2: NSString;
//function AWSClientContextVersion: NSString;
//function AWSClientContextHeader: NSString;
//function AWSClientContextHeaderEncoding: NSString;
//function kAWSDDASLKeyAWSDDLog: Pointer;
//function kAWSDDASLAWSDDLogValue: Pointer;
//function kAWSDDDefaultLogMaxFileSize: Pointer;
//function kAWSDDDefaultLogRollingFrequency: Pointer;
//function kAWSDDDefaultLogMaxNumLogFiles: Pointer;
//function kAWSDDDefaultLogFilesDiskQuota: Pointer;
//function AWSCoreVersionNumber: Pointer;
//function AWSCoreVersionString: Pointer;
//function AWSMantleVersionNumber: Pointer;
//function AWSMantleVersionString: Pointer;
//function AWSMTLJSONAdapterErrorDomain: NSString;
//function AWSMTLJSONAdapterErrorNoClassFound: Pointer;
//function AWSMTLJSONAdapterErrorInvalidJSONDictionary: Pointer;
//function AWSMTLJSONAdapterErrorInvalidJSONMapping: Pointer;
//function AWSMTLManagedObjectAdapterErrorDomain: NSString;
//function AWSMTLManagedObjectAdapterErrorNoClassFound: Pointer;
//function AWSMTLManagedObjectAdapterErrorInitializationFailed: Pointer;
//function AWSMTLManagedObjectAdapterErrorInvalidManagedObjectKey: Pointer;
//function AWSMTLManagedObjectAdapterErrorUnsupportedManagedObjectPropertyType
//  : Pointer;
//function AWSMTLManagedObjectAdapterErrorUniqueFetchRequestFailed: Pointer;
//function AWSMTLManagedObjectAdapterErrorUnsupportedRelationshipClass: Pointer;
//function AWSMTLManagedObjectAdapterErrorInvalidManagedObjectMapping: Pointer;
//function AWSMTLURLValueTransformerName: NSString;
//function AWSMTLBooleanValueTransformerName: NSString;
//function AWSNetworkingErrorDomain: NSString;
//function AWSCognitoIdentityIdChangedNotification: NSString;
//function AWSCognitoNotificationPreviousId: NSString;
//function AWSCognitoNotificationNewId: NSString;
//function AWSIdentityProviderDigits: NSString;
//function AWSIdentityProviderFacebook: NSString;
//function AWSIdentityProviderGoogle: NSString;
//function AWSIdentityProviderLoginWithAmazon: NSString;
//function AWSIdentityProviderTwitter: NSString;
//function AWSIdentityProviderAmazonCognitoIdentity: NSString;
//function AWSCognitoCredentialsProviderHelperErrorDomain: NSString;
//function AWSCognitoCredentialsProviderErrorDomain: NSString;
//function AWSiOSSDKVersion: NSString;
//function AWSServiceErrorDomain: NSString;
//function AWSXMLBuilderErrorDomain: NSString;
//function AWSXMLParserErrorDomain: NSString;
//function AWSQueryParamBuilderErrorDomain: NSString;
//function AWSEC2ParamBuilderErrorDomain: NSString;
//function AWSJSONBuilderErrorDomain: NSString;
//function AWSJSONParserErrorDomain: NSString;
//function AWSSignatureV4Algorithm: NSString;
//function AWSSignatureV4Terminator: NSString;
//function AWSValidationErrorDomain: NSString;
//function AWSInfoDefault: NSString;
//function AWSUICKeyChainStoreErrorDomain: NSString;
//function AWSSTSErrorDomain: NSString;
//function AWSCognitoIdentityErrorDomain: NSString;


// ===== External functions =====

const
  libAWSCore = '/System/Library/Frameworks/AWSCore.framework/AWSCore';

//function AWSDDExtractFileNameWithoutExtension(filePath: MarshaledAString;
//  copy: Boolean): Pointer { NSString }; cdecl;
//  external libAWSCore name _PU + 'AWSDDExtractFileNameWithoutExtension';
//function AWSDDMakeColor(r: CGFloat; g: CGFloat; b: CGFloat)
//  : Pointer { AWSDDColor }; cdecl;
//  external libAWSCore name _PU + 'AWSDDMakeColor';
//procedure awsmtl_loadMTLNSCoding; cdecl;
//  external libAWSCore name _PU + 'awsmtl_loadMTLNSCoding';
//function AWSMTLEqualObjects(obj1: Pointer; obj2: Pointer): Boolean; cdecl;
//  external libAWSCore name _PU + 'AWSMTLEqualObjects';
//procedure awsmtl_loadMTLPredefinedTransformerAdditions; cdecl;
//  external libAWSCore name _PU + 'awsmtl_loadMTLPredefinedTransformerAdditions';
//procedure awsgzip_loadGZIP; cdecl;
//  external libAWSCore name _PU + 'awsgzip_loadGZIP';

implementation

{$IF defined(IOS) and NOT defined(CPUARM)}
uses
  Posix.Dlfcn, System.IOUtils, System.SysUtils;

var
  AWSCoreModule: THandle;

{$ENDIF IOS}
//procedure libAWSCoreLoader; cdecl; external libAWSCore;

//
//function AWSTaskErrorDomain: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSTaskErrorDomain');
//end;
//
//function AWSTaskMultipleErrorsUserInfoKey: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSTaskMultipleErrorsUserInfoKey');
//end;
//
//function AWSBoltsFrameworkVersionString: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSBoltsFrameworkVersionString');
//end;
//
//function AWSDateRFC822DateFormat1: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSDateRFC822DateFormat1');
//end;
//
//function AWSDateISO8601DateFormat1: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSDateISO8601DateFormat1');
//end;
//
//function AWSDateISO8601DateFormat2: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSDateISO8601DateFormat2');
//end;
//
//function AWSDateISO8601DateFormat3: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSDateISO8601DateFormat3');
//end;
//
//function AWSDateShortDateFormat1: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSDateShortDateFormat1');
//end;
//
//function AWSDateShortDateFormat2: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSDateShortDateFormat2');
//end;
//
//function AWSClientContextVersion: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSClientContextVersion');
//end;
//
//function AWSClientContextHeader: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSClientContextHeader');
//end;
//
//function AWSClientContextHeaderEncoding: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSClientContextHeaderEncoding');
//end;
//
//function AWSMTLJSONAdapterErrorDomain: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSMTLJSONAdapterErrorDomain');
//end;
//
//function AWSMTLManagedObjectAdapterErrorDomain: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore,
//    'AWSMTLManagedObjectAdapterErrorDomain');
//end;
//
//function AWSMTLURLValueTransformerName: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSMTLURLValueTransformerName');
//end;
//
//function AWSMTLBooleanValueTransformerName: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSMTLBooleanValueTransformerName');
//end;
//
//function AWSNetworkingErrorDomain: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSNetworkingErrorDomain');
//end;
//
//function AWSCognitoIdentityIdChangedNotification: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore,
//    'AWSCognitoIdentityIdChangedNotification');
//end;
//
//function AWSCognitoNotificationPreviousId: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSCognitoNotificationPreviousId');
//end;
//
//function AWSCognitoNotificationNewId: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSCognitoNotificationNewId');
//end;
//
//function AWSIdentityProviderDigits: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSIdentityProviderDigits');
//end;
//
//function AWSIdentityProviderFacebook: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSIdentityProviderFacebook');
//end;
//
//function AWSIdentityProviderGoogle: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSIdentityProviderGoogle');
//end;
//
//function AWSIdentityProviderLoginWithAmazon: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore,
//    'AWSIdentityProviderLoginWithAmazon');
//end;
//
//function AWSIdentityProviderTwitter: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSIdentityProviderTwitter');
//end;
//
//function AWSIdentityProviderAmazonCognitoIdentity: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore,
//    'AWSIdentityProviderAmazonCognitoIdentity');
//end;
//
//function AWSCognitoCredentialsProviderHelperErrorDomain: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore,
//    'AWSCognitoCredentialsProviderHelperErrorDomain');
//end;
//
//function AWSCognitoCredentialsProviderErrorDomain: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore,
//    'AWSCognitoCredentialsProviderErrorDomain');
//end;
//
//function AWSiOSSDKVersion: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSiOSSDKVersion');
//end;
//
//function AWSServiceErrorDomain: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSServiceErrorDomain');
//end;
//
//function AWSXMLBuilderErrorDomain: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSXMLBuilderErrorDomain');
//end;
//
//function AWSXMLParserErrorDomain: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSXMLParserErrorDomain');
//end;
//
//function AWSQueryParamBuilderErrorDomain: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSQueryParamBuilderErrorDomain');
//end;
//
//function AWSEC2ParamBuilderErrorDomain: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSEC2ParamBuilderErrorDomain');
//end;
//
//function AWSJSONBuilderErrorDomain: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSJSONBuilderErrorDomain');
//end;
//
//function AWSJSONParserErrorDomain: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSJSONParserErrorDomain');
//end;
//
//function AWSSignatureV4Algorithm: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSSignatureV4Algorithm');
//end;
//
//function AWSSignatureV4Terminator: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSSignatureV4Terminator');
//end;
//
//function AWSValidationErrorDomain: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSValidationErrorDomain');
//end;
//
//function AWSInfoDefault: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSInfoDefault');
//end;
//
//function AWSUICKeyChainStoreErrorDomain: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSUICKeyChainStoreErrorDomain');
//end;
//
//function AWSSTSErrorDomain: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSSTSErrorDomain');
//end;
//
//function AWSCognitoIdentityErrorDomain: NSString;
//begin
//  result := CocoaNSStringConst(libAWSCore, 'AWSCognitoIdentityErrorDomain');
//end;
//
//function kAWSMultipleErrorsError: Pointer;
//begin
//  result := CocoaPointerConst(libAWSCore, 'kAWSMultipleErrorsError');
//end;
//
//function kAWSDDASLKeyAWSDDLog: Pointer;
//begin
//  result := CocoaPointerConst(libAWSCore, 'kAWSDDASLKeyAWSDDLog');
//end;
//
//function kAWSDDASLAWSDDLogValue: Pointer;
//begin
//  result := CocoaPointerConst(libAWSCore, 'kAWSDDASLAWSDDLogValue');
//end;
//
//function kAWSDDDefaultLogMaxFileSize: Pointer;
//begin
//  result := CocoaPointerConst(libAWSCore, 'kAWSDDDefaultLogMaxFileSize');
//end;
//
//function kAWSDDDefaultLogRollingFrequency: Pointer;
//begin
//  result := CocoaPointerConst(libAWSCore, 'kAWSDDDefaultLogRollingFrequency');
//end;
//
//function kAWSDDDefaultLogMaxNumLogFiles: Pointer;
//begin
//  result := CocoaPointerConst(libAWSCore, 'kAWSDDDefaultLogMaxNumLogFiles');
//end;
//
//function kAWSDDDefaultLogFilesDiskQuota: Pointer;
//begin
//  result := CocoaPointerConst(libAWSCore, 'kAWSDDDefaultLogFilesDiskQuota');
//end;
//
//function AWSCoreVersionNumber: Pointer;
//begin
//  result := CocoaPointerConst(libAWSCore, 'AWSCoreVersionNumber');
//end;
//
//function AWSCoreVersionString: Pointer;
//begin
//  result := CocoaPointerConst(libAWSCore, 'AWSCoreVersionString');
//end;
//
//function AWSMantleVersionNumber: Pointer;
//begin
//  result := CocoaPointerConst(libAWSCore, 'AWSMantleVersionNumber');
//end;
//
//function AWSMantleVersionString: Pointer;
//begin
//  result := CocoaPointerConst(libAWSCore, 'AWSMantleVersionString');
//end;
//
//function AWSMTLJSONAdapterErrorNoClassFound: Pointer;
//begin
//  result := CocoaPointerConst(libAWSCore, 'AWSMTLJSONAdapterErrorNoClassFound');
//end;
//
//function AWSMTLJSONAdapterErrorInvalidJSONDictionary: Pointer;
//begin
//  result := CocoaPointerConst(libAWSCore,
//    'AWSMTLJSONAdapterErrorInvalidJSONDictionary');
//end;
//
//function AWSMTLJSONAdapterErrorInvalidJSONMapping: Pointer;
//begin
//  result := CocoaPointerConst(libAWSCore,
//    'AWSMTLJSONAdapterErrorInvalidJSONMapping');
//end;
//
//function AWSMTLManagedObjectAdapterErrorNoClassFound: Pointer;
//begin
//  result := CocoaPointerConst(libAWSCore,
//    'AWSMTLManagedObjectAdapterErrorNoClassFound');
//end;
//
//function AWSMTLManagedObjectAdapterErrorInitializationFailed: Pointer;
//begin
//  result := CocoaPointerConst(libAWSCore,
//    'AWSMTLManagedObjectAdapterErrorInitializationFailed');
//end;
//
//function AWSMTLManagedObjectAdapterErrorInvalidManagedObjectKey: Pointer;
//begin
//  result := CocoaPointerConst(libAWSCore,
//    'AWSMTLManagedObjectAdapterErrorInvalidManagedObjectKey');
//end;
//
//function AWSMTLManagedObjectAdapterErrorUnsupportedManagedObjectPropertyType
//  : Pointer;
//begin
//  result := CocoaPointerConst(libAWSCore,
//    'AWSMTLManagedObjectAdapterErrorUnsupportedManagedObjectPropertyType');
//end;
//
//function AWSMTLManagedObjectAdapterErrorUniqueFetchRequestFailed: Pointer;
//begin
//  result := CocoaPointerConst(libAWSCore,
//    'AWSMTLManagedObjectAdapterErrorUniqueFetchRequestFailed');
//end;
//
//function AWSMTLManagedObjectAdapterErrorUnsupportedRelationshipClass: Pointer;
//begin
//  result := CocoaPointerConst(libAWSCore,
//    'AWSMTLManagedObjectAdapterErrorUnsupportedRelationshipClass');
//end;
//
//function AWSMTLManagedObjectAdapterErrorInvalidManagedObjectMapping: Pointer;
//begin
//  result := CocoaPointerConst(libAWSCore,
//    'AWSMTLManagedObjectAdapterErrorInvalidManagedObjectMapping');
//end;

{$IF defined(IOS) and NOT defined(CPUARM)}

initialization
//  libAWSCore := TPath.GetDocumentsPath + TPath.DirectorySeparatorChar + 'AWSCore';
//  if FileExists(libAWSCore) then
//    libAWSCore:=libAWSCore;
//  AWSCoreModule := dlopen(MarshaledAString(libAWSCore), RTLD_NOW);

finalization
//  dlclose(AWSCoreModule);

{$ENDIF IOS}
end.
