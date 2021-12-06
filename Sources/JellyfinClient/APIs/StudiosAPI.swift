//
// StudiosAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import PromiseKit

open class StudiosAPI {
    /**
     Gets a studio by name.
     
     - parameter name: (path) Studio name. 
     - parameter userId: (query) Optional. Filter by user id, and attach user data. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<BaseItemDto>
     */
    open class func getStudio( name: String,  userId: String? = nil, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<BaseItemDto> {
        let deferred = Promise<BaseItemDto>.pending()
        getStudioWithRequestBuilder(name: name, userId: userId).execute(apiResponseQueue) { result -> Void in
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
     Gets a studio by name.
     - GET /Studios/{name}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter name: (path) Studio name. 
     - parameter userId: (query) Optional. Filter by user id, and attach user data. (optional)
     - returns: RequestBuilder<BaseItemDto> 
     */
    open class func getStudioWithRequestBuilder(name: String, userId: String? = nil) -> RequestBuilder<BaseItemDto> {
        var urlPath = "/Studios/{name}"
        let namePreEscape = "\(APIHelper.mapValueToPathItem(name))"
        let namePostEscape = namePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{name}", with: namePostEscape, options: .literal, range: nil)
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<BaseItemDto>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets all studios from a given item, folder, or the entire library.
     
     - parameter startIndex: (query) Optional. The record index to start at. All items with a lower index will be dropped from the results. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter searchTerm: (query) Optional. Search term. (optional)
     - parameter parentId: (query) Specify this to localize the search to a specific item or folder. Omit to use the root. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter excludeItemTypes: (query) Optional. If specified, results will be filtered out based on item type. This allows multiple, comma delimited. (optional)
     - parameter includeItemTypes: (query) Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimited. (optional)
     - parameter isFavorite: (query) Optional filter by items that are marked as favorite, or not. (optional)
     - parameter enableUserData: (query) Optional, include user data. (optional)
     - parameter imageTypeLimit: (query) Optional, the max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - parameter userId: (query) User id. (optional)
     - parameter nameStartsWithOrGreater: (query) Optional filter by items whose name is sorted equally or greater than a given input string. (optional)
     - parameter nameStartsWith: (query) Optional filter by items whose name is sorted equally than a given input string. (optional)
     - parameter nameLessThan: (query) Optional filter by items whose name is equally or lesser than a given input string. (optional)
     - parameter enableImages: (query) Optional, include image information in output. (optional, default to true)
     - parameter enableTotalRecordCount: (query) Total record count. (optional, default to true)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<BaseItemDtoQueryResult>
     */
    open class func getStudios( startIndex: Int? = nil,  limit: Int? = nil,  searchTerm: String? = nil,  parentId: String? = nil,  fields: [ItemFields]? = nil,  excludeItemTypes: [String]? = nil,  includeItemTypes: [String]? = nil,  isFavorite: Bool? = nil,  enableUserData: Bool? = nil,  imageTypeLimit: Int? = nil,  enableImageTypes: [ImageType]? = nil,  userId: String? = nil,  nameStartsWithOrGreater: String? = nil,  nameStartsWith: String? = nil,  nameLessThan: String? = nil,  enableImages: Bool? = nil,  enableTotalRecordCount: Bool? = nil, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<BaseItemDtoQueryResult> {
        let deferred = Promise<BaseItemDtoQueryResult>.pending()
        getStudiosWithRequestBuilder(startIndex: startIndex, limit: limit, searchTerm: searchTerm, parentId: parentId, fields: fields, excludeItemTypes: excludeItemTypes, includeItemTypes: includeItemTypes, isFavorite: isFavorite, enableUserData: enableUserData, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes, userId: userId, nameStartsWithOrGreater: nameStartsWithOrGreater, nameStartsWith: nameStartsWith, nameLessThan: nameLessThan, enableImages: enableImages, enableTotalRecordCount: enableTotalRecordCount).execute(apiResponseQueue) { result -> Void in
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
     Gets all studios from a given item, folder, or the entire library.
     - GET /Studios
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter startIndex: (query) Optional. The record index to start at. All items with a lower index will be dropped from the results. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter searchTerm: (query) Optional. Search term. (optional)
     - parameter parentId: (query) Specify this to localize the search to a specific item or folder. Omit to use the root. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter excludeItemTypes: (query) Optional. If specified, results will be filtered out based on item type. This allows multiple, comma delimited. (optional)
     - parameter includeItemTypes: (query) Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimited. (optional)
     - parameter isFavorite: (query) Optional filter by items that are marked as favorite, or not. (optional)
     - parameter enableUserData: (query) Optional, include user data. (optional)
     - parameter imageTypeLimit: (query) Optional, the max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - parameter userId: (query) User id. (optional)
     - parameter nameStartsWithOrGreater: (query) Optional filter by items whose name is sorted equally or greater than a given input string. (optional)
     - parameter nameStartsWith: (query) Optional filter by items whose name is sorted equally than a given input string. (optional)
     - parameter nameLessThan: (query) Optional filter by items whose name is equally or lesser than a given input string. (optional)
     - parameter enableImages: (query) Optional, include image information in output. (optional, default to true)
     - parameter enableTotalRecordCount: (query) Total record count. (optional, default to true)
     - returns: RequestBuilder<BaseItemDtoQueryResult> 
     */
    open class func getStudiosWithRequestBuilder(startIndex: Int? = nil, limit: Int? = nil, searchTerm: String? = nil, parentId: String? = nil, fields: [ItemFields]? = nil, excludeItemTypes: [String]? = nil, includeItemTypes: [String]? = nil, isFavorite: Bool? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, userId: String? = nil, nameStartsWithOrGreater: String? = nil, nameStartsWith: String? = nil, nameLessThan: String? = nil, enableImages: Bool? = nil, enableTotalRecordCount: Bool? = nil) -> RequestBuilder<BaseItemDtoQueryResult> {
        let urlPath = "/Studios"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "startIndex": startIndex?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "searchTerm": searchTerm?.encodeToJSON(),
            "parentId": parentId?.encodeToJSON(),
            "fields": fields?.encodeToJSON(),
            "excludeItemTypes": excludeItemTypes?.encodeToJSON(),
            "includeItemTypes": includeItemTypes?.encodeToJSON(),
            "isFavorite": isFavorite?.encodeToJSON(),
            "enableUserData": enableUserData?.encodeToJSON(),
            "imageTypeLimit": imageTypeLimit?.encodeToJSON(),
            "enableImageTypes": enableImageTypes?.encodeToJSON(),
            "userId": userId?.encodeToJSON(),
            "nameStartsWithOrGreater": nameStartsWithOrGreater?.encodeToJSON(),
            "nameStartsWith": nameStartsWith?.encodeToJSON(),
            "nameLessThan": nameLessThan?.encodeToJSON(),
            "enableImages": enableImages?.encodeToJSON(),
            "enableTotalRecordCount": enableTotalRecordCount?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<BaseItemDtoQueryResult>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
