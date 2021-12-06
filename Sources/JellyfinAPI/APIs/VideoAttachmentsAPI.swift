//
// VideoAttachmentsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import PromiseKit

open class VideoAttachmentsAPI {
    /**
     Get video attachment.
     
     - parameter videoId: (path) Video ID. 
     - parameter mediaSourceId: (path) Media Source ID. 
     - parameter index: (path) Attachment Index. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<URL>
     */
    open class func getAttachment( videoId: String,  mediaSourceId: String,  index: Int, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue) -> Promise<URL> {
        let deferred = Promise<URL>.pending()
        getAttachmentWithRequestBuilder(videoId: videoId, mediaSourceId: mediaSourceId, index: index).execute(apiResponseQueue) { result -> Void in
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
     Get video attachment.
     - GET /Videos/{videoId}/{mediaSourceId}/Attachments/{index}
     - parameter videoId: (path) Video ID. 
     - parameter mediaSourceId: (path) Media Source ID. 
     - parameter index: (path) Attachment Index. 
     - returns: RequestBuilder<URL> 
     */
    open class func getAttachmentWithRequestBuilder(videoId: String, mediaSourceId: String, index: Int) -> RequestBuilder<URL> {
        var urlPath = "/Videos/{videoId}/{mediaSourceId}/Attachments/{index}"
        let videoIdPreEscape = "\(APIHelper.mapValueToPathItem(videoId))"
        let videoIdPostEscape = videoIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{videoId}", with: videoIdPostEscape, options: .literal, range: nil)
        let mediaSourceIdPreEscape = "\(APIHelper.mapValueToPathItem(mediaSourceId))"
        let mediaSourceIdPostEscape = mediaSourceIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{mediaSourceId}", with: mediaSourceIdPostEscape, options: .literal, range: nil)
        let indexPreEscape = "\(APIHelper.mapValueToPathItem(index))"
        let indexPostEscape = indexPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{index}", with: indexPostEscape, options: .literal, range: nil)
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

}
