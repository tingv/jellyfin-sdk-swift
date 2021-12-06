//
// DirectPlayProfile.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DirectPlayProfile: Codable, Hashable {

    public var container: String?
    public var audioCodec: String?
    public var videoCodec: String?
    public var type: DlnaProfileType?

    public init(container: String? = nil, audioCodec: String? = nil, videoCodec: String? = nil, type: DlnaProfileType? = nil) {
        self.container = container
        self.audioCodec = audioCodec
        self.videoCodec = videoCodec
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case container = "Container"
        case audioCodec = "AudioCodec"
        case videoCodec = "VideoCodec"
        case type = "Type"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(container, forKey: .container)
        try encoderContainer.encodeIfPresent(audioCodec, forKey: .audioCodec)
        try encoderContainer.encodeIfPresent(videoCodec, forKey: .videoCodec)
        try encoderContainer.encodeIfPresent(type, forKey: .type)
    }
}
