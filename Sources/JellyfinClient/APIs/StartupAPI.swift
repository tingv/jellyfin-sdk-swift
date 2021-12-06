//
// StartupAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import PromiseKit

open class StartupAPI {
    /**
     Completes the startup wizard.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func completeWizard(apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        completeWizardWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     Completes the startup wizard.
     - POST /Startup/Complete
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<Void> 
     */
    open class func completeWizardWithRequestBuilder() -> RequestBuilder<Void> {
        let urlPath = "/Startup/Complete"
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
     Gets the first user.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<StartupUserDto>
     */
    open class func getFirstUser(apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<StartupUserDto> {
        let deferred = Promise<StartupUserDto>.pending()
        getFirstUserWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     Gets the first user.
     - GET /Startup/User
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<StartupUserDto> 
     */
    open class func getFirstUserWithRequestBuilder() -> RequestBuilder<StartupUserDto> {
        let urlPath = "/Startup/User"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<StartupUserDto>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets the first user.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<StartupUserDto>
     */
    open class func getFirstUser2(apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<StartupUserDto> {
        let deferred = Promise<StartupUserDto>.pending()
        getFirstUser2WithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     Gets the first user.
     - GET /Startup/FirstUser
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<StartupUserDto> 
     */
    open class func getFirstUser2WithRequestBuilder() -> RequestBuilder<StartupUserDto> {
        let urlPath = "/Startup/FirstUser"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<StartupUserDto>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets the initial startup wizard configuration.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<StartupConfigurationDto>
     */
    open class func getStartupConfiguration(apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<StartupConfigurationDto> {
        let deferred = Promise<StartupConfigurationDto>.pending()
        getStartupConfigurationWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     Gets the initial startup wizard configuration.
     - GET /Startup/Configuration
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<StartupConfigurationDto> 
     */
    open class func getStartupConfigurationWithRequestBuilder() -> RequestBuilder<StartupConfigurationDto> {
        let urlPath = "/Startup/Configuration"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<StartupConfigurationDto>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Sets remote access and UPnP.
     
     - parameter startupRemoteAccessDto: (body) The startup remote access dto. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func setRemoteAccess( startupRemoteAccessDto: StartupRemoteAccessDto, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        setRemoteAccessWithRequestBuilder(startupRemoteAccessDto: startupRemoteAccessDto).execute(apiResponseQueue) { result -> Void in
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
     Sets remote access and UPnP.
     - POST /Startup/RemoteAccess
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter startupRemoteAccessDto: (body) The startup remote access dto. 
     - returns: RequestBuilder<Void> 
     */
    open class func setRemoteAccessWithRequestBuilder(startupRemoteAccessDto: StartupRemoteAccessDto) -> RequestBuilder<Void> {
        let urlPath = "/Startup/RemoteAccess"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: startupRemoteAccessDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinClient.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Sets the initial startup wizard configuration.
     
     - parameter startupConfigurationDto: (body) The updated startup configuration. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func updateInitialConfiguration( startupConfigurationDto: StartupConfigurationDto, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        updateInitialConfigurationWithRequestBuilder(startupConfigurationDto: startupConfigurationDto).execute(apiResponseQueue) { result -> Void in
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
     Sets the initial startup wizard configuration.
     - POST /Startup/Configuration
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter startupConfigurationDto: (body) The updated startup configuration. 
     - returns: RequestBuilder<Void> 
     */
    open class func updateInitialConfigurationWithRequestBuilder(startupConfigurationDto: StartupConfigurationDto) -> RequestBuilder<Void> {
        let urlPath = "/Startup/Configuration"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: startupConfigurationDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinClient.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Sets the user name and password.
     
     - parameter startupUserDto: (body) The DTO containing username and password. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func updateStartupUser( startupUserDto: StartupUserDto? = nil, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        updateStartupUserWithRequestBuilder(startupUserDto: startupUserDto).execute(apiResponseQueue) { result -> Void in
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
     Sets the user name and password.
     - POST /Startup/User
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter startupUserDto: (body) The DTO containing username and password. (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func updateStartupUserWithRequestBuilder(startupUserDto: StartupUserDto? = nil) -> RequestBuilder<Void> {
        let urlPath = "/Startup/User"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: startupUserDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinClient.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
