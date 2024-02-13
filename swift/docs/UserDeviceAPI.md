# UserDeviceAPI

All URIs are relative to *https://api.dev-1.sf.safecdx.io/v1beta/notification-push*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](UserDeviceAPI.md#create) | **POST** /device | Creates a UserDevice entity.
[**delete**](UserDeviceAPI.md#delete) | **DELETE** /device | Deletes UserDevice entity by device token.


# **create**
```swift
    open class func create(userDevice: UserDevice? = nil, completion: @escaping (_ data: UserDevice?, _ error: Error?) -> Void)
```

Creates a UserDevice entity.

### Example
```swift
import Safehealth

let userDevice = UserDevice(id: "id_example", createdAt: Date(), updatedAt: Date(), deviceId: "deviceId_example", appVersion: "appVersion_example", deviceModel: "deviceModel_example", deviceToken: "deviceToken_example", deviceType: "deviceType_example", idfaId: "idfaId_example", isLoggedIn: false, osVersion: "osVersion_example", voipToken: "voipToken_example", userId: "userId_example", tenantId: "tenantId_example", userUUID: "userUUID_example", nationalHealthId: "nationalHealthId_example", language: "language_example") // UserDevice | Represents a device used by the legacy push notification system. (optional)

// Creates a UserDevice entity.
UserDeviceAPI.create(userDevice: userDevice) { (response, error) in
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
 **userDevice** | [**UserDevice**](UserDevice.md) | Represents a device used by the legacy push notification system. | [optional] 

### Return type

[**UserDevice**](UserDevice.md)

### Authorization

[Identity Access Token](../README.md#Identity Access Token), [Safe Account](../README.md#Safe Account), [Safe Tenant](../README.md#Safe Tenant)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/*+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete**
```swift
    open class func delete(deviceToken: String? = nil, completion: @escaping (_ data: UserDevice?, _ error: Error?) -> Void)
```

Deletes UserDevice entity by device token.

### Example
```swift
import Safehealth

let deviceToken = "deviceToken_example" // String | Identifying token passed when creating UserDevice. (optional)

// Deletes UserDevice entity by device token.
UserDeviceAPI.delete(deviceToken: deviceToken) { (response, error) in
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
 **deviceToken** | **String** | Identifying token passed when creating UserDevice. | [optional] 

### Return type

[**UserDevice**](UserDevice.md)

### Authorization

[Identity Access Token](../README.md#Identity Access Token), [Safe Account](../README.md#Safe Account), [Safe Tenant](../README.md#Safe Tenant)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

