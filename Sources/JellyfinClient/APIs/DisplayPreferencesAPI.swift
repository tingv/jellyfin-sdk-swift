//
// DisplayPreferencesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import PromiseKit

open class DisplayPreferencesAPI {
    /**
     Get Display Preferences.
     
     - parameter displayPreferencesId: (path) Display preferences id. 
     - parameter userId: (query) User id. 
     - parameter client: (query) Client. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<DisplayPreferencesDto>
     */
    open class func getDisplayPreferences( displayPreferencesId: String,  userId: String,  client: String, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<DisplayPreferencesDto> {
        let deferred = Promise<DisplayPreferencesDto>.pending()
        getDisplayPreferencesWithRequestBuilder(displayPreferencesId: displayPreferencesId, userId: userId, client: client).execute(apiResponseQueue) { result -> Void in
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
     Get Display Preferences.
     - GET /DisplayPreferences/{displayPreferencesId}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter displayPreferencesId: (path) Display preferences id. 
     - parameter userId: (query) User id. 
     - parameter client: (query) Client. 
     - returns: RequestBuilder<DisplayPreferencesDto> 
     */
    open class func getDisplayPreferencesWithRequestBuilder(displayPreferencesId: String, userId: String, client: String) -> RequestBuilder<DisplayPreferencesDto> {
        var urlPath = "/DisplayPreferences/{displayPreferencesId}"
        let displayPreferencesIdPreEscape = "\(APIHelper.mapValueToPathItem(displayPreferencesId))"
        let displayPreferencesIdPostEscape = displayPreferencesIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{displayPreferencesId}", with: displayPreferencesIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId.encodeToJSON(),
            "client": client.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DisplayPreferencesDto>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Update Display Preferences.
     
     - parameter displayPreferencesId: (path) Display preferences id. 
     - parameter userId: (query) User Id. 
     - parameter client: (query) Client. 
     - parameter displayPreferencesDto: (body) New Display Preferences object. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func updateDisplayPreferences( displayPreferencesId: String,  userId: String,  client: String,  displayPreferencesDto: DisplayPreferencesDto, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        updateDisplayPreferencesWithRequestBuilder(displayPreferencesId: displayPreferencesId, userId: userId, client: client, displayPreferencesDto: displayPreferencesDto).execute(apiResponseQueue) { result -> Void in
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
     Update Display Preferences.
     - POST /DisplayPreferences/{displayPreferencesId}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter displayPreferencesId: (path) Display preferences id. 
     - parameter userId: (query) User Id. 
     - parameter client: (query) Client. 
     - parameter displayPreferencesDto: (body) New Display Preferences object. 
     - returns: RequestBuilder<Void> 
     */
    open class func updateDisplayPreferencesWithRequestBuilder(displayPreferencesId: String, userId: String, client: String, displayPreferencesDto: DisplayPreferencesDto) -> RequestBuilder<Void> {
        var urlPath = "/DisplayPreferences/{displayPreferencesId}"
        let displayPreferencesIdPreEscape = "\(APIHelper.mapValueToPathItem(displayPreferencesId))"
        let displayPreferencesIdPostEscape = displayPreferencesIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{displayPreferencesId}", with: displayPreferencesIdPostEscape, options: .literal, range: nil)
        let URLString = JellyfinClient.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: displayPreferencesDto)

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId.encodeToJSON(),
            "client": client.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinClient.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
