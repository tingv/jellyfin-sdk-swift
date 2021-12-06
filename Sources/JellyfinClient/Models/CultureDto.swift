//
// CultureDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class CultureDto. */
public struct CultureDto: Codable, Hashable {

    /** Gets or sets the name. */
    public var name: String?
    /** Gets or sets the display name. */
    public var displayName: String?
    /** Gets or sets the name of the two letter ISO language. */
    public var twoLetterISOLanguageName: String?
    /** Gets or sets the name of the three letter ISO language. */
    public var threeLetterISOLanguageName: String?
    public var threeLetterISOLanguageNames: [String]?

    public init(name: String? = nil, displayName: String? = nil, twoLetterISOLanguageName: String? = nil, threeLetterISOLanguageName: String? = nil, threeLetterISOLanguageNames: [String]? = nil) {
        self.name = name
        self.displayName = displayName
        self.twoLetterISOLanguageName = twoLetterISOLanguageName
        self.threeLetterISOLanguageName = threeLetterISOLanguageName
        self.threeLetterISOLanguageNames = threeLetterISOLanguageNames
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case displayName = "DisplayName"
        case twoLetterISOLanguageName = "TwoLetterISOLanguageName"
        case threeLetterISOLanguageName = "ThreeLetterISOLanguageName"
        case threeLetterISOLanguageNames = "ThreeLetterISOLanguageNames"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(name, forKey: .name)
        try encoderContainer.encodeIfPresent(displayName, forKey: .displayName)
        try encoderContainer.encodeIfPresent(twoLetterISOLanguageName, forKey: .twoLetterISOLanguageName)
        try encoderContainer.encodeIfPresent(threeLetterISOLanguageName, forKey: .threeLetterISOLanguageName)
        try encoderContainer.encodeIfPresent(threeLetterISOLanguageNames, forKey: .threeLetterISOLanguageNames)
    }
}
