//
// UserLibraryAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import PromiseKit

open class UserLibraryAPI {
    /**
     Deletes a user's saved personal rating for an item.
     
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<UserItemDataDto>
     */
    open class func deleteUserItemRating( userId: String,  itemId: String, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<UserItemDataDto> {
        let deferred = Promise<UserItemDataDto>.pending()
        deleteUserItemRatingWithRequestBuilder(userId: userId, itemId: itemId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Deletes a user's saved personal rating for an item.
     - DELETE /Users/{userId}/Items/{itemId}/Rating
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - returns: RequestBuilder<UserItemDataDto> 
     */
    open class func deleteUserItemRatingWithRequestBuilder(userId: String, itemId: String) -> RequestBuilder<UserItemDataDto> {
        var urlPath = "/Users/{userId}/Items/{itemId}/Rating"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UserItemDataDto>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets intros to play before the main media item plays.
     
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<BaseItemDtoQueryResult>
     */
    open class func getIntros( userId: String,  itemId: String, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<BaseItemDtoQueryResult> {
        let deferred = Promise<BaseItemDtoQueryResult>.pending()
        getIntrosWithRequestBuilder(userId: userId, itemId: itemId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Gets intros to play before the main media item plays.
     - GET /Users/{userId}/Items/{itemId}/Intros
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - returns: RequestBuilder<BaseItemDtoQueryResult> 
     */
    open class func getIntrosWithRequestBuilder(userId: String, itemId: String) -> RequestBuilder<BaseItemDtoQueryResult> {
        var urlPath = "/Users/{userId}/Items/{itemId}/Intros"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<BaseItemDtoQueryResult>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets an item from a user's library.
     
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<BaseItemDto>
     */
    open class func getItem( userId: String,  itemId: String, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<BaseItemDto> {
        let deferred = Promise<BaseItemDto>.pending()
        getItemWithRequestBuilder(userId: userId, itemId: itemId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Gets an item from a user's library.
     - GET /Users/{userId}/Items/{itemId}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - returns: RequestBuilder<BaseItemDto> 
     */
    open class func getItemWithRequestBuilder(userId: String, itemId: String) -> RequestBuilder<BaseItemDto> {
        var urlPath = "/Users/{userId}/Items/{itemId}"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<BaseItemDto>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets latest media.
     
     - parameter userId: (path) User id. 
     - parameter parentId: (query) Specify this to localize the search to a specific item or folder. Omit to use the root. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter includeItemTypes: (query) Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimited. (optional)
     - parameter isPlayed: (query) Filter by items that are played, or not. (optional)
     - parameter enableImages: (query) Optional. include image information in output. (optional)
     - parameter imageTypeLimit: (query) Optional. the max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - parameter enableUserData: (query) Optional. include user data. (optional)
     - parameter limit: (query) Return item limit. (optional, default to 20)
     - parameter groupItems: (query) Whether or not to group items into a parent container. (optional, default to true)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<[BaseItemDto]>
     */
    open class func getLatestMedia( userId: String,  parentId: String? = nil,  fields: [ItemFields]? = nil,  includeItemTypes: [String]? = nil,  isPlayed: Bool? = nil,  enableImages: Bool? = nil,  imageTypeLimit: Int? = nil,  enableImageTypes: [ImageType]? = nil,  enableUserData: Bool? = nil,  limit: Int? = nil,  groupItems: Bool? = nil, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<[BaseItemDto]> {
        let deferred = Promise<[BaseItemDto]>.pending()
        getLatestMediaWithRequestBuilder(userId: userId, parentId: parentId, fields: fields, includeItemTypes: includeItemTypes, isPlayed: isPlayed, enableImages: enableImages, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes, enableUserData: enableUserData, limit: limit, groupItems: groupItems).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Gets latest media.
     - GET /Users/{userId}/Items/Latest
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - parameter parentId: (query) Specify this to localize the search to a specific item or folder. Omit to use the root. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter includeItemTypes: (query) Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimited. (optional)
     - parameter isPlayed: (query) Filter by items that are played, or not. (optional)
     - parameter enableImages: (query) Optional. include image information in output. (optional)
     - parameter imageTypeLimit: (query) Optional. the max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - parameter enableUserData: (query) Optional. include user data. (optional)
     - parameter limit: (query) Return item limit. (optional, default to 20)
     - parameter groupItems: (query) Whether or not to group items into a parent container. (optional, default to true)
     - returns: RequestBuilder<[BaseItemDto]> 
     */
    open class func getLatestMediaWithRequestBuilder(userId: String, parentId: String? = nil, fields: [ItemFields]? = nil, includeItemTypes: [String]? = nil, isPlayed: Bool? = nil, enableImages: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, enableUserData: Bool? = nil, limit: Int? = nil, groupItems: Bool? = nil) -> RequestBuilder<[BaseItemDto]> {
        var urlPath = "/Users/{userId}/Items/Latest"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "parentId": parentId?.encodeToJSON(),
            "fields": fields?.encodeToJSON(),
            "includeItemTypes": includeItemTypes?.encodeToJSON(),
            "isPlayed": isPlayed?.encodeToJSON(),
            "enableImages": enableImages?.encodeToJSON(),
            "imageTypeLimit": imageTypeLimit?.encodeToJSON(),
            "enableImageTypes": enableImageTypes?.encodeToJSON(),
            "enableUserData": enableUserData?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "groupItems": groupItems?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[BaseItemDto]>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets local trailers for an item.
     
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<[BaseItemDto]>
     */
    open class func getLocalTrailers( userId: String,  itemId: String, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<[BaseItemDto]> {
        let deferred = Promise<[BaseItemDto]>.pending()
        getLocalTrailersWithRequestBuilder(userId: userId, itemId: itemId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Gets local trailers for an item.
     - GET /Users/{userId}/Items/{itemId}/LocalTrailers
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - returns: RequestBuilder<[BaseItemDto]> 
     */
    open class func getLocalTrailersWithRequestBuilder(userId: String, itemId: String) -> RequestBuilder<[BaseItemDto]> {
        var urlPath = "/Users/{userId}/Items/{itemId}/LocalTrailers"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[BaseItemDto]>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets the root folder from a user's library.
     
     - parameter userId: (path) User id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<BaseItemDto>
     */
    open class func getRootFolder( userId: String, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<BaseItemDto> {
        let deferred = Promise<BaseItemDto>.pending()
        getRootFolderWithRequestBuilder(userId: userId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Gets the root folder from a user's library.
     - GET /Users/{userId}/Items/Root
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - returns: RequestBuilder<BaseItemDto> 
     */
    open class func getRootFolderWithRequestBuilder(userId: String) -> RequestBuilder<BaseItemDto> {
        var urlPath = "/Users/{userId}/Items/Root"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<BaseItemDto>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets special features for an item.
     
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<[BaseItemDto]>
     */
    open class func getSpecialFeatures( userId: String,  itemId: String, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<[BaseItemDto]> {
        let deferred = Promise<[BaseItemDto]>.pending()
        getSpecialFeaturesWithRequestBuilder(userId: userId, itemId: itemId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Gets special features for an item.
     - GET /Users/{userId}/Items/{itemId}/SpecialFeatures
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - returns: RequestBuilder<[BaseItemDto]> 
     */
    open class func getSpecialFeaturesWithRequestBuilder(userId: String, itemId: String) -> RequestBuilder<[BaseItemDto]> {
        var urlPath = "/Users/{userId}/Items/{itemId}/SpecialFeatures"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[BaseItemDto]>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Marks an item as a favorite.
     
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<UserItemDataDto>
     */
    open class func markFavoriteItem( userId: String,  itemId: String, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<UserItemDataDto> {
        let deferred = Promise<UserItemDataDto>.pending()
        markFavoriteItemWithRequestBuilder(userId: userId, itemId: itemId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Marks an item as a favorite.
     - POST /Users/{userId}/FavoriteItems/{itemId}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - returns: RequestBuilder<UserItemDataDto> 
     */
    open class func markFavoriteItemWithRequestBuilder(userId: String, itemId: String) -> RequestBuilder<UserItemDataDto> {
        var urlPath = "/Users/{userId}/FavoriteItems/{itemId}"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UserItemDataDto>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Unmarks item as a favorite.
     
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<UserItemDataDto>
     */
    open class func unmarkFavoriteItem( userId: String,  itemId: String, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<UserItemDataDto> {
        let deferred = Promise<UserItemDataDto>.pending()
        unmarkFavoriteItemWithRequestBuilder(userId: userId, itemId: itemId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Unmarks item as a favorite.
     - DELETE /Users/{userId}/FavoriteItems/{itemId}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - returns: RequestBuilder<UserItemDataDto> 
     */
    open class func unmarkFavoriteItemWithRequestBuilder(userId: String, itemId: String) -> RequestBuilder<UserItemDataDto> {
        var urlPath = "/Users/{userId}/FavoriteItems/{itemId}"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UserItemDataDto>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Updates a user's rating for an item.
     
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - parameter likes: (query) Whether this M:Jellyfin.Api.Controllers.UserLibraryController.UpdateUserItemRating(System.Guid,System.Guid,System.Nullable{System.Boolean}) is likes. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<UserItemDataDto>
     */
    open class func updateUserItemRating( userId: String,  itemId: String,  likes: Bool? = nil, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<UserItemDataDto> {
        let deferred = Promise<UserItemDataDto>.pending()
        updateUserItemRatingWithRequestBuilder(userId: userId, itemId: itemId, likes: likes).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                deferred.resolver.fulfill(response.body!)
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Updates a user's rating for an item.
     - POST /Users/{userId}/Items/{itemId}/Rating
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) User id. 
     - parameter itemId: (path) Item id. 
     - parameter likes: (query) Whether this M:Jellyfin.Api.Controllers.UserLibraryController.UpdateUserItemRating(System.Guid,System.Guid,System.Nullable{System.Boolean}) is likes. (optional)
     - returns: RequestBuilder<UserItemDataDto> 
     */
    open class func updateUserItemRatingWithRequestBuilder(userId: String, itemId: String, likes: Bool? = nil) -> RequestBuilder<UserItemDataDto> {
        var urlPath = "/Users/{userId}/Items/{itemId}/Rating"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "likes": likes?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UserItemDataDto>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
