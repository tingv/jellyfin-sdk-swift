# CollectionAPI

All URIs are relative to *http://localhost:8096*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addToCollection**](CollectionAPI.md#addtocollection) | **POST** /Collections/{collectionId}/Items | Adds items to a collection.
[**createCollection**](CollectionAPI.md#createcollection) | **POST** /Collections | Creates a new collection.
[**removeFromCollection**](CollectionAPI.md#removefromcollection) | **DELETE** /Collections/{collectionId}/Items | Removes items from a collection.


# **addToCollection**
```swift
    open class func addToCollection( collectionId: String,  ids: [String]) -> Promise<Void>
```

Adds items to a collection.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let collectionId = "collectionId_example" // String | The collection id.
let ids = ["inner_example"] // [String] | Item ids, comma delimited.

// Adds items to a collection.
CollectionAPI.addToCollection(collectionId: collectionId, ids: ids).then {
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
 **collectionId** | [**String**](.md) | The collection id. | 
 **ids** | [**[String]**](String.md) | Item ids, comma delimited. | 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createCollection**
```swift
    open class func createCollection( name: String? = nil,  ids: [String]? = nil,  parentId: String? = nil,  isLocked: Bool? = nil) -> Promise<CollectionCreationResult>
```

Creates a new collection.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let name = "name_example" // String | The name of the collection. (optional)
let ids = ["inner_example"] // [String] | Item Ids to add to the collection. (optional)
let parentId = "parentId_example" // String | Optional. Create the collection within a specific folder. (optional)
let isLocked = true // Bool | Whether or not to lock the new collection. (optional) (default to false)

// Creates a new collection.
CollectionAPI.createCollection(name: name, ids: ids, parentId: parentId, isLocked: isLocked).then {
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
 **name** | **String** | The name of the collection. | [optional] 
 **ids** | [**[String]**](String.md) | Item Ids to add to the collection. | [optional] 
 **parentId** | [**String**](.md) | Optional. Create the collection within a specific folder. | [optional] 
 **isLocked** | **Bool** | Whether or not to lock the new collection. | [optional] [default to false]

### Return type

[**CollectionCreationResult**](CollectionCreationResult.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeFromCollection**
```swift
    open class func removeFromCollection( collectionId: String,  ids: [String]) -> Promise<Void>
```

Removes items from a collection.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let collectionId = "collectionId_example" // String | The collection id.
let ids = ["inner_example"] // [String] | Item ids, comma delimited.

// Removes items from a collection.
CollectionAPI.removeFromCollection(collectionId: collectionId, ids: ids).then {
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
 **collectionId** | [**String**](.md) | The collection id. | 
 **ids** | [**[String]**](String.md) | Item ids, comma delimited. | 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

