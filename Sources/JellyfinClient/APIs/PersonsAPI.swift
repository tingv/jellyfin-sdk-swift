//
// PersonsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import PromiseKit

open class PersonsAPI {
    /**
     Get person by name.
     
     - parameter name: (path) Person name. 
     - parameter userId: (query) Optional. Filter by user id, and attach user data. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<BaseItemDto>
     */
    open class func getPerson( name: String,  userId: String? = nil, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<BaseItemDto> {
        let deferred = Promise<BaseItemDto>.pending()
        getPersonWithRequestBuilder(name: name, userId: userId).execute(apiResponseQueue) { result -> Void in
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
     Get person by name.
     - GET /Persons/{name}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter name: (path) Person name. 
     - parameter userId: (query) Optional. Filter by user id, and attach user data. (optional)
     - returns: RequestBuilder<BaseItemDto> 
     */
    open class func getPersonWithRequestBuilder(name: String, userId: String? = nil) -> RequestBuilder<BaseItemDto> {
        var urlPath = "/Persons/{name}"
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
     Gets all persons.
     
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter searchTerm: (query) The search term. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter filters: (query) Optional. Specify additional filters to apply. (optional)
     - parameter isFavorite: (query) Optional filter by items that are marked as favorite, or not. userId is required. (optional)
     - parameter enableUserData: (query) Optional, include user data. (optional)
     - parameter imageTypeLimit: (query) Optional, the max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - parameter excludePersonTypes: (query) Optional. If specified results will be filtered to exclude those containing the specified PersonType. Allows multiple, comma-delimited. (optional)
     - parameter personTypes: (query) Optional. If specified results will be filtered to include only those containing the specified PersonType. Allows multiple, comma-delimited. (optional)
     - parameter appearsInItemId: (query) Optional. If specified, person results will be filtered on items related to said persons. (optional)
     - parameter userId: (query) User id. (optional)
     - parameter enableImages: (query) Optional, include image information in output. (optional, default to true)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<BaseItemDtoQueryResult>
     */
    open class func getPersons( limit: Int? = nil,  searchTerm: String? = nil,  fields: [ItemFields]? = nil,  filters: [ItemFilter]? = nil,  isFavorite: Bool? = nil,  enableUserData: Bool? = nil,  imageTypeLimit: Int? = nil,  enableImageTypes: [ImageType]? = nil,  excludePersonTypes: [String]? = nil,  personTypes: [String]? = nil,  appearsInItemId: String? = nil,  userId: String? = nil,  enableImages: Bool? = nil, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<BaseItemDtoQueryResult> {
        let deferred = Promise<BaseItemDtoQueryResult>.pending()
        getPersonsWithRequestBuilder(limit: limit, searchTerm: searchTerm, fields: fields, filters: filters, isFavorite: isFavorite, enableUserData: enableUserData, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes, excludePersonTypes: excludePersonTypes, personTypes: personTypes, appearsInItemId: appearsInItemId, userId: userId, enableImages: enableImages).execute(apiResponseQueue) { result -> Void in
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
     Gets all persons.
     - GET /Persons
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter searchTerm: (query) The search term. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter filters: (query) Optional. Specify additional filters to apply. (optional)
     - parameter isFavorite: (query) Optional filter by items that are marked as favorite, or not. userId is required. (optional)
     - parameter enableUserData: (query) Optional, include user data. (optional)
     - parameter imageTypeLimit: (query) Optional, the max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - parameter excludePersonTypes: (query) Optional. If specified results will be filtered to exclude those containing the specified PersonType. Allows multiple, comma-delimited. (optional)
     - parameter personTypes: (query) Optional. If specified results will be filtered to include only those containing the specified PersonType. Allows multiple, comma-delimited. (optional)
     - parameter appearsInItemId: (query) Optional. If specified, person results will be filtered on items related to said persons. (optional)
     - parameter userId: (query) User id. (optional)
     - parameter enableImages: (query) Optional, include image information in output. (optional, default to true)
     - returns: RequestBuilder<BaseItemDtoQueryResult> 
     */
    open class func getPersonsWithRequestBuilder(limit: Int? = nil, searchTerm: String? = nil, fields: [ItemFields]? = nil, filters: [ItemFilter]? = nil, isFavorite: Bool? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, excludePersonTypes: [String]? = nil, personTypes: [String]? = nil, appearsInItemId: String? = nil, userId: String? = nil, enableImages: Bool? = nil) -> RequestBuilder<BaseItemDtoQueryResult> {
        let urlPath = "/Persons"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "limit": limit?.encodeToJSON(),
            "searchTerm": searchTerm?.encodeToJSON(),
            "fields": fields?.encodeToJSON(),
            "filters": filters?.encodeToJSON(),
            "isFavorite": isFavorite?.encodeToJSON(),
            "enableUserData": enableUserData?.encodeToJSON(),
            "imageTypeLimit": imageTypeLimit?.encodeToJSON(),
            "enableImageTypes": enableImageTypes?.encodeToJSON(),
            "excludePersonTypes": excludePersonTypes?.encodeToJSON(),
            "personTypes": personTypes?.encodeToJSON(),
            "appearsInItemId": appearsInItemId?.encodeToJSON(),
            "userId": userId?.encodeToJSON(),
            "enableImages": enableImages?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<BaseItemDtoQueryResult>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
