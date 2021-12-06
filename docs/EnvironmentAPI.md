# EnvironmentAPI

All URIs are relative to *http://localhost:8096*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getDefaultDirectoryBrowser**](EnvironmentAPI.md#getdefaultdirectorybrowser) | **GET** /Environment/DefaultDirectoryBrowser | Get Default directory browser.
[**getDirectoryContents**](EnvironmentAPI.md#getdirectorycontents) | **GET** /Environment/DirectoryContents | Gets the contents of a given directory in the file system.
[**getDrives**](EnvironmentAPI.md#getdrives) | **GET** /Environment/Drives | Gets available drives from the server&#39;s file system.
[**getNetworkShares**](EnvironmentAPI.md#getnetworkshares) | **GET** /Environment/NetworkShares | Gets network paths.
[**getParentPath**](EnvironmentAPI.md#getparentpath) | **GET** /Environment/ParentPath | Gets the parent path of a given path.
[**validatePath**](EnvironmentAPI.md#validatepath) | **POST** /Environment/ValidatePath | Validates path.


# **getDefaultDirectoryBrowser**
```swift
    open class func getDefaultDirectoryBrowser() -> Promise<DefaultDirectoryBrowserInfoDto>
```

Get Default directory browser.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient


// Get Default directory browser.
EnvironmentAPI.getDefaultDirectoryBrowser().then {
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

[**DefaultDirectoryBrowserInfoDto**](DefaultDirectoryBrowserInfoDto.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDirectoryContents**
```swift
    open class func getDirectoryContents( path: String,  includeFiles: Bool? = nil,  includeDirectories: Bool? = nil) -> Promise<[FileSystemEntryInfo]>
```

Gets the contents of a given directory in the file system.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let path = "path_example" // String | The path.
let includeFiles = true // Bool | An optional filter to include or exclude files from the results. true/false. (optional) (default to false)
let includeDirectories = true // Bool | An optional filter to include or exclude folders from the results. true/false. (optional) (default to false)

// Gets the contents of a given directory in the file system.
EnvironmentAPI.getDirectoryContents(path: path, includeFiles: includeFiles, includeDirectories: includeDirectories).then {
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
 **path** | **String** | The path. | 
 **includeFiles** | **Bool** | An optional filter to include or exclude files from the results. true/false. | [optional] [default to false]
 **includeDirectories** | **Bool** | An optional filter to include or exclude folders from the results. true/false. | [optional] [default to false]

### Return type

[**[FileSystemEntryInfo]**](FileSystemEntryInfo.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDrives**
```swift
    open class func getDrives() -> Promise<[FileSystemEntryInfo]>
```

Gets available drives from the server's file system.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient


// Gets available drives from the server's file system.
EnvironmentAPI.getDrives().then {
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

[**[FileSystemEntryInfo]**](FileSystemEntryInfo.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNetworkShares**
```swift
    open class func getNetworkShares() -> Promise<[FileSystemEntryInfo]>
```

Gets network paths.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient


// Gets network paths.
EnvironmentAPI.getNetworkShares().then {
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

[**[FileSystemEntryInfo]**](FileSystemEntryInfo.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getParentPath**
```swift
    open class func getParentPath( path: String) -> Promise<String>
```

Gets the parent path of a given path.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let path = "path_example" // String | The path.

// Gets the parent path of a given path.
EnvironmentAPI.getParentPath(path: path).then {
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
 **path** | **String** | The path. | 

### Return type

**String**

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validatePath**
```swift
    open class func validatePath( validatePathDto: ValidatePathDto) -> Promise<Void>
```

Validates path.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let validatePathDto = ValidatePathDto(validateWritable: false, path: "path_example", isFile: false) // ValidatePathDto | Validate request object.

// Validates path.
EnvironmentAPI.validatePath(validatePathDto: validatePathDto).then {
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
 **validatePathDto** | [**ValidatePathDto**](ValidatePathDto.md) | Validate request object. | 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

