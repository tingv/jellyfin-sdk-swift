//
// CollectionAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import PromiseKit

open class CollectionAPI {
    /**
     Adds items to a collection.
     
     - parameter collectionId: (path) The collection id. 
     - parameter ids: (query) Item ids, comma delimited. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func addToCollection( collectionId: String,  ids: [String], apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        addToCollectionWithRequestBuilder(collectionId: collectionId, ids: ids).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                deferred.resolver.fulfill(())
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Adds items to a collection.
     - POST /Collections/{collectionId}/Items
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter collectionId: (path) The collection id. 
     - parameter ids: (query) Item ids, comma delimited. 
     - returns: RequestBuilder<Void> 
     */
    open class func addToCollectionWithRequestBuilder(collectionId: String, ids: [String]) -> RequestBuilder<Void> {
        var urlPath = "/Collections/{collectionId}/Items"
        let collectionIdPreEscape = "\(APIHelper.mapValueToPathItem(collectionId))"
        let collectionIdPostEscape = collectionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{collectionId}", with: collectionIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "ids": ids.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Creates a new collection.
     
     - parameter name: (query) The name of the collection. (optional)
     - parameter ids: (query) Item Ids to add to the collection. (optional)
     - parameter parentId: (query) Optional. Create the collection within a specific folder. (optional)
     - parameter isLocked: (query) Whether or not to lock the new collection. (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<CollectionCreationResult>
     */
    open class func createCollection( name: String? = nil,  ids: [String]? = nil,  parentId: String? = nil,  isLocked: Bool? = nil, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> Promise<CollectionCreationResult> {
        let deferred = Promise<CollectionCreationResult>.pending()
        createCollectionWithRequestBuilder(name: name, ids: ids, parentId: parentId, isLocked: isLocked).execute(apiResponseQueue) { result -> Void in
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
     Creates a new collection.
     - POST /Collections
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter name: (query) The name of the collection. (optional)
     - parameter ids: (query) Item Ids to add to the collection. (optional)
     - parameter parentId: (query) Optional. Create the collection within a specific folder. (optional)
     - parameter isLocked: (query) Whether or not to lock the new collection. (optional, default to false)
     - returns: RequestBuilder<CollectionCreationResult> 
     */
    open class func createCollectionWithRequestBuilder(name: String? = nil, ids: [String]? = nil, parentId: String? = nil, isLocked: Bool? = nil) -> RequestBuilder<CollectionCreationResult> {
        let urlPath = "/Collections"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "name": name?.encodeToJSON(),
            "ids": ids?.encodeToJSON(),
            "parentId": parentId?.encodeToJSON(),
            "isLocked": isLocked?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<CollectionCreationResult>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Removes items from a collection.
     
     - parameter collectionId: (path) The collection id. 
     - parameter ids: (query) Item ids, comma delimited. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func removeFromCollection( collectionId: String,  ids: [String], apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        removeFromCollectionWithRequestBuilder(collectionId: collectionId, ids: ids).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                deferred.resolver.fulfill(())
            case let .failure(error):
                deferred.resolver.reject(error)
            }
        }
        return deferred.promise
    }

    /**
     Removes items from a collection.
     - DELETE /Collections/{collectionId}/Items
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter collectionId: (path) The collection id. 
     - parameter ids: (query) Item ids, comma delimited. 
     - returns: RequestBuilder<Void> 
     */
    open class func removeFromCollectionWithRequestBuilder(collectionId: String, ids: [String]) -> RequestBuilder<Void> {
        var urlPath = "/Collections/{collectionId}/Items"
        let collectionIdPreEscape = "\(APIHelper.mapValueToPathItem(collectionId))"
        let collectionIdPostEscape = collectionIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{collectionId}", with: collectionIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "ids": ids.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
