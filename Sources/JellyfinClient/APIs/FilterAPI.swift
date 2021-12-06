//
// FilterAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import PromiseKit

open class FilterAPI {
    /**
     Gets query filters.
     
     - parameter userId: (query) Optional. User id. (optional)
     - parameter parentId: (query) Optional. Specify this to localize the search to a specific item or folder. Omit to use the root. (optional)
     - parameter includeItemTypes: (query) Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimited. (optional)
     - parameter isAiring: (query) Optional. Is item airing. (optional)
     - parameter isMovie: (query) Optional. Is item movie. (optional)
     - parameter isSports: (query) Optional. Is item sports. (optional)
     - parameter isKids: (query) Optional. Is item kids. (optional)
     - parameter isNews: (query) Optional. Is item news. (optional)
     - parameter isSeries: (query) Optional. Is item series. (optional)
     - parameter recursive: (query) Optional. Search recursive. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<QueryFilters>
     */
    open class func getQueryFilters( userId: String? = nil,  parentId: String? = nil,  includeItemTypes: [String]? = nil,  isAiring: Bool? = nil,  isMovie: Bool? = nil,  isSports: Bool? = nil,  isKids: Bool? = nil,  isNews: Bool? = nil,  isSeries: Bool? = nil,  recursive: Bool? = nil, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<QueryFilters> {
        let deferred = Promise<QueryFilters>.pending()
        getQueryFiltersWithRequestBuilder(userId: userId, parentId: parentId, includeItemTypes: includeItemTypes, isAiring: isAiring, isMovie: isMovie, isSports: isSports, isKids: isKids, isNews: isNews, isSeries: isSeries, recursive: recursive).execute(apiResponseQueue) { result -> Void in
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
     Gets query filters.
     - GET /Items/Filters2
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (query) Optional. User id. (optional)
     - parameter parentId: (query) Optional. Specify this to localize the search to a specific item or folder. Omit to use the root. (optional)
     - parameter includeItemTypes: (query) Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimited. (optional)
     - parameter isAiring: (query) Optional. Is item airing. (optional)
     - parameter isMovie: (query) Optional. Is item movie. (optional)
     - parameter isSports: (query) Optional. Is item sports. (optional)
     - parameter isKids: (query) Optional. Is item kids. (optional)
     - parameter isNews: (query) Optional. Is item news. (optional)
     - parameter isSeries: (query) Optional. Is item series. (optional)
     - parameter recursive: (query) Optional. Search recursive. (optional)
     - returns: RequestBuilder<QueryFilters> 
     */
    open class func getQueryFiltersWithRequestBuilder(userId: String? = nil, parentId: String? = nil, includeItemTypes: [String]? = nil, isAiring: Bool? = nil, isMovie: Bool? = nil, isSports: Bool? = nil, isKids: Bool? = nil, isNews: Bool? = nil, isSeries: Bool? = nil, recursive: Bool? = nil) -> RequestBuilder<QueryFilters> {
        let urlPath = "/Items/Filters2"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId?.encodeToJSON(),
            "parentId": parentId?.encodeToJSON(),
            "includeItemTypes": includeItemTypes?.encodeToJSON(),
            "isAiring": isAiring?.encodeToJSON(),
            "isMovie": isMovie?.encodeToJSON(),
            "isSports": isSports?.encodeToJSON(),
            "isKids": isKids?.encodeToJSON(),
            "isNews": isNews?.encodeToJSON(),
            "isSeries": isSeries?.encodeToJSON(),
            "recursive": recursive?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<QueryFilters>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets legacy query filters.
     
     - parameter userId: (query) Optional. User id. (optional)
     - parameter parentId: (query) Optional. Parent id. (optional)
     - parameter includeItemTypes: (query) Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimited. (optional)
     - parameter mediaTypes: (query) Optional. Filter by MediaType. Allows multiple, comma delimited. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<QueryFiltersLegacy>
     */
    open class func getQueryFiltersLegacy( userId: String? = nil,  parentId: String? = nil,  includeItemTypes: [String]? = nil,  mediaTypes: [String]? = nil, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<QueryFiltersLegacy> {
        let deferred = Promise<QueryFiltersLegacy>.pending()
        getQueryFiltersLegacyWithRequestBuilder(userId: userId, parentId: parentId, includeItemTypes: includeItemTypes, mediaTypes: mediaTypes).execute(apiResponseQueue) { result -> Void in
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
     Gets legacy query filters.
     - GET /Items/Filters
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (query) Optional. User id. (optional)
     - parameter parentId: (query) Optional. Parent id. (optional)
     - parameter includeItemTypes: (query) Optional. If specified, results will be filtered based on item type. This allows multiple, comma delimited. (optional)
     - parameter mediaTypes: (query) Optional. Filter by MediaType. Allows multiple, comma delimited. (optional)
     - returns: RequestBuilder<QueryFiltersLegacy> 
     */
    open class func getQueryFiltersLegacyWithRequestBuilder(userId: String? = nil, parentId: String? = nil, includeItemTypes: [String]? = nil, mediaTypes: [String]? = nil) -> RequestBuilder<QueryFiltersLegacy> {
        let urlPath = "/Items/Filters"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId?.encodeToJSON(),
            "parentId": parentId?.encodeToJSON(),
            "includeItemTypes": includeItemTypes?.encodeToJSON(),
            "mediaTypes": mediaTypes?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<QueryFiltersLegacy>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
