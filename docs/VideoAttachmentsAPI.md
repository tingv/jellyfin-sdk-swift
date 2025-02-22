# VideoAttachmentsAPI

All URIs are relative to *http://localhost:8096*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAttachment**](VideoAttachmentsAPI.md#getattachment) | **GET** /Videos/{videoId}/{mediaSourceId}/Attachments/{index} | Get video attachment.


# **getAttachment**
```swift
    open class func getAttachment( videoId: String,  mediaSourceId: String,  index: Int) -> Promise<URL>
```

Get video attachment.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let videoId = "videoId_example" // String | Video ID.
let mediaSourceId = "mediaSourceId_example" // String | Media Source ID.
let index = 987 // Int | Attachment Index.

// Get video attachment.
VideoAttachmentsAPI.getAttachment(videoId: videoId, mediaSourceId: mediaSourceId, index: index).then {
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
 **videoId** | [**String**](.md) | Video ID. | 
 **mediaSourceId** | **String** | Media Source ID. | 
 **index** | **Int** | Attachment Index. | 

### Return type

**URL**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

