//
// ItemUpdateAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import PromiseKit

open class ItemUpdateAPI {
    /**
     Gets metadata editor info for an item.
     
     - parameter itemId: (path) The item id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<MetadataEditorInfo>
     */
    open class func getMetadataEditorInfo( itemId: String, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<MetadataEditorInfo> {
        let deferred = Promise<MetadataEditorInfo>.pending()
        getMetadataEditorInfoWithRequestBuilder(itemId: itemId).execute(apiResponseQueue) { result -> Void in
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
     Gets metadata editor info for an item.
     - GET /Items/{itemId}/MetadataEditor
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) The item id. 
     - returns: RequestBuilder<MetadataEditorInfo> 
     */
    open class func getMetadataEditorInfoWithRequestBuilder(itemId: String) -> RequestBuilder<MetadataEditorInfo> {
        var urlPath = "/Items/{itemId}/MetadataEditor"
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

        let requestBuilder: RequestBuilder<MetadataEditorInfo>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Updates an item.
     
     - parameter itemId: (path) The item id. 
     - parameter baseItemDto: (body) The new item properties. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func updateItem( itemId: String,  baseItemDto: BaseItemDto, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        updateItemWithRequestBuilder(itemId: itemId, baseItemDto: baseItemDto).execute(apiResponseQueue) { result -> Void in
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
     Updates an item.
     - POST /Items/{itemId}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) The item id. 
     - parameter baseItemDto: (body) The new item properties. 
     - returns: RequestBuilder<Void> 
     */
    open class func updateItemWithRequestBuilder(itemId: String, baseItemDto: BaseItemDto) -> RequestBuilder<Void> {
        var urlPath = "/Items/{itemId}"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinClient.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: baseItemDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinClient.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Updates an item's content type.
     
     - parameter itemId: (path) The item id. 
     - parameter contentType: (query) The content type of the item. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func updateItemContentType( itemId: String,  contentType: String? = nil, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        updateItemContentTypeWithRequestBuilder(itemId: itemId, contentType: contentType).execute(apiResponseQueue) { result -> Void in
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
     Updates an item's content type.
     - POST /Items/{itemId}/ContentType
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) The item id. 
     - parameter contentType: (query) The content type of the item. (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func updateItemContentTypeWithRequestBuilder(itemId: String, contentType: String? = nil) -> RequestBuilder<Void> {
        var urlPath = "/Items/{itemId}/ContentType"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "contentType": contentType?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinClient.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
