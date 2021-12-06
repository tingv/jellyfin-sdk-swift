//
// ContainerProfile.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ContainerProfile: Codable, Hashable {

    public var type: DlnaProfileType?
    public var conditions: [ProfileCondition]?
    public var container: String?

    public init(type: DlnaProfileType? = nil, conditions: [ProfileCondition]? = nil, container: String? = nil) {
        self.type = type
        self.conditions = conditions
        self.container = container
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type = "Type"
        case conditions = "Conditions"
        case container = "Container"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(type, forKey: .type)
        try encoderContainer.encodeIfPresent(conditions, forKey: .conditions)
        try encoderContainer.encodeIfPresent(container, forKey: .container)
    }
}
