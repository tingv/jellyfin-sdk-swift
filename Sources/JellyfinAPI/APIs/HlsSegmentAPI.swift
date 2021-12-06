//
// HlsSegmentAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation

open class HlsSegmentAPI {
    /**
     Gets the specified audio segment for an audio item.
     
     - parameter itemId: (path) The item id. 
     - parameter segmentId: (path) The segment id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func getHlsAudioSegmentLegacyAac(itemId: String, segmentId: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<URL, Error>) -> Void)) {
        getHlsAudioSegmentLegacyAacWithRequestBuilder(itemId: itemId, segmentId: segmentId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Gets the specified audio segment for an audio item.
     - GET /Audio/{itemId}/hls/{segmentId}/stream.aac
     - parameter itemId: (path) The item id. 
     - parameter segmentId: (path) The segment id. 
     - returns: RequestBuilder<URL> 
     */
    open class func getHlsAudioSegmentLegacyAacWithRequestBuilder(itemId: String, segmentId: String) -> RequestBuilder<URL> {
        var urlPath = "/Audio/{itemId}/hls/{segmentId}/stream.aac"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let segmentIdPreEscape = "\(APIHelper.mapValueToPathItem(segmentId))"
        let segmentIdPostEscape = segmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{segmentId}", with: segmentIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets the specified audio segment for an audio item.
     
     - parameter itemId: (path) The item id. 
     - parameter segmentId: (path) The segment id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func getHlsAudioSegmentLegacyMp3(itemId: String, segmentId: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<URL, Error>) -> Void)) {
        getHlsAudioSegmentLegacyMp3WithRequestBuilder(itemId: itemId, segmentId: segmentId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Gets the specified audio segment for an audio item.
     - GET /Audio/{itemId}/hls/{segmentId}/stream.mp3
     - parameter itemId: (path) The item id. 
     - parameter segmentId: (path) The segment id. 
     - returns: RequestBuilder<URL> 
     */
    open class func getHlsAudioSegmentLegacyMp3WithRequestBuilder(itemId: String, segmentId: String) -> RequestBuilder<URL> {
        var urlPath = "/Audio/{itemId}/hls/{segmentId}/stream.mp3"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let segmentIdPreEscape = "\(APIHelper.mapValueToPathItem(segmentId))"
        let segmentIdPostEscape = segmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{segmentId}", with: segmentIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets a hls video playlist.
     
     - parameter itemId: (path) The video id. 
     - parameter playlistId: (path) The playlist id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func getHlsPlaylistLegacy(itemId: String, playlistId: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<URL, Error>) -> Void)) {
        getHlsPlaylistLegacyWithRequestBuilder(itemId: itemId, playlistId: playlistId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Gets a hls video playlist.
     - GET /Videos/{itemId}/hls/{playlistId}/stream.m3u8
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) The video id. 
     - parameter playlistId: (path) The playlist id. 
     - returns: RequestBuilder<URL> 
     */
    open class func getHlsPlaylistLegacyWithRequestBuilder(itemId: String, playlistId: String) -> RequestBuilder<URL> {
        var urlPath = "/Videos/{itemId}/hls/{playlistId}/stream.m3u8"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let playlistIdPreEscape = "\(APIHelper.mapValueToPathItem(playlistId))"
        let playlistIdPostEscape = playlistIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{playlistId}", with: playlistIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets a hls video segment.
     
     - parameter itemId: (path) The item id. 
     - parameter playlistId: (path) The playlist id. 
     - parameter segmentId: (path) The segment id. 
     - parameter segmentContainer: (path) The segment container. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func getHlsVideoSegmentLegacy(itemId: String, playlistId: String, segmentId: String, segmentContainer: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<URL, Error>) -> Void)) {
        getHlsVideoSegmentLegacyWithRequestBuilder(itemId: itemId, playlistId: playlistId, segmentId: segmentId, segmentContainer: segmentContainer).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Gets a hls video segment.
     - GET /Videos/{itemId}/hls/{playlistId}/{segmentId}.{segmentContainer}
     - parameter itemId: (path) The item id. 
     - parameter playlistId: (path) The playlist id. 
     - parameter segmentId: (path) The segment id. 
     - parameter segmentContainer: (path) The segment container. 
     - returns: RequestBuilder<URL> 
     */
    open class func getHlsVideoSegmentLegacyWithRequestBuilder(itemId: String, playlistId: String, segmentId: String, segmentContainer: String) -> RequestBuilder<URL> {
        var urlPath = "/Videos/{itemId}/hls/{playlistId}/{segmentId}.{segmentContainer}"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let playlistIdPreEscape = "\(APIHelper.mapValueToPathItem(playlistId))"
        let playlistIdPostEscape = playlistIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{playlistId}", with: playlistIdPostEscape, options: .literal, range: nil)
        let segmentIdPreEscape = "\(APIHelper.mapValueToPathItem(segmentId))"
        let segmentIdPostEscape = segmentIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{segmentId}", with: segmentIdPostEscape, options: .literal, range: nil)
        let segmentContainerPreEscape = "\(APIHelper.mapValueToPathItem(segmentContainer))"
        let segmentContainerPostEscape = segmentContainerPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{segmentContainer}", with: segmentContainerPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Stops an active encoding.
     
     - parameter deviceId: (query) The device id of the client requesting. Used to stop encoding processes when needed. 
     - parameter playSessionId: (query) The play session id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func stopEncodingProcess(deviceId: String, playSessionId: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        stopEncodingProcessWithRequestBuilder(deviceId: deviceId, playSessionId: playSessionId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Stops an active encoding.
     - DELETE /Videos/ActiveEncodings
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter deviceId: (query) The device id of the client requesting. Used to stop encoding processes when needed. 
     - parameter playSessionId: (query) The play session id. 
     - returns: RequestBuilder<Void> 
     */
    open class func stopEncodingProcessWithRequestBuilder(deviceId: String, playSessionId: String) -> RequestBuilder<Void> {
        let urlPath = "/Videos/ActiveEncodings"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "deviceId": deviceId.encodeToJSON(),
            "playSessionId": playSessionId.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
