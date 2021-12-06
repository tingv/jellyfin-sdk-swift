# UserLibraryAPI

All URIs are relative to *http://localhost:8096*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteUserItemRating**](UserLibraryAPI.md#deleteuseritemrating) | **DELETE** /Users/{userId}/Items/{itemId}/Rating | Deletes a user&#39;s saved personal rating for an item.
[**getIntros**](UserLibraryAPI.md#getintros) | **GET** /Users/{userId}/Items/{itemId}/Intros | Gets intros to play before the main media item plays.
[**getItem**](UserLibraryAPI.md#getitem) | **GET** /Users/{userId}/Items/{itemId} | Gets an item from a user&#39;s library.
[**getLatestMedia**](UserLibraryAPI.md#getlatestmedia) | **GET** /Users/{userId}/Items/Latest | Gets latest media.
[**getLocalTrailers**](UserLibraryAPI.md#getlocaltrailers) | **GET** /Users/{userId}/Items/{itemId}/LocalTrailers | Gets local trailers for an item.
[**getRootFolder**](UserLibraryAPI.md#getrootfolder) | **GET** /Users/{userId}/Items/Root | Gets the root folder from a user&#39;s library.
[**getSpecialFeatures**](UserLibraryAPI.md#getspecialfeatures) | **GET** /Users/{userId}/Items/{itemId}/SpecialFeatures | Gets special features for an item.
[**markFavoriteItem**](UserLibraryAPI.md#markfavoriteitem) | **POST** /Users/{userId}/FavoriteItems/{itemId} | Marks an item as a favorite.
[**unmarkFavoriteItem**](UserLibraryAPI.md#unmarkfavoriteitem) | **DELETE** /Users/{userId}/FavoriteItems/{itemId} | Unmarks item as a favorite.
[**updateUserItemRating**](UserLibraryAPI.md#updateuseritemrating) | **POST** /Users/{userId}/Items/{itemId}/Rating | Updates a user&#39;s rating for an item.


# **deleteUserItemRating**
```swift
    open class func deleteUserItemRating( userId: String,  itemId: String) -> Promise<UserItemDataDto>
```

Deletes a user's saved personal rating for an item.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let userId = "userId_example" // String | User id.
let itemId = "itemId_example" // String | Item id.

// Deletes a user's saved personal rating for an item.
UserLibraryAPI.deleteUserItemRating(userId: userId, itemId: itemId).then {
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
 **itemId** | [**String**](.md) | Item id. | 

### Return type

[**UserItemDataDto**](UserItemDataDto.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIntros**
```swift
    open class func getIntros( userId: String,  itemId: String) -> Promise<BaseItemDtoQueryResult>
```

Gets intros to play before the main media item plays.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let userId = "userId_example" // String | User id.
let itemId = "itemId_example" // String | Item id.

// Gets intros to play before the main media item plays.
UserLibraryAPI.getIntros(userId: userId, itemId: itemId).then {
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
 **itemId** | [**String**](.md) | Item id. | 

### Return type

[**BaseItemDtoQueryResult**](BaseItemDtoQueryResult.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getItem**
```swift
    open class func getItem( userId: String,  itemId: String) -> Promise<BaseItemDto>
```

Gets an item from a user's library.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let userId = "userId_example" // String | User id.
let itemId = "itemId_example" // String | Item id.

// Gets an item from a user's library.
UserLibraryAPI.getItem(userId: userId, itemId: itemId).then {
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
 **itemId** | [**String**](.md) | Item id. | 

### Return type

[**BaseItemDto**](BaseItemDto.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLatestMedia**
```swift
    open class func getLatestMedia( userId: String,  parentId: String? = nil,  fields: [ItemFields]? = nil,  includeItemTypes: [String]? = nil,  isPlayed: Bool? = nil,  enableImages: Bool? = nil,  imageTypeLimit: Int? = nil,  enableImageTypes: [ImageType]? = nil,  enableUserData: Bool? = nil,  limit: Int? = nil,  groupItems: Bool? = nil) -> Promise<[BaseItemDto]>
```

Gets latest media.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let userId = "userId_example" // String | User id.
let parentId = "parentId_example" // String | Specify this to localize the search to a specific item or folder. Omit to use the root. (optional)
let fields = [ItemFields()] // [ItemFields] | Optional. Specify additional fields of information to return in the output. (optional)
let includeItemTypes = ["inner_example"] // [String] | Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimited. (optional)
let isPlayed = true // Bool | Filter by items that are played, or not. (optional)
let enableImages = true // Bool | Optional. include image information in output. (optional)
let imageTypeLimit = 987 // Int | Optional. the max number of images to return, per image type. (optional)
let enableImageTypes = [ImageType()] // [ImageType] | Optional. The image types to include in the output. (optional)
let enableUserData = true // Bool | Optional. include user data. (optional)
let limit = 987 // Int | Return item limit. (optional) (default to 20)
let groupItems = true // Bool | Whether or not to group items into a parent container. (optional) (default to true)

// Gets latest media.
UserLibraryAPI.getLatestMedia(userId: userId, parentId: parentId, fields: fields, includeItemTypes: includeItemTypes, isPlayed: isPlayed, enableImages: enableImages, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes, enableUserData: enableUserData, limit: limit, groupItems: groupItems).then {
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
 **parentId** | [**String**](.md) | Specify this to localize the search to a specific item or folder. Omit to use the root. | [optional] 
 **fields** | [**[ItemFields]**](ItemFields.md) | Optional. Specify additional fields of information to return in the output. | [optional] 
 **includeItemTypes** | [**[String]**](String.md) | Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimited. | [optional] 
 **isPlayed** | **Bool** | Filter by items that are played, or not. | [optional] 
 **enableImages** | **Bool** | Optional. include image information in output. | [optional] 
 **imageTypeLimit** | **Int** | Optional. the max number of images to return, per image type. | [optional] 
 **enableImageTypes** | [**[ImageType]**](ImageType.md) | Optional. The image types to include in the output. | [optional] 
 **enableUserData** | **Bool** | Optional. include user data. | [optional] 
 **limit** | **Int** | Return item limit. | [optional] [default to 20]
 **groupItems** | **Bool** | Whether or not to group items into a parent container. | [optional] [default to true]

### Return type

[**[BaseItemDto]**](BaseItemDto.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLocalTrailers**
```swift
    open class func getLocalTrailers( userId: String,  itemId: String) -> Promise<[BaseItemDto]>
```

Gets local trailers for an item.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let userId = "userId_example" // String | User id.
let itemId = "itemId_example" // String | Item id.

// Gets local trailers for an item.
UserLibraryAPI.getLocalTrailers(userId: userId, itemId: itemId).then {
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
 **itemId** | [**String**](.md) | Item id. | 

### Return type

[**[BaseItemDto]**](BaseItemDto.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRootFolder**
```swift
    open class func getRootFolder( userId: String) -> Promise<BaseItemDto>
```

Gets the root folder from a user's library.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let userId = "userId_example" // String | User id.

// Gets the root folder from a user's library.
UserLibraryAPI.getRootFolder(userId: userId).then {
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

[**BaseItemDto**](BaseItemDto.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSpecialFeatures**
```swift
    open class func getSpecialFeatures( userId: String,  itemId: String) -> Promise<[BaseItemDto]>
```

Gets special features for an item.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let userId = "userId_example" // String | User id.
let itemId = "itemId_example" // String | Item id.

// Gets special features for an item.
UserLibraryAPI.getSpecialFeatures(userId: userId, itemId: itemId).then {
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
 **itemId** | [**String**](.md) | Item id. | 

### Return type

[**[BaseItemDto]**](BaseItemDto.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **markFavoriteItem**
```swift
    open class func markFavoriteItem( userId: String,  itemId: String) -> Promise<UserItemDataDto>
```

Marks an item as a favorite.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let userId = "userId_example" // String | User id.
let itemId = "itemId_example" // String | Item id.

// Marks an item as a favorite.
UserLibraryAPI.markFavoriteItem(userId: userId, itemId: itemId).then {
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
 **itemId** | [**String**](.md) | Item id. | 

### Return type

[**UserItemDataDto**](UserItemDataDto.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unmarkFavoriteItem**
```swift
    open class func unmarkFavoriteItem( userId: String,  itemId: String) -> Promise<UserItemDataDto>
```

Unmarks item as a favorite.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let userId = "userId_example" // String | User id.
let itemId = "itemId_example" // String | Item id.

// Unmarks item as a favorite.
UserLibraryAPI.unmarkFavoriteItem(userId: userId, itemId: itemId).then {
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
 **itemId** | [**String**](.md) | Item id. | 

### Return type

[**UserItemDataDto**](UserItemDataDto.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserItemRating**
```swift
    open class func updateUserItemRating( userId: String,  itemId: String,  likes: Bool? = nil) -> Promise<UserItemDataDto>
```

Updates a user's rating for an item.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let userId = "userId_example" // String | User id.
let itemId = "itemId_example" // String | Item id.
let likes = true // Bool | Whether this M:Jellyfin.Api.Controllers.UserLibraryController.UpdateUserItemRating(System.Guid,System.Guid,System.Nullable{System.Boolean}) is likes. (optional)

// Updates a user's rating for an item.
UserLibraryAPI.updateUserItemRating(userId: userId, itemId: itemId, likes: likes).then {
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
 **itemId** | [**String**](.md) | Item id. | 
 **likes** | **Bool** | Whether this M:Jellyfin.Api.Controllers.UserLibraryController.UpdateUserItemRating(System.Guid,System.Guid,System.Nullable{System.Boolean}) is likes. | [optional] 

### Return type

[**UserItemDataDto**](UserItemDataDto.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

