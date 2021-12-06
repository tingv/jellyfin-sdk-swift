# DevicesAPI

All URIs are relative to *http://localhost:8096*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteDevice**](DevicesAPI.md#deletedevice) | **DELETE** /Devices | Deletes a device.
[**getDeviceInfo**](DevicesAPI.md#getdeviceinfo) | **GET** /Devices/Info | Get info for a device.
[**getDeviceOptions**](DevicesAPI.md#getdeviceoptions) | **GET** /Devices/Options | Get options for a device.
[**getDevices**](DevicesAPI.md#getdevices) | **GET** /Devices | Get Devices.
[**updateDeviceOptions**](DevicesAPI.md#updatedeviceoptions) | **POST** /Devices/Options | Update device options.


# **deleteDevice**
```swift
    open class func deleteDevice( id: String) -> Promise<Void>
```

Deletes a device.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let id = "id_example" // String | Device Id.

// Deletes a device.
DevicesAPI.deleteDevice(id: id).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | Device Id. | 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceInfo**
```swift
    open class func getDeviceInfo( id: String) -> Promise<DeviceInfo>
```

Get info for a device.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let id = "id_example" // String | Device Id.

// Get info for a device.
DevicesAPI.getDeviceInfo(id: id).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | Device Id. | 

### Return type

[**DeviceInfo**](DeviceInfo.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDeviceOptions**
```swift
    open class func getDeviceOptions( id: String) -> Promise<DeviceOptions>
```

Get options for a device.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let id = "id_example" // String | Device Id.

// Get options for a device.
DevicesAPI.getDeviceOptions(id: id).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | Device Id. | 

### Return type

[**DeviceOptions**](DeviceOptions.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDevices**
```swift
    open class func getDevices( supportsSync: Bool? = nil,  userId: String? = nil) -> Promise<DeviceInfoQueryResult>
```

Get Devices.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let supportsSync = true // Bool | Gets or sets a value indicating whether [supports synchronize]. (optional)
let userId = "userId_example" // String | Gets or sets the user identifier. (optional)

// Get Devices.
DevicesAPI.getDevices(supportsSync: supportsSync, userId: userId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supportsSync** | **Bool** | Gets or sets a value indicating whether [supports synchronize]. | [optional] 
 **userId** | **String** | Gets or sets the user identifier. | [optional] 

### Return type

[**DeviceInfoQueryResult**](DeviceInfoQueryResult.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateDeviceOptions**
```swift
    open class func updateDeviceOptions( id: String,  deviceOptions: DeviceOptions) -> Promise<Void>
```

Update device options.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let id = "id_example" // String | Device Id.
let deviceOptions = DeviceOptions(customName: "customName_example") // DeviceOptions | Device Options.

// Update device options.
DevicesAPI.updateDeviceOptions(id: id, deviceOptions: deviceOptions).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String** | Device Id. | 
 **deviceOptions** | [**DeviceOptions**](DeviceOptions.md) | Device Options. | 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

