//
// ThemeMediaResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class ThemeMediaResult. */
public struct ThemeMediaResult: Codable, Hashable {

    /** Gets or sets the items. */
    public var items: [BaseItemDto]?
    /** The total number of records available. */
    public var totalRecordCount: Int?
    /** The index of the first record in Items. */
    public var startIndex: Int?
    /** Gets or sets the owner id. */
    public var ownerId: String?

    public init(items: [BaseItemDto]? = nil, totalRecordCount: Int? = nil, startIndex: Int? = nil, ownerId: String? = nil) {
        self.items = items
        self.totalRecordCount = totalRecordCount
        self.startIndex = startIndex
        self.ownerId = ownerId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case items = "Items"
        case totalRecordCount = "TotalRecordCount"
        case startIndex = "StartIndex"
        case ownerId = "OwnerId"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(items, forKey: .items)
        try encoderContainer.encodeIfPresent(totalRecordCount, forKey: .totalRecordCount)
        try encoderContainer.encodeIfPresent(startIndex, forKey: .startIndex)
        try encoderContainer.encodeIfPresent(ownerId, forKey: .ownerId)
    }
}
