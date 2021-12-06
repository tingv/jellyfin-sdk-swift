//
// UniversalAudioAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation

open class UniversalAudioAPI {
    /**
     Gets an audio stream.
     
     - parameter itemId: (path) The item id. 
     - parameter container: (query) Optional. The audio container. (optional)
     - parameter mediaSourceId: (query) The media version id, if playing an alternate version. (optional)
     - parameter deviceId: (query) The device id of the client requesting. Used to stop encoding processes when needed. (optional)
     - parameter userId: (query) Optional. The user id. (optional)
     - parameter audioCodec: (query) Optional. The audio codec to transcode to. (optional)
     - parameter maxAudioChannels: (query) Optional. The maximum number of audio channels. (optional)
     - parameter transcodingAudioChannels: (query) Optional. The number of how many audio channels to transcode to. (optional)
     - parameter maxStreamingBitrate: (query) Optional. The maximum streaming bitrate. (optional)
     - parameter audioBitRate: (query) Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults. (optional)
     - parameter startTimeTicks: (query) Optional. Specify a starting offset, in ticks. 1 tick &#x3D; 10000 ms. (optional)
     - parameter transcodingContainer: (query) Optional. The container to transcode to. (optional)
     - parameter transcodingProtocol: (query) Optional. The transcoding protocol. (optional)
     - parameter maxAudioSampleRate: (query) Optional. The maximum audio sample rate. (optional)
     - parameter maxAudioBitDepth: (query) Optional. The maximum audio bit depth. (optional)
     - parameter enableRemoteMedia: (query) Optional. Whether to enable remote media. (optional)
     - parameter breakOnNonKeyFrames: (query) Optional. Whether to break on non key frames. (optional, default to false)
     - parameter enableRedirection: (query) Whether to enable redirection. Defaults to true. (optional, default to true)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func getUniversalAudioStream(itemId: String, container: [String]? = nil, mediaSourceId: String? = nil, deviceId: String? = nil, userId: String? = nil, audioCodec: String? = nil, maxAudioChannels: Int? = nil, transcodingAudioChannels: Int? = nil, maxStreamingBitrate: Int? = nil, audioBitRate: Int? = nil, startTimeTicks: Int64? = nil, transcodingContainer: String? = nil, transcodingProtocol: String? = nil, maxAudioSampleRate: Int? = nil, maxAudioBitDepth: Int? = nil, enableRemoteMedia: Bool? = nil, breakOnNonKeyFrames: Bool? = nil, enableRedirection: Bool? = nil, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<URL, Error>) -> Void)) {
        getUniversalAudioStreamWithRequestBuilder(itemId: itemId, container: container, mediaSourceId: mediaSourceId, deviceId: deviceId, userId: userId, audioCodec: audioCodec, maxAudioChannels: maxAudioChannels, transcodingAudioChannels: transcodingAudioChannels, maxStreamingBitrate: maxStreamingBitrate, audioBitRate: audioBitRate, startTimeTicks: startTimeTicks, transcodingContainer: transcodingContainer, transcodingProtocol: transcodingProtocol, maxAudioSampleRate: maxAudioSampleRate, maxAudioBitDepth: maxAudioBitDepth, enableRemoteMedia: enableRemoteMedia, breakOnNonKeyFrames: breakOnNonKeyFrames, enableRedirection: enableRedirection).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Gets an audio stream.
     - GET /Audio/{itemId}/universal
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) The item id. 
     - parameter container: (query) Optional. The audio container. (optional)
     - parameter mediaSourceId: (query) The media version id, if playing an alternate version. (optional)
     - parameter deviceId: (query) The device id of the client requesting. Used to stop encoding processes when needed. (optional)
     - parameter userId: (query) Optional. The user id. (optional)
     - parameter audioCodec: (query) Optional. The audio codec to transcode to. (optional)
     - parameter maxAudioChannels: (query) Optional. The maximum number of audio channels. (optional)
     - parameter transcodingAudioChannels: (query) Optional. The number of how many audio channels to transcode to. (optional)
     - parameter maxStreamingBitrate: (query) Optional. The maximum streaming bitrate. (optional)
     - parameter audioBitRate: (query) Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults. (optional)
     - parameter startTimeTicks: (query) Optional. Specify a starting offset, in ticks. 1 tick &#x3D; 10000 ms. (optional)
     - parameter transcodingContainer: (query) Optional. The container to transcode to. (optional)
     - parameter transcodingProtocol: (query) Optional. The transcoding protocol. (optional)
     - parameter maxAudioSampleRate: (query) Optional. The maximum audio sample rate. (optional)
     - parameter maxAudioBitDepth: (query) Optional. The maximum audio bit depth. (optional)
     - parameter enableRemoteMedia: (query) Optional. Whether to enable remote media. (optional)
     - parameter breakOnNonKeyFrames: (query) Optional. Whether to break on non key frames. (optional, default to false)
     - parameter enableRedirection: (query) Whether to enable redirection. Defaults to true. (optional, default to true)
     - returns: RequestBuilder<URL> 
     */
    open class func getUniversalAudioStreamWithRequestBuilder(itemId: String, container: [String]? = nil, mediaSourceId: String? = nil, deviceId: String? = nil, userId: String? = nil, audioCodec: String? = nil, maxAudioChannels: Int? = nil, transcodingAudioChannels: Int? = nil, maxStreamingBitrate: Int? = nil, audioBitRate: Int? = nil, startTimeTicks: Int64? = nil, transcodingContainer: String? = nil, transcodingProtocol: String? = nil, maxAudioSampleRate: Int? = nil, maxAudioBitDepth: Int? = nil, enableRemoteMedia: Bool? = nil, breakOnNonKeyFrames: Bool? = nil, enableRedirection: Bool? = nil) -> RequestBuilder<URL> {
        var urlPath = "/Audio/{itemId}/universal"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "container": container?.encodeToJSON(),
            "mediaSourceId": mediaSourceId?.encodeToJSON(),
            "deviceId": deviceId?.encodeToJSON(),
            "userId": userId?.encodeToJSON(),
            "audioCodec": audioCodec?.encodeToJSON(),
            "maxAudioChannels": maxAudioChannels?.encodeToJSON(),
            "transcodingAudioChannels": transcodingAudioChannels?.encodeToJSON(),
            "maxStreamingBitrate": maxStreamingBitrate?.encodeToJSON(),
            "audioBitRate": audioBitRate?.encodeToJSON(),
            "startTimeTicks": startTimeTicks?.encodeToJSON(),
            "transcodingContainer": transcodingContainer?.encodeToJSON(),
            "transcodingProtocol": transcodingProtocol?.encodeToJSON(),
            "maxAudioSampleRate": maxAudioSampleRate?.encodeToJSON(),
            "maxAudioBitDepth": maxAudioBitDepth?.encodeToJSON(),
            "enableRemoteMedia": enableRemoteMedia?.encodeToJSON(),
            "breakOnNonKeyFrames": breakOnNonKeyFrames?.encodeToJSON(),
            "enableRedirection": enableRedirection?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets an audio stream.
     
     - parameter itemId: (path) The item id. 
     - parameter container: (query) Optional. The audio container. (optional)
     - parameter mediaSourceId: (query) The media version id, if playing an alternate version. (optional)
     - parameter deviceId: (query) The device id of the client requesting. Used to stop encoding processes when needed. (optional)
     - parameter userId: (query) Optional. The user id. (optional)
     - parameter audioCodec: (query) Optional. The audio codec to transcode to. (optional)
     - parameter maxAudioChannels: (query) Optional. The maximum number of audio channels. (optional)
     - parameter transcodingAudioChannels: (query) Optional. The number of how many audio channels to transcode to. (optional)
     - parameter maxStreamingBitrate: (query) Optional. The maximum streaming bitrate. (optional)
     - parameter audioBitRate: (query) Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults. (optional)
     - parameter startTimeTicks: (query) Optional. Specify a starting offset, in ticks. 1 tick &#x3D; 10000 ms. (optional)
     - parameter transcodingContainer: (query) Optional. The container to transcode to. (optional)
     - parameter transcodingProtocol: (query) Optional. The transcoding protocol. (optional)
     - parameter maxAudioSampleRate: (query) Optional. The maximum audio sample rate. (optional)
     - parameter maxAudioBitDepth: (query) Optional. The maximum audio bit depth. (optional)
     - parameter enableRemoteMedia: (query) Optional. Whether to enable remote media. (optional)
     - parameter breakOnNonKeyFrames: (query) Optional. Whether to break on non key frames. (optional, default to false)
     - parameter enableRedirection: (query) Whether to enable redirection. Defaults to true. (optional, default to true)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func headUniversalAudioStream(itemId: String, container: [String]? = nil, mediaSourceId: String? = nil, deviceId: String? = nil, userId: String? = nil, audioCodec: String? = nil, maxAudioChannels: Int? = nil, transcodingAudioChannels: Int? = nil, maxStreamingBitrate: Int? = nil, audioBitRate: Int? = nil, startTimeTicks: Int64? = nil, transcodingContainer: String? = nil, transcodingProtocol: String? = nil, maxAudioSampleRate: Int? = nil, maxAudioBitDepth: Int? = nil, enableRemoteMedia: Bool? = nil, breakOnNonKeyFrames: Bool? = nil, enableRedirection: Bool? = nil, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<URL, Error>) -> Void)) {
        headUniversalAudioStreamWithRequestBuilder(itemId: itemId, container: container, mediaSourceId: mediaSourceId, deviceId: deviceId, userId: userId, audioCodec: audioCodec, maxAudioChannels: maxAudioChannels, transcodingAudioChannels: transcodingAudioChannels, maxStreamingBitrate: maxStreamingBitrate, audioBitRate: audioBitRate, startTimeTicks: startTimeTicks, transcodingContainer: transcodingContainer, transcodingProtocol: transcodingProtocol, maxAudioSampleRate: maxAudioSampleRate, maxAudioBitDepth: maxAudioBitDepth, enableRemoteMedia: enableRemoteMedia, breakOnNonKeyFrames: breakOnNonKeyFrames, enableRedirection: enableRedirection).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Gets an audio stream.
     - HEAD /Audio/{itemId}/universal
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) The item id. 
     - parameter container: (query) Optional. The audio container. (optional)
     - parameter mediaSourceId: (query) The media version id, if playing an alternate version. (optional)
     - parameter deviceId: (query) The device id of the client requesting. Used to stop encoding processes when needed. (optional)
     - parameter userId: (query) Optional. The user id. (optional)
     - parameter audioCodec: (query) Optional. The audio codec to transcode to. (optional)
     - parameter maxAudioChannels: (query) Optional. The maximum number of audio channels. (optional)
     - parameter transcodingAudioChannels: (query) Optional. The number of how many audio channels to transcode to. (optional)
     - parameter maxStreamingBitrate: (query) Optional. The maximum streaming bitrate. (optional)
     - parameter audioBitRate: (query) Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults. (optional)
     - parameter startTimeTicks: (query) Optional. Specify a starting offset, in ticks. 1 tick &#x3D; 10000 ms. (optional)
     - parameter transcodingContainer: (query) Optional. The container to transcode to. (optional)
     - parameter transcodingProtocol: (query) Optional. The transcoding protocol. (optional)
     - parameter maxAudioSampleRate: (query) Optional. The maximum audio sample rate. (optional)
     - parameter maxAudioBitDepth: (query) Optional. The maximum audio bit depth. (optional)
     - parameter enableRemoteMedia: (query) Optional. Whether to enable remote media. (optional)
     - parameter breakOnNonKeyFrames: (query) Optional. Whether to break on non key frames. (optional, default to false)
     - parameter enableRedirection: (query) Whether to enable redirection. Defaults to true. (optional, default to true)
     - returns: RequestBuilder<URL> 
     */
    open class func headUniversalAudioStreamWithRequestBuilder(itemId: String, container: [String]? = nil, mediaSourceId: String? = nil, deviceId: String? = nil, userId: String? = nil, audioCodec: String? = nil, maxAudioChannels: Int? = nil, transcodingAudioChannels: Int? = nil, maxStreamingBitrate: Int? = nil, audioBitRate: Int? = nil, startTimeTicks: Int64? = nil, transcodingContainer: String? = nil, transcodingProtocol: String? = nil, maxAudioSampleRate: Int? = nil, maxAudioBitDepth: Int? = nil, enableRemoteMedia: Bool? = nil, breakOnNonKeyFrames: Bool? = nil, enableRedirection: Bool? = nil) -> RequestBuilder<URL> {
        var urlPath = "/Audio/{itemId}/universal"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "container": container?.encodeToJSON(),
            "mediaSourceId": mediaSourceId?.encodeToJSON(),
            "deviceId": deviceId?.encodeToJSON(),
            "userId": userId?.encodeToJSON(),
            "audioCodec": audioCodec?.encodeToJSON(),
            "maxAudioChannels": maxAudioChannels?.encodeToJSON(),
            "transcodingAudioChannels": transcodingAudioChannels?.encodeToJSON(),
            "maxStreamingBitrate": maxStreamingBitrate?.encodeToJSON(),
            "audioBitRate": audioBitRate?.encodeToJSON(),
            "startTimeTicks": startTimeTicks?.encodeToJSON(),
            "transcodingContainer": transcodingContainer?.encodeToJSON(),
            "transcodingProtocol": transcodingProtocol?.encodeToJSON(),
            "maxAudioSampleRate": maxAudioSampleRate?.encodeToJSON(),
            "maxAudioBitDepth": maxAudioBitDepth?.encodeToJSON(),
            "enableRemoteMedia": enableRemoteMedia?.encodeToJSON(),
            "breakOnNonKeyFrames": breakOnNonKeyFrames?.encodeToJSON(),
            "enableRedirection": enableRedirection?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "HEAD", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
