{ *********************************************************** }
{ }
{ CodeGear Delphi Runtime Library }
{ }
{ Copyright(c) 2012-2014 Embarcadero Technologies, Inc. }
{ }
{ *********************************************************** }

//
// Delphi-Objective-C Bridge
// Interfaces for Cocoa framework AWSIoT
//

unit iOSapi.AWSIoT;

interface

uses
  Macapi.CoreFoundation,
  Macapi.CoreServices,
  Macapi.Dispatch,
  Macapi.Mach,
  Macapi.ObjCRuntime,
  Macapi.ObjectiveC,
  iOSapi.CocoaTypes,
  iOSapi.Foundation,
  iOSapi.AWSCore,
  iOSApi.AWSIoTModel;

const
  AWSIoTErrorUnknown = 0;
  AWSIoTErrorCertificateConflict = 1;
  AWSIoTErrorCertificateState = 2;
  AWSIoTErrorCertificateValidation = 3;
  AWSIoTErrorDeleteConflict = 4;
  AWSIoTErrorInternal = 5;
  AWSIoTErrorInternalFailure = 6;
  AWSIoTErrorInvalidRequest = 7;
  AWSIoTErrorLimitExceeded = 8;
  AWSIoTErrorMalformedPolicy = 9;
  AWSIoTErrorRegistrationCodeValidation = 10;
  AWSIoTErrorResourceAlreadyExists = 11;
  AWSIoTErrorResourceNotFound = 12;
  AWSIoTErrorServiceUnavailable = 13;
  AWSIoTErrorSqlParse = 14;
  AWSIoTErrorThrottling = 15;
  AWSIoTErrorTransferAlreadyCompleted = 16;
  AWSIoTErrorTransferConflict = 17;
  AWSIoTErrorUnauthorized = 18;
  AWSIoTErrorVersionConflict = 19;
  AWSIoTErrorVersionsLimitExceeded = 20;
  AWSIoTAutoRegistrationStatusUnknown = 0;
  AWSIoTAutoRegistrationStatusEnable = 1;
  AWSIoTAutoRegistrationStatusDisable = 2;
  AWSIoTCACertificateStatusUnknown = 0;
  AWSIoTCACertificateStatusActive = 1;
  AWSIoTCACertificateStatusInactive = 2;
  AWSIoTCannedAccessControlListUnknown = 0;
  AWSIoTCannedAccessControlListPrivate = 1;
  AWSIoTCannedAccessControlListPublicRead = 2;
  AWSIoTCannedAccessControlListPublicReadWrite = 3;
  AWSIoTCannedAccessControlListAwsExecRead = 4;
  AWSIoTCannedAccessControlListAuthenticatedRead = 5;
  AWSIoTCannedAccessControlListBucketOwnerRead = 6;
  AWSIoTCannedAccessControlListBucketOwnerFullControl = 7;
  AWSIoTCannedAccessControlListLogDeliveryWrite = 8;
  AWSIoTCertificateStatusUnknown = 0;
  AWSIoTCertificateStatusActive = 1;
  AWSIoTCertificateStatusInactive = 2;
  AWSIoTCertificateStatusRevoked = 3;
  AWSIoTCertificateStatusPendingTransfer = 4;
  AWSIoTCertificateStatusRegisterInactive = 5;
  AWSIoTCertificateStatusPendingActivation = 6;
  AWSIoTDynamoKeyTypeUnknown = 0;
  AWSIoTDynamoKeyTypeString = 1;
  AWSIoTDynamoKeyTypeNumber = 2;
  AWSIoTLogLevelUnknown = 0;
  AWSIoTLogLevelDebug = 1;
  AWSIoTLogLevelInfo = 2;
  AWSIoTLogLevelError = 3;
  AWSIoTLogLevelWarn = 4;
  AWSIoTLogLevelDisabled = 5;
  AWSIoTMessageFormatUnknown = 0;
  AWSIoTMessageFormatRAW = 1;
  AWSIoTMessageFormatJson = 2;
  AWSIoTDataErrorUnknown = 0;
  AWSIoTDataErrorConflict = 1;
  AWSIoTDataErrorInternalFailure = 2;
  AWSIoTDataErrorInvalidRequest = 3;
  AWSIoTDataErrorMethodNotAllowed = 4;
  AWSIoTDataErrorRequestEntityTooLarge = 5;
  AWSIoTDataErrorResourceNotFound = 6;
  AWSIoTDataErrorServiceUnavailable = 7;
  AWSIoTDataErrorThrottling = 8;
  AWSIoTDataErrorUnauthorized = 9;
  AWSIoTDataErrorUnsupportedDocumentEncoding = 10;
  AWSIoTMQTTStatusUnknown = 0;
  AWSIoTMQTTStatusConnecting = 1;
  AWSIoTMQTTStatusConnected = 2;
  AWSIoTMQTTStatusDisconnected = 3;
  AWSIoTMQTTStatusConnectionRefused = 4;
  AWSIoTMQTTStatusConnectionError = 5;
  AWSIoTMQTTStatusProtocolError = 6;
  AWSIoTMQTTQoSMessageDeliveryAttemptedAtMostOnce = 0;
  AWSIoTMQTTQoSMessageDeliveryAttemptedAtLeastOnce = 1;
  AWSIoTShadowOperationTypeUpdate = 0;
  AWSIoTShadowOperationTypeGet = 1;
  AWSIoTShadowOperationTypeDelete = 2;
  AWSIoTShadowOperationTypeCount = 3;
  AWSIoTShadowOperationTypeNone = 4;
  AWSIoTShadowOperationStatusTypeAccepted = 0;
  AWSIoTShadowOperationStatusTypeRejected = 1;
  AWSIoTShadowOperationStatusTypeDelta = 2;
  AWSIoTShadowOperationStatusTypeDocuments = 3;
  AWSIoTShadowOperationStatusTypeCount = 4;
  AWSIoTShadowOperationStatusTypeForeignUpdate = 5;
  AWSIoTShadowOperationStatusTypeTimeout = 6;

type

  // ===== Forward declarations =====
{$M+}
  AWSIoT= interface;

  AWSIoTCreateCertificateResponse = interface;
  AWSIoTManager = interface;
  AWSIoTDataManager = interface;
  AWSIoTResources = interface;
  AWSIoTDataResources = interface;
  AWSIoTMQTTLastWillAndTestament = interface;
  AWSIoTMQTTConfiguration = interface;

  // ===== Framework typedefs =====
{$M+}
  NSInteger = Integer;
  AWSIoTErrorType = NSInteger;
  AWSIoTAutoRegistrationStatus = NSInteger;
  AWSIoTCACertificateStatus = NSInteger;
  AWSIoTCannedAccessControlList = NSInteger;
  AWSIoTCertificateStatus = NSInteger;
  AWSIoTDynamoKeyType = NSInteger;
  AWSIoTLogLevel = NSInteger;
  AWSIoTMessageFormat = NSInteger;
  AWSIoTDataErrorType = NSInteger;
  AWSIoTMQTTStatus = NSInteger;
  AWSIoTMQTTQoS = NSInteger;
  AWSIoTMQTTNewMessageBlock = procedure(param1: NSData) of object;
  AWSIoTMQTTExtendedNewMessageBlock = procedure(param1: NSObject; param2: NSString; param3: NSData) of object;
  NSTimeInterval = Double;
  AWSIoTShadowOperationType = NSInteger;
  AWSIoTShadowOperationStatusType = NSInteger;
  AWSIoTMQTTStatusBlock = procedure(status:AWSIoTMQTTStatus) of object;
  AWSIoTShadowOptionsBlock = procedure(name:NSString; operation:AWSIoTShadowOperationType; status:AWSIoTShadowOperationStatusType; clientToken:NSString; payload:NSData) of object;
  AWSIoTCreateCertificateBlock = procedure(mainResponse:AWSIoTCreateCertificateResponse) of object;
  AWSErrorBlock = procedure(error:NSError) of object;


  // ===== Interface declarations =====
	{*
	 <fullname>AWS IoT</fullname><p>AWS IoT provides secure, bi-directional communication between Internet-connected things (such as sensors, actuators, embedded devices, or smart appliances) and the AWS cloud. You can discover your custom IoT-Data endpoint to communicate with, configure rules for data processing and integration with other services, organize resources associated with each thing (Thing Registry), configure logging, and create and manage policies and credentials to authenticate things.</p><p>For more information about how AWS IoT works, see the <a href="http://docs.aws.amazon.com/iot/latest/developerguide/aws-iot-how-it-works.html">Developer Guide</a>.</p>
	 }
	AWSIoT=interface(AWSService)//
	['{44B5E2F2-44E7-473D-841B-D98D5287BF22}']
		function configuration:AWSServiceConfiguration{*};cdecl;
		{-} function acceptCertificateTransfer(request:AWSIoTAcceptCertificateTransferRequest{*}):AWSTask{*};cdecl;
		[MethodName('acceptCertificateTransfer:completionHandler:')]
		{-} procedure acceptCertificateTransfercompletionHandler(request:AWSIoTAcceptCertificateTransferRequest{*};completionHandler:AWSErrorBlock);cdecl;
		{-} function attachPrincipalPolicy(request:AWSIoTAttachPrincipalPolicyRequest{*}):AWSTask{*};cdecl;
		[MethodName('attachPrincipalPolicy:completionHandler:')]
		{-} procedure attachPrincipalPolicycompletionHandler(request:AWSIoTAttachPrincipalPolicyRequest{*};completionHandler:AWSErrorBlock);cdecl;
		{-} function attachThingPrincipal(request:AWSIoTAttachThingPrincipalRequest{*}):AWSTask{*};cdecl;
		[MethodName('attachThingPrincipal:completionHandler:')]
		{-} procedure attachThingPrincipalcompletionHandler(request:AWSIoTAttachThingPrincipalRequest{*};completionHandler:AWSIoTAttachThingPrincipalResponseErrorBlock);cdecl;
		{-} function cancelCertificateTransfer(request:AWSIoTCancelCertificateTransferRequest{*}):AWSTask{*};cdecl;

		[MethodName('cancelCertificateTransfer:completionHandler:')]
		{-} procedure cancelCertificateTransfercompletionHandler(request:AWSIoTCancelCertificateTransferRequest{*};completionHandler:AWSErrorBlock);cdecl;

		{-} function createCertificateFromCsr(request:AWSIoTCreateCertificateFromCsrRequest{*}):AWSTask{*};cdecl;


		[MethodName('createCertificateFromCsr:completionHandler:')]
		{-} procedure createCertificateFromCsrcompletionHandler(request:AWSIoTCreateCertificateFromCsrRequest{*};completionHandler:AWSIoTCreateCertificateFromCsrErrorBlock);cdecl;

		{-} function createKeysAndCertificate(request:AWSIoTCreateKeysAndCertificateRequest{*}):AWSTask{*};cdecl;

		[MethodName('createKeysAndCertificate:completionHandler:')]
		{-} procedure createKeysAndCertificatecompletionHandler(request:AWSIoTCreateKeysAndCertificateRequest{*};completionHandler:AWSIoTCreateKeysAndCertificateResponseErrorBlock);cdecl;

		{-} function createPolicy(request:AWSIoTCreatePolicyRequest{*}):AWSTask{*};cdecl;

		[MethodName('createPolicy:completionHandler:')]
		{-} procedure createPolicycompletionHandler(request:AWSIoTCreatePolicyRequest{*};completionHandler:AWSIoTCreatePolicyResponseErrorBlock);cdecl;

		{-} function createPolicyVersion(request:AWSIoTCreatePolicyVersionRequest{*}):AWSTask{*};cdecl;

		[MethodName('createPolicyVersion:completionHandler:')]
		{-} procedure createPolicyVersioncompletionHandler(request:AWSIoTCreatePolicyVersionRequest{*};completionHandler:AWSIoTCreatePolicyVersionResponseErrorBlock);cdecl;

		{-} function createThing(request:AWSIoTCreateThingRequest{*}):AWSTask{*};cdecl;

		[MethodName('createThing:completionHandler:')]
		{-} procedure createThingcompletionHandler(request:AWSIoTCreateThingRequest{*};completionHandler:AWSIoTCreateThingResponseErrorBlock);cdecl;

		{-} function createThingType(request:AWSIoTCreateThingTypeRequest{*}):AWSTask{*};cdecl;

		[MethodName('createThingType:completionHandler:')]
		{-} procedure createThingTypecompletionHandler(request:AWSIoTCreateThingTypeRequest{*};completionHandler:AWSIoTCreateThingTypeResponseErrorBlock);cdecl;

		{-} function createTopicRule(request:AWSIoTCreateTopicRuleRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Creates a rule. Creating rules is an administrator-level action. Any user who has permission to create rules will be able to access data processed by the rule.</p>

		 @param request A container for the necessary parameters to execute the CreateTopicRule service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorSqlParse`, `AWSIoTErrorInternal`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorResourceAlreadyExists`, `AWSIoTErrorServiceUnavailable`.

		 @see AWSIoTCreateTopicRuleRequest
		 }
		[MethodName('createTopicRule:completionHandler:')]
		{-} procedure createTopicRulecompletionHandler(request:AWSIoTCreateTopicRuleRequest{*};completionHandler:AWSErrorBlock);cdecl;

		{*
		 <p>Deletes a registered CA certificate.</p>

		 @param request A container for the necessary parameters to execute the DeleteCACertificate service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTDeleteCACertificateResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorCertificateState`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`, `AWSIoTErrorResourceNotFound`.

		 @see AWSIoTDeleteCACertificateRequest
		 @see AWSIoTDeleteCACertificateResponse
		 }
		{-} function deleteCACertificate(request:AWSIoTDeleteCACertificateRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Deletes a registered CA certificate.</p>

		 @param request A container for the necessary parameters to execute the DeleteCACertificate service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorCertificateState`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`, `AWSIoTErrorResourceNotFound`.

		 @see AWSIoTDeleteCACertificateRequest
		 @see AWSIoTDeleteCACertificateResponse
		 }
		[MethodName('deleteCACertificate:completionHandler:')]
		{-} procedure deleteCACertificatecompletionHandler(request:AWSIoTDeleteCACertificateRequest{*};completionHandler:AWSIoTDeleteCACertificateResponseErrorBlock);cdecl;

		{*
		 <p>Deletes the specified certificate.</p><p>A certificate cannot be deleted if it has a policy attached to it or if its status is set to ACTIVE. To delete a certificate, first use the <a>DetachPrincipalPolicy</a> API to detach all policies. Next, use the <a>UpdateCertificate</a> API to set the certificate to the INACTIVE status.</p>

		 @param request A container for the necessary parameters to execute the DeleteCertificate service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will be `nil`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorCertificateState`, `AWSIoTErrorDeleteConflict`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`, `AWSIoTErrorResourceNotFound`.

		 @see AWSIoTDeleteCertificateRequest
		 }
		{-} function deleteCertificate(request:AWSIoTDeleteCertificateRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Deletes the specified certificate.</p><p>A certificate cannot be deleted if it has a policy attached to it or if its status is set to ACTIVE. To delete a certificate, first use the <a>DetachPrincipalPolicy</a> API to detach all policies. Next, use the <a>UpdateCertificate</a> API to set the certificate to the INACTIVE status.</p>

		 @param request A container for the necessary parameters to execute the DeleteCertificate service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorCertificateState`, `AWSIoTErrorDeleteConflict`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`, `AWSIoTErrorResourceNotFound`.

		 @see AWSIoTDeleteCertificateRequest
		 }
		[MethodName('deleteCertificate:completionHandler:')]
		{-} procedure deleteCertificatecompletionHandler(request:AWSIoTDeleteCertificateRequest{*};completionHandler:AWSErrorBlock);cdecl;

		{*
		 <p>Deletes the specified policy.</p><p>A policy cannot be deleted if it has non-default versions or it is attached to any certificate.</p><p>To delete a policy, use the DeletePolicyVersion API to delete all non-default versions of the policy; use the DetachPrincipalPolicy API to detach the policy from any certificate; and then use the DeletePolicy API to delete the policy.</p><p>When a policy is deleted using DeletePolicy, its default version is deleted with it.</p>

		 @param request A container for the necessary parameters to execute the DeletePolicy service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will be `nil`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorDeleteConflict`, `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTDeletePolicyRequest
		 }
		{-} function deletePolicy(request:AWSIoTDeletePolicyRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Deletes the specified policy.</p><p>A policy cannot be deleted if it has non-default versions or it is attached to any certificate.</p><p>To delete a policy, use the DeletePolicyVersion API to delete all non-default versions of the policy; use the DetachPrincipalPolicy API to detach the policy from any certificate; and then use the DeletePolicy API to delete the policy.</p><p>When a policy is deleted using DeletePolicy, its default version is deleted with it.</p>

		 @param request A container for the necessary parameters to execute the DeletePolicy service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorDeleteConflict`, `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTDeletePolicyRequest
		 }
		[MethodName('deletePolicy:completionHandler:')]
		{-} procedure deletePolicycompletionHandler(request:AWSIoTDeletePolicyRequest{*};completionHandler:AWSErrorBlock);cdecl;

		{*
		 <p>Deletes the specified version of the specified policy. You cannot delete the default version of a policy using this API. To delete the default version of a policy, use <a>DeletePolicy</a>. To find out which version of a policy is marked as the default version, use ListPolicyVersions.</p>

		 @param request A container for the necessary parameters to execute the DeletePolicyVersion service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will be `nil`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorDeleteConflict`, `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTDeletePolicyVersionRequest
		 }
		{-} function deletePolicyVersion(request:AWSIoTDeletePolicyVersionRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Deletes the specified version of the specified policy. You cannot delete the default version of a policy using this API. To delete the default version of a policy, use <a>DeletePolicy</a>. To find out which version of a policy is marked as the default version, use ListPolicyVersions.</p>

		 @param request A container for the necessary parameters to execute the DeletePolicyVersion service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorDeleteConflict`, `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTDeletePolicyVersionRequest
		 }
		[MethodName('deletePolicyVersion:completionHandler:')]
		{-} procedure deletePolicyVersioncompletionHandler(request:AWSIoTDeletePolicyVersionRequest{*};completionHandler:AWSErrorBlock);cdecl;

		{*
		 <p>Deletes a CA certificate registration code.</p>

		 @param request A container for the necessary parameters to execute the DeleteRegistrationCode service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTDeleteRegistrationCodeResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorThrottling`, `AWSIoTErrorResourceNotFound`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTDeleteRegistrationCodeRequest
		 @see AWSIoTDeleteRegistrationCodeResponse
		 }
		{-} function deleteRegistrationCode(request:AWSIoTDeleteRegistrationCodeRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Deletes a CA certificate registration code.</p>

		 @param request A container for the necessary parameters to execute the DeleteRegistrationCode service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorThrottling`, `AWSIoTErrorResourceNotFound`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTDeleteRegistrationCodeRequest
		 @see AWSIoTDeleteRegistrationCodeResponse
		 }
		[MethodName('deleteRegistrationCode:completionHandler:')]
		{-} procedure deleteRegistrationCodecompletionHandler(request:AWSIoTDeleteRegistrationCodeRequest{*};completionHandler:AWSIoTDeleteRegistrationCodeResponseErrorBlock);cdecl;

		{*
		 <p>Deletes the specified thing.</p>

		 @param request A container for the necessary parameters to execute the DeleteThing service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTDeleteThingResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorVersionConflict`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTDeleteThingRequest
		 @see AWSIoTDeleteThingResponse
		 }
		{-} function deleteThing(request:AWSIoTDeleteThingRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Deletes the specified thing.</p>

		 @param request A container for the necessary parameters to execute the DeleteThing service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorVersionConflict`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTDeleteThingRequest
		 @see AWSIoTDeleteThingResponse
		 }
		[MethodName('deleteThing:completionHandler:')]
		{-} procedure deleteThingcompletionHandler(request:AWSIoTDeleteThingRequest{*};completionHandler:AWSIoTDeleteThingResponseErrorBlock);cdecl;

		{*
		 <p>Deletes the specified thing type . You cannot delete a thing type if it has things associated with it. To delete a thing type, first mark it as deprecated by calling <a>DeprecateThingType</a>, then remove any associated things by calling <a>UpdateThing</a> to change the thing type on any associated thing, and finally use <a>DeleteThingType</a> to delete the thing type.</p>

		 @param request A container for the necessary parameters to execute the DeleteThingType service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTDeleteThingTypeResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTDeleteThingTypeRequest
		 @see AWSIoTDeleteThingTypeResponse
		 }
		{-} function deleteThingType(request:AWSIoTDeleteThingTypeRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Deletes the specified thing type . You cannot delete a thing type if it has things associated with it. To delete a thing type, first mark it as deprecated by calling <a>DeprecateThingType</a>, then remove any associated things by calling <a>UpdateThing</a> to change the thing type on any associated thing, and finally use <a>DeleteThingType</a> to delete the thing type.</p>

		 @param request A container for the necessary parameters to execute the DeleteThingType service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTDeleteThingTypeRequest
		 @see AWSIoTDeleteThingTypeResponse
		 }
		[MethodName('deleteThingType:completionHandler:')]
		{-} procedure deleteThingTypecompletionHandler(request:AWSIoTDeleteThingTypeRequest{*};completionHandler:AWSIoTDeleteThingTypeResponseErrorBlock);cdecl;

		{*
		 <p>Deletes the specified rule.</p>

		 @param request A container for the necessary parameters to execute the DeleteTopicRule service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will be `nil`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInternal`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorUnauthorized`.

		 @see AWSIoTDeleteTopicRuleRequest
		 }
		{-} function deleteTopicRule(request:AWSIoTDeleteTopicRuleRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Deletes the specified rule.</p>

		 @param request A container for the necessary parameters to execute the DeleteTopicRule service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInternal`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorUnauthorized`.

		 @see AWSIoTDeleteTopicRuleRequest
		 }
		[MethodName('deleteTopicRule:completionHandler:')]
		{-} procedure deleteTopicRulecompletionHandler(request:AWSIoTDeleteTopicRuleRequest{*};completionHandler:AWSErrorBlock);cdecl;

		{*
		 <p>Deprecates a thing type. You can not associate new things with deprecated thing type.</p>

		 @param request A container for the necessary parameters to execute the DeprecateThingType service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTDeprecateThingTypeResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTDeprecateThingTypeRequest
		 @see AWSIoTDeprecateThingTypeResponse
		 }
		{-} function deprecateThingType(request:AWSIoTDeprecateThingTypeRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Deprecates a thing type. You can not associate new things with deprecated thing type.</p>

		 @param request A container for the necessary parameters to execute the DeprecateThingType service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTDeprecateThingTypeRequest
		 @see AWSIoTDeprecateThingTypeResponse
		 }
		[MethodName('deprecateThingType:completionHandler:')]
		{-} procedure deprecateThingTypecompletionHandler(request:AWSIoTDeprecateThingTypeRequest{*};completionHandler:AWSIoTDeprecateThingTypeResponseErrorBlock);cdecl;

		{*
		 <p>Describes a registered CA certificate.</p>

		 @param request A container for the necessary parameters to execute the DescribeCACertificate service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTDescribeCACertificateResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`, `AWSIoTErrorResourceNotFound`.

		 @see AWSIoTDescribeCACertificateRequest
		 @see AWSIoTDescribeCACertificateResponse
		 }
		{-} function describeCACertificate(request:AWSIoTDescribeCACertificateRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Describes a registered CA certificate.</p>

		 @param request A container for the necessary parameters to execute the DescribeCACertificate service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`, `AWSIoTErrorResourceNotFound`.

		 @see AWSIoTDescribeCACertificateRequest
		 @see AWSIoTDescribeCACertificateResponse
		 }
		[MethodName('describeCACertificate:completionHandler:')]
		{-} procedure describeCACertificatecompletionHandler(request:AWSIoTDescribeCACertificateRequest{*};completionHandler:AWSIoTDescribeCACertificateResponseErrorBlock);cdecl;

		{*
		 <p>Gets information about the specified certificate.</p>

		 @param request A container for the necessary parameters to execute the DescribeCertificate service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTDescribeCertificateResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`, `AWSIoTErrorResourceNotFound`.

		 @see AWSIoTDescribeCertificateRequest
		 @see AWSIoTDescribeCertificateResponse
		 }
		{-} function describeCertificate(request:AWSIoTDescribeCertificateRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Gets information about the specified certificate.</p>

		 @param request A container for the necessary parameters to execute the DescribeCertificate service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`, `AWSIoTErrorResourceNotFound`.

		 @see AWSIoTDescribeCertificateRequest
		 @see AWSIoTDescribeCertificateResponse
		 }
		[MethodName('describeCertificate:completionHandler:')]
		{-} procedure describeCertificatecompletionHandler(request:AWSIoTDescribeCertificateRequest{*};completionHandler:AWSIoTDescribeCertificateResponseErrorBlock);cdecl;

		{*
		 <p>Returns a unique endpoint specific to the AWS account making the call.</p>

		 @param request A container for the necessary parameters to execute the DescribeEndpoint service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTDescribeEndpointResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInternalFailure`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorThrottling`.

		 @see AWSIoTDescribeEndpointRequest
		 @see AWSIoTDescribeEndpointResponse
		 }
		{-} function describeEndpoint(request:AWSIoTDescribeEndpointRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Returns a unique endpoint specific to the AWS account making the call.</p>

		 @param request A container for the necessary parameters to execute the DescribeEndpoint service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInternalFailure`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorThrottling`.

		 @see AWSIoTDescribeEndpointRequest
		 @see AWSIoTDescribeEndpointResponse
		 }
		[MethodName('describeEndpoint:completionHandler:')]
		{-} procedure describeEndpointcompletionHandler(request:AWSIoTDescribeEndpointRequest{*};completionHandler:AWSIoTDescribeEndpointResponseErrorBlock);cdecl;

		{*
		 <p>Gets information about the specified thing.</p>

		 @param request A container for the necessary parameters to execute the DescribeThing service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTDescribeThingResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTDescribeThingRequest
		 @see AWSIoTDescribeThingResponse
		 }
		{-} function describeThing(request:AWSIoTDescribeThingRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Gets information about the specified thing.</p>

		 @param request A container for the necessary parameters to execute the DescribeThing service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTDescribeThingRequest
		 @see AWSIoTDescribeThingResponse
		 }
		[MethodName('describeThing:completionHandler:')]
		{-} procedure describeThingcompletionHandler(request:AWSIoTDescribeThingRequest{*};completionHandler:AWSIoTDescribeThingResponseErrorBlock);cdecl;

		{*
		 <p>Gets information about the specified thing type.</p>

		 @param request A container for the necessary parameters to execute the DescribeThingType service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTDescribeThingTypeResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTDescribeThingTypeRequest
		 @see AWSIoTDescribeThingTypeResponse
		 }
		{-} function describeThingType(request:AWSIoTDescribeThingTypeRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Gets information about the specified thing type.</p>

		 @param request A container for the necessary parameters to execute the DescribeThingType service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTDescribeThingTypeRequest
		 @see AWSIoTDescribeThingTypeResponse
		 }
		[MethodName('describeThingType:completionHandler:')]
		{-} procedure describeThingTypecompletionHandler(request:AWSIoTDescribeThingTypeRequest{*};completionHandler:AWSIoTDescribeThingTypeResponseErrorBlock);cdecl;

		{*
		 <p>Removes the specified policy from the specified certificate.</p>

		 @param request A container for the necessary parameters to execute the DetachPrincipalPolicy service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will be `nil`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTDetachPrincipalPolicyRequest
		 }
		{-} function detachPrincipalPolicy(request:AWSIoTDetachPrincipalPolicyRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Removes the specified policy from the specified certificate.</p>

		 @param request A container for the necessary parameters to execute the DetachPrincipalPolicy service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTDetachPrincipalPolicyRequest
		 }
		[MethodName('detachPrincipalPolicy:completionHandler:')]
		{-} procedure detachPrincipalPolicycompletionHandler(request:AWSIoTDetachPrincipalPolicyRequest{*};completionHandler:AWSErrorBlock);cdecl;

		{*
		 <p>Detaches the specified principal from the specified thing.</p>

		 @param request A container for the necessary parameters to execute the DetachThingPrincipal service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTDetachThingPrincipalResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTDetachThingPrincipalRequest
		 @see AWSIoTDetachThingPrincipalResponse
		 }
		{-} function detachThingPrincipal(request:AWSIoTDetachThingPrincipalRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Detaches the specified principal from the specified thing.</p>

		 @param request A container for the necessary parameters to execute the DetachThingPrincipal service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTDetachThingPrincipalRequest
		 @see AWSIoTDetachThingPrincipalResponse
		 }
		[MethodName('detachThingPrincipal:completionHandler:')]
		{-} procedure detachThingPrincipalcompletionHandler(request:AWSIoTDetachThingPrincipalRequest{*};completionHandler:AWSIoTDetachThingPrincipalResponseErrorBlock);cdecl;

		{*
		 <p>Disables the specified rule.</p>

		 @param request A container for the necessary parameters to execute the DisableTopicRule service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will be `nil`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInternal`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorUnauthorized`.

		 @see AWSIoTDisableTopicRuleRequest
		 }
		{-} function disableTopicRule(request:AWSIoTDisableTopicRuleRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Disables the specified rule.</p>

		 @param request A container for the necessary parameters to execute the DisableTopicRule service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInternal`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorUnauthorized`.

		 @see AWSIoTDisableTopicRuleRequest
		 }
		[MethodName('disableTopicRule:completionHandler:')]
		{-} procedure disableTopicRulecompletionHandler(request:AWSIoTDisableTopicRuleRequest{*};completionHandler:AWSErrorBlock);cdecl;

		{*
		 <p>Enables the specified rule.</p>

		 @param request A container for the necessary parameters to execute the EnableTopicRule service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will be `nil`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInternal`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorUnauthorized`.

		 @see AWSIoTEnableTopicRuleRequest
		 }
		{-} function enableTopicRule(request:AWSIoTEnableTopicRuleRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Enables the specified rule.</p>

		 @param request A container for the necessary parameters to execute the EnableTopicRule service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInternal`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorUnauthorized`.

		 @see AWSIoTEnableTopicRuleRequest
		 }
		[MethodName('enableTopicRule:completionHandler:')]
		{-} procedure enableTopicRulecompletionHandler(request:AWSIoTEnableTopicRuleRequest{*};completionHandler:AWSErrorBlock);cdecl;

		{*
		 <p>Gets the logging options.</p>

		 @param request A container for the necessary parameters to execute the GetLoggingOptions service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTGetLoggingOptionsResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInternal`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorServiceUnavailable`.

		 @see AWSIoTGetLoggingOptionsRequest
		 @see AWSIoTGetLoggingOptionsResponse
		 }
		{-} function getLoggingOptions(request:AWSIoTGetLoggingOptionsRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Gets the logging options.</p>

		 @param request A container for the necessary parameters to execute the GetLoggingOptions service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInternal`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorServiceUnavailable`.

		 @see AWSIoTGetLoggingOptionsRequest
		 @see AWSIoTGetLoggingOptionsResponse
		 }
		[MethodName('getLoggingOptions:completionHandler:')]
		{-} procedure getLoggingOptionscompletionHandler(request:AWSIoTGetLoggingOptionsRequest{*};completionHandler:AWSIoTGetLoggingOptionsResponseErrorBlock);cdecl;

		{*
		 <p>Gets information about the specified policy with the policy document of the default version.</p>

		 @param request A container for the necessary parameters to execute the GetPolicy service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTGetPolicyResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTGetPolicyRequest
		 @see AWSIoTGetPolicyResponse
		 }
		{-} function getPolicy(request:AWSIoTGetPolicyRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Gets information about the specified policy with the policy document of the default version.</p>

		 @param request A container for the necessary parameters to execute the GetPolicy service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTGetPolicyRequest
		 @see AWSIoTGetPolicyResponse
		 }
		[MethodName('getPolicy:completionHandler:')]
		{-} procedure getPolicycompletionHandler(request:AWSIoTGetPolicyRequest{*};completionHandler:AWSIoTGetPolicyResponseErrorBlock);cdecl;

		{*
		 <p>Gets information about the specified policy version.</p>

		 @param request A container for the necessary parameters to execute the GetPolicyVersion service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTGetPolicyVersionResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTGetPolicyVersionRequest
		 @see AWSIoTGetPolicyVersionResponse
		 }
		{-} function getPolicyVersion(request:AWSIoTGetPolicyVersionRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Gets information about the specified policy version.</p>

		 @param request A container for the necessary parameters to execute the GetPolicyVersion service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTGetPolicyVersionRequest
		 @see AWSIoTGetPolicyVersionResponse
		 }
		[MethodName('getPolicyVersion:completionHandler:')]
		{-} procedure getPolicyVersioncompletionHandler(request:AWSIoTGetPolicyVersionRequest{*};completionHandler:AWSIoTGetPolicyVersionResponseErrorBlock);cdecl;

		{*
		 <p>Gets a registration code used to register a CA certificate with AWS IoT.</p>

		 @param request A container for the necessary parameters to execute the GetRegistrationCode service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTGetRegistrationCodeResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`, `AWSIoTErrorInvalidRequest`.

		 @see AWSIoTGetRegistrationCodeRequest
		 @see AWSIoTGetRegistrationCodeResponse
		 }
		{-} function getRegistrationCode(request:AWSIoTGetRegistrationCodeRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Gets a registration code used to register a CA certificate with AWS IoT.</p>

		 @param request A container for the necessary parameters to execute the GetRegistrationCode service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`, `AWSIoTErrorInvalidRequest`.

		 @see AWSIoTGetRegistrationCodeRequest
		 @see AWSIoTGetRegistrationCodeResponse
		 }
		[MethodName('getRegistrationCode:completionHandler:')]
		{-} procedure getRegistrationCodecompletionHandler(request:AWSIoTGetRegistrationCodeRequest{*};completionHandler:AWSIoTGetRegistrationCodeResponseErrorBlock);cdecl;

		{*
		 <p>Gets information about the specified rule.</p>

		 @param request A container for the necessary parameters to execute the GetTopicRule service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTGetTopicRuleResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInternal`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorUnauthorized`.

		 @see AWSIoTGetTopicRuleRequest
		 @see AWSIoTGetTopicRuleResponse
		 }
		{-} function getTopicRule(request:AWSIoTGetTopicRuleRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Gets information about the specified rule.</p>

		 @param request A container for the necessary parameters to execute the GetTopicRule service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInternal`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorUnauthorized`.

		 @see AWSIoTGetTopicRuleRequest
		 @see AWSIoTGetTopicRuleResponse
		 }
		[MethodName('getTopicRule:completionHandler:')]
		{-} procedure getTopicRulecompletionHandler(request:AWSIoTGetTopicRuleRequest{*};completionHandler:AWSIoTGetTopicRuleResponseErrorBlock);cdecl;

		{*
		 <p>Lists the CA certificates registered for your AWS account.</p><p>The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.</p>

		 @param request A container for the necessary parameters to execute the ListCACertificates service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTListCACertificatesResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTListCACertificatesRequest
		 @see AWSIoTListCACertificatesResponse
		 }
		{-} function listCACertificates(request:AWSIoTListCACertificatesRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Lists the CA certificates registered for your AWS account.</p><p>The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.</p>

		 @param request A container for the necessary parameters to execute the ListCACertificates service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTListCACertificatesRequest
		 @see AWSIoTListCACertificatesResponse
		 }
		[MethodName('listCACertificates:completionHandler:')]
		{-} procedure listCACertificatescompletionHandler(request:AWSIoTListCACertificatesRequest{*};completionHandler:AWSIoTListCACertificatesResponseErrorBlock);cdecl;

		{*
		 <p>Lists the certificates registered in your AWS account.</p><p>The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.</p>

		 @param request A container for the necessary parameters to execute the ListCertificates service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTListCertificatesResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTListCertificatesRequest
		 @see AWSIoTListCertificatesResponse
		 }
		{-} function listCertificates(request:AWSIoTListCertificatesRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Lists the certificates registered in your AWS account.</p><p>The results are paginated with a default page size of 25. You can use the returned marker to retrieve additional results.</p>

		 @param request A container for the necessary parameters to execute the ListCertificates service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTListCertificatesRequest
		 @see AWSIoTListCertificatesResponse
		 }
		[MethodName('listCertificates:completionHandler:')]
		{-} procedure listCertificatescompletionHandler(request:AWSIoTListCertificatesRequest{*};completionHandler:AWSIoTListCertificatesResponseErrorBlock);cdecl;

		{*
		 <p>List the device certificates signed by the specified CA certificate.</p>

		 @param request A container for the necessary parameters to execute the ListCertificatesByCA service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTListCertificatesByCAResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTListCertificatesByCARequest
		 @see AWSIoTListCertificatesByCAResponse
		 }
		{-} function listCertificatesByCA(request:AWSIoTListCertificatesByCARequest{*}):AWSTask{*};cdecl;

		{*
		 <p>List the device certificates signed by the specified CA certificate.</p>

		 @param request A container for the necessary parameters to execute the ListCertificatesByCA service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTListCertificatesByCARequest
		 @see AWSIoTListCertificatesByCAResponse
		 }
		[MethodName('listCertificatesByCA:completionHandler:')]
		{-} procedure listCertificatesByCAcompletionHandler(request:AWSIoTListCertificatesByCARequest{*};completionHandler:AWSIoTListCertificatesByCAResponseErrorBlock);cdecl;

		{*
		 <p>Lists certificates that are being transfered but not yet accepted.</p>

		 @param request A container for the necessary parameters to execute the ListOutgoingCertificates service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTListOutgoingCertificatesResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTListOutgoingCertificatesRequest
		 @see AWSIoTListOutgoingCertificatesResponse
		 }
		{-} function listOutgoingCertificates(request:AWSIoTListOutgoingCertificatesRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Lists certificates that are being transfered but not yet accepted.</p>

		 @param request A container for the necessary parameters to execute the ListOutgoingCertificates service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTListOutgoingCertificatesRequest
		 @see AWSIoTListOutgoingCertificatesResponse
		 }
		[MethodName('listOutgoingCertificates:completionHandler:')]
		{-} procedure listOutgoingCertificatescompletionHandler(request:AWSIoTListOutgoingCertificatesRequest{*};completionHandler:AWSIoTListOutgoingCertificatesResponseErrorBlock);cdecl;

		{*
		 <p>Lists your policies.</p>

		 @param request A container for the necessary parameters to execute the ListPolicies service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTListPoliciesResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTListPoliciesRequest
		 @see AWSIoTListPoliciesResponse
		 }
		{-} function listPolicies(request:AWSIoTListPoliciesRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Lists your policies.</p>

		 @param request A container for the necessary parameters to execute the ListPolicies service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTListPoliciesRequest
		 @see AWSIoTListPoliciesResponse
		 }
		[MethodName('listPolicies:completionHandler:')]
		{-} procedure listPoliciescompletionHandler(request:AWSIoTListPoliciesRequest{*};completionHandler:AWSIoTListPoliciesResponseErrorBlock);cdecl;

		{*
		 <p>Lists the principals associated with the specified policy.</p>

		 @param request A container for the necessary parameters to execute the ListPolicyPrincipals service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTListPolicyPrincipalsResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTListPolicyPrincipalsRequest
		 @see AWSIoTListPolicyPrincipalsResponse
		 }
		{-} function listPolicyPrincipals(request:AWSIoTListPolicyPrincipalsRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Lists the principals associated with the specified policy.</p>

		 @param request A container for the necessary parameters to execute the ListPolicyPrincipals service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTListPolicyPrincipalsRequest
		 @see AWSIoTListPolicyPrincipalsResponse
		 }
		[MethodName('listPolicyPrincipals:completionHandler:')]
		{-} procedure listPolicyPrincipalscompletionHandler(request:AWSIoTListPolicyPrincipalsRequest{*};completionHandler:AWSIoTListPolicyPrincipalsResponseErrorBlock);cdecl;

		{*
		 <p>Lists the versions of the specified policy and identifies the default version.</p>

		 @param request A container for the necessary parameters to execute the ListPolicyVersions service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTListPolicyVersionsResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTListPolicyVersionsRequest
		 @see AWSIoTListPolicyVersionsResponse
		 }
		{-} function listPolicyVersions(request:AWSIoTListPolicyVersionsRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Lists the versions of the specified policy and identifies the default version.</p>

		 @param request A container for the necessary parameters to execute the ListPolicyVersions service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTListPolicyVersionsRequest
		 @see AWSIoTListPolicyVersionsResponse
		 }
		[MethodName('listPolicyVersions:completionHandler:')]
		{-} procedure listPolicyVersionscompletionHandler(request:AWSIoTListPolicyVersionsRequest{*};completionHandler:AWSIoTListPolicyVersionsResponseErrorBlock);cdecl;

		{*
		 <p>Lists the policies attached to the specified principal. If you use an Cognito identity, the ID must be in <a href="http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax">AmazonCognito Identity format</a>.</p>

		 @param request A container for the necessary parameters to execute the ListPrincipalPolicies service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTListPrincipalPoliciesResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTListPrincipalPoliciesRequest
		 @see AWSIoTListPrincipalPoliciesResponse
		 }
		{-} function listPrincipalPolicies(request:AWSIoTListPrincipalPoliciesRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Lists the policies attached to the specified principal. If you use an Cognito identity, the ID must be in <a href="http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/API_GetCredentialsForIdentity.html#API_GetCredentialsForIdentity_RequestSyntax">AmazonCognito Identity format</a>.</p>

		 @param request A container for the necessary parameters to execute the ListPrincipalPolicies service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTListPrincipalPoliciesRequest
		 @see AWSIoTListPrincipalPoliciesResponse
		 }
		[MethodName('listPrincipalPolicies:completionHandler:')]
		{-} procedure listPrincipalPoliciescompletionHandler(request:AWSIoTListPrincipalPoliciesRequest{*};completionHandler:AWSIoTListPrincipalPoliciesResponseErrorBlock);cdecl;

		{*
		 <p>Lists the things associated with the specified principal.</p>

		 @param request A container for the necessary parameters to execute the ListPrincipalThings service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTListPrincipalThingsResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`, `AWSIoTErrorResourceNotFound`.

		 @see AWSIoTListPrincipalThingsRequest
		 @see AWSIoTListPrincipalThingsResponse
		 }
		{-} function listPrincipalThings(request:AWSIoTListPrincipalThingsRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Lists the things associated with the specified principal.</p>

		 @param request A container for the necessary parameters to execute the ListPrincipalThings service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`, `AWSIoTErrorResourceNotFound`.

		 @see AWSIoTListPrincipalThingsRequest
		 @see AWSIoTListPrincipalThingsResponse
		 }
		[MethodName('listPrincipalThings:completionHandler:')]
		{-} procedure listPrincipalThingscompletionHandler(request:AWSIoTListPrincipalThingsRequest{*};completionHandler:AWSIoTListPrincipalThingsResponseErrorBlock);cdecl;

		{*
		 <p>Lists the principals associated with the specified thing.</p>

		 @param request A container for the necessary parameters to execute the ListThingPrincipals service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTListThingPrincipalsResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`, `AWSIoTErrorResourceNotFound`.

		 @see AWSIoTListThingPrincipalsRequest
		 @see AWSIoTListThingPrincipalsResponse
		 }
		{-} function listThingPrincipals(request:AWSIoTListThingPrincipalsRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Lists the principals associated with the specified thing.</p>

		 @param request A container for the necessary parameters to execute the ListThingPrincipals service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`, `AWSIoTErrorResourceNotFound`.

		 @see AWSIoTListThingPrincipalsRequest
		 @see AWSIoTListThingPrincipalsResponse
		 }
		[MethodName('listThingPrincipals:completionHandler:')]
		{-} procedure listThingPrincipalscompletionHandler(request:AWSIoTListThingPrincipalsRequest{*};completionHandler:AWSIoTListThingPrincipalsResponseErrorBlock);cdecl;

		{*
		 <p>Lists the existing thing types.</p>

		 @param request A container for the necessary parameters to execute the ListThingTypes service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTListThingTypesResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTListThingTypesRequest
		 @see AWSIoTListThingTypesResponse
		 }
		{-} function listThingTypes(request:AWSIoTListThingTypesRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Lists the existing thing types.</p>

		 @param request A container for the necessary parameters to execute the ListThingTypes service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTListThingTypesRequest
		 @see AWSIoTListThingTypesResponse
		 }
		[MethodName('listThingTypes:completionHandler:')]
		{-} procedure listThingTypescompletionHandler(request:AWSIoTListThingTypesRequest{*};completionHandler:AWSIoTListThingTypesResponseErrorBlock);cdecl;

		{*
		 <p>Lists your things. Use the <b>attributeName</b> and <b>attributeValue</b> parameters to filter your things. For example, calling <code>ListThings</code> with attributeName=Color and attributeValue=Red retrieves all things in the registry that contain an attribute <b>Color</b> with the value <b>Red</b>. </p>

		 @param request A container for the necessary parameters to execute the ListThings service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTListThingsResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTListThingsRequest
		 @see AWSIoTListThingsResponse
		 }
		{-} function listThings(request:AWSIoTListThingsRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Lists your things. Use the <b>attributeName</b> and <b>attributeValue</b> parameters to filter your things. For example, calling <code>ListThings</code> with attributeName=Color and attributeValue=Red retrieves all things in the registry that contain an attribute <b>Color</b> with the value <b>Red</b>. </p>

		 @param request A container for the necessary parameters to execute the ListThings service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTListThingsRequest
		 @see AWSIoTListThingsResponse
		 }
		[MethodName('listThings:completionHandler:')]
		{-} procedure listThingscompletionHandler(request:AWSIoTListThingsRequest{*};completionHandler:AWSIoTListThingsResponseErrorBlock);cdecl;

		{*
		 <p>Lists the rules for the specific topic.</p>

		 @param request A container for the necessary parameters to execute the ListTopicRules service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTListTopicRulesResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInternal`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorServiceUnavailable`.

		 @see AWSIoTListTopicRulesRequest
		 @see AWSIoTListTopicRulesResponse
		 }
		{-} function listTopicRules(request:AWSIoTListTopicRulesRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Lists the rules for the specific topic.</p>

		 @param request A container for the necessary parameters to execute the ListTopicRules service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInternal`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorServiceUnavailable`.

		 @see AWSIoTListTopicRulesRequest
		 @see AWSIoTListTopicRulesResponse
		 }
		[MethodName('listTopicRules:completionHandler:')]
		{-} procedure listTopicRulescompletionHandler(request:AWSIoTListTopicRulesRequest{*};completionHandler:AWSIoTListTopicRulesResponseErrorBlock);cdecl;

		{*
		 <p>Registers a CA certificate with AWS IoT. This CA certificate can then be used to sign device certificates, which can be then registered with AWS IoT. You can register up to 10 CA certificates per AWS account that have the same subject field and public key. This enables you to have up to 10 certificate authorities sign your device certificates. If you have more than one CA certificate registered, make sure you pass the CA certificate when you register your device certificates with the RegisterCertificate API.</p>

		 @param request A container for the necessary parameters to execute the RegisterCACertificate service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTRegisterCACertificateResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceAlreadyExists`, `AWSIoTErrorRegistrationCodeValidation`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorCertificateValidation`, `AWSIoTErrorThrottling`, `AWSIoTErrorLimitExceeded`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTRegisterCACertificateRequest
		 @see AWSIoTRegisterCACertificateResponse
		 }
		{-} function registerCACertificate(request:AWSIoTRegisterCACertificateRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Registers a CA certificate with AWS IoT. This CA certificate can then be used to sign device certificates, which can be then registered with AWS IoT. You can register up to 10 CA certificates per AWS account that have the same subject field and public key. This enables you to have up to 10 certificate authorities sign your device certificates. If you have more than one CA certificate registered, make sure you pass the CA certificate when you register your device certificates with the RegisterCertificate API.</p>

		 @param request A container for the necessary parameters to execute the RegisterCACertificate service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceAlreadyExists`, `AWSIoTErrorRegistrationCodeValidation`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorCertificateValidation`, `AWSIoTErrorThrottling`, `AWSIoTErrorLimitExceeded`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTRegisterCACertificateRequest
		 @see AWSIoTRegisterCACertificateResponse
		 }
		[MethodName('registerCACertificate:completionHandler:')]
		{-} procedure registerCACertificatecompletionHandler(request:AWSIoTRegisterCACertificateRequest{*};completionHandler:AWSIoTRegisterCACertificateResponseErrorBlock);cdecl;

		{*
		 <p>Registers a device certificate with AWS IoT. If you have more than one CA certificate that has the same subject field, you must specify the CA certificate that was used to sign the device certificate being registered.</p>

		 @param request A container for the necessary parameters to execute the RegisterCertificate service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTRegisterCertificateResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceAlreadyExists`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorCertificateValidation`, `AWSIoTErrorCertificateState`, `AWSIoTErrorCertificateConflict`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTRegisterCertificateRequest
		 @see AWSIoTRegisterCertificateResponse
		 }
		{-} function registerCertificate(request:AWSIoTRegisterCertificateRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Registers a device certificate with AWS IoT. If you have more than one CA certificate that has the same subject field, you must specify the CA certificate that was used to sign the device certificate being registered.</p>

		 @param request A container for the necessary parameters to execute the RegisterCertificate service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceAlreadyExists`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorCertificateValidation`, `AWSIoTErrorCertificateState`, `AWSIoTErrorCertificateConflict`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTRegisterCertificateRequest
		 @see AWSIoTRegisterCertificateResponse
		 }
		[MethodName('registerCertificate:completionHandler:')]
		{-} procedure registerCertificatecompletionHandler(request:AWSIoTRegisterCertificateRequest{*};completionHandler:AWSIoTRegisterCertificateResponseErrorBlock);cdecl;

		{*
		 <p>Rejects a pending certificate transfer. After AWS IoT rejects a certificate transfer, the certificate status changes from <b>PENDING_TRANSFER</b> to <b>INACTIVE</b>.</p><p>To check for pending certificate transfers, call <a>ListCertificates</a> to enumerate your certificates.</p><p>This operation can only be called by the transfer destination. After it is called, the certificate will be returned to the source's account in the INACTIVE state.</p>

		 @param request A container for the necessary parameters to execute the RejectCertificateTransfer service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will be `nil`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorTransferAlreadyCompleted`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTRejectCertificateTransferRequest
		 }
		{-} function rejectCertificateTransfer(request:AWSIoTRejectCertificateTransferRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Rejects a pending certificate transfer. After AWS IoT rejects a certificate transfer, the certificate status changes from <b>PENDING_TRANSFER</b> to <b>INACTIVE</b>.</p><p>To check for pending certificate transfers, call <a>ListCertificates</a> to enumerate your certificates.</p><p>This operation can only be called by the transfer destination. After it is called, the certificate will be returned to the source's account in the INACTIVE state.</p>

		 @param request A container for the necessary parameters to execute the RejectCertificateTransfer service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorTransferAlreadyCompleted`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTRejectCertificateTransferRequest
		 }
		[MethodName('rejectCertificateTransfer:completionHandler:')]
		{-} procedure rejectCertificateTransfercompletionHandler(request:AWSIoTRejectCertificateTransferRequest{*};completionHandler:AWSErrorBlock);cdecl;

		{*
		 <p>Replaces the specified rule. You must specify all parameters for the new rule. Creating rules is an administrator-level action. Any user who has permission to create rules will be able to access data processed by the rule.</p>

		 @param request A container for the necessary parameters to execute the ReplaceTopicRule service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will be `nil`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorSqlParse`, `AWSIoTErrorInternal`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorUnauthorized`.

		 @see AWSIoTReplaceTopicRuleRequest
		 }
		{-} function replaceTopicRule(request:AWSIoTReplaceTopicRuleRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Replaces the specified rule. You must specify all parameters for the new rule. Creating rules is an administrator-level action. Any user who has permission to create rules will be able to access data processed by the rule.</p>

		 @param request A container for the necessary parameters to execute the ReplaceTopicRule service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorSqlParse`, `AWSIoTErrorInternal`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorUnauthorized`.

		 @see AWSIoTReplaceTopicRuleRequest
		 }
		[MethodName('replaceTopicRule:completionHandler:')]
		{-} procedure replaceTopicRulecompletionHandler(request:AWSIoTReplaceTopicRuleRequest{*};completionHandler:AWSErrorBlock);cdecl;

		{*
		 <p>Sets the specified version of the specified policy as the policy's default (operative) version. This action affects all certificates to which the policy is attached. To list the principals the policy is attached to, use the ListPrincipalPolicy API.</p>

		 @param request A container for the necessary parameters to execute the SetDefaultPolicyVersion service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will be `nil`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTSetDefaultPolicyVersionRequest
		 }
		{-} function setDefaultPolicyVersion(request:AWSIoTSetDefaultPolicyVersionRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Sets the specified version of the specified policy as the policy's default (operative) version. This action affects all certificates to which the policy is attached. To list the principals the policy is attached to, use the ListPrincipalPolicy API.</p>

		 @param request A container for the necessary parameters to execute the SetDefaultPolicyVersion service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTSetDefaultPolicyVersionRequest
		 }
		[MethodName('setDefaultPolicyVersion:completionHandler:')]
		{-} procedure setDefaultPolicyVersioncompletionHandler(request:AWSIoTSetDefaultPolicyVersionRequest{*};completionHandler:AWSErrorBlock);cdecl;

		{*
		 <p>Sets the logging options.</p>

		 @param request A container for the necessary parameters to execute the SetLoggingOptions service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will be `nil`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInternal`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorServiceUnavailable`.

		 @see AWSIoTSetLoggingOptionsRequest
		 }
		{-} function setLoggingOptions(request:AWSIoTSetLoggingOptionsRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Sets the logging options.</p>

		 @param request A container for the necessary parameters to execute the SetLoggingOptions service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInternal`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorServiceUnavailable`.

		 @see AWSIoTSetLoggingOptionsRequest
		 }
		[MethodName('setLoggingOptions:completionHandler:')]
		{-} procedure setLoggingOptionscompletionHandler(request:AWSIoTSetLoggingOptionsRequest{*};completionHandler:AWSErrorBlock);cdecl;

		{*
		 <p>Transfers the specified certificate to the specified AWS account.</p><p>You can cancel the transfer until it is acknowledged by the recipient.</p><p>No notification is sent to the transfer destination's account. It is up to the caller to notify the transfer target.</p><p>The certificate being transferred must not be in the ACTIVE state. You can use the UpdateCertificate API to deactivate it.</p><p>The certificate must not have any policies attached to it. You can use the DetachPrincipalPolicy API to detach them.</p>

		 @param request A container for the necessary parameters to execute the TransferCertificate service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTTransferCertificateResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorResourceNotFound`, `AWSIoTErrorCertificateState`, `AWSIoTErrorTransferConflict`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTTransferCertificateRequest
		 @see AWSIoTTransferCertificateResponse
		 }
		{-} function transferCertificate(request:AWSIoTTransferCertificateRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Transfers the specified certificate to the specified AWS account.</p><p>You can cancel the transfer until it is acknowledged by the recipient.</p><p>No notification is sent to the transfer destination's account. It is up to the caller to notify the transfer target.</p><p>The certificate being transferred must not be in the ACTIVE state. You can use the UpdateCertificate API to deactivate it.</p><p>The certificate must not have any policies attached to it. You can use the DetachPrincipalPolicy API to detach them.</p>

		 @param request A container for the necessary parameters to execute the TransferCertificate service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorResourceNotFound`, `AWSIoTErrorCertificateState`, `AWSIoTErrorTransferConflict`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTTransferCertificateRequest
		 @see AWSIoTTransferCertificateResponse
		 }
		[MethodName('transferCertificate:completionHandler:')]
		{-} procedure transferCertificatecompletionHandler(request:AWSIoTTransferCertificateRequest{*};completionHandler:AWSIoTTransferCertificateResponseErrorBlock);cdecl;

		{*
		 <p>Updates a registered CA certificate.</p>

		 @param request A container for the necessary parameters to execute the UpdateCACertificate service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will be `nil`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTUpdateCACertificateRequest
		 }
		{-} function updateCACertificate(request:AWSIoTUpdateCACertificateRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Updates a registered CA certificate.</p>

		 @param request A container for the necessary parameters to execute the UpdateCACertificate service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTUpdateCACertificateRequest
		 }
		[MethodName('updateCACertificate:completionHandler:')]
		{-} procedure updateCACertificatecompletionHandler(request:AWSIoTUpdateCACertificateRequest{*};completionHandler:AWSErrorBlock);cdecl;

		{*
		 <p>Updates the status of the specified certificate. This operation is idempotent.</p><p>Moving a certificate from the ACTIVE state (including REVOKED) will not disconnect currently connected devices, but these devices will be unable to reconnect.</p><p>The ACTIVE state is required to authenticate devices connecting to AWS IoT using a certificate.</p>

		 @param request A container for the necessary parameters to execute the UpdateCertificate service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will be `nil`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorCertificateState`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTUpdateCertificateRequest
		 }
		{-} function updateCertificate(request:AWSIoTUpdateCertificateRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Updates the status of the specified certificate. This operation is idempotent.</p><p>Moving a certificate from the ACTIVE state (including REVOKED) will not disconnect currently connected devices, but these devices will be unable to reconnect.</p><p>The ACTIVE state is required to authenticate devices connecting to AWS IoT using a certificate.</p>

		 @param request A container for the necessary parameters to execute the UpdateCertificate service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorResourceNotFound`, `AWSIoTErrorCertificateState`, `AWSIoTErrorInvalidRequest`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`.

		 @see AWSIoTUpdateCertificateRequest
		 }
		[MethodName('updateCertificate:completionHandler:')]
		{-} procedure updateCertificatecompletionHandler(request:AWSIoTUpdateCertificateRequest{*};completionHandler:AWSErrorBlock);cdecl;

		{*
		 <p>Updates the data for a thing.</p>

		 @param request A container for the necessary parameters to execute the UpdateThing service method.

		 @return An instance of `AWSTask`. On successful execution, `task.result` will contain an instance of `AWSIoTUpdateThingResponse`. On failed execution, `task.error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorVersionConflict`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`, `AWSIoTErrorResourceNotFound`.

		 @see AWSIoTUpdateThingRequest
		 @see AWSIoTUpdateThingResponse
		 }
		{-} function updateThing(request:AWSIoTUpdateThingRequest{*}):AWSTask{*};cdecl;

		{*
		 <p>Updates the data for a thing.</p>

		 @param request A container for the necessary parameters to execute the UpdateThing service method.
		 @param completionHandler The completion handler to call when the load request is complete.
		                          `response` - A response object, or `nil` if the request failed.
		                          `error` - An error object that indicates why the request failed, or `nil` if the request was successful. On failed execution, `error` may contain an `NSError` with `AWSIoTErrorDomain` domain and the following error code: `AWSIoTErrorInvalidRequest`, `AWSIoTErrorVersionConflict`, `AWSIoTErrorThrottling`, `AWSIoTErrorUnauthorized`, `AWSIoTErrorServiceUnavailable`, `AWSIoTErrorInternalFailure`, `AWSIoTErrorResourceNotFound`.

		 @see AWSIoTUpdateThingRequest
		 @see AWSIoTUpdateThingResponse
		 }
		[MethodName('updateThing:completionHandler:')]
		{-} procedure updateThingcompletionHandler(request:AWSIoTUpdateThingRequest{*};completionHandler:AWSIoTUpdateThingResponseErrorBlock);cdecl;

	end;

	AWSIoTClass=interface(AWSServiceClass)//
	['{4DFD3F4B-706F-4E04-828C-6984E921AD8F}']
		{+} function defaultIoT:Pointer;cdecl;
		[MethodName('registerIoTWithConfiguration:forKey:')]
		{+} procedure registerIoTWithConfigurationforKey(configuration:AWSServiceConfiguration{*};key:NSString{*});cdecl;
		{+} function IoTForKey(key:NSString{*}):AWSIoT;cdecl;
		{+} procedure removeIoTForKey(key:NSString{*});cdecl;
	end;

	TAWSIoT=class(TOCGenericImport<AWSIoTClass,AWSIoT>)
	end;

	AWSIoTCreateCertificateResponse=interface(AWSModel)//
	['{483FDE7B-ECD6-475D-BA89-EE9FDAAB6262}']

		function certificateArn:NSString{*};cdecl;
		procedure setCertificateArn(certificateArn:NSString{*});cdecl;
		function certificateId:NSString{*};cdecl;
		procedure setCertificateId(certificateId:NSString{*});cdecl;
		function certificatePem:NSString{*};cdecl;
		procedure setCertificatePem(certificatePem:NSString{*});cdecl;

	end;

	AWSIoTCreateCertificateResponseClass=interface(AWSModelClass)//
	['{EC67767B-19A7-4A69-A0C9-96AE6BD23FE9}']
	end;

	TAWSIoTCreateCertificateResponse=class(TOCGenericImport<AWSIoTCreateCertificateResponseClass,AWSIoTCreateCertificateResponse>)
	end;

	AWSIoTManager=interface(AWSService)//
	['{04D1ECF1-7D08-4DAE-AE6D-51D07BD043C9}']

		{*
		 The service configuration used to instantiate this service client.

		 @warning Once the client is instantiated, do not modify the configuration object. It may cause unspecified behaviors.
		 }
		function configuration:AWSServiceConfiguration{*};cdecl;

		{*
		 Returns the singleton service client. If the singleton object does not exist, the SDK instantiates the default service client with `defaultServiceConfiguration` from `[AWSServiceManager defaultServiceManager]`. The reference to this object is maintained by the SDK, and you do not need to retain it manually.

		 For example, set the default service configuration in `- application:didFinishLaunchingWithOptions:`

		 *Swift*

		     func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		         let credentialProvider = AWSCognitoCredentialsProvider(regionType: .USEast1, identityPoolId: "YourIdentityPoolId")
		         let configuration = AWSServiceConfiguration(region: .USEast1, credentialsProvider: credentialProvider)
		         AWSServiceManager.default().defaultServiceConfiguration = configuration

		         return true
		     }
     {
		 *Objective-C*

		     - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
		          AWSCognitoCredentialsProvider *credentialsProvider = [[AWSCognitoCredentialsProvider alloc] initWithRegionType:AWSRegionUSEast1
		                                                                                                          identityPoolId:@"YourIdentityPoolId"];
		          AWSServiceConfiguration *configuration = [[AWSServiceConfiguration alloc] initWithRegion:AWSRegionUSEast1
		                                                                               credentialsProvider:credentialsProvider];
		          [AWSServiceManager defaultServiceManager].defaultServiceConfiguration = configuration;

		          return YES;
		      }
     {
		 Then call the following to get the default service client:

		 *Swift*

		     let IoTManager = AWSIoTManager.default()

		 *Objective-C*

		     AWSIoTManager *IoTManager = [AWSIoTManager defaultIoTManager];

		 @return The default service client.
		 }

		{*
		 Creates a service client with the given service configuration and registers it for the key.

		 For example, set the default service configuration in `- application:didFinishLaunchingWithOptions:`

		 *Swift*

		     func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		         let credentialProvider = AWSCognitoCredentialsProvider(regionType: .USEast1, identityPoolId: "YourIdentityPoolId")
		         let configuration = AWSServiceConfiguration(region: .USWest2, credentialsProvider: credentialProvider)
		         AWSIoTManager.register(with: configuration!, forKey: "USWest2IoTManager")

		         return true
		     }
     {
		 *Objective-C*

		     - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
		         AWSCognitoCredentialsProvider *credentialsProvider = [[AWSCognitoCredentialsProvider alloc] initWithRegionType:AWSRegionUSEast1
		                                                                                                         identityPoolId:@"YourIdentityPoolId"];
		         AWSServiceConfiguration *configuration = [[AWSServiceConfiguration alloc] initWithRegion:AWSRegionUSWest2
		                                                                              credentialsProvider:credentialsProvider];

		         [AWSIoTManager registerIoTManagerWithConfiguration:configuration forKey:@"USWest2IoTManager"];

		         return YES;
		     }
     {
		 Then call the following to get the service client:

		 *Swift*

		     let IoTManager = AWSIoTManager(forKey: "USWest2IoTManager")

		 *Objective-C*

		     AWSIoTManager *IoTManager = [AWSIoTManager IoTManagerForKey:@"USWest2IoTManager"];

		 @warning After calling this method, do not modify the configuration object. It may cause unspecified behaviors.

		 @param configuration A service configuration object.
		 @param key           A string to identify the service client.

		 }

		{*
		 Retrieves the service client associated with the key. You need to call `+ registerIoTManagerWithConfiguration:forKey:` before invoking this method.

		 For example, set the default service configuration in `- application:didFinishLaunchingWithOptions:`

		 *Swift*

		     func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		         let credentialProvider = AWSCognitoCredentialsProvider(regionType: .USEast1, identityPoolId: "YourIdentityPoolId")
		         let configuration = AWSServiceConfiguration(region: .USWest2, credentialsProvider: credentialProvider)
		         AWSIoTManager.register(with: configuration!, forKey: "USWest2IoTManager")

		         return true
		     }
     {
		 *Objective-C*

		     - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
		         AWSCognitoCredentialsProvider *credentialsProvider = [[AWSCognitoCredentialsProvider alloc] initWithRegionType:AWSRegionUSEast1
		                                                                                                         identityPoolId:@"YourIdentityPoolId"];
		         AWSServiceConfiguration *configuration = [[AWSServiceConfiguration alloc] initWithRegion:AWSRegionUSWest2
		                                                                              credentialsProvider:credentialsProvider];

		         [AWSIoTManager registerIoTManagerWithConfiguration:configuration forKey:@"USWest2IoTManager"];

		         return YES;
		     }
     {
		 Then call the following to get the service client:

		 *Swift*

		     let IoTManager = AWSIoTManager(forKey: "USWest2IoTManager")

		 *Objective-C*

		     AWSIoTManager *IoTManager = [AWSIoTManager IoTManagerForKey:@"USWest2IoTManager"];

		 @param key A string to identify the service client.

		 @return An instance of the service client.
		 }

		{*
		 Removes the service client associated with the key and release it.

		 @warning Before calling this method, make sure no method is running on this client.

		 @param key A string to identify the service client.
		 }

		{*
		 *  Creates keys and certificate from a CSR created using the specified dictionary
		 *
		 *  @param csrDictionary contains values used to generate the CSR.  Requires values for
		 *    keys: commonName, countryName, organizationName, organizationalUnitName
		 *
		 *  @param callback When new certificate is created the function of block will be called with an instance of `AWSIOTDescribeCertificateResponse`
		 }
		[MethodName('createKeysAndCertificateFromCsr:callback:')]
		{-} procedure createKeysAndCertificateFromCsrcallback(csrDictionary:NSDictionary{*};callback:AWSIoTCreateCertificateBlock);cdecl;

		{*
		  * Import PKCS12 identity into keychain.  This method allows you to import an
		  * identity created using the AWS console or CLI into the keychain.  The identity is
		  * contained in PKCS12 data; you can create PKCS12 files (suffix .p12) using openssl
		  * as follows:
		  *
		  *   openssl pkcs12 -export -in cert.pem -inkey key.pem -CAfile root-ca.crt -out awsiot-identity.p12
		  *
		  * @param pkcs12Data pkcs12 raw data. Will only import the first item.
		  *
		  * @param passPhrase Pass phrase used to decrypt the pkcs12 data.
		  *
		  * @param certificateId Unique identifier used to find the key/certificate for use.
		  *
		  }


		{*
		 *  Validates the certificate with the given identifier of certificate.
		 *
		 *  @param certificateId The certificate identifier
		 *
		 *  @return TRUE if certificate is valid, else FALSE
		 }

		{*
		 *  Deletes keys and certificate
		 *
		*  @return TRUE if certificate is deleted, else FALSE
		 }

	end;

	AWSIoTManagerClass=interface(AWSServiceClass)//
	['{C2F7CE2E-1EB4-4F6D-8EBE-233411159192}']
    function defaultIoTManager:Pointer; cdecl;
		[MethodName('registerIoTManagerWithConfiguration:forKey:')]
		{+} procedure registerIoTManagerWithConfigurationforKey(configuration:AWSServiceConfiguration{*};key:NSString{*});cdecl;
		{+} function IoTManagerForKey(key:NSString{*}):AWSIoTManager;cdecl;
		{+} procedure removeIoTManagerForKey(key:NSString{*});cdecl;
		[MethodName('importIdentityFromPKCS12Data:passPhrase:certificateId:')]
		{+} function importIdentityFromPKCS12DatapassPhrasecertificateId(pkcs12Data:NSData{*};passPhrase:NSString{*};certificateId:NSString{*}):Boolean;cdecl;
		{+} function isValidCertificate(certificateId:NSString{*}):Boolean;cdecl;
	end;

	TAWSIoTManager=class(TOCGenericImport<AWSIoTManagerClass,AWSIoTManager>)
	end;

	//#pragma mark - AWSIoTDataManager

	AWSIoTDataManager=interface(AWSService)//
	['{8120D5D6-F1D9-4928-97F4-53298032678C}']

		{*
		 The service configuration used to instantiate this service client.

		 @warning Once the client is instantiated, do not modify the configuration object. It may cause unspecified behaviors.
		 }
		function configuration:AWSServiceConfiguration{*};cdecl;

		{*
		 The MQTT configuration used by this service client. Any changes to this configuration object
		 will take effect upon the next invocation of either the connectWithClientId or connectUsingWebSocketWithClientId
		 methods.

		 }
		function mqttConfiguration:AWSIoTMQTTConfiguration{*};cdecl;

		{*
		 Returns the singleton service client. If the singleton object does not exist, the SDK instantiates the default service client with `defaultServiceConfiguration` from `[AWSServiceManager defaultServiceManager]`. The reference to this object is maintained by the SDK, and you do not need to retain it manually.

		 For example, set the default service configuration in `- application:didFinishLaunchingWithOptions:`

		 *Swift*

		     func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		         let credentialProvider = AWSCognitoCredentialsProvider(regionType: .USEast1, identityPoolId: "YourIdentityPoolId")
		         let configuration = AWSServiceConfiguration(region: .USEast1, credentialsProvider: credentialProvider)
		         AWSServiceManager.default().defaultServiceConfiguration = configuration

		         return true
		     }
		 {
		 *Objective-C*

		     - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
		          AWSCognitoCredentialsProvider *credentialsProvider = [[AWSCognitoCredentialsProvider alloc] initWithRegionType:AWSRegionUSEast1
		                                                                                                          identityPoolId:@"YourIdentityPoolId"];
		          AWSServiceConfiguration *configuration = [[AWSServiceConfiguration alloc] initWithRegion:AWSRegionUSEast1
		                                                                               credentialsProvider:credentialsProvider];
		          [AWSServiceManager defaultServiceManager].defaultServiceConfiguration = configuration;

		          return YES;
		      }
		 {
		 Then call the following to get the default service client:

		 *Swift*

		     let IoTDataManager = AWSIoTDataManager.default()

		 *Objective-C*

		     AWSIoTDataManager *IoTDataManager = [AWSIoTDataManager defaultIoTDataManager];

		 @return The default service client.
		 }

		{*
		 Creates a service client with the given service configuration and registers it for the key.

		 For example, set the default service configuration in `- application:didFinishLaunchingWithOptions:`

		 *Swift*

		     func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		         let credentialProvider = AWSCognitoCredentialsProvider(regionType: .USEast1, identityPoolId: "YourIdentityPoolId")
		         let configuration = AWSServiceConfiguration(region: .USWest2, credentialsProvider: credentialProvider)
		         AWSIoTDataManager.register(with: configuration!, forKey: "USWest2IoTDataManager")

		         return true
		     }
		 {
		 *Objective-C*

		     - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
		         AWSCognitoCredentialsProvider *credentialsProvider = [[AWSCognitoCredentialsProvider alloc] initWithRegionType:AWSRegionUSEast1
		                                                                                                         identityPoolId:@"YourIdentityPoolId"];
		         AWSServiceConfiguration *configuration = [[AWSServiceConfiguration alloc] initWithRegion:AWSRegionUSWest2
		                                                                              credentialsProvider:credentialsProvider];

		         [AWSIoTDataManager registerIoTDataManagerWithConfiguration:configuration forKey:@"USWest2IoTDataManager"];

		         return YES;
		     }
		 {
		 Then call the following to get the service client:

		 *Swift*

		     let IoTDataManager = AWSIoTDataManager(forKey: "USWest2IoTDataManager")

		 *Objective-C*

		     AWSIoTDataManager *IoTDataManager = [AWSIoTDataManager IoTDataManagerForKey:@"USWest2IoTDataManager"];

		 @warning After calling this method, do not modify the configuration object. It may cause unspecified behaviors.

		 @param configuration A service configuration object.
		 @param key           A string to identify the service client.
		 }



		{*
		 Creates a service client with the given service configuration and
		 AWSIoTMQTTConfiguration and registers it for the key.

		 For example:

		 *Swift*

		 let credentialProvider = AWSCognitoCredentialsProvider(regionType: .USEast1, identityPoolId: "YourIdentityPoolId")
		 let configuration = AWSServiceConfiguration(region: .USWest2, credentialsProvider: credentialProvider)
		 let mqttConfig = AWSIoTMQTTConfiguration(keepAliveTimeInterval: 60.0,
		                                      baseReconnectTimeInterval: 1.0,
		                                  minimumConnectionTimeInterval: 20.0,
		                                   maximumReconnectTimeInterval: 128.0,
		                                                        runLoop: RunLoop.current,
		                                                    runLoopMode: RunLoopMode.defaultRunLoopMode.rawValue,
		                                                autoResubscribe: true,
		                                           lastWillAndTestament: AWSIoTMQTTLastWillAndTestament() )

		 AWSIoTDataManager.register(with: configuration!, with: mqttConfig!, forKey: "USWest2IoTDataManager")


		 *Objective-C*

		 AWSCognitoCredentialsProvider *credentialsProvider =
		    [ [AWSCognitoCredentialsProvider alloc] initWithRegionType:AWSRegionUSEast1
		                                                identityPoolId:@"YourIdentityPoolId"];
		 AWSServiceConfiguration *configuration =
		    [ [AWSServiceConfiguration alloc] initWithRegion:AWSRegionUSWest2
		                                 credentialsProvider:credentialsProvider];
		 AWSIoTMQTTConfiguration *mqttConfig =
		    [ [AWSIoTMQTTConfiguration alloc] initWithKeepAliveTimeInterval:60.0
		                                          baseReconnectTimeInterval:1.0
		                                      minimumConnectionTimeInterval:20.0
		                                       maximumReconnectTimeInterval:128.0
		                                                            runLoop:[NSRunLoop currentRunLoop]
		                                                        runLoopMode:NSDefaultRunLoopMode
		                                                    autoResubscribe:YES
		                                               lastWillAndTestament:[AWSIoTMQTTLastWillAndTestament new] ];

		 [AWSIoTDataManager registerIoTDataManagerWithConfiguration:configuration
		                                      withMQTTConfiguration:mqttConfig
		                                                     forKey:@"USWest2IoTDataManager"];

		 Then call the following to get the service client:

		 *Swift*

		 let IoTDataManager = AWSIoTDataManager(forKey: "USWest2IoTDataManager")

		 *Objective-C*

		 AWSIoTDataManager *IoTDataManager = [AWSIoTDataManager IoTDataManagerForKey:@"USWest2IoTDataManager"];

		 @warning After calling this method, do not modify the configuration object. It may cause unspecified behaviors.

		 @param configuration A service configuration object.
		 @param mqttConfig    A AWSIoTMQTTConfiguration object.
		 @param key           A string to identify the service client.
		 }


		{*
		 Retrieves the service client associated with the key. You need to call `+ registerIoTDataManagerWithConfiguration:forKey:` before invoking this method.

		 For example, set the default service configuration in `- application:didFinishLaunchingWithOptions:`

		 *Swift*

		     func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
		         let credentialProvider = AWSCognitoCredentialsProvider(regionType: .USEast1, identityPoolId: "YourIdentityPoolId")
		         let configuration = AWSServiceConfiguration(region: .USWest2, credentialsProvider: credentialProvider)
		         AWSIoTDataManager.register(with: configuration!, forKey: "USWest2IoTDataManager")

		         return true
		     }
		 {
		 *Objective-C*

		     - (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
		         AWSCognitoCredentialsProvider *credentialsProvider = [[AWSCognitoCredentialsProvider alloc] initWithRegionType:AWSRegionUSEast1
		                                                                                                         identityPoolId:@"YourIdentityPoolId"];
		         AWSServiceConfiguration *configuration = [[AWSServiceConfiguration alloc] initWithRegion:AWSRegionUSWest2
		                                                                              credentialsProvider:credentialsProvider];

		         [AWSIoTDataManager registerIoTDataManagerWithConfiguration:configuration forKey:@"USWest2IoTDataManager"];

		         return YES;
		     }
		 {
		 Then call the following to get the service client:

		 *Swift*

		     let IoTDataManager = AWSIoTDataManager(forKey: "USWest2IoTDataManager")

		 *Objective-C*

		     AWSIoTDataManager *IoTDataManager = [AWSIoTDataManager IoTDataManagerForKey:@"USWest2IoTDataManager"];

		 @param key A string to identify the service client.

		 @return An instance of the service client.
		 }

		{*
		 Removes the service client associated with the key and release it.

		 @warning Before calling this method, make sure no method is running on this client.

		 @param key A string to identify the service client.
		 }

		{*
		 Enable or disable sending SDK name and version in the Mqtt Connect message. Enabled by default.
		 Must be called before calling connect.
		 }
		{-} procedure enableMetricsCollection(enabled:Boolean);cdecl;

		{*
		 Initialises the MQTT session and connects to AWS IoT using certificate-based mutual authentication

		 @return true if initialise finished with success

		 @param clientId The Client Identifier identifies the Client to the Server.

		 @param cleanSession specifies if the server should discard previous session information.

		 @param certificateId contains the ID of the certificate to use in the connection; must be in the keychain

		 @param callback When new mqtt session status is received callback will be called with new connection status.

		 }
		[MethodName('connectWithClientId:cleanSession:certificateId:statusCallback:')]
		{-} function connectWithClientIdcleanSessioncertificateIdstatusCallback(clientId:NSString;cleanSession:Boolean;certificateId:NSString;callback:AWSIoTMQTTStatusBlock):Boolean;cdecl;

		{*
		 Initialises the MQTT session and connects to AWS IoT using WebSocket/SigV4 authentication.  IAM
		 credentials are taken from the current service configuration.

		 @return true if initialise finished with success

		 @param clientId The Client Identifier identifies the Client to the Server.

		 @param cleanSession specifies if the server should discard previous session information.

		 @param callback When new mqtt session status is received the callback will be called with new connection status.

		 }
		[MethodName('connectUsingWebSocketWithClientId:cleanSession:statusCallback:')]
		{-} function connectUsingWebSocketWithClientIdcleanSessionstatusCallback(clientId:NSString{*};cleanSession:Boolean;callback:AWSIoTMQTTStatusBlock):Boolean;cdecl;

		{*
		 Disconnect from a mqtt client (close current mqtt session)

		 }
		{-} procedure disconnect;cdecl;

		{*
		 Get the current connection status
		 @return AWSIoTMQTTStatus
		 }
		{-} function getConnectionStatus:AWSIoTMQTTStatus;cdecl;

		{*
		 Send MQTT message to specified topic

		 @param string The message (As NSString object) to be sent.

		 @param qos The QoS value to use when publishing (optional, default AWSIoTMQTTQoSAtMostOnce).

		 @param topic The topic for publish to.

		 @return Boolean value indicating success or failure.

		 }
		[MethodName('publishString:onTopic:QoS:')]
		{-} function publishStringonTopicQoS(&string:NSString{*};topic:NSString{*};qos:AWSIoTMQTTQoS):Boolean;cdecl;

		{*
		 Send MQTT message to specified topic

		 @param data The message (As NSData) to be sent.

		 @param qos The QoS value to use when publishing (optional, default AWSIoTMQTTQoSAtMostOnce).

		 @param topic The topic for publish to.

		 @return Boolean value indicating success or failure.

		 }
		[MethodName('publishData:onTopic:QoS:')]
		{-} function publishDataonTopicQoS(data:NSData{*};topic:NSString{*};qos:AWSIoTMQTTQoS):Boolean;cdecl;

		{*
		 Subscribes to a topic at a specific QoS level

		 @param topic The Topic to subscribe to.

		 @param qos Specifies the QoS Level of the subscription: AWSIoTMQTTQoSAtMostOnce or AWSIoTMQTTQoSAtLeastOnce

		 @param callback Reference to AWSIOTMQTTNewMessageBlock. When new message is received the callback will be invoked.

		 @return Boolean value indicating success or failure.

		 }
		[MethodName('subscribeToTopic:QoS:messageCallback:')]
		{-} function subscribeToTopicQoSmessageCallback(topic:NSString{*};qos:AWSIoTMQTTQoS;callback:AWSIoTMQTTNewMessageBlock):Boolean;cdecl;

		{*
		 Subscribes to a topic at a specific QoS level

		 @param topic The Topic to subscribe to.

		 @param qos Specifies the QoS Level of the subscription: AWSIoTMQTTQoSAtMostOnce or AWSIoTMQTTQoSAtLeastOnce

		 @param callback Reference to AWSIOTMQTTExtendedNewMessageBlock. When new message is received the callback will be invoked.

		 @return Boolean value indicating success or failure.

		 }
		[MethodName('subscribeToTopic:QoS:extendedCallback:')]
		{-} function subscribeToTopicQoSextendedCallback(topic:NSString{*};qos:AWSIoTMQTTQoS;callback:AWSIoTMQTTExtendedNewMessageBlock):Boolean;cdecl;


		{*
		 Unsubscribes from a topic

		 @param topic The Topic to unsubscribe from.

		 }
		{-} procedure unsubscribeTopic(topic:NSString{*});cdecl;


		    //
		    // NOTE: the first 4 values in this enum may not be re-ordered.
		    // It must align with the same order in AWSIoTShadowOperationTypeStrings
		    // An internal array in the implementation depends on their
		    // values and order.
		    //







		    //
		    // NOTE: the first 5 values in this enum may not be re-ordered.
		    // It must align with the same order in AWSIoTShadowOperationStatusTypeStrings
		    // An internal array in the implementation depends on their
		    // values and order.
		    //









		{*
		 Register for updates on a device shadow

		 @param name The device shadow to register for updates on.

		 @param options A dictionary with device shadow registration options.  The options are:

		enableDebugging: BOOL, set to YES to enable additional console debugging (default NO)
		enableVersioning: BOOL, set to NO to disable versioning (default YES)
		enableForeignStateUpdateNotifications: BOOL, set to YES to enable foreign state updates (default NO)
		enableStaleDiscards: BOOL, set to NO to disable discarding stale updates (default YES)
		enableIgnoreDeltas: BOOL, set to YES to disable delta updates (default NO)
		QoS: AWSIoTMQTTQoS (default AWSIoTMQTTQoSMessageDeliveryAttemptedAtMostOnce)
		shadowOperationTimeoutSeconds: double, device shadow operation timeout (default 10.0)

		 @param callback The function to call when updates are received for the device shadow.

		 @return Boolean value indicating success or failure.

		 }

		[MethodName('registerWithShadow:options:eventCallback:')]
		{-} function registerWithShadowoptionseventCallback(name:NSString{*};options:NSDictionary{*};callback:AWSIoTShadowOptionsBlock):Boolean;cdecl;


		{*
		 Unregister from updates on a device shadow

		 @param name The device shadow to unregister from updates on.

		 @return Boolean value indicating success or failure.

		 }
		{-} function unregisterFromShadow(name:NSString{*}):Boolean;cdecl;

		{*
		 Update a device shadow

		 @param name The device shadow to update.

		 @param jsonString The JSON string to update the device shadow with.

		 @return Boolean value indicating success or failure.

		 }
		[MethodName('updateShadow:jsonString:')]
		{-} function updateShadowjsonString(name:NSString{*};jsonString:NSString{*}):Boolean;cdecl;

		{*
		 Update a device shadow with json data and client token.
		 If the json data is not valid, it returns false, and no update message
		 will be published. If the json data is valid, it publishes the data on
		 $aws/things/thingName/shadow/update topic, then return true.

		 @param name The name of the device shadow to be updated

		 @param jsonString The shadow state in format of JSON string

		 @param clientToken The client id to use when upadating the shadow

		 @return True if json string is valid and can be serialized successfully;
		 False if it cannot be serialized successfully.

		 }

		[MethodName('updateShadow:jsonString:clientToken:')]
		{-} function updateShadowjsonStringclientToken(name:NSString{*};jsonString:NSString{*};clientToken:NSString{*}):Boolean;cdecl;

		{*
		 Get a device shadow

		 @param name The device shadow to get.

		 @return Boolean value indicating success or failure.

		 }
		{-} function getShadow(name:NSString{*}):Boolean;cdecl;

		{*
		 Get a device shadow

		 @param name The device shadow to get.

		 @param clientToken A client token to use when requesting the device shadow.

		 @return Boolean value indicating success or failure.

		 }
		[MethodName('getShadow:clientToken:')]
		{-} function getShadowclientToken(name:NSString{*};clientToken:NSString{*}):Boolean;cdecl;

		{*
		 Delete a device shadow

		 @param name The device shadow to delete.

		 @return Boolean value indicating success or failure.

		 }
		{-} function deleteShadow(name:NSString{*}):Boolean;cdecl;

		{*
		 Delete a device shadow

		 @param name The device shadow to delete.

		 @param clientToken A client token to use when deleting the device shadow.

		 @return Boolean value indicating success or failure.

		 }
		[MethodName('deleteShadow:clientToken:')]
		{-} function deleteShadowclientToken(name:NSString{*};clientToken:NSString{*}):Boolean;cdecl;


	end;

	AWSIoTDataManagerClass=interface(AWSServiceClass)//
	['{BD28E414-6270-4756-A29F-87964C88BEED}']
		{+} function defaultIoTDataManager:AWSIoTDataManager;cdecl;
    // __attribute__ ((deprecated("Use `registerIoTDataManagerWithConfiguration()):orKey:` with the custom endpoint to initialize AWSIoTDataManager"
		[MethodName('registerIoTDataManagerWithConfiguration:forKey:')]
		{+} procedure registerIoTDataManagerWithConfigurationforKey(configuration:AWSServiceConfiguration{*};key:NSString{*});cdecl;
		[MethodName('registerIoTDataManagerWithConfiguration:withMQTTConfiguration:forKey:')]
		{+} procedure registerIoTDataManagerWithConfigurationwithMQTTConfigurationforKey(configuration:AWSServiceConfiguration{*};mqttConfig:AWSIoTMQTTConfiguration{*};key:NSString{*});cdecl;
		{+} function IoTDataManagerForKey(key:NSString{*}):AWSIoTDataManager;cdecl;
		{+} procedure removeIoTDataManagerForKey(key:NSString{*});cdecl;
	end;

	TAWSIoTDataManager=class(TOCGenericImport<AWSIoTDataManagerClass,AWSIoTDataManager>)
	end;

  AWSIoTResourcesClass = interface(NSObjectClass)
    ['{CFA9FB80-ACBB-4EE0-8AD3-1012C5FDEB70}']
    { class } function sharedInstance: Pointer { instancetype }; cdecl;
  end;

  AWSIoTResources = interface(NSObject)
    ['{6D4FD456-C3DA-463E-917A-479A5EFFC236}']
    function JSONObject: NSDictionary; cdecl;
  end;

  TAWSIoTResources = class(TOCGenericImport<AWSIoTResourcesClass,
    AWSIoTResources>)
  end;

  PAWSIoTResources = Pointer;

  AWSIoTDataResourcesClass = interface(NSObjectClass)
    ['{1EEE142B-754B-490B-9E3A-BB54C265F69F}']
    { class } function sharedInstance: Pointer { instancetype }; cdecl;
  end;

  AWSIoTDataResources = interface(NSObject)
    ['{4E997454-7F03-4FC8-BA9D-70442ABA1D28}']
    function JSONObject: NSDictionary; cdecl;
  end;

  TAWSIoTDataResources = class(TOCGenericImport<AWSIoTDataResourcesClass,
    AWSIoTDataResources>)
  end;

  PAWSIoTDataResources = Pointer;

  AWSIoTMQTTLastWillAndTestamentClass = interface(NSObjectClass)
    ['{0605B5E7-DB56-4409-A2A5-8BF67BF37B08}']
  end;

  AWSIoTMQTTLastWillAndTestament = interface(NSObject)
    ['{96FDD45A-3684-4339-B319-BA7EC7A1DD80}']
    procedure setTopic(topic: NSString); cdecl;
    function topic: NSString; cdecl;
    procedure setMessage(message: NSString); cdecl;
    function message: NSString; cdecl;
    procedure setQos(qos: AWSIoTMQTTQoS); cdecl;
    function qos: AWSIoTMQTTQoS; cdecl;
  end;

  TAWSIoTMQTTLastWillAndTestament = class
    (TOCGenericImport<AWSIoTMQTTLastWillAndTestamentClass,
    AWSIoTMQTTLastWillAndTestament>)
  end;

  PAWSIoTMQTTLastWillAndTestament = Pointer;

  AWSIoTMQTTConfigurationClass = interface(NSObjectClass)
    ['{0E6830A3-F225-4573-9590-3563BCEB6D84}']
  end;

  AWSIoTMQTTConfiguration = interface(NSObject)
    ['{9FF15325-98F0-47F8-AC67-1E1B4AD71275}']
    function baseReconnectTimeInterval: NSTimeInterval; cdecl;
    function minimumConnectionTimeInterval: NSTimeInterval; cdecl;
    function maximumReconnectTimeInterval: NSTimeInterval; cdecl;
    function keepAliveTimeInterval: NSTimeInterval; cdecl;
    function lastWillAndTestament: AWSIoTMQTTLastWillAndTestament; cdecl;
    function runLoop: NSRunLoop; cdecl;
    function runLoopMode: NSString; cdecl;
    function autoResubscribe: Boolean; cdecl;
    function initWithKeepAliveTimeInterval(kat: NSTimeInterval;
      baseReconnectTimeInterval: NSTimeInterval;
      minimumConnectionTimeInterval: NSTimeInterval;
      maximumReconnectTimeInterval: NSTimeInterval; runLoop: NSRunLoop;
      runLoopMode: NSString; autoResubscribe: Boolean;
      lastWillAndTestament: AWSIoTMQTTLastWillAndTestament)
      : Pointer { instancetype }; cdecl;
  end;

  TAWSIoTMQTTConfiguration = class
    (TOCGenericImport<AWSIoTMQTTConfigurationClass, AWSIoTMQTTConfiguration>)
  end;

  PAWSIoTMQTTConfiguration = Pointer;

  // ===== Exported string consts =====

//function AWSIoTVersionNumber: Pointer;
//function AWSIoTVersionString: Pointer;
//function AWSIoTErrorDomain: NSString;
//function AWSIoTDataVersionNumber: Pointer;
//function AWSIoTDataVersionString: Pointer;
//function AWSIoTDataErrorDomain: NSString;


// ===== External functions =====

const
  libAWSIoT = '/System/Library/Frameworks/AWSIoT.framework/AWSIoT';

implementation

{$IF defined(IOS) and NOT defined(CPUARM)}

uses
  Posix.Dlfcn;

var
  AWSIoTModule: THandle;

{$ENDIF IOS}
//procedure libAWSIoTLoader; cdecl; external libAWSIoT;
//
//function AWSIoTErrorDomain: NSString;
//begin
//  Result := CocoaNSStringConst(libAWSIoT, 'AWSIoTErrorDomain');
//end;
//
//function AWSIoTDataErrorDomain: NSString;
//begin
//  Result := CocoaNSStringConst(libAWSIoT, 'AWSIoTDataErrorDomain');
//end;
//
//function AWSIoTVersionNumber: Pointer;
//begin
//  Result := CocoaPointerConst(libAWSIoT, 'AWSIoTVersionNumber');
//end;
//
//function AWSIoTVersionString: Pointer;
//begin
//  Result := CocoaPointerConst(libAWSIoT, 'AWSIoTVersionString');
//end;
//
//function AWSIoTDataVersionNumber: Pointer;
//begin
//  Result := CocoaPointerConst(libAWSIoT, 'AWSIoTDataVersionNumber');
//end;
//
//function AWSIoTDataVersionString: Pointer;
//begin
//  Result := CocoaPointerConst(libAWSIoT, 'AWSIoTDataVersionString');
//end;

{$IF defined(IOS) and NOT defined(CPUARM)}

initialization

AWSIoTModule := dlopen(MarshaledAString(libAWSIoT), RTLD_LAZY);

finalization

dlclose(AWSIoTModule);
{$ENDIF IOS}

end.
