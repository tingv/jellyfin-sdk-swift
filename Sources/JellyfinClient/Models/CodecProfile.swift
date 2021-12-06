//
// CodecProfile.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct CodecProfile: Codable, Hashable {

    public var type: CodecType?
    public var conditions: [ProfileCondition]?
    public var applyConditions: [ProfileCondition]?
    public var codec: String?
    public var container: String?

    public init(type: CodecType? = nil, conditions: [ProfileCondition]? = nil, applyConditions: [ProfileCondition]? = nil, codec: String? = nil, container: String? = nil) {
        self.type = type
        self.conditions = conditions
        self.applyConditions = applyConditions
        self.codec = codec
        self.container = container
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type = "Type"
        case conditions = "Conditions"
        case applyConditions = "ApplyConditions"
        case codec = "Codec"
        case container = "Container"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(type, forKey: .type)
        try encoderContainer.encodeIfPresent(conditions, forKey: .conditions)
        try encoderContainer.encodeIfPresent(applyConditions, forKey: .applyConditions)
        try encoderContainer.encodeIfPresent(codec, forKey: .codec)
        try encoderContainer.encodeIfPresent(container, forKey: .container)
    }
}
