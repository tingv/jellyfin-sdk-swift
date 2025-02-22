# UserViewsAPI

All URIs are relative to *http://localhost:8096*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getGroupingOptions**](UserViewsAPI.md#getgroupingoptions) | **GET** /Users/{userId}/GroupingOptions | Get user view grouping options.
[**getUserViews**](UserViewsAPI.md#getuserviews) | **GET** /Users/{userId}/Views | Get user views.


# **getGroupingOptions**
```swift
    open class func getGroupingOptions( userId: String) -> Promise<[SpecialViewOptionDto]>
```

Get user view grouping options.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let userId = "userId_example" // String | User id.

// Get user view grouping options.
UserViewsAPI.getGroupingOptions(userId: userId).then {
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
 **userId** | [**String**](.md) | User id. | 

### Return type

[**[SpecialViewOptionDto]**](SpecialViewOptionDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserViews**
```swift
    open class func getUserViews( userId: String,  includeExternalContent: Bool? = nil,  presetViews: [String]? = nil,  includeHidden: Bool? = nil) -> Promise<BaseItemDtoQueryResult>
```

Get user views.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let userId = "userId_example" // String | User id.
let includeExternalContent = true // Bool | Whether or not to include external views such as channels or live tv. (optional)
let presetViews = ["inner_example"] // [String] | Preset views. (optional)
let includeHidden = true // Bool | Whether or not to include hidden content. (optional) (default to false)

// Get user views.
UserViewsAPI.getUserViews(userId: userId, includeExternalContent: includeExternalContent, presetViews: presetViews, includeHidden: includeHidden).then {
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
 **userId** | [**String**](.md) | User id. | 
 **includeExternalContent** | **Bool** | Whether or not to include external views such as channels or live tv. | [optional] 
 **presetViews** | [**[String]**](String.md) | Preset views. | [optional] 
 **includeHidden** | **Bool** | Whether or not to include hidden content. | [optional] [default to false]

### Return type

[**BaseItemDtoQueryResult**](BaseItemDtoQueryResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

