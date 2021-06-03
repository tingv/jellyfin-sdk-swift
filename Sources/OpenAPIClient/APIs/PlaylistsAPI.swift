//
// PlaylistsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class PlaylistsAPI {
    /**
     Adds items to a playlist.
     
     - parameter playlistId: (path) The playlist id. 
     - parameter ids: (query) Item id, comma delimited. (optional)
     - parameter userId: (query) The userId. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func addToPlaylist(playlistId: UUID, ids: [UUID]? = nil, userId: UUID? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        addToPlaylistWithRequestBuilder(playlistId: playlistId, ids: ids, userId: userId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Adds items to a playlist.
     - POST /Playlists/{playlistId}/Items
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter playlistId: (path) The playlist id. 
     - parameter ids: (query) Item id, comma delimited. (optional)
     - parameter userId: (query) The userId. (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func addToPlaylistWithRequestBuilder(playlistId: UUID, ids: [UUID]? = nil, userId: UUID? = nil) -> RequestBuilder<Void> {
        var path = "/Playlists/{playlistId}/Items"
        let playlistIdPreEscape = "\(APIHelper.mapValueToPathItem(playlistId))"
        let playlistIdPostEscape = playlistIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{playlistId}", with: playlistIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "ids": ids?.encodeToJSON(),
            "userId": userId?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Creates a new playlist.
     
     - parameter name: (query) The playlist name. (optional)
     - parameter ids: (query) The item ids. (optional)
     - parameter userId: (query) The user id. (optional)
     - parameter mediaType: (query) The media type. (optional)
     - parameter createPlaylistDto: (body) The create playlist payload. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createPlaylist(name: String? = nil, ids: [UUID]? = nil, userId: UUID? = nil, mediaType: String? = nil, createPlaylistDto: CreatePlaylistDto? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: PlaylistCreationResult?, _ error: Error?) -> Void)) {
        createPlaylistWithRequestBuilder(name: name, ids: ids, userId: userId, mediaType: mediaType, createPlaylistDto: createPlaylistDto).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Creates a new playlist.
     - POST /Playlists
     - For backwards compatibility parameters can be sent via Query or Body, with Query having higher precedence.  Query parameters are obsolete.
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter name: (query) The playlist name. (optional)
     - parameter ids: (query) The item ids. (optional)
     - parameter userId: (query) The user id. (optional)
     - parameter mediaType: (query) The media type. (optional)
     - parameter createPlaylistDto: (body) The create playlist payload. (optional)
     - returns: RequestBuilder<PlaylistCreationResult> 
     */
    open class func createPlaylistWithRequestBuilder(name: String? = nil, ids: [UUID]? = nil, userId: UUID? = nil, mediaType: String? = nil, createPlaylistDto: CreatePlaylistDto? = nil) -> RequestBuilder<PlaylistCreationResult> {
        let path = "/Playlists"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createPlaylistDto)

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "name": name?.encodeToJSON(),
            "ids": ids?.encodeToJSON(),
            "userId": userId?.encodeToJSON(),
            "mediaType": mediaType?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<PlaylistCreationResult>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets the original items of a playlist.
     
     - parameter playlistId: (path) The playlist id. 
     - parameter userId: (query) User id. 
     - parameter startIndex: (query) Optional. The record index to start at. All items with a lower index will be dropped from the results. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter enableImages: (query) Optional. Include image information in output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPlaylistItems(playlistId: UUID, userId: UUID, startIndex: Int? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, enableImages: Bool? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BaseItemDtoQueryResult?, _ error: Error?) -> Void)) {
        getPlaylistItemsWithRequestBuilder(playlistId: playlistId, userId: userId, startIndex: startIndex, limit: limit, fields: fields, enableImages: enableImages, enableUserData: enableUserData, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Gets the original items of a playlist.
     - GET /Playlists/{playlistId}/Items
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter playlistId: (path) The playlist id. 
     - parameter userId: (query) User id. 
     - parameter startIndex: (query) Optional. The record index to start at. All items with a lower index will be dropped from the results. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter enableImages: (query) Optional. Include image information in output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - returns: RequestBuilder<BaseItemDtoQueryResult> 
     */
    open class func getPlaylistItemsWithRequestBuilder(playlistId: UUID, userId: UUID, startIndex: Int? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, enableImages: Bool? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil) -> RequestBuilder<BaseItemDtoQueryResult> {
        var path = "/Playlists/{playlistId}/Items"
        let playlistIdPreEscape = "\(APIHelper.mapValueToPathItem(playlistId))"
        let playlistIdPostEscape = playlistIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{playlistId}", with: playlistIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId.encodeToJSON(),
            "startIndex": startIndex?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "fields": fields?.encodeToJSON(),
            "enableImages": enableImages?.encodeToJSON(),
            "enableUserData": enableUserData?.encodeToJSON(),
            "imageTypeLimit": imageTypeLimit?.encodeToJSON(),
            "enableImageTypes": enableImageTypes?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<BaseItemDtoQueryResult>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Moves a playlist item.
     
     - parameter playlistId: (path) The playlist id. 
     - parameter itemId: (path) The item id. 
     - parameter newIndex: (path) The new index. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func moveItem(playlistId: String, itemId: String, newIndex: Int, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        moveItemWithRequestBuilder(playlistId: playlistId, itemId: itemId, newIndex: newIndex).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Moves a playlist item.
     - POST /Playlists/{playlistId}/Items/{itemId}/Move/{newIndex}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter playlistId: (path) The playlist id. 
     - parameter itemId: (path) The item id. 
     - parameter newIndex: (path) The new index. 
     - returns: RequestBuilder<Void> 
     */
    open class func moveItemWithRequestBuilder(playlistId: String, itemId: String, newIndex: Int) -> RequestBuilder<Void> {
        var path = "/Playlists/{playlistId}/Items/{itemId}/Move/{newIndex}"
        let playlistIdPreEscape = "\(APIHelper.mapValueToPathItem(playlistId))"
        let playlistIdPostEscape = playlistIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{playlistId}", with: playlistIdPostEscape, options: .literal, range: nil)
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let newIndexPreEscape = "\(APIHelper.mapValueToPathItem(newIndex))"
        let newIndexPostEscape = newIndexPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{newIndex}", with: newIndexPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Removes items from a playlist.
     
     - parameter playlistId: (path) The playlist id. 
     - parameter entryIds: (query) The item ids, comma delimited. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func removeFromPlaylist(playlistId: String, entryIds: [String]? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        removeFromPlaylistWithRequestBuilder(playlistId: playlistId, entryIds: entryIds).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Removes items from a playlist.
     - DELETE /Playlists/{playlistId}/Items
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter playlistId: (path) The playlist id. 
     - parameter entryIds: (query) The item ids, comma delimited. (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func removeFromPlaylistWithRequestBuilder(playlistId: String, entryIds: [String]? = nil) -> RequestBuilder<Void> {
        var path = "/Playlists/{playlistId}/Items"
        let playlistIdPreEscape = "\(APIHelper.mapValueToPathItem(playlistId))"
        let playlistIdPostEscape = playlistIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{playlistId}", with: playlistIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "entryIds": entryIds?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
