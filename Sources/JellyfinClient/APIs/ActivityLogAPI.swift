//
// ActivityLogAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation
import PromiseKit

open class ActivityLogAPI {
    /**
     Gets activity log entries.
     
     - parameter startIndex: (query) Optional. The record index to start at. All items with a lower index will be dropped from the results. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter minDate: (query) Optional. The minimum date. Format &#x3D; ISO. (optional)
     - parameter hasUserId: (query) Optional. Filter log entries if it has user id, or not. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Promise<ActivityLogEntryQueryResult>
     */
    open class func getLogEntries( startIndex: Int? = nil,  limit: Int? = nil,  minDate: Date? = nil,  hasUserId: Bool? = nil, apiResponseQueue: DispatchQueue = JellyfinClient.apiResponseQueue) -> Promise<ActivityLogEntryQueryResult> {
        let deferred = Promise<ActivityLogEntryQueryResult>.pending()
        getLogEntriesWithRequestBuilder(startIndex: startIndex, limit: limit, minDate: minDate, hasUserId: hasUserId).execute(apiResponseQueue) { result -> Void in
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
     Gets activity log entries.
     - GET /System/ActivityLog/Entries
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter startIndex: (query) Optional. The record index to start at. All items with a lower index will be dropped from the results. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter minDate: (query) Optional. The minimum date. Format &#x3D; ISO. (optional)
     - parameter hasUserId: (query) Optional. Filter log entries if it has user id, or not. (optional)
     - returns: RequestBuilder<ActivityLogEntryQueryResult> 
     */
    open class func getLogEntriesWithRequestBuilder(startIndex: Int? = nil, limit: Int? = nil, minDate: Date? = nil, hasUserId: Bool? = nil) -> RequestBuilder<ActivityLogEntryQueryResult> {
        let urlPath = "/System/ActivityLog/Entries"
        let URLString = JellyfinClient.basePath + urlPath
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "startIndex": startIndex?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "minDate": minDate?.encodeToJSON(),
            "hasUserId": hasUserId?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ActivityLogEntryQueryResult>.Type = JellyfinClient.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
