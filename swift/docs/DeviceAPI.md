# DeviceAPI

All URIs are relative to *https://api.dev-1.sf.safecdx.io/v1beta/notification-push*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](DeviceAPI.md#delete) | **DELETE** /users/{userId}/devices/{deviceId} | Deletes the identified device from the specified user&#39;s devices.
[**list**](DeviceAPI.md#list) | **GET** /users/{userId}/devices | Retrieves a pageable list of devices associated with the specified user.
[**store**](DeviceAPI.md#store) | **POST** /users/{userId}/devices | Stores a new device associated with the specified user. If a device with any matching token(s) already exists for that user, it will be removed.


# **delete**
```swift
    open class func delete(userId: UUID, deviceId: UUID, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Deletes the identified device from the specified user's devices.

### Example
```swift
import Safehealth

let userId = 987 // UUID | Identifies the user to whom the device is associated.
let deviceId = 987 // UUID | Identifies the device to be deleted.

// Deletes the identified device from the specified user's devices.
DeviceAPI.delete(userId: userId, deviceId: deviceId) { (response, error) in
    guard error == nil else {
        print(error!)
        return
    }

    if response != nil {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **UUID** | Identifies the user to whom the device is associated. | 
 **deviceId** | **UUID** | Identifies the device to be deleted. | 

### Return type

Void (empty response body)

### Authorization

[Identity Access Token](../README.md#Identity Access Token), [Safe Account](../README.md#Safe Account), [Safe Tenant](../README.md#Safe Tenant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **list**
```swift
    open class func list(userId: UUID, page: Int? = nil, limit: Int? = nil, completion: @escaping (_ data: DeviceListResponse?, _ error: Error?) -> Void)
```

Retrieves a pageable list of devices associated with the specified user.

### Example
```swift
import Safehealth

let userId = 987 // UUID | Identifies the user for whom to retrieve devices.
let page = 987 // Int |  (optional)
let limit = 987 // Int |  (optional)

// Retrieves a pageable list of devices associated with the specified user.
DeviceAPI.list(userId: userId, page: page, limit: limit) { (response, error) in
    guard error == nil else {
        print(error!)
        return
    }

    if response != nil {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **UUID** | Identifies the user for whom to retrieve devices. | 
 **page** | **Int** |  | [optional] 
 **limit** | **Int** |  | [optional] 

### Return type

[**DeviceListResponse**](DeviceListResponse.md)

### Authorization

[Identity Access Token](../README.md#Identity Access Token), [Safe Account](../README.md#Safe Account), [Safe Tenant](../README.md#Safe Tenant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **store**
```swift
    open class func store(userId: UUID, deviceCreateRequest: DeviceCreateRequest? = nil, completion: @escaping (_ data: DeviceCreateResponse?, _ error: Error?) -> Void)
```

Stores a new device associated with the specified user. If a device with any matching token(s) already exists for that user, it will be removed.

### Example
```swift
import Safehealth

let userId = 987 // UUID | Identifies the user to whom this device will be associated.
let deviceCreateRequest = DeviceCreateRequest(device: Device(id: 123, createdAt: Date(), updatedAt: Date(), platform: Platform(), web: Web(operatingSystem: OperatingSystem(), browserName: BrowserName(), hostname: "hostname_example", defaults: WebPushDefaults(channels: WebChannels(firebaseCloudMessaging: WebFirebaseCloudMessaging(projectId: "projectId_example", appId: "appId_example", token: "token_example")))), mobile: Mobile(os: MobileOperatingSystem(), ios: AppleIos(bundleId: "bundleId_example", teamId: "teamId_example", signingCertificateType: SigningCertificate(), channels: AppleIosChannels(simpleNotificationService: AppleSimpleNotificationService(apnsVoip: ApplePushNotificationServiceVoIp(applicationArn: "applicationArn_example", token: "token_example")), firebaseCloudMessaging: AppleFirebaseCloudMessaging(projectId: "projectId_example", applicationId: "applicationId_example", token: "token_example"))), android: Android(channels: AndroidChannels(firebaseCloudMessaging: AndroidFirebaseCloudMessaging(projectId: "projectId_example", applicationId: "applicationId_example", token: "token_example")))))) // DeviceCreateRequest | Carries all device tokens and information required to deliver notifications to the device. (optional)

// Stores a new device associated with the specified user. If a device with any matching token(s) already exists for that user, it will be removed.
DeviceAPI.store(userId: userId, deviceCreateRequest: deviceCreateRequest) { (response, error) in
    guard error == nil else {
        print(error!)
        return
    }

    if response != nil {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **UUID** | Identifies the user to whom this device will be associated. | 
 **deviceCreateRequest** | [**DeviceCreateRequest**](DeviceCreateRequest.md) | Carries all device tokens and information required to deliver notifications to the device. | [optional] 

### Return type

[**DeviceCreateResponse**](DeviceCreateResponse.md)

### Authorization

[Identity Access Token](../README.md#Identity Access Token), [Safe Account](../README.md#Safe Account), [Safe Tenant](../README.md#Safe Tenant)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

