//
// ApiKeyAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation

open class ApiKeyAPI {
    /**
     Create a new api key.
     
     - parameter app: (query) Name of the app using the authentication key. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func createKey(app: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        createKeyWithRequestBuilder(app: app).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Create a new api key.
     - POST /Auth/Keys
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter app: (query) Name of the app using the authentication key. 
     - returns: RequestBuilder<Void> 
     */
    open class func createKeyWithRequestBuilder(app: String) -> RequestBuilder<Void> {
        let urlPath = "/Auth/Keys"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "app": app.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get all keys.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func getKeys(apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<AuthenticationInfoQueryResult, Error>) -> Void)) {
        getKeysWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Get all keys.
     - GET /Auth/Keys
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<AuthenticationInfoQueryResult> 
     */
    open class func getKeysWithRequestBuilder() -> RequestBuilder<AuthenticationInfoQueryResult> {
        let urlPath = "/Auth/Keys"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<AuthenticationInfoQueryResult>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Remove an api key.
     
     - parameter key: (path) The access token to delete. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func revokeKey(key: String, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        revokeKeyWithRequestBuilder(key: key).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Remove an api key.
     - DELETE /Auth/Keys/{key}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter key: (path) The access token to delete. 
     - returns: RequestBuilder<Void> 
     */
    open class func revokeKeyWithRequestBuilder(key: String) -> RequestBuilder<Void> {
        var urlPath = "/Auth/Keys/{key}"
        let keyPreEscape = "\(APIHelper.mapValueToPathItem(key))"
        let keyPostEscape = keyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        urlPath = urlPath.replacingOccurrences(of: "{key}", with: keyPostEscape, options: .literal, range: nil)
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
