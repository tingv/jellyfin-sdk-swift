# LibraryAPI

All URIs are relative to *http://localhost:8096*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteItem**](LibraryAPI.md#deleteitem) | **DELETE** /Items/{itemId} | Deletes an item from the library and filesystem.
[**deleteItems**](LibraryAPI.md#deleteitems) | **DELETE** /Items | Deletes items from the library and filesystem.
[**getAncestors**](LibraryAPI.md#getancestors) | **GET** /Items/{itemId}/Ancestors | Gets all parents of an item.
[**getCriticReviews**](LibraryAPI.md#getcriticreviews) | **GET** /Items/{itemId}/CriticReviews | Gets critic review for an item.
[**getDownload**](LibraryAPI.md#getdownload) | **GET** /Items/{itemId}/Download | Downloads item media.
[**getFile**](LibraryAPI.md#getfile) | **GET** /Items/{itemId}/File | Get the original file of an item.
[**getItemCounts**](LibraryAPI.md#getitemcounts) | **GET** /Items/Counts | Get item counts.
[**getLibraryOptionsInfo**](LibraryAPI.md#getlibraryoptionsinfo) | **GET** /Libraries/AvailableOptions | Gets the library options info.
[**getMediaFolders**](LibraryAPI.md#getmediafolders) | **GET** /Library/MediaFolders | Gets all user media folders.
[**getPhysicalPaths**](LibraryAPI.md#getphysicalpaths) | **GET** /Library/PhysicalPaths | Gets a list of physical paths from virtual folders.
[**getSimilarAlbums**](LibraryAPI.md#getsimilaralbums) | **GET** /Albums/{itemId}/Similar | Gets similar items.
[**getSimilarArtists**](LibraryAPI.md#getsimilarartists) | **GET** /Artists/{itemId}/Similar | Gets similar items.
[**getSimilarItems**](LibraryAPI.md#getsimilaritems) | **GET** /Items/{itemId}/Similar | Gets similar items.
[**getSimilarMovies**](LibraryAPI.md#getsimilarmovies) | **GET** /Movies/{itemId}/Similar | Gets similar items.
[**getSimilarShows**](LibraryAPI.md#getsimilarshows) | **GET** /Shows/{itemId}/Similar | Gets similar items.
[**getSimilarTrailers**](LibraryAPI.md#getsimilartrailers) | **GET** /Trailers/{itemId}/Similar | Gets similar items.
[**getThemeMedia**](LibraryAPI.md#getthememedia) | **GET** /Items/{itemId}/ThemeMedia | Get theme songs and videos for an item.
[**getThemeSongs**](LibraryAPI.md#getthemesongs) | **GET** /Items/{itemId}/ThemeSongs | Get theme songs for an item.
[**getThemeVideos**](LibraryAPI.md#getthemevideos) | **GET** /Items/{itemId}/ThemeVideos | Get theme videos for an item.
[**postAddedMovies**](LibraryAPI.md#postaddedmovies) | **POST** /Library/Movies/Added | Reports that new movies have been added by an external source.
[**postAddedSeries**](LibraryAPI.md#postaddedseries) | **POST** /Library/Series/Added | Reports that new episodes of a series have been added by an external source.
[**postUpdatedMedia**](LibraryAPI.md#postupdatedmedia) | **POST** /Library/Media/Updated | Reports that new movies have been added by an external source.
[**postUpdatedMovies**](LibraryAPI.md#postupdatedmovies) | **POST** /Library/Movies/Updated | Reports that new movies have been added by an external source.
[**postUpdatedSeries**](LibraryAPI.md#postupdatedseries) | **POST** /Library/Series/Updated | Reports that new episodes of a series have been added by an external source.
[**refreshLibrary**](LibraryAPI.md#refreshlibrary) | **POST** /Library/Refresh | Starts a library scan.


# **deleteItem**
```swift
    open class func deleteItem( itemId: String) -> Promise<Void>
```

Deletes an item from the library and filesystem.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let itemId = "itemId_example" // String | The item id.

// Deletes an item from the library and filesystem.
LibraryAPI.deleteItem(itemId: itemId).then {
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
 **itemId** | [**String**](.md) | The item id. | 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteItems**
```swift
    open class func deleteItems( ids: [String]? = nil) -> Promise<Void>
```

Deletes items from the library and filesystem.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let ids = ["inner_example"] // [String] | The item ids. (optional)

// Deletes items from the library and filesystem.
LibraryAPI.deleteItems(ids: ids).then {
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
 **ids** | [**[String]**](String.md) | The item ids. | [optional] 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAncestors**
```swift
    open class func getAncestors( itemId: String,  userId: String? = nil) -> Promise<[BaseItemDto]>
```

Gets all parents of an item.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let itemId = "itemId_example" // String | The item id.
let userId = "userId_example" // String | Optional. Filter by user id, and attach user data. (optional)

// Gets all parents of an item.
LibraryAPI.getAncestors(itemId: itemId, userId: userId).then {
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
 **itemId** | [**String**](.md) | The item id. | 
 **userId** | [**String**](.md) | Optional. Filter by user id, and attach user data. | [optional] 

### Return type

[**[BaseItemDto]**](BaseItemDto.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCriticReviews**
```swift
    open class func getCriticReviews( itemId: String) -> Promise<BaseItemDtoQueryResult>
```

Gets critic review for an item.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let itemId = "itemId_example" // String | 

// Gets critic review for an item.
LibraryAPI.getCriticReviews(itemId: itemId).then {
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
 **itemId** | **String** |  | 

### Return type

[**BaseItemDtoQueryResult**](BaseItemDtoQueryResult.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getDownload**
```swift
    open class func getDownload( itemId: String) -> Promise<URL>
```

Downloads item media.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let itemId = "itemId_example" // String | The item id.

// Downloads item media.
LibraryAPI.getDownload(itemId: itemId).then {
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
 **itemId** | [**String**](.md) | The item id. | 

### Return type

**URL**

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: video/_*, audio/_*, application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getFile**
```swift
    open class func getFile( itemId: String) -> Promise<URL>
```

Get the original file of an item.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let itemId = "itemId_example" // String | The item id.

// Get the original file of an item.
LibraryAPI.getFile(itemId: itemId).then {
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
 **itemId** | [**String**](.md) | The item id. | 

### Return type

**URL**

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: video/_*, audio/_*, application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getItemCounts**
```swift
    open class func getItemCounts( userId: String? = nil,  isFavorite: Bool? = nil) -> Promise<ItemCounts>
```

Get item counts.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let userId = "userId_example" // String | Optional. Get counts from a specific user's library. (optional)
let isFavorite = true // Bool | Optional. Get counts of favorite items. (optional)

// Get item counts.
LibraryAPI.getItemCounts(userId: userId, isFavorite: isFavorite).then {
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
 **userId** | [**String**](.md) | Optional. Get counts from a specific user&#39;s library. | [optional] 
 **isFavorite** | **Bool** | Optional. Get counts of favorite items. | [optional] 

### Return type

[**ItemCounts**](ItemCounts.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getLibraryOptionsInfo**
```swift
    open class func getLibraryOptionsInfo( libraryContentType: String? = nil,  isNewLibrary: Bool? = nil) -> Promise<LibraryOptionsResultDto>
```

Gets the library options info.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let libraryContentType = "libraryContentType_example" // String | Library content type. (optional)
let isNewLibrary = true // Bool | Whether this is a new library. (optional) (default to false)

// Gets the library options info.
LibraryAPI.getLibraryOptionsInfo(libraryContentType: libraryContentType, isNewLibrary: isNewLibrary).then {
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
 **libraryContentType** | **String** | Library content type. | [optional] 
 **isNewLibrary** | **Bool** | Whether this is a new library. | [optional] [default to false]

### Return type

[**LibraryOptionsResultDto**](LibraryOptionsResultDto.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMediaFolders**
```swift
    open class func getMediaFolders( isHidden: Bool? = nil) -> Promise<BaseItemDtoQueryResult>
```

Gets all user media folders.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let isHidden = true // Bool | Optional. Filter by folders that are marked hidden, or not. (optional)

// Gets all user media folders.
LibraryAPI.getMediaFolders(isHidden: isHidden).then {
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
 **isHidden** | **Bool** | Optional. Filter by folders that are marked hidden, or not. | [optional] 

### Return type

[**BaseItemDtoQueryResult**](BaseItemDtoQueryResult.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPhysicalPaths**
```swift
    open class func getPhysicalPaths() -> Promise<[String]>
```

Gets a list of physical paths from virtual folders.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient


// Gets a list of physical paths from virtual folders.
LibraryAPI.getPhysicalPaths().then {
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

**[String]**

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSimilarAlbums**
```swift
    open class func getSimilarAlbums( itemId: String,  excludeArtistIds: [String]? = nil,  userId: String? = nil,  limit: Int? = nil,  fields: [ItemFields]? = nil) -> Promise<BaseItemDtoQueryResult>
```

Gets similar items.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let itemId = "itemId_example" // String | The item id.
let excludeArtistIds = ["inner_example"] // [String] | Exclude artist ids. (optional)
let userId = "userId_example" // String | Optional. Filter by user id, and attach user data. (optional)
let limit = 987 // Int | Optional. The maximum number of records to return. (optional)
let fields = [ItemFields()] // [ItemFields] | Optional. Specify additional fields of information to return in the output. This allows multiple, comma delimited. Options: Budget, Chapters, DateCreated, Genres, HomePageUrl, IndexOptions, MediaStreams, Overview, ParentId, Path, People, ProviderIds, PrimaryImageAspectRatio, Revenue, SortName, Studios, Taglines, TrailerUrls. (optional)

// Gets similar items.
LibraryAPI.getSimilarAlbums(itemId: itemId, excludeArtistIds: excludeArtistIds, userId: userId, limit: limit, fields: fields).then {
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
 **itemId** | [**String**](.md) | The item id. | 
 **excludeArtistIds** | [**[String]**](String.md) | Exclude artist ids. | [optional] 
 **userId** | [**String**](.md) | Optional. Filter by user id, and attach user data. | [optional] 
 **limit** | **Int** | Optional. The maximum number of records to return. | [optional] 
 **fields** | [**[ItemFields]**](ItemFields.md) | Optional. Specify additional fields of information to return in the output. This allows multiple, comma delimited. Options: Budget, Chapters, DateCreated, Genres, HomePageUrl, IndexOptions, MediaStreams, Overview, ParentId, Path, People, ProviderIds, PrimaryImageAspectRatio, Revenue, SortName, Studios, Taglines, TrailerUrls. | [optional] 

### Return type

[**BaseItemDtoQueryResult**](BaseItemDtoQueryResult.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSimilarArtists**
```swift
    open class func getSimilarArtists( itemId: String,  excludeArtistIds: [String]? = nil,  userId: String? = nil,  limit: Int? = nil,  fields: [ItemFields]? = nil) -> Promise<BaseItemDtoQueryResult>
```

Gets similar items.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let itemId = "itemId_example" // String | The item id.
let excludeArtistIds = ["inner_example"] // [String] | Exclude artist ids. (optional)
let userId = "userId_example" // String | Optional. Filter by user id, and attach user data. (optional)
let limit = 987 // Int | Optional. The maximum number of records to return. (optional)
let fields = [ItemFields()] // [ItemFields] | Optional. Specify additional fields of information to return in the output. This allows multiple, comma delimited. Options: Budget, Chapters, DateCreated, Genres, HomePageUrl, IndexOptions, MediaStreams, Overview, ParentId, Path, People, ProviderIds, PrimaryImageAspectRatio, Revenue, SortName, Studios, Taglines, TrailerUrls. (optional)

// Gets similar items.
LibraryAPI.getSimilarArtists(itemId: itemId, excludeArtistIds: excludeArtistIds, userId: userId, limit: limit, fields: fields).then {
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
 **itemId** | [**String**](.md) | The item id. | 
 **excludeArtistIds** | [**[String]**](String.md) | Exclude artist ids. | [optional] 
 **userId** | [**String**](.md) | Optional. Filter by user id, and attach user data. | [optional] 
 **limit** | **Int** | Optional. The maximum number of records to return. | [optional] 
 **fields** | [**[ItemFields]**](ItemFields.md) | Optional. Specify additional fields of information to return in the output. This allows multiple, comma delimited. Options: Budget, Chapters, DateCreated, Genres, HomePageUrl, IndexOptions, MediaStreams, Overview, ParentId, Path, People, ProviderIds, PrimaryImageAspectRatio, Revenue, SortName, Studios, Taglines, TrailerUrls. | [optional] 

### Return type

[**BaseItemDtoQueryResult**](BaseItemDtoQueryResult.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSimilarItems**
```swift
    open class func getSimilarItems( itemId: String,  excludeArtistIds: [String]? = nil,  userId: String? = nil,  limit: Int? = nil,  fields: [ItemFields]? = nil) -> Promise<BaseItemDtoQueryResult>
```

Gets similar items.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let itemId = "itemId_example" // String | The item id.
let excludeArtistIds = ["inner_example"] // [String] | Exclude artist ids. (optional)
let userId = "userId_example" // String | Optional. Filter by user id, and attach user data. (optional)
let limit = 987 // Int | Optional. The maximum number of records to return. (optional)
let fields = [ItemFields()] // [ItemFields] | Optional. Specify additional fields of information to return in the output. This allows multiple, comma delimited. Options: Budget, Chapters, DateCreated, Genres, HomePageUrl, IndexOptions, MediaStreams, Overview, ParentId, Path, People, ProviderIds, PrimaryImageAspectRatio, Revenue, SortName, Studios, Taglines, TrailerUrls. (optional)

// Gets similar items.
LibraryAPI.getSimilarItems(itemId: itemId, excludeArtistIds: excludeArtistIds, userId: userId, limit: limit, fields: fields).then {
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
 **itemId** | [**String**](.md) | The item id. | 
 **excludeArtistIds** | [**[String]**](String.md) | Exclude artist ids. | [optional] 
 **userId** | [**String**](.md) | Optional. Filter by user id, and attach user data. | [optional] 
 **limit** | **Int** | Optional. The maximum number of records to return. | [optional] 
 **fields** | [**[ItemFields]**](ItemFields.md) | Optional. Specify additional fields of information to return in the output. This allows multiple, comma delimited. Options: Budget, Chapters, DateCreated, Genres, HomePageUrl, IndexOptions, MediaStreams, Overview, ParentId, Path, People, ProviderIds, PrimaryImageAspectRatio, Revenue, SortName, Studios, Taglines, TrailerUrls. | [optional] 

### Return type

[**BaseItemDtoQueryResult**](BaseItemDtoQueryResult.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSimilarMovies**
```swift
    open class func getSimilarMovies( itemId: String,  excludeArtistIds: [String]? = nil,  userId: String? = nil,  limit: Int? = nil,  fields: [ItemFields]? = nil) -> Promise<BaseItemDtoQueryResult>
```

Gets similar items.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let itemId = "itemId_example" // String | The item id.
let excludeArtistIds = ["inner_example"] // [String] | Exclude artist ids. (optional)
let userId = "userId_example" // String | Optional. Filter by user id, and attach user data. (optional)
let limit = 987 // Int | Optional. The maximum number of records to return. (optional)
let fields = [ItemFields()] // [ItemFields] | Optional. Specify additional fields of information to return in the output. This allows multiple, comma delimited. Options: Budget, Chapters, DateCreated, Genres, HomePageUrl, IndexOptions, MediaStreams, Overview, ParentId, Path, People, ProviderIds, PrimaryImageAspectRatio, Revenue, SortName, Studios, Taglines, TrailerUrls. (optional)

// Gets similar items.
LibraryAPI.getSimilarMovies(itemId: itemId, excludeArtistIds: excludeArtistIds, userId: userId, limit: limit, fields: fields).then {
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
 **itemId** | [**String**](.md) | The item id. | 
 **excludeArtistIds** | [**[String]**](String.md) | Exclude artist ids. | [optional] 
 **userId** | [**String**](.md) | Optional. Filter by user id, and attach user data. | [optional] 
 **limit** | **Int** | Optional. The maximum number of records to return. | [optional] 
 **fields** | [**[ItemFields]**](ItemFields.md) | Optional. Specify additional fields of information to return in the output. This allows multiple, comma delimited. Options: Budget, Chapters, DateCreated, Genres, HomePageUrl, IndexOptions, MediaStreams, Overview, ParentId, Path, People, ProviderIds, PrimaryImageAspectRatio, Revenue, SortName, Studios, Taglines, TrailerUrls. | [optional] 

### Return type

[**BaseItemDtoQueryResult**](BaseItemDtoQueryResult.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSimilarShows**
```swift
    open class func getSimilarShows( itemId: String,  excludeArtistIds: [String]? = nil,  userId: String? = nil,  limit: Int? = nil,  fields: [ItemFields]? = nil) -> Promise<BaseItemDtoQueryResult>
```

Gets similar items.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let itemId = "itemId_example" // String | The item id.
let excludeArtistIds = ["inner_example"] // [String] | Exclude artist ids. (optional)
let userId = "userId_example" // String | Optional. Filter by user id, and attach user data. (optional)
let limit = 987 // Int | Optional. The maximum number of records to return. (optional)
let fields = [ItemFields()] // [ItemFields] | Optional. Specify additional fields of information to return in the output. This allows multiple, comma delimited. Options: Budget, Chapters, DateCreated, Genres, HomePageUrl, IndexOptions, MediaStreams, Overview, ParentId, Path, People, ProviderIds, PrimaryImageAspectRatio, Revenue, SortName, Studios, Taglines, TrailerUrls. (optional)

// Gets similar items.
LibraryAPI.getSimilarShows(itemId: itemId, excludeArtistIds: excludeArtistIds, userId: userId, limit: limit, fields: fields).then {
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
 **itemId** | [**String**](.md) | The item id. | 
 **excludeArtistIds** | [**[String]**](String.md) | Exclude artist ids. | [optional] 
 **userId** | [**String**](.md) | Optional. Filter by user id, and attach user data. | [optional] 
 **limit** | **Int** | Optional. The maximum number of records to return. | [optional] 
 **fields** | [**[ItemFields]**](ItemFields.md) | Optional. Specify additional fields of information to return in the output. This allows multiple, comma delimited. Options: Budget, Chapters, DateCreated, Genres, HomePageUrl, IndexOptions, MediaStreams, Overview, ParentId, Path, People, ProviderIds, PrimaryImageAspectRatio, Revenue, SortName, Studios, Taglines, TrailerUrls. | [optional] 

### Return type

[**BaseItemDtoQueryResult**](BaseItemDtoQueryResult.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSimilarTrailers**
```swift
    open class func getSimilarTrailers( itemId: String,  excludeArtistIds: [String]? = nil,  userId: String? = nil,  limit: Int? = nil,  fields: [ItemFields]? = nil) -> Promise<BaseItemDtoQueryResult>
```

Gets similar items.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let itemId = "itemId_example" // String | The item id.
let excludeArtistIds = ["inner_example"] // [String] | Exclude artist ids. (optional)
let userId = "userId_example" // String | Optional. Filter by user id, and attach user data. (optional)
let limit = 987 // Int | Optional. The maximum number of records to return. (optional)
let fields = [ItemFields()] // [ItemFields] | Optional. Specify additional fields of information to return in the output. This allows multiple, comma delimited. Options: Budget, Chapters, DateCreated, Genres, HomePageUrl, IndexOptions, MediaStreams, Overview, ParentId, Path, People, ProviderIds, PrimaryImageAspectRatio, Revenue, SortName, Studios, Taglines, TrailerUrls. (optional)

// Gets similar items.
LibraryAPI.getSimilarTrailers(itemId: itemId, excludeArtistIds: excludeArtistIds, userId: userId, limit: limit, fields: fields).then {
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
 **itemId** | [**String**](.md) | The item id. | 
 **excludeArtistIds** | [**[String]**](String.md) | Exclude artist ids. | [optional] 
 **userId** | [**String**](.md) | Optional. Filter by user id, and attach user data. | [optional] 
 **limit** | **Int** | Optional. The maximum number of records to return. | [optional] 
 **fields** | [**[ItemFields]**](ItemFields.md) | Optional. Specify additional fields of information to return in the output. This allows multiple, comma delimited. Options: Budget, Chapters, DateCreated, Genres, HomePageUrl, IndexOptions, MediaStreams, Overview, ParentId, Path, People, ProviderIds, PrimaryImageAspectRatio, Revenue, SortName, Studios, Taglines, TrailerUrls. | [optional] 

### Return type

[**BaseItemDtoQueryResult**](BaseItemDtoQueryResult.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getThemeMedia**
```swift
    open class func getThemeMedia( itemId: String,  userId: String? = nil,  inheritFromParent: Bool? = nil) -> Promise<AllThemeMediaResult>
```

Get theme songs and videos for an item.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let itemId = "itemId_example" // String | The item id.
let userId = "userId_example" // String | Optional. Filter by user id, and attach user data. (optional)
let inheritFromParent = true // Bool | Optional. Determines whether or not parent items should be searched for theme media. (optional) (default to false)

// Get theme songs and videos for an item.
LibraryAPI.getThemeMedia(itemId: itemId, userId: userId, inheritFromParent: inheritFromParent).then {
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
 **itemId** | [**String**](.md) | The item id. | 
 **userId** | [**String**](.md) | Optional. Filter by user id, and attach user data. | [optional] 
 **inheritFromParent** | **Bool** | Optional. Determines whether or not parent items should be searched for theme media. | [optional] [default to false]

### Return type

[**AllThemeMediaResult**](AllThemeMediaResult.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getThemeSongs**
```swift
    open class func getThemeSongs( itemId: String,  userId: String? = nil,  inheritFromParent: Bool? = nil) -> Promise<ThemeMediaResult>
```

Get theme songs for an item.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let itemId = "itemId_example" // String | The item id.
let userId = "userId_example" // String | Optional. Filter by user id, and attach user data. (optional)
let inheritFromParent = true // Bool | Optional. Determines whether or not parent items should be searched for theme media. (optional) (default to false)

// Get theme songs for an item.
LibraryAPI.getThemeSongs(itemId: itemId, userId: userId, inheritFromParent: inheritFromParent).then {
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
 **itemId** | [**String**](.md) | The item id. | 
 **userId** | [**String**](.md) | Optional. Filter by user id, and attach user data. | [optional] 
 **inheritFromParent** | **Bool** | Optional. Determines whether or not parent items should be searched for theme media. | [optional] [default to false]

### Return type

[**ThemeMediaResult**](ThemeMediaResult.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getThemeVideos**
```swift
    open class func getThemeVideos( itemId: String,  userId: String? = nil,  inheritFromParent: Bool? = nil) -> Promise<ThemeMediaResult>
```

Get theme videos for an item.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let itemId = "itemId_example" // String | The item id.
let userId = "userId_example" // String | Optional. Filter by user id, and attach user data. (optional)
let inheritFromParent = true // Bool | Optional. Determines whether or not parent items should be searched for theme media. (optional) (default to false)

// Get theme videos for an item.
LibraryAPI.getThemeVideos(itemId: itemId, userId: userId, inheritFromParent: inheritFromParent).then {
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
 **itemId** | [**String**](.md) | The item id. | 
 **userId** | [**String**](.md) | Optional. Filter by user id, and attach user data. | [optional] 
 **inheritFromParent** | **Bool** | Optional. Determines whether or not parent items should be searched for theme media. | [optional] [default to false]

### Return type

[**ThemeMediaResult**](ThemeMediaResult.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postAddedMovies**
```swift
    open class func postAddedMovies( tmdbId: String? = nil,  imdbId: String? = nil) -> Promise<Void>
```

Reports that new movies have been added by an external source.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let tmdbId = "tmdbId_example" // String | The tmdbId. (optional)
let imdbId = "imdbId_example" // String | The imdbId. (optional)

// Reports that new movies have been added by an external source.
LibraryAPI.postAddedMovies(tmdbId: tmdbId, imdbId: imdbId).then {
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
 **tmdbId** | **String** | The tmdbId. | [optional] 
 **imdbId** | **String** | The imdbId. | [optional] 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postAddedSeries**
```swift
    open class func postAddedSeries( tvdbId: String? = nil) -> Promise<Void>
```

Reports that new episodes of a series have been added by an external source.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let tvdbId = "tvdbId_example" // String | The tvdbId. (optional)

// Reports that new episodes of a series have been added by an external source.
LibraryAPI.postAddedSeries(tvdbId: tvdbId).then {
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
 **tvdbId** | **String** | The tvdbId. | [optional] 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postUpdatedMedia**
```swift
    open class func postUpdatedMedia( mediaUpdateInfoDto: MediaUpdateInfoDto) -> Promise<Void>
```

Reports that new movies have been added by an external source.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let mediaUpdateInfoDto = MediaUpdateInfoDto(updates: [MediaUpdateInfoPathDto(path: "path_example", updateType: "updateType_example")]) // MediaUpdateInfoDto | The update paths.

// Reports that new movies have been added by an external source.
LibraryAPI.postUpdatedMedia(mediaUpdateInfoDto: mediaUpdateInfoDto).then {
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
 **mediaUpdateInfoDto** | [**MediaUpdateInfoDto**](MediaUpdateInfoDto.md) | The update paths. | 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/_*+json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postUpdatedMovies**
```swift
    open class func postUpdatedMovies( tmdbId: String? = nil,  imdbId: String? = nil) -> Promise<Void>
```

Reports that new movies have been added by an external source.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let tmdbId = "tmdbId_example" // String | The tmdbId. (optional)
let imdbId = "imdbId_example" // String | The imdbId. (optional)

// Reports that new movies have been added by an external source.
LibraryAPI.postUpdatedMovies(tmdbId: tmdbId, imdbId: imdbId).then {
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
 **tmdbId** | **String** | The tmdbId. | [optional] 
 **imdbId** | **String** | The imdbId. | [optional] 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postUpdatedSeries**
```swift
    open class func postUpdatedSeries( tvdbId: String? = nil) -> Promise<Void>
```

Reports that new episodes of a series have been added by an external source.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let tvdbId = "tvdbId_example" // String | The tvdbId. (optional)

// Reports that new episodes of a series have been added by an external source.
LibraryAPI.postUpdatedSeries(tvdbId: tvdbId).then {
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
 **tvdbId** | **String** | The tvdbId. | [optional] 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshLibrary**
```swift
    open class func refreshLibrary() -> Promise<Void>
```

Starts a library scan.

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient


// Starts a library scan.
LibraryAPI.refreshLibrary().then {
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

