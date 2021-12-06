# RemoteImageAPI

All URIs are relative to *http://localhost:8096*

Method | HTTP request | Description
------------- | ------------- | -------------
[**downloadRemoteImage**](RemoteImageAPI.md#downloadremoteimage) | **POST** /Items/{itemId}/RemoteImages/Download | Downloads a remote image for an item.
[**getRemoteImageProviders**](RemoteImageAPI.md#getremoteimageproviders) | **GET** /Items/{itemId}/RemoteImages/Providers | Gets available remote image providers for an item.
[**getRemoteImages**](RemoteImageAPI.md#getremoteimages) | **GET** /Items/{itemId}/RemoteImages | Gets available remote images for an item.


# **downloadRemoteImage**
```swift
    open class func downloadRemoteImage( itemId: String,  type: ImageType,  imageUrl: String? = nil) -> Promise<Void>
```

Downloads a remote image for an item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let itemId = "itemId_example" // String | Item Id.
let type = ImageType() // ImageType | The image type.
let imageUrl = "imageUrl_example" // String | The image url. (optional)

// Downloads a remote image for an item.
RemoteImageAPI.downloadRemoteImage(itemId: itemId, type: type, imageUrl: imageUrl).then {
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
 **itemId** | **String** | Item Id. | 
 **type** | [**ImageType**](.md) | The image type. | 
 **imageUrl** | **String** | The image url. | [optional] 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRemoteImageProviders**
```swift
    open class func getRemoteImageProviders( itemId: String) -> Promise<[ImageProviderInfo]>
```

Gets available remote image providers for an item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let itemId = "itemId_example" // String | Item Id.

// Gets available remote image providers for an item.
RemoteImageAPI.getRemoteImageProviders(itemId: itemId).then {
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
 **itemId** | **String** | Item Id. | 

### Return type

[**[ImageProviderInfo]**](ImageProviderInfo.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRemoteImages**
```swift
    open class func getRemoteImages( itemId: String,  type: ImageType? = nil,  startIndex: Int? = nil,  limit: Int? = nil,  providerName: String? = nil,  includeAllLanguages: Bool? = nil) -> Promise<RemoteImageResult>
```

Gets available remote images for an item.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let itemId = "itemId_example" // String | Item Id.
let type = ImageType() // ImageType | The image type. (optional)
let startIndex = 987 // Int | Optional. The record index to start at. All items with a lower index will be dropped from the results. (optional)
let limit = 987 // Int | Optional. The maximum number of records to return. (optional)
let providerName = "providerName_example" // String | Optional. The image provider to use. (optional)
let includeAllLanguages = true // Bool | Optional. Include all languages. (optional) (default to false)

// Gets available remote images for an item.
RemoteImageAPI.getRemoteImages(itemId: itemId, type: type, startIndex: startIndex, limit: limit, providerName: providerName, includeAllLanguages: includeAllLanguages).then {
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
 **itemId** | **String** | Item Id. | 
 **type** | [**ImageType**](.md) | The image type. | [optional] 
 **startIndex** | **Int** | Optional. The record index to start at. All items with a lower index will be dropped from the results. | [optional] 
 **limit** | **Int** | Optional. The maximum number of records to return. | [optional] 
 **providerName** | **String** | Optional. The image provider to use. | [optional] 
 **includeAllLanguages** | **Bool** | Optional. Include all languages. | [optional] [default to false]

### Return type

[**RemoteImageResult**](RemoteImageResult.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

