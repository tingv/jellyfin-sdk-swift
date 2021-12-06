//
// TranscodeReason.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum TranscodeReason: String, Codable, CaseIterable {
    case containerNotSupported = "ContainerNotSupported"
    case videoCodecNotSupported = "VideoCodecNotSupported"
    case audioCodecNotSupported = "AudioCodecNotSupported"
    case containerBitrateExceedsLimit = "ContainerBitrateExceedsLimit"
    case audioBitrateNotSupported = "AudioBitrateNotSupported"
    case audioChannelsNotSupported = "AudioChannelsNotSupported"
    case videoResolutionNotSupported = "VideoResolutionNotSupported"
    case unknownVideoStreamInfo = "UnknownVideoStreamInfo"
    case unknownAudioStreamInfo = "UnknownAudioStreamInfo"
    case audioProfileNotSupported = "AudioProfileNotSupported"
    case audioSampleRateNotSupported = "AudioSampleRateNotSupported"
    case anamorphicVideoNotSupported = "AnamorphicVideoNotSupported"
    case interlacedVideoNotSupported = "InterlacedVideoNotSupported"
    case secondaryAudioNotSupported = "SecondaryAudioNotSupported"
    case refFramesNotSupported = "RefFramesNotSupported"
    case videoBitDepthNotSupported = "VideoBitDepthNotSupported"
    case videoBitrateNotSupported = "VideoBitrateNotSupported"
    case videoFramerateNotSupported = "VideoFramerateNotSupported"
    case videoLevelNotSupported = "VideoLevelNotSupported"
    case videoProfileNotSupported = "VideoProfileNotSupported"
    case audioBitDepthNotSupported = "AudioBitDepthNotSupported"
    case subtitleCodecNotSupported = "SubtitleCodecNotSupported"
    case directPlayError = "DirectPlayError"
}
