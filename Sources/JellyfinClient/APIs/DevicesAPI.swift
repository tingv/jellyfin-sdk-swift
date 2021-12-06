//
// DevicesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import PromiseKit

open class DevicesAPI {
    /**
     Deletes a device.
     
     - parameter id: (query) Device Id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func deleteDevice( id: String, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        deleteDeviceWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     Deletes a device.
     - DELETE /Devices
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter id: (query) Device Id. 
     - returns: RequestBuilder<Void> 
     */
    open class func deleteDeviceWithRequestBuilder(id: String) -> RequestBuilder<Void> {
        let urlPath = "/Devices"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "id": id.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinClient.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get info for a device.
     
     - parameter id: (query) Device Id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<DeviceInfo>
     */
    open class func getDeviceInfo( id: String, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<DeviceInfo> {
        let deferred = Promise<DeviceInfo>.pending()
        getDeviceInfoWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     Get info for a device.
     - GET /Devices/Info
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter id: (query) Device Id. 
     - returns: RequestBuilder<DeviceInfo> 
     */
    open class func getDeviceInfoWithRequestBuilder(id: String) -> RequestBuilder<DeviceInfo> {
        let urlPath = "/Devices/Info"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "id": id.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DeviceInfo>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get options for a device.
     
     - parameter id: (query) Device Id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<DeviceOptions>
     */
    open class func getDeviceOptions( id: String, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<DeviceOptions> {
        let deferred = Promise<DeviceOptions>.pending()
        getDeviceOptionsWithRequestBuilder(id: id).execute(apiResponseQueue) { result -> Void in
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
     Get options for a device.
     - GET /Devices/Options
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter id: (query) Device Id. 
     - returns: RequestBuilder<DeviceOptions> 
     */
    open class func getDeviceOptionsWithRequestBuilder(id: String) -> RequestBuilder<DeviceOptions> {
        let urlPath = "/Devices/Options"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "id": id.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DeviceOptions>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get Devices.
     
     - parameter supportsSync: (query) Gets or sets a value indicating whether [supports synchronize]. (optional)
     - parameter userId: (query) Gets or sets the user identifier. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<DeviceInfoQueryResult>
     */
    open class func getDevices( supportsSync: Bool? = nil,  userId: String? = nil, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<DeviceInfoQueryResult> {
        let deferred = Promise<DeviceInfoQueryResult>.pending()
        getDevicesWithRequestBuilder(supportsSync: supportsSync, userId: userId).execute(apiResponseQueue) { result -> Void in
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
     Get Devices.
     - GET /Devices
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter supportsSync: (query) Gets or sets a value indicating whether [supports synchronize]. (optional)
     - parameter userId: (query) Gets or sets the user identifier. (optional)
     - returns: RequestBuilder<DeviceInfoQueryResult> 
     */
    open class func getDevicesWithRequestBuilder(supportsSync: Bool? = nil, userId: String? = nil) -> RequestBuilder<DeviceInfoQueryResult> {
        let urlPath = "/Devices"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "supportsSync": supportsSync?.encodeToJSON(),
            "userId": userId?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DeviceInfoQueryResult>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Update device options.
     
     - parameter id: (query) Device Id. 
     - parameter deviceOptions: (body) Device Options. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<Void>
     */
    open class func updateDeviceOptions( id: String,  deviceOptions: DeviceOptions, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<Void> {
        let deferred = Promise<Void>.pending()
        updateDeviceOptionsWithRequestBuilder(id: id, deviceOptions: deviceOptions).execute(apiResponseQueue) { result -> Void in
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
     Update device options.
     - POST /Devices/Options
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter id: (query) Device Id. 
     - parameter deviceOptions: (body) Device Options. 
     - returns: RequestBuilder<Void> 
     */
    open class func updateDeviceOptionsWithRequestBuilder(id: String, deviceOptions: DeviceOptions) -> RequestBuilder<Void> {
        let urlPath = "/Devices/Options"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deviceOptions)

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "id": id.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinClient.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
