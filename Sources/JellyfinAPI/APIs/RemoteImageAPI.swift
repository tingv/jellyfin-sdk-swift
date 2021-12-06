//
// RemoteImageAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation

open class RemoteImageAPI {
    /**
     Downloads a remote image for an item.
     
     - parameter itemId: (path) Item Id. 
     - parameter type: (query) The image type. 
     - parameter imageUrl: (query) The image url. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func downloadRemoteImage(itemId: String, type: ImageType, imageUrl: String? = nil, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        downloadRemoteImageWithRequestBuilder(itemId: itemId, type: type, imageUrl: imageUrl).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Downloads a remote image for an item.
     - POST /Items/{itemId}/RemoteImages/Download
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) Item Id. 
     - parameter type: (query) The image type. 
     - parameter imageUrl: (query) The image url. (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func downloadRemoteImageWithRequestBuilder(itemId: String, type: ImageType, imageUrl: String? = nil) -> RequestBuilder<Void> {
        var urlPath = "/Items/{itemId}/RemoteImages/Download"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "type": type.encodeToJSON(),
            "imageUrl": imageUrl?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets available remote image providers for an item.
     
     - parameter itemId: (path) Item Id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func getRemoteImageProviders(itemId: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<[ImageProviderInfo], Error>) -> Void)) {
        getRemoteImageProvidersWithRequestBuilder(itemId: itemId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Gets available remote image providers for an item.
     - GET /Items/{itemId}/RemoteImages/Providers
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) Item Id. 
     - returns: RequestBuilder<[ImageProviderInfo]> 
     */
    open class func getRemoteImageProvidersWithRequestBuilder(itemId: String) -> RequestBuilder<[ImageProviderInfo]> {
        var urlPath = "/Items/{itemId}/RemoteImages/Providers"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[ImageProviderInfo]>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets available remote images for an item.
     
     - parameter itemId: (path) Item Id. 
     - parameter type: (query) The image type. (optional)
     - parameter startIndex: (query) Optional. The record index to start at. All items with a lower index will be dropped from the results. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter providerName: (query) Optional. The image provider to use. (optional)
     - parameter includeAllLanguages: (query) Optional. Include all languages. (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func getRemoteImages(itemId: String, type: ImageType? = nil, startIndex: Int? = nil, limit: Int? = nil, providerName: String? = nil, includeAllLanguages: Bool? = nil, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<RemoteImageResult, Error>) -> Void)) {
        getRemoteImagesWithRequestBuilder(itemId: itemId, type: type, startIndex: startIndex, limit: limit, providerName: providerName, includeAllLanguages: includeAllLanguages).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Gets available remote images for an item.
     - GET /Items/{itemId}/RemoteImages
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) Item Id. 
     - parameter type: (query) The image type. (optional)
     - parameter startIndex: (query) Optional. The record index to start at. All items with a lower index will be dropped from the results. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter providerName: (query) Optional. The image provider to use. (optional)
     - parameter includeAllLanguages: (query) Optional. Include all languages. (optional, default to false)
     - returns: RequestBuilder<RemoteImageResult> 
     */
    open class func getRemoteImagesWithRequestBuilder(itemId: String, type: ImageType? = nil, startIndex: Int? = nil, limit: Int? = nil, providerName: String? = nil, includeAllLanguages: Bool? = nil) -> RequestBuilder<RemoteImageResult> {
        var urlPath = "/Items/{itemId}/RemoteImages"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "type": type?.encodeToJSON(),
            "startIndex": startIndex?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "providerName": providerName?.encodeToJSON(),
            "includeAllLanguages": includeAllLanguages?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<RemoteImageResult>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
