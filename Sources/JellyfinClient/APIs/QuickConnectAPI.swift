//
// QuickConnectAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
#if canImport(Combine)
import Combine
#endif

open class QuickConnectAPI {
    /**
     Temporarily activates quick connect for five minutes.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func activate(apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            activateWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
                switch result {
                case .success:
                    promise(.success(()))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Temporarily activates quick connect for five minutes.
     - POST /QuickConnect/Activate
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<Void> 
     */
    open class func activateWithRequestBuilder() -> RequestBuilder<Void> {
        let urlPath = "/QuickConnect/Activate"
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
     Authorizes a pending quick connect request.
     
     - parameter code: (query) Quick connect code to authorize. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Bool, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func authorize(code: String, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> AnyPublisher<Bool, Error> {
        return Future<Bool, Error>.init { promise in
            authorizeWithRequestBuilder(code: code).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Authorizes a pending quick connect request.
     - POST /QuickConnect/Authorize
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter code: (query) Quick connect code to authorize. 
     - returns: RequestBuilder<Bool> 
     */
    open class func authorizeWithRequestBuilder(code: String) -> RequestBuilder<Bool> {
        let urlPath = "/QuickConnect/Authorize"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "code": code.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Bool>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Enables or disables quick connect.
     
     - parameter status: (query) New MediaBrowser.Model.QuickConnect.QuickConnectState. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func available(status: QuickConnectState? = nil, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> AnyPublisher<Void, Error> {
        return Future<Void, Error>.init { promise in
            availableWithRequestBuilder(status: status).execute(apiResponseQueue) { result -> Void in
                switch result {
                case .success:
                    promise(.success(()))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Enables or disables quick connect.
     - POST /QuickConnect/Available
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter status: (query) New MediaBrowser.Model.QuickConnect.QuickConnectState. (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func availableWithRequestBuilder(status: QuickConnectState? = nil) -> RequestBuilder<Void> {
        let urlPath = "/QuickConnect/Available"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "status": status?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinClient.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Attempts to retrieve authentication information.
     
     - parameter secret: (query) Secret previously returned from the Initiate endpoint. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<QuickConnectResult, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func connect(secret: String, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> AnyPublisher<QuickConnectResult, Error> {
        return Future<QuickConnectResult, Error>.init { promise in
            connectWithRequestBuilder(secret: secret).execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Attempts to retrieve authentication information.
     - GET /QuickConnect/Connect
     - parameter secret: (query) Secret previously returned from the Initiate endpoint. 
     - returns: RequestBuilder<QuickConnectResult> 
     */
    open class func connectWithRequestBuilder(secret: String) -> RequestBuilder<QuickConnectResult> {
        let urlPath = "/QuickConnect/Connect"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "secret": secret.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<QuickConnectResult>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Deauthorize all quick connect devices for the current user.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<Int, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func deauthorize(apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> AnyPublisher<Int, Error> {
        return Future<Int, Error>.init { promise in
            deauthorizeWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Deauthorize all quick connect devices for the current user.
     - POST /QuickConnect/Deauthorize
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<Int> 
     */
    open class func deauthorizeWithRequestBuilder() -> RequestBuilder<Int> {
        let urlPath = "/QuickConnect/Deauthorize"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Int>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets the current quick connect state.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<QuickConnectState, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getStatus(apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> AnyPublisher<QuickConnectState, Error> {
        return Future<QuickConnectState, Error>.init { promise in
            getStatusWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Gets the current quick connect state.
     - GET /QuickConnect/Status
     - returns: RequestBuilder<QuickConnectState> 
     */
    open class func getStatusWithRequestBuilder() -> RequestBuilder<QuickConnectState> {
        let urlPath = "/QuickConnect/Status"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<QuickConnectState>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Initiate a new quick connect request.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: AnyPublisher<QuickConnectResult, Error>
     */
    #if canImport(Combine)
    @available(OSX 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func initiate(apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> AnyPublisher<QuickConnectResult, Error> {
        return Future<QuickConnectResult, Error>.init { promise in
            initiateWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    promise(.success(response.body!))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }.eraseToAnyPublisher()
    }
    #endif

    /**
     Initiate a new quick connect request.
     - GET /QuickConnect/Initiate
     - returns: RequestBuilder<QuickConnectResult> 
     */
    open class func initiateWithRequestBuilder() -> RequestBuilder<QuickConnectResult> {
        let urlPath = "/QuickConnect/Initiate"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<QuickConnectResult>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
