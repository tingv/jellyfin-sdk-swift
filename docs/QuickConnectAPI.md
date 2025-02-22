# QuickConnectAPI

All URIs are relative to *http://localhost:8096*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activate**](QuickConnectAPI.md#activate) | **POST** /QuickConnect/Activate | Temporarily activates quick connect for five minutes.
[**authorize**](QuickConnectAPI.md#authorize) | **POST** /QuickConnect/Authorize | Authorizes a pending quick connect request.
[**available**](QuickConnectAPI.md#available) | **POST** /QuickConnect/Available | Enables or disables quick connect.
[**connect**](QuickConnectAPI.md#connect) | **GET** /QuickConnect/Connect | Attempts to retrieve authentication information.
[**deauthorize**](QuickConnectAPI.md#deauthorize) | **POST** /QuickConnect/Deauthorize | Deauthorize all quick connect devices for the current user.
[**getStatus**](QuickConnectAPI.md#getstatus) | **GET** /QuickConnect/Status | Gets the current quick connect state.
[**initiate**](QuickConnectAPI.md#initiate) | **GET** /QuickConnect/Initiate | Initiate a new quick connect request.


# **activate**
```swift
    open class func activate() -> Promise<Void>
```

Temporarily activates quick connect for five minutes.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient


// Temporarily activates quick connect for five minutes.
QuickConnectAPI.activate().then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authorize**
```swift
    open class func authorize( code: String) -> Promise<Bool>
```

Authorizes a pending quick connect request.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let code = "code_example" // String | Quick connect code to authorize.

// Authorizes a pending quick connect request.
QuickConnectAPI.authorize(code: code).then {
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
 **code** | **String** | Quick connect code to authorize. | 

### Return type

**Bool**

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **available**
```swift
    open class func available( status: QuickConnectState? = nil) -> Promise<Void>
```

Enables or disables quick connect.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let status = QuickConnectState() // QuickConnectState | New MediaBrowser.Model.QuickConnect.QuickConnectState. (optional)

// Enables or disables quick connect.
QuickConnectAPI.available(status: status).then {
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
 **status** | [**QuickConnectState**](.md) | New MediaBrowser.Model.QuickConnect.QuickConnectState. | [optional] 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **connect**
```swift
    open class func connect( secret: String) -> Promise<QuickConnectResult>
```

Attempts to retrieve authentication information.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let secret = "secret_example" // String | Secret previously returned from the Initiate endpoint.

// Attempts to retrieve authentication information.
QuickConnectAPI.connect(secret: secret).then {
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
 **secret** | **String** | Secret previously returned from the Initiate endpoint. | 

### Return type

[**QuickConnectResult**](QuickConnectResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deauthorize**
```swift
    open class func deauthorize() -> Promise<Int>
```

Deauthorize all quick connect devices for the current user.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient


// Deauthorize all quick connect devices for the current user.
QuickConnectAPI.deauthorize().then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**Int**

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStatus**
```swift
    open class func getStatus() -> Promise<QuickConnectState>
```

Gets the current quick connect state.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient


// Gets the current quick connect state.
QuickConnectAPI.getStatus().then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**QuickConnectState**](QuickConnectState.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **initiate**
```swift
    open class func initiate() -> Promise<QuickConnectResult>
```

Initiate a new quick connect request.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient


// Initiate a new quick connect request.
QuickConnectAPI.initiate().then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**QuickConnectResult**](QuickConnectResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

