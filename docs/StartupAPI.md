# StartupAPI

All URIs are relative to *http://localhost:8096*

Method | HTTP request | Description
------------- | ------------- | -------------
[**completeWizard**](StartupAPI.md#completewizard) | **POST** /Startup/Complete | Completes the startup wizard.
[**getFirstUser**](StartupAPI.md#getfirstuser) | **GET** /Startup/User | Gets the first user.
[**getFirstUser2**](StartupAPI.md#getfirstuser2) | **GET** /Startup/FirstUser | Gets the first user.
[**getStartupConfiguration**](StartupAPI.md#getstartupconfiguration) | **GET** /Startup/Configuration | Gets the initial startup wizard configuration.
[**setRemoteAccess**](StartupAPI.md#setremoteaccess) | **POST** /Startup/RemoteAccess | Sets remote access and UPnP.
[**updateInitialConfiguration**](StartupAPI.md#updateinitialconfiguration) | **POST** /Startup/Configuration | Sets the initial startup wizard configuration.
[**updateStartupUser**](StartupAPI.md#updatestartupuser) | **POST** /Startup/User | Sets the user name and password.


# **completeWizard**
```swift
    open class func completeWizard() -> Promise<Void>
```

Completes the startup wizard.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient


// Completes the startup wizard.
StartupAPI.completeWizard().then {
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
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFirstUser**
```swift
    open class func getFirstUser() -> Promise<StartupUserDto>
```

Gets the first user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient


// Gets the first user.
StartupAPI.getFirstUser().then {
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

[**StartupUserDto**](StartupUserDto.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFirstUser2**
```swift
    open class func getFirstUser2() -> Promise<StartupUserDto>
```

Gets the first user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient


// Gets the first user.
StartupAPI.getFirstUser2().then {
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

[**StartupUserDto**](StartupUserDto.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getStartupConfiguration**
```swift
    open class func getStartupConfiguration() -> Promise<StartupConfigurationDto>
```

Gets the initial startup wizard configuration.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient


// Gets the initial startup wizard configuration.
StartupAPI.getStartupConfiguration().then {
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

[**StartupConfigurationDto**](StartupConfigurationDto.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **setRemoteAccess**
```swift
    open class func setRemoteAccess( startupRemoteAccessDto: StartupRemoteAccessDto) -> Promise<Void>
```

Sets remote access and UPnP.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let startupRemoteAccessDto = StartupRemoteAccessDto(enableRemoteAccess: false, enableAutomaticPortMapping: false) // StartupRemoteAccessDto | The startup remote access dto.

// Sets remote access and UPnP.
StartupAPI.setRemoteAccess(startupRemoteAccessDto: startupRemoteAccessDto).then {
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
 **startupRemoteAccessDto** | [**StartupRemoteAccessDto**](StartupRemoteAccessDto.md) | The startup remote access dto. | 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateInitialConfiguration**
```swift
    open class func updateInitialConfiguration( startupConfigurationDto: StartupConfigurationDto) -> Promise<Void>
```

Sets the initial startup wizard configuration.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let startupConfigurationDto = StartupConfigurationDto(uICulture: "uICulture_example", metadataCountryCode: "metadataCountryCode_example", preferredMetadataLanguage: "preferredMetadataLanguage_example") // StartupConfigurationDto | The updated startup configuration.

// Sets the initial startup wizard configuration.
StartupAPI.updateInitialConfiguration(startupConfigurationDto: startupConfigurationDto).then {
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
 **startupConfigurationDto** | [**StartupConfigurationDto**](StartupConfigurationDto.md) | The updated startup configuration. | 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateStartupUser**
```swift
    open class func updateStartupUser( startupUserDto: StartupUserDto? = nil) -> Promise<Void>
```

Sets the user name and password.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let startupUserDto = StartupUserDto(name: "name_example", password: "password_example") // StartupUserDto | The DTO containing username and password. (optional)

// Sets the user name and password.
StartupAPI.updateStartupUser(startupUserDto: startupUserDto).then {
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
 **startupUserDto** | [**StartupUserDto**](StartupUserDto.md) | The DTO containing username and password. | [optional] 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

