//
// LocalizationAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import PromiseKit

open class LocalizationAPI {
    /**
     Gets known countries.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<[CountryInfo]>
     */
    open class func getCountries(apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<[CountryInfo]> {
        let deferred = Promise<[CountryInfo]>.pending()
        getCountriesWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     Gets known countries.
     - GET /Localization/Countries
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<[CountryInfo]> 
     */
    open class func getCountriesWithRequestBuilder() -> RequestBuilder<[CountryInfo]> {
        let urlPath = "/Localization/Countries"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[CountryInfo]>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets known cultures.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<[CultureDto]>
     */
    open class func getCultures(apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<[CultureDto]> {
        let deferred = Promise<[CultureDto]>.pending()
        getCulturesWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     Gets known cultures.
     - GET /Localization/Cultures
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<[CultureDto]> 
     */
    open class func getCulturesWithRequestBuilder() -> RequestBuilder<[CultureDto]> {
        let urlPath = "/Localization/Cultures"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[CultureDto]>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets localization options.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<[LocalizationOption]>
     */
    open class func getLocalizationOptions(apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<[LocalizationOption]> {
        let deferred = Promise<[LocalizationOption]>.pending()
        getLocalizationOptionsWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     Gets localization options.
     - GET /Localization/Options
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<[LocalizationOption]> 
     */
    open class func getLocalizationOptionsWithRequestBuilder() -> RequestBuilder<[LocalizationOption]> {
        let urlPath = "/Localization/Options"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[LocalizationOption]>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets known parental ratings.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<[ParentalRating]>
     */
    open class func getParentalRatings(apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<[ParentalRating]> {
        let deferred = Promise<[ParentalRating]>.pending()
        getParentalRatingsWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     Gets known parental ratings.
     - GET /Localization/ParentalRatings
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<[ParentalRating]> 
     */
    open class func getParentalRatingsWithRequestBuilder() -> RequestBuilder<[ParentalRating]> {
        let urlPath = "/Localization/ParentalRatings"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[ParentalRating]>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
