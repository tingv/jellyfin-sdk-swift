//
// SubtitleAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import PromiseKit

open class SubtitleAPI {
    /**
     Deletes an external subtitle file.
     
     - parameter itemId: (path) The item id. 
     - parameter index: (path) The index of the subtitle file. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func deleteSubtitle( itemId: String,  index: Int, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        deleteSubtitleWithRequestBuilder(itemId: itemId, index: index).execute(apiResponseQueue) { result -> Void in
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
     Deletes an external subtitle file.
     - DELETE /Videos/{itemId}/Subtitles/{index}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) The item id. 
     - parameter index: (path) The index of the subtitle file. 
     - returns: RequestBuilder<Void> 
     */
    open class func deleteSubtitleWithRequestBuilder(itemId: String, index: Int) -> RequestBuilder<Void> {
        var urlPath = "/Videos/{itemId}/Subtitles/{index}"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let indexPreEscape = "\(APIHelper.mapValueToPathItem(index))"
        let indexPostEscape = indexPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{index}", with: indexPostEscape, options: .literal, range: nil)
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinClient.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Downloads a remote subtitle.
     
     - parameter itemId: (path) The item id. 
     - parameter subtitleId: (path) The subtitle id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func downloadRemoteSubtitles( itemId: String,  subtitleId: String, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        downloadRemoteSubtitlesWithRequestBuilder(itemId: itemId, subtitleId: subtitleId).execute(apiResponseQueue) { result -> Void in
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
     Downloads a remote subtitle.
     - POST /Items/{itemId}/RemoteSearch/Subtitles/{subtitleId}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) The item id. 
     - parameter subtitleId: (path) The subtitle id. 
     - returns: RequestBuilder<Void> 
     */
    open class func downloadRemoteSubtitlesWithRequestBuilder(itemId: String, subtitleId: String) -> RequestBuilder<Void> {
        var urlPath = "/Items/{itemId}/RemoteSearch/Subtitles/{subtitleId}"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let subtitleIdPreEscape = "\(APIHelper.mapValueToPathItem(subtitleId))"
        let subtitleIdPostEscape = subtitleIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{subtitleId}", with: subtitleIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinClient.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets a fallback font file.
     
     - parameter name: (path) The name of the fallback font file to get. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<URL>
     */
    open class func getFallbackFont( name: String, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<URL> {
        let deferred = Promise<URL>.pending()
        getFallbackFontWithRequestBuilder(name: name).execute(apiResponseQueue) { result -> Void in
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
     Gets a fallback font file.
     - GET /FallbackFont/Fonts/{name}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter name: (path) The name of the fallback font file to get. 
     - returns: RequestBuilder<URL> 
     */
    open class func getFallbackFontWithRequestBuilder(name: String) -> RequestBuilder<URL> {
        var urlPath = "/FallbackFont/Fonts/{name}"
        let namePreEscape = "\(APIHelper.mapValueToPathItem(name))"
        let namePostEscape = namePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{name}", with: namePostEscape, options: .literal, range: nil)
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets a list of available fallback font files.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<[FontFile]>
     */
    open class func getFallbackFontList(apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<[FontFile]> {
        let deferred = Promise<[FontFile]>.pending()
        getFallbackFontListWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     Gets a list of available fallback font files.
     - GET /FallbackFont/Fonts
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<[FontFile]> 
     */
    open class func getFallbackFontListWithRequestBuilder() -> RequestBuilder<[FontFile]> {
        let urlPath = "/FallbackFont/Fonts"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[FontFile]>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets the remote subtitles.
     
     - parameter id: (path) The item id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<URL>
     */
    open class func getRemoteSubtitles( id: String, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<URL> {
        let deferred = Promise<URL>.pending()
        getRemoteSubtitlesWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     Gets the remote subtitles.
     - GET /Providers/Subtitles/Subtitles/{id}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter id: (path) The item id. 
     - returns: RequestBuilder<URL> 
     */
    open class func getRemoteSubtitlesWithRequestBuilder(id: String) -> RequestBuilder<URL> {
        var urlPath = "/Providers/Subtitles/Subtitles/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets subtitles in a specified format.
     
     - parameter routeItemId: (path) The (route) item id. 
     - parameter routeMediaSourceId: (path) The (route) media source id. 
     - parameter routeIndex: (path) The (route) subtitle stream index. 
     - parameter routeFormat: (path) The (route) format of the returned subtitle. 
     - parameter itemId: (query) The item id. (optional)
     - parameter mediaSourceId: (query) The media source id. (optional)
     - parameter index: (query) The subtitle stream index. (optional)
     - parameter format: (query) The format of the returned subtitle. (optional)
     - parameter endPositionTicks: (query) Optional. The end position of the subtitle in ticks. (optional)
     - parameter copyTimestamps: (query) Optional. Whether to copy the timestamps. (optional, default to false)
     - parameter addVttTimeMap: (query) Optional. Whether to add a VTT time map. (optional, default to false)
     - parameter startPositionTicks: (query) The start position of the subtitle in ticks. (optional, default to 0)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<URL>
     */
    open class func getSubtitle( routeItemId: String,  routeMediaSourceId: String,  routeIndex: Int,  routeFormat: String,  itemId: String? = nil,  mediaSourceId: String? = nil,  index: Int? = nil,  format: String? = nil,  endPositionTicks: Int64? = nil,  copyTimestamps: Bool? = nil,  addVttTimeMap: Bool? = nil,  startPositionTicks: Int64? = nil, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<URL> {
        let deferred = Promise<URL>.pending()
        getSubtitleWithRequestBuilder(routeItemId: routeItemId, routeMediaSourceId: routeMediaSourceId, routeIndex: routeIndex, routeFormat: routeFormat, itemId: itemId, mediaSourceId: mediaSourceId, index: index, format: format, endPositionTicks: endPositionTicks, copyTimestamps: copyTimestamps, addVttTimeMap: addVttTimeMap, startPositionTicks: startPositionTicks).execute(apiResponseQueue) { result -> Void in
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
     Gets subtitles in a specified format.
     - GET /Videos/{routeItemId}/routeMediaSourceId/Subtitles/{routeIndex}/Stream.{routeFormat}
     - parameter routeItemId: (path) The (route) item id. 
     - parameter routeMediaSourceId: (path) The (route) media source id. 
     - parameter routeIndex: (path) The (route) subtitle stream index. 
     - parameter routeFormat: (path) The (route) format of the returned subtitle. 
     - parameter itemId: (query) The item id. (optional)
     - parameter mediaSourceId: (query) The media source id. (optional)
     - parameter index: (query) The subtitle stream index. (optional)
     - parameter format: (query) The format of the returned subtitle. (optional)
     - parameter endPositionTicks: (query) Optional. The end position of the subtitle in ticks. (optional)
     - parameter copyTimestamps: (query) Optional. Whether to copy the timestamps. (optional, default to false)
     - parameter addVttTimeMap: (query) Optional. Whether to add a VTT time map. (optional, default to false)
     - parameter startPositionTicks: (query) The start position of the subtitle in ticks. (optional, default to 0)
     - returns: RequestBuilder<URL> 
     */
    open class func getSubtitleWithRequestBuilder(routeItemId: String, routeMediaSourceId: String, routeIndex: Int, routeFormat: String, itemId: String? = nil, mediaSourceId: String? = nil, index: Int? = nil, format: String? = nil, endPositionTicks: Int64? = nil, copyTimestamps: Bool? = nil, addVttTimeMap: Bool? = nil, startPositionTicks: Int64? = nil) -> RequestBuilder<URL> {
        var urlPath = "/Videos/{routeItemId}/routeMediaSourceId/Subtitles/{routeIndex}/Stream.{routeFormat}"
        let routeItemIdPreEscape = "\(APIHelper.mapValueToPathItem(routeItemId))"
        let routeItemIdPostEscape = routeItemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{routeItemId}", with: routeItemIdPostEscape, options: .literal, range: nil)
        let routeMediaSourceIdPreEscape = "\(APIHelper.mapValueToPathItem(routeMediaSourceId))"
        let routeMediaSourceIdPostEscape = routeMediaSourceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{routeMediaSourceId}", with: routeMediaSourceIdPostEscape, options: .literal, range: nil)
        let routeIndexPreEscape = "\(APIHelper.mapValueToPathItem(routeIndex))"
        let routeIndexPostEscape = routeIndexPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{routeIndex}", with: routeIndexPostEscape, options: .literal, range: nil)
        let routeFormatPreEscape = "\(APIHelper.mapValueToPathItem(routeFormat))"
        let routeFormatPostEscape = routeFormatPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{routeFormat}", with: routeFormatPostEscape, options: .literal, range: nil)
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "itemId": itemId?.encodeToJSON(),
            "mediaSourceId": mediaSourceId?.encodeToJSON(),
            "index": index?.encodeToJSON(),
            "format": format?.encodeToJSON(),
            "endPositionTicks": endPositionTicks?.encodeToJSON(),
            "copyTimestamps": copyTimestamps?.encodeToJSON(),
            "addVttTimeMap": addVttTimeMap?.encodeToJSON(),
            "startPositionTicks": startPositionTicks?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets an HLS subtitle playlist.
     
     - parameter itemId: (path) The item id. 
     - parameter index: (path) The subtitle stream index. 
     - parameter mediaSourceId: (path) The media source id. 
     - parameter segmentLength: (query) The subtitle segment length. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<URL>
     */
    open class func getSubtitlePlaylist( itemId: String,  index: Int,  mediaSourceId: String,  segmentLength: Int, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<URL> {
        let deferred = Promise<URL>.pending()
        getSubtitlePlaylistWithRequestBuilder(itemId: itemId, index: index, mediaSourceId: mediaSourceId, segmentLength: segmentLength).execute(apiResponseQueue) { result -> Void in
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
     Gets an HLS subtitle playlist.
     - GET /Videos/{itemId}/{mediaSourceId}/Subtitles/{index}/subtitles.m3u8
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) The item id. 
     - parameter index: (path) The subtitle stream index. 
     - parameter mediaSourceId: (path) The media source id. 
     - parameter segmentLength: (query) The subtitle segment length. 
     - returns: RequestBuilder<URL> 
     */
    open class func getSubtitlePlaylistWithRequestBuilder(itemId: String, index: Int, mediaSourceId: String, segmentLength: Int) -> RequestBuilder<URL> {
        var urlPath = "/Videos/{itemId}/{mediaSourceId}/Subtitles/{index}/subtitles.m3u8"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let indexPreEscape = "\(APIHelper.mapValueToPathItem(index))"
        let indexPostEscape = indexPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{index}", with: indexPostEscape, options: .literal, range: nil)
        let mediaSourceIdPreEscape = "\(APIHelper.mapValueToPathItem(mediaSourceId))"
        let mediaSourceIdPostEscape = mediaSourceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{mediaSourceId}", with: mediaSourceIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "segmentLength": segmentLength.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets subtitles in a specified format.
     
     - parameter routeItemId: (path) The (route) item id. 
     - parameter routeMediaSourceId: (path) The (route) media source id. 
     - parameter routeIndex: (path) The (route) subtitle stream index. 
     - parameter routeStartPositionTicks: (path) The (route) start position of the subtitle in ticks. 
     - parameter routeFormat: (path) The (route) format of the returned subtitle. 
     - parameter itemId: (query) The item id. (optional)
     - parameter mediaSourceId: (query) The media source id. (optional)
     - parameter index: (query) The subtitle stream index. (optional)
     - parameter startPositionTicks: (query) The start position of the subtitle in ticks. (optional)
     - parameter format: (query) The format of the returned subtitle. (optional)
     - parameter endPositionTicks: (query) Optional. The end position of the subtitle in ticks. (optional)
     - parameter copyTimestamps: (query) Optional. Whether to copy the timestamps. (optional, default to false)
     - parameter addVttTimeMap: (query) Optional. Whether to add a VTT time map. (optional, default to false)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<URL>
     */
    open class func getSubtitleWithTicks( routeItemId: String,  routeMediaSourceId: String,  routeIndex: Int,  routeStartPositionTicks: Int64,  routeFormat: String,  itemId: String? = nil,  mediaSourceId: String? = nil,  index: Int? = nil,  startPositionTicks: Int64? = nil,  format: String? = nil,  endPositionTicks: Int64? = nil,  copyTimestamps: Bool? = nil,  addVttTimeMap: Bool? = nil, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<URL> {
        let deferred = Promise<URL>.pending()
        getSubtitleWithTicksWithRequestBuilder(routeItemId: routeItemId, routeMediaSourceId: routeMediaSourceId, routeIndex: routeIndex, routeStartPositionTicks: routeStartPositionTicks, routeFormat: routeFormat, itemId: itemId, mediaSourceId: mediaSourceId, index: index, startPositionTicks: startPositionTicks, format: format, endPositionTicks: endPositionTicks, copyTimestamps: copyTimestamps, addVttTimeMap: addVttTimeMap).execute(apiResponseQueue) { result -> Void in
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
     Gets subtitles in a specified format.
     - GET /Videos/{routeItemId}/{routeMediaSourceId}/Subtitles/{routeIndex}/{routeStartPositionTicks}/Stream.{routeFormat}
     - parameter routeItemId: (path) The (route) item id. 
     - parameter routeMediaSourceId: (path) The (route) media source id. 
     - parameter routeIndex: (path) The (route) subtitle stream index. 
     - parameter routeStartPositionTicks: (path) The (route) start position of the subtitle in ticks. 
     - parameter routeFormat: (path) The (route) format of the returned subtitle. 
     - parameter itemId: (query) The item id. (optional)
     - parameter mediaSourceId: (query) The media source id. (optional)
     - parameter index: (query) The subtitle stream index. (optional)
     - parameter startPositionTicks: (query) The start position of the subtitle in ticks. (optional)
     - parameter format: (query) The format of the returned subtitle. (optional)
     - parameter endPositionTicks: (query) Optional. The end position of the subtitle in ticks. (optional)
     - parameter copyTimestamps: (query) Optional. Whether to copy the timestamps. (optional, default to false)
     - parameter addVttTimeMap: (query) Optional. Whether to add a VTT time map. (optional, default to false)
     - returns: RequestBuilder<URL> 
     */
    open class func getSubtitleWithTicksWithRequestBuilder(routeItemId: String, routeMediaSourceId: String, routeIndex: Int, routeStartPositionTicks: Int64, routeFormat: String, itemId: String? = nil, mediaSourceId: String? = nil, index: Int? = nil, startPositionTicks: Int64? = nil, format: String? = nil, endPositionTicks: Int64? = nil, copyTimestamps: Bool? = nil, addVttTimeMap: Bool? = nil) -> RequestBuilder<URL> {
        var urlPath = "/Videos/{routeItemId}/{routeMediaSourceId}/Subtitles/{routeIndex}/{routeStartPositionTicks}/Stream.{routeFormat}"
        let routeItemIdPreEscape = "\(APIHelper.mapValueToPathItem(routeItemId))"
        let routeItemIdPostEscape = routeItemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{routeItemId}", with: routeItemIdPostEscape, options: .literal, range: nil)
        let routeMediaSourceIdPreEscape = "\(APIHelper.mapValueToPathItem(routeMediaSourceId))"
        let routeMediaSourceIdPostEscape = routeMediaSourceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{routeMediaSourceId}", with: routeMediaSourceIdPostEscape, options: .literal, range: nil)
        let routeIndexPreEscape = "\(APIHelper.mapValueToPathItem(routeIndex))"
        let routeIndexPostEscape = routeIndexPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{routeIndex}", with: routeIndexPostEscape, options: .literal, range: nil)
        let routeStartPositionTicksPreEscape = "\(APIHelper.mapValueToPathItem(routeStartPositionTicks))"
        let routeStartPositionTicksPostEscape = routeStartPositionTicksPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{routeStartPositionTicks}", with: routeStartPositionTicksPostEscape, options: .literal, range: nil)
        let routeFormatPreEscape = "\(APIHelper.mapValueToPathItem(routeFormat))"
        let routeFormatPostEscape = routeFormatPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{routeFormat}", with: routeFormatPostEscape, options: .literal, range: nil)
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "itemId": itemId?.encodeToJSON(),
            "mediaSourceId": mediaSourceId?.encodeToJSON(),
            "index": index?.encodeToJSON(),
            "startPositionTicks": startPositionTicks?.encodeToJSON(),
            "format": format?.encodeToJSON(),
            "endPositionTicks": endPositionTicks?.encodeToJSON(),
            "copyTimestamps": copyTimestamps?.encodeToJSON(),
            "addVttTimeMap": addVttTimeMap?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<URL>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Search remote subtitles.
     
     - parameter itemId: (path) The item id. 
     - parameter language: (path) The language of the subtitles. 
     - parameter isPerfectMatch: (query) Optional. Only show subtitles which are a perfect match. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<[RemoteSubtitleInfo]>
     */
    open class func searchRemoteSubtitles( itemId: String,  language: String,  isPerfectMatch: Bool? = nil, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<[RemoteSubtitleInfo]> {
        let deferred = Promise<[RemoteSubtitleInfo]>.pending()
        searchRemoteSubtitlesWithRequestBuilder(itemId: itemId, language: language, isPerfectMatch: isPerfectMatch).execute(apiResponseQueue) { result -> Void in
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
     Search remote subtitles.
     - GET /Items/{itemId}/RemoteSearch/Subtitles/{language}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) The item id. 
     - parameter language: (path) The language of the subtitles. 
     - parameter isPerfectMatch: (query) Optional. Only show subtitles which are a perfect match. (optional)
     - returns: RequestBuilder<[RemoteSubtitleInfo]> 
     */
    open class func searchRemoteSubtitlesWithRequestBuilder(itemId: String, language: String, isPerfectMatch: Bool? = nil) -> RequestBuilder<[RemoteSubtitleInfo]> {
        var urlPath = "/Items/{itemId}/RemoteSearch/Subtitles/{language}"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let languagePreEscape = "\(APIHelper.mapValueToPathItem(language))"
        let languagePostEscape = languagePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{language}", with: languagePostEscape, options: .literal, range: nil)
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "isPerfectMatch": isPerfectMatch?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[RemoteSubtitleInfo]>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Upload an external subtitle file.
     
     - parameter itemId: (path) The item the subtitle belongs to. 
     - parameter uploadSubtitleDto: (body) The request body. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func uploadSubtitle( itemId: String,  uploadSubtitleDto: UploadSubtitleDto, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        uploadSubtitleWithRequestBuilder(itemId: itemId, uploadSubtitleDto: uploadSubtitleDto).execute(apiResponseQueue) { result -> Void in
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
     Upload an external subtitle file.
     - POST /Videos/{itemId}/Subtitles
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) The item the subtitle belongs to. 
     - parameter uploadSubtitleDto: (body) The request body. 
     - returns: RequestBuilder<Void> 
     */
    open class func uploadSubtitleWithRequestBuilder(itemId: String, uploadSubtitleDto: UploadSubtitleDto) -> RequestBuilder<Void> {
        var urlPath = "/Videos/{itemId}/Subtitles"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinClient.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: uploadSubtitleDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinClient.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
