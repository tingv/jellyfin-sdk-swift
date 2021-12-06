//
// SyncPlayAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import AnyCodable
import Foundation

open class SyncPlayAPI {
    /**
     Notify SyncPlay group that member is buffering.
     
     - parameter bufferRequestDto: (body) The player status. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func syncPlayBuffering(bufferRequestDto: BufferRequestDto, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        syncPlayBufferingWithRequestBuilder(bufferRequestDto: bufferRequestDto).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Notify SyncPlay group that member is buffering.
     - POST /SyncPlay/Buffering
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter bufferRequestDto: (body) The player status. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayBufferingWithRequestBuilder(bufferRequestDto: BufferRequestDto) -> RequestBuilder<Void> {
        let urlPath = "/SyncPlay/Buffering"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: bufferRequestDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Create a new SyncPlay group.
     
     - parameter newGroupRequestDto: (body) The settings of the new group. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func syncPlayCreateGroup(newGroupRequestDto: NewGroupRequestDto, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        syncPlayCreateGroupWithRequestBuilder(newGroupRequestDto: newGroupRequestDto).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Create a new SyncPlay group.
     - POST /SyncPlay/New
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter newGroupRequestDto: (body) The settings of the new group. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayCreateGroupWithRequestBuilder(newGroupRequestDto: NewGroupRequestDto) -> RequestBuilder<Void> {
        let urlPath = "/SyncPlay/New"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: newGroupRequestDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets all SyncPlay groups.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func syncPlayGetGroups(apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<[GroupInfoDto], Error>) -> Void)) {
        syncPlayGetGroupsWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(.success(response.body!))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Gets all SyncPlay groups.
     - GET /SyncPlay/List
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<[GroupInfoDto]> 
     */
    open class func syncPlayGetGroupsWithRequestBuilder() -> RequestBuilder<[GroupInfoDto]> {
        let urlPath = "/SyncPlay/List"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[GroupInfoDto]>.Type = JellyfinAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Join an existing SyncPlay group.
     
     - parameter joinGroupRequestDto: (body) The group to join. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func syncPlayJoinGroup(joinGroupRequestDto: JoinGroupRequestDto, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        syncPlayJoinGroupWithRequestBuilder(joinGroupRequestDto: joinGroupRequestDto).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Join an existing SyncPlay group.
     - POST /SyncPlay/Join
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter joinGroupRequestDto: (body) The group to join. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayJoinGroupWithRequestBuilder(joinGroupRequestDto: JoinGroupRequestDto) -> RequestBuilder<Void> {
        let urlPath = "/SyncPlay/Join"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: joinGroupRequestDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Leave the joined SyncPlay group.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func syncPlayLeaveGroup(apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        syncPlayLeaveGroupWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Leave the joined SyncPlay group.
     - POST /SyncPlay/Leave
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayLeaveGroupWithRequestBuilder() -> RequestBuilder<Void> {
        let urlPath = "/SyncPlay/Leave"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request to move an item in the playlist in SyncPlay group.
     
     - parameter movePlaylistItemRequestDto: (body) The new position for the item. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func syncPlayMovePlaylistItem(movePlaylistItemRequestDto: MovePlaylistItemRequestDto, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        syncPlayMovePlaylistItemWithRequestBuilder(movePlaylistItemRequestDto: movePlaylistItemRequestDto).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Request to move an item in the playlist in SyncPlay group.
     - POST /SyncPlay/MovePlaylistItem
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter movePlaylistItemRequestDto: (body) The new position for the item. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayMovePlaylistItemWithRequestBuilder(movePlaylistItemRequestDto: MovePlaylistItemRequestDto) -> RequestBuilder<Void> {
        let urlPath = "/SyncPlay/MovePlaylistItem"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: movePlaylistItemRequestDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request next item in SyncPlay group.
     
     - parameter nextItemRequestDto: (body) The current item information. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func syncPlayNextItem(nextItemRequestDto: NextItemRequestDto, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        syncPlayNextItemWithRequestBuilder(nextItemRequestDto: nextItemRequestDto).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Request next item in SyncPlay group.
     - POST /SyncPlay/NextItem
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter nextItemRequestDto: (body) The current item information. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayNextItemWithRequestBuilder(nextItemRequestDto: NextItemRequestDto) -> RequestBuilder<Void> {
        let urlPath = "/SyncPlay/NextItem"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: nextItemRequestDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request pause in SyncPlay group.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func syncPlayPause(apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        syncPlayPauseWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Request pause in SyncPlay group.
     - POST /SyncPlay/Pause
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayPauseWithRequestBuilder() -> RequestBuilder<Void> {
        let urlPath = "/SyncPlay/Pause"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Update session ping.
     
     - parameter pingRequestDto: (body) The new ping. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func syncPlayPing(pingRequestDto: PingRequestDto, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        syncPlayPingWithRequestBuilder(pingRequestDto: pingRequestDto).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Update session ping.
     - POST /SyncPlay/Ping
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter pingRequestDto: (body) The new ping. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayPingWithRequestBuilder(pingRequestDto: PingRequestDto) -> RequestBuilder<Void> {
        let urlPath = "/SyncPlay/Ping"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: pingRequestDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request previous item in SyncPlay group.
     
     - parameter previousItemRequestDto: (body) The current item information. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func syncPlayPreviousItem(previousItemRequestDto: PreviousItemRequestDto, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        syncPlayPreviousItemWithRequestBuilder(previousItemRequestDto: previousItemRequestDto).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Request previous item in SyncPlay group.
     - POST /SyncPlay/PreviousItem
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter previousItemRequestDto: (body) The current item information. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayPreviousItemWithRequestBuilder(previousItemRequestDto: PreviousItemRequestDto) -> RequestBuilder<Void> {
        let urlPath = "/SyncPlay/PreviousItem"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: previousItemRequestDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request to queue items to the playlist of a SyncPlay group.
     
     - parameter queueRequestDto: (body) The items to add. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func syncPlayQueue(queueRequestDto: QueueRequestDto, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        syncPlayQueueWithRequestBuilder(queueRequestDto: queueRequestDto).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Request to queue items to the playlist of a SyncPlay group.
     - POST /SyncPlay/Queue
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter queueRequestDto: (body) The items to add. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayQueueWithRequestBuilder(queueRequestDto: QueueRequestDto) -> RequestBuilder<Void> {
        let urlPath = "/SyncPlay/Queue"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: queueRequestDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Notify SyncPlay group that member is ready for playback.
     
     - parameter readyRequestDto: (body) The player status. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func syncPlayReady(readyRequestDto: ReadyRequestDto, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        syncPlayReadyWithRequestBuilder(readyRequestDto: readyRequestDto).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Notify SyncPlay group that member is ready for playback.
     - POST /SyncPlay/Ready
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter readyRequestDto: (body) The player status. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayReadyWithRequestBuilder(readyRequestDto: ReadyRequestDto) -> RequestBuilder<Void> {
        let urlPath = "/SyncPlay/Ready"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: readyRequestDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request to remove items from the playlist in SyncPlay group.
     
     - parameter removeFromPlaylistRequestDto: (body) The items to remove. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func syncPlayRemoveFromPlaylist(removeFromPlaylistRequestDto: RemoveFromPlaylistRequestDto, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        syncPlayRemoveFromPlaylistWithRequestBuilder(removeFromPlaylistRequestDto: removeFromPlaylistRequestDto).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Request to remove items from the playlist in SyncPlay group.
     - POST /SyncPlay/RemoveFromPlaylist
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter removeFromPlaylistRequestDto: (body) The items to remove. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayRemoveFromPlaylistWithRequestBuilder(removeFromPlaylistRequestDto: RemoveFromPlaylistRequestDto) -> RequestBuilder<Void> {
        let urlPath = "/SyncPlay/RemoveFromPlaylist"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: removeFromPlaylistRequestDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request seek in SyncPlay group.
     
     - parameter seekRequestDto: (body) The new playback position. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func syncPlaySeek(seekRequestDto: SeekRequestDto, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        syncPlaySeekWithRequestBuilder(seekRequestDto: seekRequestDto).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Request seek in SyncPlay group.
     - POST /SyncPlay/Seek
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter seekRequestDto: (body) The new playback position. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlaySeekWithRequestBuilder(seekRequestDto: SeekRequestDto) -> RequestBuilder<Void> {
        let urlPath = "/SyncPlay/Seek"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: seekRequestDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request SyncPlay group to ignore member during group-wait.
     
     - parameter ignoreWaitRequestDto: (body) The settings to set. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func syncPlaySetIgnoreWait(ignoreWaitRequestDto: IgnoreWaitRequestDto, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        syncPlaySetIgnoreWaitWithRequestBuilder(ignoreWaitRequestDto: ignoreWaitRequestDto).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Request SyncPlay group to ignore member during group-wait.
     - POST /SyncPlay/SetIgnoreWait
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter ignoreWaitRequestDto: (body) The settings to set. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlaySetIgnoreWaitWithRequestBuilder(ignoreWaitRequestDto: IgnoreWaitRequestDto) -> RequestBuilder<Void> {
        let urlPath = "/SyncPlay/SetIgnoreWait"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: ignoreWaitRequestDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request to set new playlist in SyncPlay group.
     
     - parameter playRequestDto: (body) The new playlist to play in the group. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func syncPlaySetNewQueue(playRequestDto: PlayRequestDto, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        syncPlaySetNewQueueWithRequestBuilder(playRequestDto: playRequestDto).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Request to set new playlist in SyncPlay group.
     - POST /SyncPlay/SetNewQueue
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter playRequestDto: (body) The new playlist to play in the group. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlaySetNewQueueWithRequestBuilder(playRequestDto: PlayRequestDto) -> RequestBuilder<Void> {
        let urlPath = "/SyncPlay/SetNewQueue"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: playRequestDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request to change playlist item in SyncPlay group.
     
     - parameter setPlaylistItemRequestDto: (body) The new item to play. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func syncPlaySetPlaylistItem(setPlaylistItemRequestDto: SetPlaylistItemRequestDto, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        syncPlaySetPlaylistItemWithRequestBuilder(setPlaylistItemRequestDto: setPlaylistItemRequestDto).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Request to change playlist item in SyncPlay group.
     - POST /SyncPlay/SetPlaylistItem
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter setPlaylistItemRequestDto: (body) The new item to play. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlaySetPlaylistItemWithRequestBuilder(setPlaylistItemRequestDto: SetPlaylistItemRequestDto) -> RequestBuilder<Void> {
        let urlPath = "/SyncPlay/SetPlaylistItem"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: setPlaylistItemRequestDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request to set repeat mode in SyncPlay group.
     
     - parameter setRepeatModeRequestDto: (body) The new repeat mode. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func syncPlaySetRepeatMode(setRepeatModeRequestDto: SetRepeatModeRequestDto, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        syncPlaySetRepeatModeWithRequestBuilder(setRepeatModeRequestDto: setRepeatModeRequestDto).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Request to set repeat mode in SyncPlay group.
     - POST /SyncPlay/SetRepeatMode
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter setRepeatModeRequestDto: (body) The new repeat mode. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlaySetRepeatModeWithRequestBuilder(setRepeatModeRequestDto: SetRepeatModeRequestDto) -> RequestBuilder<Void> {
        let urlPath = "/SyncPlay/SetRepeatMode"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: setRepeatModeRequestDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request to set shuffle mode in SyncPlay group.
     
     - parameter setShuffleModeRequestDto: (body) The new shuffle mode. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func syncPlaySetShuffleMode(setShuffleModeRequestDto: SetShuffleModeRequestDto, apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        syncPlaySetShuffleModeWithRequestBuilder(setShuffleModeRequestDto: setShuffleModeRequestDto).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Request to set shuffle mode in SyncPlay group.
     - POST /SyncPlay/SetShuffleMode
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter setShuffleModeRequestDto: (body) The new shuffle mode. 
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlaySetShuffleModeWithRequestBuilder(setShuffleModeRequestDto: SetShuffleModeRequestDto) -> RequestBuilder<Void> {
        let urlPath = "/SyncPlay/SetShuffleMode"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: setShuffleModeRequestDto)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request stop in SyncPlay group.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func syncPlayStop(apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        syncPlayStopWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Request stop in SyncPlay group.
     - POST /SyncPlay/Stop
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayStopWithRequestBuilder() -> RequestBuilder<Void> {
        let urlPath = "/SyncPlay/Stop"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Request unpause in SyncPlay group.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the result
     */
    open class func syncPlayUnpause(apiResponseQueue: DispatchQueue = JellyfinAPI.apiResponseQueue, completion: @escaping ((_ result: Swift.Result<Void, Error>) -> Void)) {
        syncPlayUnpauseWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion(.success(()))
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }

    /**
     Request unpause in SyncPlay group.
     - POST /SyncPlay/Unpause
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<Void> 
     */
    open class func syncPlayUnpauseWithRequestBuilder() -> RequestBuilder<Void> {
        let urlPath = "/SyncPlay/Unpause"
        let URLString = JellyfinAPI.basePath + urlPath
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = JellyfinAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
