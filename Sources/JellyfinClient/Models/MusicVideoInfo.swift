//
// MusicVideoInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MusicVideoInfo: Codable, Hashable {

    /** Gets or sets the name. */
    public var name: String?
    /** Gets or sets the path. */
    public var path: String?
    /** Gets or sets the metadata language. */
    public var metadataLanguage: String?
    /** Gets or sets the metadata country code. */
    public var metadataCountryCode: String?
    /** Gets or sets the provider ids. */
    public var providerIds: [String: String]?
    /** Gets or sets the year. */
    public var year: Int?
    public var indexNumber: Int?
    public var parentIndexNumber: Int?
    public var premiereDate: Date?
    public var isAutomated: Bool?
    public var artists: [String]?

    public init(name: String? = nil, path: String? = nil, metadataLanguage: String? = nil, metadataCountryCode: String? = nil, providerIds: [String: String]? = nil, year: Int? = nil, indexNumber: Int? = nil, parentIndexNumber: Int? = nil, premiereDate: Date? = nil, isAutomated: Bool? = nil, artists: [String]? = nil) {
        self.name = name
        self.path = path
        self.metadataLanguage = metadataLanguage
        self.metadataCountryCode = metadataCountryCode
        self.providerIds = providerIds
        self.year = year
        self.indexNumber = indexNumber
        self.parentIndexNumber = parentIndexNumber
        self.premiereDate = premiereDate
        self.isAutomated = isAutomated
        self.artists = artists
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case path = "Path"
        case metadataLanguage = "MetadataLanguage"
        case metadataCountryCode = "MetadataCountryCode"
        case providerIds = "ProviderIds"
        case year = "Year"
        case indexNumber = "IndexNumber"
        case parentIndexNumber = "ParentIndexNumber"
        case premiereDate = "PremiereDate"
        case isAutomated = "IsAutomated"
        case artists = "Artists"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(name, forKey: .name)
        try encoderContainer.encodeIfPresent(path, forKey: .path)
        try encoderContainer.encodeIfPresent(metadataLanguage, forKey: .metadataLanguage)
        try encoderContainer.encodeIfPresent(metadataCountryCode, forKey: .metadataCountryCode)
        try encoderContainer.encodeIfPresent(providerIds, forKey: .providerIds)
        try encoderContainer.encodeIfPresent(year, forKey: .year)
        try encoderContainer.encodeIfPresent(indexNumber, forKey: .indexNumber)
        try encoderContainer.encodeIfPresent(parentIndexNumber, forKey: .parentIndexNumber)
        try encoderContainer.encodeIfPresent(premiereDate, forKey: .premiereDate)
        try encoderContainer.encodeIfPresent(isAutomated, forKey: .isAutomated)
        try encoderContainer.encodeIfPresent(artists, forKey: .artists)
    }
}
