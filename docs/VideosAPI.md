# VideosAPI

All URIs are relative to *http://localhost:8096*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteAlternateSources**](VideosAPI.md#deletealternatesources) | **DELETE** /Videos/{itemId}/AlternateSources | Removes alternate video sources.
[**getAdditionalPart**](VideosAPI.md#getadditionalpart) | **GET** /Videos/{itemId}/AdditionalParts | Gets additional parts for a video.
[**getVideoStream**](VideosAPI.md#getvideostream) | **GET** /Videos/{itemId}/stream | Gets a video stream.
[**getVideoStreamByContainer**](VideosAPI.md#getvideostreambycontainer) | **GET** /Videos/{itemId}/stream.{container} | Gets a video stream.
[**headVideoStream**](VideosAPI.md#headvideostream) | **HEAD** /Videos/{itemId}/stream | Gets a video stream.
[**headVideoStreamByContainer**](VideosAPI.md#headvideostreambycontainer) | **HEAD** /Videos/{itemId}/stream.{container} | Gets a video stream.
[**mergeVersions**](VideosAPI.md#mergeversions) | **POST** /Videos/MergeVersions | Merges videos into a single record.


# **deleteAlternateSources**
```swift
    open class func deleteAlternateSources( itemId: String) -> Promise<Void>
```

Removes alternate video sources.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let itemId = "itemId_example" // String | The item id.

// Removes alternate video sources.
VideosAPI.deleteAlternateSources(itemId: itemId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemId** | **String** | The item id. | 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAdditionalPart**
```swift
    open class func getAdditionalPart( itemId: String,  userId: String? = nil) -> Promise<BaseItemDtoQueryResult>
```

Gets additional parts for a video.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let itemId = "itemId_example" // String | The item id.
let userId = "userId_example" // String | Optional. Filter by user id, and attach user data. (optional)

// Gets additional parts for a video.
VideosAPI.getAdditionalPart(itemId: itemId, userId: userId).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemId** | **String** | The item id. | 
 **userId** | **String** | Optional. Filter by user id, and attach user data. | [optional] 

### Return type

[**BaseItemDtoQueryResult**](BaseItemDtoQueryResult.md)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVideoStream**
```swift
    open class func getVideoStream( itemId: String,  container: String? = nil,  _static: Bool? = nil,  params: String? = nil,  tag: String? = nil,  deviceProfileId: String? = nil,  playSessionId: String? = nil,  segmentContainer: String? = nil,  segmentLength: Int? = nil,  minSegments: Int? = nil,  mediaSourceId: String? = nil,  deviceId: String? = nil,  audioCodec: String? = nil,  enableAutoStreamCopy: Bool? = nil,  allowVideoStreamCopy: Bool? = nil,  allowAudioStreamCopy: Bool? = nil,  breakOnNonKeyFrames: Bool? = nil,  audioSampleRate: Int? = nil,  maxAudioBitDepth: Int? = nil,  audioBitRate: Int? = nil,  audioChannels: Int? = nil,  maxAudioChannels: Int? = nil,  profile: String? = nil,  level: String? = nil,  framerate: Float? = nil,  maxFramerate: Float? = nil,  copyTimestamps: Bool? = nil,  startTimeTicks: Int64? = nil,  width: Int? = nil,  height: Int? = nil,  videoBitRate: Int? = nil,  subtitleStreamIndex: Int? = nil,  subtitleMethod: SubtitleDeliveryMethod? = nil,  maxRefFrames: Int? = nil,  maxVideoBitDepth: Int? = nil,  requireAvc: Bool? = nil,  deInterlace: Bool? = nil,  requireNonAnamorphic: Bool? = nil,  transcodingMaxAudioChannels: Int? = nil,  cpuCoreLimit: Int? = nil,  liveStreamId: String? = nil,  enableMpegtsM2TsMode: Bool? = nil,  videoCodec: String? = nil,  subtitleCodec: String? = nil,  transcodeReasons: String? = nil,  audioStreamIndex: Int? = nil,  videoStreamIndex: Int? = nil,  context: EncodingContext? = nil,  streamOptions: [String: String]? = nil) -> Promise<URL>
```

Gets a video stream.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let itemId = "itemId_example" // String | The item id.
let container = "container_example" // String | The video container. Possible values are: ts, webm, asf, wmv, ogv, mp4, m4v, mkv, mpeg, mpg, avi, 3gp, wmv, wtv, m2ts, mov, iso, flv. (optional)
let _static = true // Bool | Optional. If true, the original file will be streamed statically without any encoding. Use either no url extension or the original file extension. true/false. (optional)
let params = "params_example" // String | The streaming parameters. (optional)
let tag = "tag_example" // String | The tag. (optional)
let deviceProfileId = "deviceProfileId_example" // String | Optional. The dlna device profile id to utilize. (optional)
let playSessionId = "playSessionId_example" // String | The play session id. (optional)
let segmentContainer = "segmentContainer_example" // String | The segment container. (optional)
let segmentLength = 987 // Int | The segment length. (optional)
let minSegments = 987 // Int | The minimum number of segments. (optional)
let mediaSourceId = "mediaSourceId_example" // String | The media version id, if playing an alternate version. (optional)
let deviceId = "deviceId_example" // String | The device id of the client requesting. Used to stop encoding processes when needed. (optional)
let audioCodec = "audioCodec_example" // String | Optional. Specify a audio codec to encode to, e.g. mp3. If omitted the server will auto-select using the url's extension. Options: aac, mp3, vorbis, wma. (optional)
let enableAutoStreamCopy = true // Bool | Whether or not to allow automatic stream copy if requested values match the original source. Defaults to true. (optional)
let allowVideoStreamCopy = true // Bool | Whether or not to allow copying of the video stream url. (optional)
let allowAudioStreamCopy = true // Bool | Whether or not to allow copying of the audio stream url. (optional)
let breakOnNonKeyFrames = true // Bool | Optional. Whether to break on non key frames. (optional)
let audioSampleRate = 987 // Int | Optional. Specify a specific audio sample rate, e.g. 44100. (optional)
let maxAudioBitDepth = 987 // Int | Optional. The maximum audio bit depth. (optional)
let audioBitRate = 987 // Int | Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults. (optional)
let audioChannels = 987 // Int | Optional. Specify a specific number of audio channels to encode to, e.g. 2. (optional)
let maxAudioChannels = 987 // Int | Optional. Specify a maximum number of audio channels to encode to, e.g. 2. (optional)
let profile = "profile_example" // String | Optional. Specify a specific an encoder profile (varies by encoder), e.g. main, baseline, high. (optional)
let level = "level_example" // String | Optional. Specify a level for the encoder profile (varies by encoder), e.g. 3, 3.1. (optional)
let framerate = 987 // Float | Optional. A specific video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements. (optional)
let maxFramerate = 987 // Float | Optional. A specific maximum video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements. (optional)
let copyTimestamps = true // Bool | Whether or not to copy timestamps when transcoding with an offset. Defaults to false. (optional)
let startTimeTicks = 987 // Int64 | Optional. Specify a starting offset, in ticks. 1 tick = 10000 ms. (optional)
let width = 987 // Int | Optional. The fixed horizontal resolution of the encoded video. (optional)
let height = 987 // Int | Optional. The fixed vertical resolution of the encoded video. (optional)
let videoBitRate = 987 // Int | Optional. Specify a video bitrate to encode to, e.g. 500000. If omitted this will be left to encoder defaults. (optional)
let subtitleStreamIndex = 987 // Int | Optional. The index of the subtitle stream to use. If omitted no subtitles will be used. (optional)
let subtitleMethod = SubtitleDeliveryMethod() // SubtitleDeliveryMethod | Optional. Specify the subtitle delivery method. (optional)
let maxRefFrames = 987 // Int | Optional. (optional)
let maxVideoBitDepth = 987 // Int | Optional. The maximum video bit depth. (optional)
let requireAvc = true // Bool | Optional. Whether to require avc. (optional)
let deInterlace = true // Bool | Optional. Whether to deinterlace the video. (optional)
let requireNonAnamorphic = true // Bool | Optional. Whether to require a non anamorphic stream. (optional)
let transcodingMaxAudioChannels = 987 // Int | Optional. The maximum number of audio channels to transcode. (optional)
let cpuCoreLimit = 987 // Int | Optional. The limit of how many cpu cores to use. (optional)
let liveStreamId = "liveStreamId_example" // String | The live stream id. (optional)
let enableMpegtsM2TsMode = true // Bool | Optional. Whether to enable the MpegtsM2Ts mode. (optional)
let videoCodec = "videoCodec_example" // String | Optional. Specify a video codec to encode to, e.g. h264. If omitted the server will auto-select using the url's extension. Options: h265, h264, mpeg4, theora, vpx, wmv. (optional)
let subtitleCodec = "subtitleCodec_example" // String | Optional. Specify a subtitle codec to encode to. (optional)
let transcodeReasons = "transcodeReasons_example" // String | Optional. The transcoding reason. (optional)
let audioStreamIndex = 987 // Int | Optional. The index of the audio stream to use. If omitted the first audio stream will be used. (optional)
let videoStreamIndex = 987 // Int | Optional. The index of the video stream to use. If omitted the first video stream will be used. (optional)
let context = EncodingContext() // EncodingContext | Optional. The MediaBrowser.Model.Dlna.EncodingContext. (optional)
let streamOptions = "TODO" // [String: String] | Optional. The streaming options. (optional)

// Gets a video stream.
VideosAPI.getVideoStream(itemId: itemId, container: container, _static: _static, params: params, tag: tag, deviceProfileId: deviceProfileId, playSessionId: playSessionId, segmentContainer: segmentContainer, segmentLength: segmentLength, minSegments: minSegments, mediaSourceId: mediaSourceId, deviceId: deviceId, audioCodec: audioCodec, enableAutoStreamCopy: enableAutoStreamCopy, allowVideoStreamCopy: allowVideoStreamCopy, allowAudioStreamCopy: allowAudioStreamCopy, breakOnNonKeyFrames: breakOnNonKeyFrames, audioSampleRate: audioSampleRate, maxAudioBitDepth: maxAudioBitDepth, audioBitRate: audioBitRate, audioChannels: audioChannels, maxAudioChannels: maxAudioChannels, profile: profile, level: level, framerate: framerate, maxFramerate: maxFramerate, copyTimestamps: copyTimestamps, startTimeTicks: startTimeTicks, width: width, height: height, videoBitRate: videoBitRate, subtitleStreamIndex: subtitleStreamIndex, subtitleMethod: subtitleMethod, maxRefFrames: maxRefFrames, maxVideoBitDepth: maxVideoBitDepth, requireAvc: requireAvc, deInterlace: deInterlace, requireNonAnamorphic: requireNonAnamorphic, transcodingMaxAudioChannels: transcodingMaxAudioChannels, cpuCoreLimit: cpuCoreLimit, liveStreamId: liveStreamId, enableMpegtsM2TsMode: enableMpegtsM2TsMode, videoCodec: videoCodec, subtitleCodec: subtitleCodec, transcodeReasons: transcodeReasons, audioStreamIndex: audioStreamIndex, videoStreamIndex: videoStreamIndex, context: context, streamOptions: streamOptions).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemId** | **String** | The item id. | 
 **container** | **String** | The video container. Possible values are: ts, webm, asf, wmv, ogv, mp4, m4v, mkv, mpeg, mpg, avi, 3gp, wmv, wtv, m2ts, mov, iso, flv. | [optional] 
 **_static** | **Bool** | Optional. If true, the original file will be streamed statically without any encoding. Use either no url extension or the original file extension. true/false. | [optional] 
 **params** | **String** | The streaming parameters. | [optional] 
 **tag** | **String** | The tag. | [optional] 
 **deviceProfileId** | **String** | Optional. The dlna device profile id to utilize. | [optional] 
 **playSessionId** | **String** | The play session id. | [optional] 
 **segmentContainer** | **String** | The segment container. | [optional] 
 **segmentLength** | **Int** | The segment length. | [optional] 
 **minSegments** | **Int** | The minimum number of segments. | [optional] 
 **mediaSourceId** | **String** | The media version id, if playing an alternate version. | [optional] 
 **deviceId** | **String** | The device id of the client requesting. Used to stop encoding processes when needed. | [optional] 
 **audioCodec** | **String** | Optional. Specify a audio codec to encode to, e.g. mp3. If omitted the server will auto-select using the url&#39;s extension. Options: aac, mp3, vorbis, wma. | [optional] 
 **enableAutoStreamCopy** | **Bool** | Whether or not to allow automatic stream copy if requested values match the original source. Defaults to true. | [optional] 
 **allowVideoStreamCopy** | **Bool** | Whether or not to allow copying of the video stream url. | [optional] 
 **allowAudioStreamCopy** | **Bool** | Whether or not to allow copying of the audio stream url. | [optional] 
 **breakOnNonKeyFrames** | **Bool** | Optional. Whether to break on non key frames. | [optional] 
 **audioSampleRate** | **Int** | Optional. Specify a specific audio sample rate, e.g. 44100. | [optional] 
 **maxAudioBitDepth** | **Int** | Optional. The maximum audio bit depth. | [optional] 
 **audioBitRate** | **Int** | Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults. | [optional] 
 **audioChannels** | **Int** | Optional. Specify a specific number of audio channels to encode to, e.g. 2. | [optional] 
 **maxAudioChannels** | **Int** | Optional. Specify a maximum number of audio channels to encode to, e.g. 2. | [optional] 
 **profile** | **String** | Optional. Specify a specific an encoder profile (varies by encoder), e.g. main, baseline, high. | [optional] 
 **level** | **String** | Optional. Specify a level for the encoder profile (varies by encoder), e.g. 3, 3.1. | [optional] 
 **framerate** | **Float** | Optional. A specific video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements. | [optional] 
 **maxFramerate** | **Float** | Optional. A specific maximum video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements. | [optional] 
 **copyTimestamps** | **Bool** | Whether or not to copy timestamps when transcoding with an offset. Defaults to false. | [optional] 
 **startTimeTicks** | **Int64** | Optional. Specify a starting offset, in ticks. 1 tick &#x3D; 10000 ms. | [optional] 
 **width** | **Int** | Optional. The fixed horizontal resolution of the encoded video. | [optional] 
 **height** | **Int** | Optional. The fixed vertical resolution of the encoded video. | [optional] 
 **videoBitRate** | **Int** | Optional. Specify a video bitrate to encode to, e.g. 500000. If omitted this will be left to encoder defaults. | [optional] 
 **subtitleStreamIndex** | **Int** | Optional. The index of the subtitle stream to use. If omitted no subtitles will be used. | [optional] 
 **subtitleMethod** | [**SubtitleDeliveryMethod**](.md) | Optional. Specify the subtitle delivery method. | [optional] 
 **maxRefFrames** | **Int** | Optional. | [optional] 
 **maxVideoBitDepth** | **Int** | Optional. The maximum video bit depth. | [optional] 
 **requireAvc** | **Bool** | Optional. Whether to require avc. | [optional] 
 **deInterlace** | **Bool** | Optional. Whether to deinterlace the video. | [optional] 
 **requireNonAnamorphic** | **Bool** | Optional. Whether to require a non anamorphic stream. | [optional] 
 **transcodingMaxAudioChannels** | **Int** | Optional. The maximum number of audio channels to transcode. | [optional] 
 **cpuCoreLimit** | **Int** | Optional. The limit of how many cpu cores to use. | [optional] 
 **liveStreamId** | **String** | The live stream id. | [optional] 
 **enableMpegtsM2TsMode** | **Bool** | Optional. Whether to enable the MpegtsM2Ts mode. | [optional] 
 **videoCodec** | **String** | Optional. Specify a video codec to encode to, e.g. h264. If omitted the server will auto-select using the url&#39;s extension. Options: h265, h264, mpeg4, theora, vpx, wmv. | [optional] 
 **subtitleCodec** | **String** | Optional. Specify a subtitle codec to encode to. | [optional] 
 **transcodeReasons** | **String** | Optional. The transcoding reason. | [optional] 
 **audioStreamIndex** | **Int** | Optional. The index of the audio stream to use. If omitted the first audio stream will be used. | [optional] 
 **videoStreamIndex** | **Int** | Optional. The index of the video stream to use. If omitted the first video stream will be used. | [optional] 
 **context** | [**EncodingContext**](.md) | Optional. The MediaBrowser.Model.Dlna.EncodingContext. | [optional] 
 **streamOptions** | [**[String: String]**](String.md) | Optional. The streaming options. | [optional] 

### Return type

**URL**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: video/_*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getVideoStreamByContainer**
```swift
    open class func getVideoStreamByContainer( itemId: String,  container: String,  _static: Bool? = nil,  params: String? = nil,  tag: String? = nil,  deviceProfileId: String? = nil,  playSessionId: String? = nil,  segmentContainer: String? = nil,  segmentLength: Int? = nil,  minSegments: Int? = nil,  mediaSourceId: String? = nil,  deviceId: String? = nil,  audioCodec: String? = nil,  enableAutoStreamCopy: Bool? = nil,  allowVideoStreamCopy: Bool? = nil,  allowAudioStreamCopy: Bool? = nil,  breakOnNonKeyFrames: Bool? = nil,  audioSampleRate: Int? = nil,  maxAudioBitDepth: Int? = nil,  audioBitRate: Int? = nil,  audioChannels: Int? = nil,  maxAudioChannels: Int? = nil,  profile: String? = nil,  level: String? = nil,  framerate: Float? = nil,  maxFramerate: Float? = nil,  copyTimestamps: Bool? = nil,  startTimeTicks: Int64? = nil,  width: Int? = nil,  height: Int? = nil,  videoBitRate: Int? = nil,  subtitleStreamIndex: Int? = nil,  subtitleMethod: SubtitleDeliveryMethod? = nil,  maxRefFrames: Int? = nil,  maxVideoBitDepth: Int? = nil,  requireAvc: Bool? = nil,  deInterlace: Bool? = nil,  requireNonAnamorphic: Bool? = nil,  transcodingMaxAudioChannels: Int? = nil,  cpuCoreLimit: Int? = nil,  liveStreamId: String? = nil,  enableMpegtsM2TsMode: Bool? = nil,  videoCodec: String? = nil,  subtitleCodec: String? = nil,  transcodeReasons: String? = nil,  audioStreamIndex: Int? = nil,  videoStreamIndex: Int? = nil,  context: EncodingContext? = nil,  streamOptions: [String: String]? = nil) -> Promise<URL>
```

Gets a video stream.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let itemId = "itemId_example" // String | The item id.
let container = "container_example" // String | The video container. Possible values are: ts, webm, asf, wmv, ogv, mp4, m4v, mkv, mpeg, mpg, avi, 3gp, wmv, wtv, m2ts, mov, iso, flv.
let _static = true // Bool | Optional. If true, the original file will be streamed statically without any encoding. Use either no url extension or the original file extension. true/false. (optional)
let params = "params_example" // String | The streaming parameters. (optional)
let tag = "tag_example" // String | The tag. (optional)
let deviceProfileId = "deviceProfileId_example" // String | Optional. The dlna device profile id to utilize. (optional)
let playSessionId = "playSessionId_example" // String | The play session id. (optional)
let segmentContainer = "segmentContainer_example" // String | The segment container. (optional)
let segmentLength = 987 // Int | The segment length. (optional)
let minSegments = 987 // Int | The minimum number of segments. (optional)
let mediaSourceId = "mediaSourceId_example" // String | The media version id, if playing an alternate version. (optional)
let deviceId = "deviceId_example" // String | The device id of the client requesting. Used to stop encoding processes when needed. (optional)
let audioCodec = "audioCodec_example" // String | Optional. Specify a audio codec to encode to, e.g. mp3. If omitted the server will auto-select using the url's extension. Options: aac, mp3, vorbis, wma. (optional)
let enableAutoStreamCopy = true // Bool | Whether or not to allow automatic stream copy if requested values match the original source. Defaults to true. (optional)
let allowVideoStreamCopy = true // Bool | Whether or not to allow copying of the video stream url. (optional)
let allowAudioStreamCopy = true // Bool | Whether or not to allow copying of the audio stream url. (optional)
let breakOnNonKeyFrames = true // Bool | Optional. Whether to break on non key frames. (optional)
let audioSampleRate = 987 // Int | Optional. Specify a specific audio sample rate, e.g. 44100. (optional)
let maxAudioBitDepth = 987 // Int | Optional. The maximum audio bit depth. (optional)
let audioBitRate = 987 // Int | Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults. (optional)
let audioChannels = 987 // Int | Optional. Specify a specific number of audio channels to encode to, e.g. 2. (optional)
let maxAudioChannels = 987 // Int | Optional. Specify a maximum number of audio channels to encode to, e.g. 2. (optional)
let profile = "profile_example" // String | Optional. Specify a specific an encoder profile (varies by encoder), e.g. main, baseline, high. (optional)
let level = "level_example" // String | Optional. Specify a level for the encoder profile (varies by encoder), e.g. 3, 3.1. (optional)
let framerate = 987 // Float | Optional. A specific video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements. (optional)
let maxFramerate = 987 // Float | Optional. A specific maximum video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements. (optional)
let copyTimestamps = true // Bool | Whether or not to copy timestamps when transcoding with an offset. Defaults to false. (optional)
let startTimeTicks = 987 // Int64 | Optional. Specify a starting offset, in ticks. 1 tick = 10000 ms. (optional)
let width = 987 // Int | Optional. The fixed horizontal resolution of the encoded video. (optional)
let height = 987 // Int | Optional. The fixed vertical resolution of the encoded video. (optional)
let videoBitRate = 987 // Int | Optional. Specify a video bitrate to encode to, e.g. 500000. If omitted this will be left to encoder defaults. (optional)
let subtitleStreamIndex = 987 // Int | Optional. The index of the subtitle stream to use. If omitted no subtitles will be used. (optional)
let subtitleMethod = SubtitleDeliveryMethod() // SubtitleDeliveryMethod | Optional. Specify the subtitle delivery method. (optional)
let maxRefFrames = 987 // Int | Optional. (optional)
let maxVideoBitDepth = 987 // Int | Optional. The maximum video bit depth. (optional)
let requireAvc = true // Bool | Optional. Whether to require avc. (optional)
let deInterlace = true // Bool | Optional. Whether to deinterlace the video. (optional)
let requireNonAnamorphic = true // Bool | Optional. Whether to require a non anamorphic stream. (optional)
let transcodingMaxAudioChannels = 987 // Int | Optional. The maximum number of audio channels to transcode. (optional)
let cpuCoreLimit = 987 // Int | Optional. The limit of how many cpu cores to use. (optional)
let liveStreamId = "liveStreamId_example" // String | The live stream id. (optional)
let enableMpegtsM2TsMode = true // Bool | Optional. Whether to enable the MpegtsM2Ts mode. (optional)
let videoCodec = "videoCodec_example" // String | Optional. Specify a video codec to encode to, e.g. h264. If omitted the server will auto-select using the url's extension. Options: h265, h264, mpeg4, theora, vpx, wmv. (optional)
let subtitleCodec = "subtitleCodec_example" // String | Optional. Specify a subtitle codec to encode to. (optional)
let transcodeReasons = "transcodeReasons_example" // String | Optional. The transcoding reason. (optional)
let audioStreamIndex = 987 // Int | Optional. The index of the audio stream to use. If omitted the first audio stream will be used. (optional)
let videoStreamIndex = 987 // Int | Optional. The index of the video stream to use. If omitted the first video stream will be used. (optional)
let context = EncodingContext() // EncodingContext | Optional. The MediaBrowser.Model.Dlna.EncodingContext. (optional)
let streamOptions = "TODO" // [String: String] | Optional. The streaming options. (optional)

// Gets a video stream.
VideosAPI.getVideoStreamByContainer(itemId: itemId, container: container, _static: _static, params: params, tag: tag, deviceProfileId: deviceProfileId, playSessionId: playSessionId, segmentContainer: segmentContainer, segmentLength: segmentLength, minSegments: minSegments, mediaSourceId: mediaSourceId, deviceId: deviceId, audioCodec: audioCodec, enableAutoStreamCopy: enableAutoStreamCopy, allowVideoStreamCopy: allowVideoStreamCopy, allowAudioStreamCopy: allowAudioStreamCopy, breakOnNonKeyFrames: breakOnNonKeyFrames, audioSampleRate: audioSampleRate, maxAudioBitDepth: maxAudioBitDepth, audioBitRate: audioBitRate, audioChannels: audioChannels, maxAudioChannels: maxAudioChannels, profile: profile, level: level, framerate: framerate, maxFramerate: maxFramerate, copyTimestamps: copyTimestamps, startTimeTicks: startTimeTicks, width: width, height: height, videoBitRate: videoBitRate, subtitleStreamIndex: subtitleStreamIndex, subtitleMethod: subtitleMethod, maxRefFrames: maxRefFrames, maxVideoBitDepth: maxVideoBitDepth, requireAvc: requireAvc, deInterlace: deInterlace, requireNonAnamorphic: requireNonAnamorphic, transcodingMaxAudioChannels: transcodingMaxAudioChannels, cpuCoreLimit: cpuCoreLimit, liveStreamId: liveStreamId, enableMpegtsM2TsMode: enableMpegtsM2TsMode, videoCodec: videoCodec, subtitleCodec: subtitleCodec, transcodeReasons: transcodeReasons, audioStreamIndex: audioStreamIndex, videoStreamIndex: videoStreamIndex, context: context, streamOptions: streamOptions).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemId** | **String** | The item id. | 
 **container** | **String** | The video container. Possible values are: ts, webm, asf, wmv, ogv, mp4, m4v, mkv, mpeg, mpg, avi, 3gp, wmv, wtv, m2ts, mov, iso, flv. | 
 **_static** | **Bool** | Optional. If true, the original file will be streamed statically without any encoding. Use either no url extension or the original file extension. true/false. | [optional] 
 **params** | **String** | The streaming parameters. | [optional] 
 **tag** | **String** | The tag. | [optional] 
 **deviceProfileId** | **String** | Optional. The dlna device profile id to utilize. | [optional] 
 **playSessionId** | **String** | The play session id. | [optional] 
 **segmentContainer** | **String** | The segment container. | [optional] 
 **segmentLength** | **Int** | The segment length. | [optional] 
 **minSegments** | **Int** | The minimum number of segments. | [optional] 
 **mediaSourceId** | **String** | The media version id, if playing an alternate version. | [optional] 
 **deviceId** | **String** | The device id of the client requesting. Used to stop encoding processes when needed. | [optional] 
 **audioCodec** | **String** | Optional. Specify a audio codec to encode to, e.g. mp3. If omitted the server will auto-select using the url&#39;s extension. Options: aac, mp3, vorbis, wma. | [optional] 
 **enableAutoStreamCopy** | **Bool** | Whether or not to allow automatic stream copy if requested values match the original source. Defaults to true. | [optional] 
 **allowVideoStreamCopy** | **Bool** | Whether or not to allow copying of the video stream url. | [optional] 
 **allowAudioStreamCopy** | **Bool** | Whether or not to allow copying of the audio stream url. | [optional] 
 **breakOnNonKeyFrames** | **Bool** | Optional. Whether to break on non key frames. | [optional] 
 **audioSampleRate** | **Int** | Optional. Specify a specific audio sample rate, e.g. 44100. | [optional] 
 **maxAudioBitDepth** | **Int** | Optional. The maximum audio bit depth. | [optional] 
 **audioBitRate** | **Int** | Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults. | [optional] 
 **audioChannels** | **Int** | Optional. Specify a specific number of audio channels to encode to, e.g. 2. | [optional] 
 **maxAudioChannels** | **Int** | Optional. Specify a maximum number of audio channels to encode to, e.g. 2. | [optional] 
 **profile** | **String** | Optional. Specify a specific an encoder profile (varies by encoder), e.g. main, baseline, high. | [optional] 
 **level** | **String** | Optional. Specify a level for the encoder profile (varies by encoder), e.g. 3, 3.1. | [optional] 
 **framerate** | **Float** | Optional. A specific video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements. | [optional] 
 **maxFramerate** | **Float** | Optional. A specific maximum video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements. | [optional] 
 **copyTimestamps** | **Bool** | Whether or not to copy timestamps when transcoding with an offset. Defaults to false. | [optional] 
 **startTimeTicks** | **Int64** | Optional. Specify a starting offset, in ticks. 1 tick &#x3D; 10000 ms. | [optional] 
 **width** | **Int** | Optional. The fixed horizontal resolution of the encoded video. | [optional] 
 **height** | **Int** | Optional. The fixed vertical resolution of the encoded video. | [optional] 
 **videoBitRate** | **Int** | Optional. Specify a video bitrate to encode to, e.g. 500000. If omitted this will be left to encoder defaults. | [optional] 
 **subtitleStreamIndex** | **Int** | Optional. The index of the subtitle stream to use. If omitted no subtitles will be used. | [optional] 
 **subtitleMethod** | [**SubtitleDeliveryMethod**](.md) | Optional. Specify the subtitle delivery method. | [optional] 
 **maxRefFrames** | **Int** | Optional. | [optional] 
 **maxVideoBitDepth** | **Int** | Optional. The maximum video bit depth. | [optional] 
 **requireAvc** | **Bool** | Optional. Whether to require avc. | [optional] 
 **deInterlace** | **Bool** | Optional. Whether to deinterlace the video. | [optional] 
 **requireNonAnamorphic** | **Bool** | Optional. Whether to require a non anamorphic stream. | [optional] 
 **transcodingMaxAudioChannels** | **Int** | Optional. The maximum number of audio channels to transcode. | [optional] 
 **cpuCoreLimit** | **Int** | Optional. The limit of how many cpu cores to use. | [optional] 
 **liveStreamId** | **String** | The live stream id. | [optional] 
 **enableMpegtsM2TsMode** | **Bool** | Optional. Whether to enable the MpegtsM2Ts mode. | [optional] 
 **videoCodec** | **String** | Optional. Specify a video codec to encode to, e.g. h264. If omitted the server will auto-select using the url&#39;s extension. Options: h265, h264, mpeg4, theora, vpx, wmv. | [optional] 
 **subtitleCodec** | **String** | Optional. Specify a subtitle codec to encode to. | [optional] 
 **transcodeReasons** | **String** | Optional. The transcoding reason. | [optional] 
 **audioStreamIndex** | **Int** | Optional. The index of the audio stream to use. If omitted the first audio stream will be used. | [optional] 
 **videoStreamIndex** | **Int** | Optional. The index of the video stream to use. If omitted the first video stream will be used. | [optional] 
 **context** | [**EncodingContext**](.md) | Optional. The MediaBrowser.Model.Dlna.EncodingContext. | [optional] 
 **streamOptions** | [**[String: String]**](String.md) | Optional. The streaming options. | [optional] 

### Return type

**URL**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: video/_*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **headVideoStream**
```swift
    open class func headVideoStream( itemId: String,  container: String? = nil,  _static: Bool? = nil,  params: String? = nil,  tag: String? = nil,  deviceProfileId: String? = nil,  playSessionId: String? = nil,  segmentContainer: String? = nil,  segmentLength: Int? = nil,  minSegments: Int? = nil,  mediaSourceId: String? = nil,  deviceId: String? = nil,  audioCodec: String? = nil,  enableAutoStreamCopy: Bool? = nil,  allowVideoStreamCopy: Bool? = nil,  allowAudioStreamCopy: Bool? = nil,  breakOnNonKeyFrames: Bool? = nil,  audioSampleRate: Int? = nil,  maxAudioBitDepth: Int? = nil,  audioBitRate: Int? = nil,  audioChannels: Int? = nil,  maxAudioChannels: Int? = nil,  profile: String? = nil,  level: String? = nil,  framerate: Float? = nil,  maxFramerate: Float? = nil,  copyTimestamps: Bool? = nil,  startTimeTicks: Int64? = nil,  width: Int? = nil,  height: Int? = nil,  videoBitRate: Int? = nil,  subtitleStreamIndex: Int? = nil,  subtitleMethod: SubtitleDeliveryMethod? = nil,  maxRefFrames: Int? = nil,  maxVideoBitDepth: Int? = nil,  requireAvc: Bool? = nil,  deInterlace: Bool? = nil,  requireNonAnamorphic: Bool? = nil,  transcodingMaxAudioChannels: Int? = nil,  cpuCoreLimit: Int? = nil,  liveStreamId: String? = nil,  enableMpegtsM2TsMode: Bool? = nil,  videoCodec: String? = nil,  subtitleCodec: String? = nil,  transcodeReasons: String? = nil,  audioStreamIndex: Int? = nil,  videoStreamIndex: Int? = nil,  context: EncodingContext? = nil,  streamOptions: [String: String]? = nil) -> Promise<URL>
```

Gets a video stream.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let itemId = "itemId_example" // String | The item id.
let container = "container_example" // String | The video container. Possible values are: ts, webm, asf, wmv, ogv, mp4, m4v, mkv, mpeg, mpg, avi, 3gp, wmv, wtv, m2ts, mov, iso, flv. (optional)
let _static = true // Bool | Optional. If true, the original file will be streamed statically without any encoding. Use either no url extension or the original file extension. true/false. (optional)
let params = "params_example" // String | The streaming parameters. (optional)
let tag = "tag_example" // String | The tag. (optional)
let deviceProfileId = "deviceProfileId_example" // String | Optional. The dlna device profile id to utilize. (optional)
let playSessionId = "playSessionId_example" // String | The play session id. (optional)
let segmentContainer = "segmentContainer_example" // String | The segment container. (optional)
let segmentLength = 987 // Int | The segment length. (optional)
let minSegments = 987 // Int | The minimum number of segments. (optional)
let mediaSourceId = "mediaSourceId_example" // String | The media version id, if playing an alternate version. (optional)
let deviceId = "deviceId_example" // String | The device id of the client requesting. Used to stop encoding processes when needed. (optional)
let audioCodec = "audioCodec_example" // String | Optional. Specify a audio codec to encode to, e.g. mp3. If omitted the server will auto-select using the url's extension. Options: aac, mp3, vorbis, wma. (optional)
let enableAutoStreamCopy = true // Bool | Whether or not to allow automatic stream copy if requested values match the original source. Defaults to true. (optional)
let allowVideoStreamCopy = true // Bool | Whether or not to allow copying of the video stream url. (optional)
let allowAudioStreamCopy = true // Bool | Whether or not to allow copying of the audio stream url. (optional)
let breakOnNonKeyFrames = true // Bool | Optional. Whether to break on non key frames. (optional)
let audioSampleRate = 987 // Int | Optional. Specify a specific audio sample rate, e.g. 44100. (optional)
let maxAudioBitDepth = 987 // Int | Optional. The maximum audio bit depth. (optional)
let audioBitRate = 987 // Int | Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults. (optional)
let audioChannels = 987 // Int | Optional. Specify a specific number of audio channels to encode to, e.g. 2. (optional)
let maxAudioChannels = 987 // Int | Optional. Specify a maximum number of audio channels to encode to, e.g. 2. (optional)
let profile = "profile_example" // String | Optional. Specify a specific an encoder profile (varies by encoder), e.g. main, baseline, high. (optional)
let level = "level_example" // String | Optional. Specify a level for the encoder profile (varies by encoder), e.g. 3, 3.1. (optional)
let framerate = 987 // Float | Optional. A specific video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements. (optional)
let maxFramerate = 987 // Float | Optional. A specific maximum video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements. (optional)
let copyTimestamps = true // Bool | Whether or not to copy timestamps when transcoding with an offset. Defaults to false. (optional)
let startTimeTicks = 987 // Int64 | Optional. Specify a starting offset, in ticks. 1 tick = 10000 ms. (optional)
let width = 987 // Int | Optional. The fixed horizontal resolution of the encoded video. (optional)
let height = 987 // Int | Optional. The fixed vertical resolution of the encoded video. (optional)
let videoBitRate = 987 // Int | Optional. Specify a video bitrate to encode to, e.g. 500000. If omitted this will be left to encoder defaults. (optional)
let subtitleStreamIndex = 987 // Int | Optional. The index of the subtitle stream to use. If omitted no subtitles will be used. (optional)
let subtitleMethod = SubtitleDeliveryMethod() // SubtitleDeliveryMethod | Optional. Specify the subtitle delivery method. (optional)
let maxRefFrames = 987 // Int | Optional. (optional)
let maxVideoBitDepth = 987 // Int | Optional. The maximum video bit depth. (optional)
let requireAvc = true // Bool | Optional. Whether to require avc. (optional)
let deInterlace = true // Bool | Optional. Whether to deinterlace the video. (optional)
let requireNonAnamorphic = true // Bool | Optional. Whether to require a non anamorphic stream. (optional)
let transcodingMaxAudioChannels = 987 // Int | Optional. The maximum number of audio channels to transcode. (optional)
let cpuCoreLimit = 987 // Int | Optional. The limit of how many cpu cores to use. (optional)
let liveStreamId = "liveStreamId_example" // String | The live stream id. (optional)
let enableMpegtsM2TsMode = true // Bool | Optional. Whether to enable the MpegtsM2Ts mode. (optional)
let videoCodec = "videoCodec_example" // String | Optional. Specify a video codec to encode to, e.g. h264. If omitted the server will auto-select using the url's extension. Options: h265, h264, mpeg4, theora, vpx, wmv. (optional)
let subtitleCodec = "subtitleCodec_example" // String | Optional. Specify a subtitle codec to encode to. (optional)
let transcodeReasons = "transcodeReasons_example" // String | Optional. The transcoding reason. (optional)
let audioStreamIndex = 987 // Int | Optional. The index of the audio stream to use. If omitted the first audio stream will be used. (optional)
let videoStreamIndex = 987 // Int | Optional. The index of the video stream to use. If omitted the first video stream will be used. (optional)
let context = EncodingContext() // EncodingContext | Optional. The MediaBrowser.Model.Dlna.EncodingContext. (optional)
let streamOptions = "TODO" // [String: String] | Optional. The streaming options. (optional)

// Gets a video stream.
VideosAPI.headVideoStream(itemId: itemId, container: container, _static: _static, params: params, tag: tag, deviceProfileId: deviceProfileId, playSessionId: playSessionId, segmentContainer: segmentContainer, segmentLength: segmentLength, minSegments: minSegments, mediaSourceId: mediaSourceId, deviceId: deviceId, audioCodec: audioCodec, enableAutoStreamCopy: enableAutoStreamCopy, allowVideoStreamCopy: allowVideoStreamCopy, allowAudioStreamCopy: allowAudioStreamCopy, breakOnNonKeyFrames: breakOnNonKeyFrames, audioSampleRate: audioSampleRate, maxAudioBitDepth: maxAudioBitDepth, audioBitRate: audioBitRate, audioChannels: audioChannels, maxAudioChannels: maxAudioChannels, profile: profile, level: level, framerate: framerate, maxFramerate: maxFramerate, copyTimestamps: copyTimestamps, startTimeTicks: startTimeTicks, width: width, height: height, videoBitRate: videoBitRate, subtitleStreamIndex: subtitleStreamIndex, subtitleMethod: subtitleMethod, maxRefFrames: maxRefFrames, maxVideoBitDepth: maxVideoBitDepth, requireAvc: requireAvc, deInterlace: deInterlace, requireNonAnamorphic: requireNonAnamorphic, transcodingMaxAudioChannels: transcodingMaxAudioChannels, cpuCoreLimit: cpuCoreLimit, liveStreamId: liveStreamId, enableMpegtsM2TsMode: enableMpegtsM2TsMode, videoCodec: videoCodec, subtitleCodec: subtitleCodec, transcodeReasons: transcodeReasons, audioStreamIndex: audioStreamIndex, videoStreamIndex: videoStreamIndex, context: context, streamOptions: streamOptions).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemId** | **String** | The item id. | 
 **container** | **String** | The video container. Possible values are: ts, webm, asf, wmv, ogv, mp4, m4v, mkv, mpeg, mpg, avi, 3gp, wmv, wtv, m2ts, mov, iso, flv. | [optional] 
 **_static** | **Bool** | Optional. If true, the original file will be streamed statically without any encoding. Use either no url extension or the original file extension. true/false. | [optional] 
 **params** | **String** | The streaming parameters. | [optional] 
 **tag** | **String** | The tag. | [optional] 
 **deviceProfileId** | **String** | Optional. The dlna device profile id to utilize. | [optional] 
 **playSessionId** | **String** | The play session id. | [optional] 
 **segmentContainer** | **String** | The segment container. | [optional] 
 **segmentLength** | **Int** | The segment length. | [optional] 
 **minSegments** | **Int** | The minimum number of segments. | [optional] 
 **mediaSourceId** | **String** | The media version id, if playing an alternate version. | [optional] 
 **deviceId** | **String** | The device id of the client requesting. Used to stop encoding processes when needed. | [optional] 
 **audioCodec** | **String** | Optional. Specify a audio codec to encode to, e.g. mp3. If omitted the server will auto-select using the url&#39;s extension. Options: aac, mp3, vorbis, wma. | [optional] 
 **enableAutoStreamCopy** | **Bool** | Whether or not to allow automatic stream copy if requested values match the original source. Defaults to true. | [optional] 
 **allowVideoStreamCopy** | **Bool** | Whether or not to allow copying of the video stream url. | [optional] 
 **allowAudioStreamCopy** | **Bool** | Whether or not to allow copying of the audio stream url. | [optional] 
 **breakOnNonKeyFrames** | **Bool** | Optional. Whether to break on non key frames. | [optional] 
 **audioSampleRate** | **Int** | Optional. Specify a specific audio sample rate, e.g. 44100. | [optional] 
 **maxAudioBitDepth** | **Int** | Optional. The maximum audio bit depth. | [optional] 
 **audioBitRate** | **Int** | Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults. | [optional] 
 **audioChannels** | **Int** | Optional. Specify a specific number of audio channels to encode to, e.g. 2. | [optional] 
 **maxAudioChannels** | **Int** | Optional. Specify a maximum number of audio channels to encode to, e.g. 2. | [optional] 
 **profile** | **String** | Optional. Specify a specific an encoder profile (varies by encoder), e.g. main, baseline, high. | [optional] 
 **level** | **String** | Optional. Specify a level for the encoder profile (varies by encoder), e.g. 3, 3.1. | [optional] 
 **framerate** | **Float** | Optional. A specific video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements. | [optional] 
 **maxFramerate** | **Float** | Optional. A specific maximum video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements. | [optional] 
 **copyTimestamps** | **Bool** | Whether or not to copy timestamps when transcoding with an offset. Defaults to false. | [optional] 
 **startTimeTicks** | **Int64** | Optional. Specify a starting offset, in ticks. 1 tick &#x3D; 10000 ms. | [optional] 
 **width** | **Int** | Optional. The fixed horizontal resolution of the encoded video. | [optional] 
 **height** | **Int** | Optional. The fixed vertical resolution of the encoded video. | [optional] 
 **videoBitRate** | **Int** | Optional. Specify a video bitrate to encode to, e.g. 500000. If omitted this will be left to encoder defaults. | [optional] 
 **subtitleStreamIndex** | **Int** | Optional. The index of the subtitle stream to use. If omitted no subtitles will be used. | [optional] 
 **subtitleMethod** | [**SubtitleDeliveryMethod**](.md) | Optional. Specify the subtitle delivery method. | [optional] 
 **maxRefFrames** | **Int** | Optional. | [optional] 
 **maxVideoBitDepth** | **Int** | Optional. The maximum video bit depth. | [optional] 
 **requireAvc** | **Bool** | Optional. Whether to require avc. | [optional] 
 **deInterlace** | **Bool** | Optional. Whether to deinterlace the video. | [optional] 
 **requireNonAnamorphic** | **Bool** | Optional. Whether to require a non anamorphic stream. | [optional] 
 **transcodingMaxAudioChannels** | **Int** | Optional. The maximum number of audio channels to transcode. | [optional] 
 **cpuCoreLimit** | **Int** | Optional. The limit of how many cpu cores to use. | [optional] 
 **liveStreamId** | **String** | The live stream id. | [optional] 
 **enableMpegtsM2TsMode** | **Bool** | Optional. Whether to enable the MpegtsM2Ts mode. | [optional] 
 **videoCodec** | **String** | Optional. Specify a video codec to encode to, e.g. h264. If omitted the server will auto-select using the url&#39;s extension. Options: h265, h264, mpeg4, theora, vpx, wmv. | [optional] 
 **subtitleCodec** | **String** | Optional. Specify a subtitle codec to encode to. | [optional] 
 **transcodeReasons** | **String** | Optional. The transcoding reason. | [optional] 
 **audioStreamIndex** | **Int** | Optional. The index of the audio stream to use. If omitted the first audio stream will be used. | [optional] 
 **videoStreamIndex** | **Int** | Optional. The index of the video stream to use. If omitted the first video stream will be used. | [optional] 
 **context** | [**EncodingContext**](.md) | Optional. The MediaBrowser.Model.Dlna.EncodingContext. | [optional] 
 **streamOptions** | [**[String: String]**](String.md) | Optional. The streaming options. | [optional] 

### Return type

**URL**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: video/_*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **headVideoStreamByContainer**
```swift
    open class func headVideoStreamByContainer( itemId: String,  container: String,  _static: Bool? = nil,  params: String? = nil,  tag: String? = nil,  deviceProfileId: String? = nil,  playSessionId: String? = nil,  segmentContainer: String? = nil,  segmentLength: Int? = nil,  minSegments: Int? = nil,  mediaSourceId: String? = nil,  deviceId: String? = nil,  audioCodec: String? = nil,  enableAutoStreamCopy: Bool? = nil,  allowVideoStreamCopy: Bool? = nil,  allowAudioStreamCopy: Bool? = nil,  breakOnNonKeyFrames: Bool? = nil,  audioSampleRate: Int? = nil,  maxAudioBitDepth: Int? = nil,  audioBitRate: Int? = nil,  audioChannels: Int? = nil,  maxAudioChannels: Int? = nil,  profile: String? = nil,  level: String? = nil,  framerate: Float? = nil,  maxFramerate: Float? = nil,  copyTimestamps: Bool? = nil,  startTimeTicks: Int64? = nil,  width: Int? = nil,  height: Int? = nil,  videoBitRate: Int? = nil,  subtitleStreamIndex: Int? = nil,  subtitleMethod: SubtitleDeliveryMethod? = nil,  maxRefFrames: Int? = nil,  maxVideoBitDepth: Int? = nil,  requireAvc: Bool? = nil,  deInterlace: Bool? = nil,  requireNonAnamorphic: Bool? = nil,  transcodingMaxAudioChannels: Int? = nil,  cpuCoreLimit: Int? = nil,  liveStreamId: String? = nil,  enableMpegtsM2TsMode: Bool? = nil,  videoCodec: String? = nil,  subtitleCodec: String? = nil,  transcodeReasons: String? = nil,  audioStreamIndex: Int? = nil,  videoStreamIndex: Int? = nil,  context: EncodingContext? = nil,  streamOptions: [String: String]? = nil) -> Promise<URL>
```

Gets a video stream.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let itemId = "itemId_example" // String | The item id.
let container = "container_example" // String | The video container. Possible values are: ts, webm, asf, wmv, ogv, mp4, m4v, mkv, mpeg, mpg, avi, 3gp, wmv, wtv, m2ts, mov, iso, flv.
let _static = true // Bool | Optional. If true, the original file will be streamed statically without any encoding. Use either no url extension or the original file extension. true/false. (optional)
let params = "params_example" // String | The streaming parameters. (optional)
let tag = "tag_example" // String | The tag. (optional)
let deviceProfileId = "deviceProfileId_example" // String | Optional. The dlna device profile id to utilize. (optional)
let playSessionId = "playSessionId_example" // String | The play session id. (optional)
let segmentContainer = "segmentContainer_example" // String | The segment container. (optional)
let segmentLength = 987 // Int | The segment length. (optional)
let minSegments = 987 // Int | The minimum number of segments. (optional)
let mediaSourceId = "mediaSourceId_example" // String | The media version id, if playing an alternate version. (optional)
let deviceId = "deviceId_example" // String | The device id of the client requesting. Used to stop encoding processes when needed. (optional)
let audioCodec = "audioCodec_example" // String | Optional. Specify a audio codec to encode to, e.g. mp3. If omitted the server will auto-select using the url's extension. Options: aac, mp3, vorbis, wma. (optional)
let enableAutoStreamCopy = true // Bool | Whether or not to allow automatic stream copy if requested values match the original source. Defaults to true. (optional)
let allowVideoStreamCopy = true // Bool | Whether or not to allow copying of the video stream url. (optional)
let allowAudioStreamCopy = true // Bool | Whether or not to allow copying of the audio stream url. (optional)
let breakOnNonKeyFrames = true // Bool | Optional. Whether to break on non key frames. (optional)
let audioSampleRate = 987 // Int | Optional. Specify a specific audio sample rate, e.g. 44100. (optional)
let maxAudioBitDepth = 987 // Int | Optional. The maximum audio bit depth. (optional)
let audioBitRate = 987 // Int | Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults. (optional)
let audioChannels = 987 // Int | Optional. Specify a specific number of audio channels to encode to, e.g. 2. (optional)
let maxAudioChannels = 987 // Int | Optional. Specify a maximum number of audio channels to encode to, e.g. 2. (optional)
let profile = "profile_example" // String | Optional. Specify a specific an encoder profile (varies by encoder), e.g. main, baseline, high. (optional)
let level = "level_example" // String | Optional. Specify a level for the encoder profile (varies by encoder), e.g. 3, 3.1. (optional)
let framerate = 987 // Float | Optional. A specific video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements. (optional)
let maxFramerate = 987 // Float | Optional. A specific maximum video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements. (optional)
let copyTimestamps = true // Bool | Whether or not to copy timestamps when transcoding with an offset. Defaults to false. (optional)
let startTimeTicks = 987 // Int64 | Optional. Specify a starting offset, in ticks. 1 tick = 10000 ms. (optional)
let width = 987 // Int | Optional. The fixed horizontal resolution of the encoded video. (optional)
let height = 987 // Int | Optional. The fixed vertical resolution of the encoded video. (optional)
let videoBitRate = 987 // Int | Optional. Specify a video bitrate to encode to, e.g. 500000. If omitted this will be left to encoder defaults. (optional)
let subtitleStreamIndex = 987 // Int | Optional. The index of the subtitle stream to use. If omitted no subtitles will be used. (optional)
let subtitleMethod = SubtitleDeliveryMethod() // SubtitleDeliveryMethod | Optional. Specify the subtitle delivery method. (optional)
let maxRefFrames = 987 // Int | Optional. (optional)
let maxVideoBitDepth = 987 // Int | Optional. The maximum video bit depth. (optional)
let requireAvc = true // Bool | Optional. Whether to require avc. (optional)
let deInterlace = true // Bool | Optional. Whether to deinterlace the video. (optional)
let requireNonAnamorphic = true // Bool | Optional. Whether to require a non anamorphic stream. (optional)
let transcodingMaxAudioChannels = 987 // Int | Optional. The maximum number of audio channels to transcode. (optional)
let cpuCoreLimit = 987 // Int | Optional. The limit of how many cpu cores to use. (optional)
let liveStreamId = "liveStreamId_example" // String | The live stream id. (optional)
let enableMpegtsM2TsMode = true // Bool | Optional. Whether to enable the MpegtsM2Ts mode. (optional)
let videoCodec = "videoCodec_example" // String | Optional. Specify a video codec to encode to, e.g. h264. If omitted the server will auto-select using the url's extension. Options: h265, h264, mpeg4, theora, vpx, wmv. (optional)
let subtitleCodec = "subtitleCodec_example" // String | Optional. Specify a subtitle codec to encode to. (optional)
let transcodeReasons = "transcodeReasons_example" // String | Optional. The transcoding reason. (optional)
let audioStreamIndex = 987 // Int | Optional. The index of the audio stream to use. If omitted the first audio stream will be used. (optional)
let videoStreamIndex = 987 // Int | Optional. The index of the video stream to use. If omitted the first video stream will be used. (optional)
let context = EncodingContext() // EncodingContext | Optional. The MediaBrowser.Model.Dlna.EncodingContext. (optional)
let streamOptions = "TODO" // [String: String] | Optional. The streaming options. (optional)

// Gets a video stream.
VideosAPI.headVideoStreamByContainer(itemId: itemId, container: container, _static: _static, params: params, tag: tag, deviceProfileId: deviceProfileId, playSessionId: playSessionId, segmentContainer: segmentContainer, segmentLength: segmentLength, minSegments: minSegments, mediaSourceId: mediaSourceId, deviceId: deviceId, audioCodec: audioCodec, enableAutoStreamCopy: enableAutoStreamCopy, allowVideoStreamCopy: allowVideoStreamCopy, allowAudioStreamCopy: allowAudioStreamCopy, breakOnNonKeyFrames: breakOnNonKeyFrames, audioSampleRate: audioSampleRate, maxAudioBitDepth: maxAudioBitDepth, audioBitRate: audioBitRate, audioChannels: audioChannels, maxAudioChannels: maxAudioChannels, profile: profile, level: level, framerate: framerate, maxFramerate: maxFramerate, copyTimestamps: copyTimestamps, startTimeTicks: startTimeTicks, width: width, height: height, videoBitRate: videoBitRate, subtitleStreamIndex: subtitleStreamIndex, subtitleMethod: subtitleMethod, maxRefFrames: maxRefFrames, maxVideoBitDepth: maxVideoBitDepth, requireAvc: requireAvc, deInterlace: deInterlace, requireNonAnamorphic: requireNonAnamorphic, transcodingMaxAudioChannels: transcodingMaxAudioChannels, cpuCoreLimit: cpuCoreLimit, liveStreamId: liveStreamId, enableMpegtsM2TsMode: enableMpegtsM2TsMode, videoCodec: videoCodec, subtitleCodec: subtitleCodec, transcodeReasons: transcodeReasons, audioStreamIndex: audioStreamIndex, videoStreamIndex: videoStreamIndex, context: context, streamOptions: streamOptions).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **itemId** | **String** | The item id. | 
 **container** | **String** | The video container. Possible values are: ts, webm, asf, wmv, ogv, mp4, m4v, mkv, mpeg, mpg, avi, 3gp, wmv, wtv, m2ts, mov, iso, flv. | 
 **_static** | **Bool** | Optional. If true, the original file will be streamed statically without any encoding. Use either no url extension or the original file extension. true/false. | [optional] 
 **params** | **String** | The streaming parameters. | [optional] 
 **tag** | **String** | The tag. | [optional] 
 **deviceProfileId** | **String** | Optional. The dlna device profile id to utilize. | [optional] 
 **playSessionId** | **String** | The play session id. | [optional] 
 **segmentContainer** | **String** | The segment container. | [optional] 
 **segmentLength** | **Int** | The segment length. | [optional] 
 **minSegments** | **Int** | The minimum number of segments. | [optional] 
 **mediaSourceId** | **String** | The media version id, if playing an alternate version. | [optional] 
 **deviceId** | **String** | The device id of the client requesting. Used to stop encoding processes when needed. | [optional] 
 **audioCodec** | **String** | Optional. Specify a audio codec to encode to, e.g. mp3. If omitted the server will auto-select using the url&#39;s extension. Options: aac, mp3, vorbis, wma. | [optional] 
 **enableAutoStreamCopy** | **Bool** | Whether or not to allow automatic stream copy if requested values match the original source. Defaults to true. | [optional] 
 **allowVideoStreamCopy** | **Bool** | Whether or not to allow copying of the video stream url. | [optional] 
 **allowAudioStreamCopy** | **Bool** | Whether or not to allow copying of the audio stream url. | [optional] 
 **breakOnNonKeyFrames** | **Bool** | Optional. Whether to break on non key frames. | [optional] 
 **audioSampleRate** | **Int** | Optional. Specify a specific audio sample rate, e.g. 44100. | [optional] 
 **maxAudioBitDepth** | **Int** | Optional. The maximum audio bit depth. | [optional] 
 **audioBitRate** | **Int** | Optional. Specify an audio bitrate to encode to, e.g. 128000. If omitted this will be left to encoder defaults. | [optional] 
 **audioChannels** | **Int** | Optional. Specify a specific number of audio channels to encode to, e.g. 2. | [optional] 
 **maxAudioChannels** | **Int** | Optional. Specify a maximum number of audio channels to encode to, e.g. 2. | [optional] 
 **profile** | **String** | Optional. Specify a specific an encoder profile (varies by encoder), e.g. main, baseline, high. | [optional] 
 **level** | **String** | Optional. Specify a level for the encoder profile (varies by encoder), e.g. 3, 3.1. | [optional] 
 **framerate** | **Float** | Optional. A specific video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements. | [optional] 
 **maxFramerate** | **Float** | Optional. A specific maximum video framerate to encode to, e.g. 23.976. Generally this should be omitted unless the device has specific requirements. | [optional] 
 **copyTimestamps** | **Bool** | Whether or not to copy timestamps when transcoding with an offset. Defaults to false. | [optional] 
 **startTimeTicks** | **Int64** | Optional. Specify a starting offset, in ticks. 1 tick &#x3D; 10000 ms. | [optional] 
 **width** | **Int** | Optional. The fixed horizontal resolution of the encoded video. | [optional] 
 **height** | **Int** | Optional. The fixed vertical resolution of the encoded video. | [optional] 
 **videoBitRate** | **Int** | Optional. Specify a video bitrate to encode to, e.g. 500000. If omitted this will be left to encoder defaults. | [optional] 
 **subtitleStreamIndex** | **Int** | Optional. The index of the subtitle stream to use. If omitted no subtitles will be used. | [optional] 
 **subtitleMethod** | [**SubtitleDeliveryMethod**](.md) | Optional. Specify the subtitle delivery method. | [optional] 
 **maxRefFrames** | **Int** | Optional. | [optional] 
 **maxVideoBitDepth** | **Int** | Optional. The maximum video bit depth. | [optional] 
 **requireAvc** | **Bool** | Optional. Whether to require avc. | [optional] 
 **deInterlace** | **Bool** | Optional. Whether to deinterlace the video. | [optional] 
 **requireNonAnamorphic** | **Bool** | Optional. Whether to require a non anamorphic stream. | [optional] 
 **transcodingMaxAudioChannels** | **Int** | Optional. The maximum number of audio channels to transcode. | [optional] 
 **cpuCoreLimit** | **Int** | Optional. The limit of how many cpu cores to use. | [optional] 
 **liveStreamId** | **String** | The live stream id. | [optional] 
 **enableMpegtsM2TsMode** | **Bool** | Optional. Whether to enable the MpegtsM2Ts mode. | [optional] 
 **videoCodec** | **String** | Optional. Specify a video codec to encode to, e.g. h264. If omitted the server will auto-select using the url&#39;s extension. Options: h265, h264, mpeg4, theora, vpx, wmv. | [optional] 
 **subtitleCodec** | **String** | Optional. Specify a subtitle codec to encode to. | [optional] 
 **transcodeReasons** | **String** | Optional. The transcoding reason. | [optional] 
 **audioStreamIndex** | **Int** | Optional. The index of the audio stream to use. If omitted the first audio stream will be used. | [optional] 
 **videoStreamIndex** | **Int** | Optional. The index of the video stream to use. If omitted the first video stream will be used. | [optional] 
 **context** | [**EncodingContext**](.md) | Optional. The MediaBrowser.Model.Dlna.EncodingContext. | [optional] 
 **streamOptions** | [**[String: String]**](String.md) | Optional. The streaming options. | [optional] 

### Return type

**URL**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: video/_*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mergeVersions**
```swift
    open class func mergeVersions( ids: [String]) -> Promise<Void>
```

Merges videos into a single record.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import JellyfinClient

let ids = ["inner_example"] // [String] | Item id list. This allows multiple, comma delimited.

// Merges videos into a single record.
VideosAPI.mergeVersions(ids: ids).then {
         // when the promise is fulfilled
     }.always {
         // regardless of whether the promise is fulfilled, or rejected
     }.catch { errorType in
         // when the promise is rejected
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | [**[String]**](String.md) | Item id list. This allows multiple, comma delimited. | 

### Return type

Void (empty response body)

### Authorization

[CustomAuthentication](../README.md#CustomAuthentication)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/json; profile=CamelCase, application/json; profile=PascalCase

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

