//
// VirtualFolderInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Used to hold information about a user&#39;s list of configured virtual folders. */
public struct VirtualFolderInfo: Codable, Hashable {

    /** Gets or sets the name. */
    public var name: String?
    /** Gets or sets the locations. */
    public var locations: [String]?
    public var collectionType: CollectionTypeOptions?
    public var libraryOptions: LibraryOptions?
    /** Gets or sets the item identifier. */
    public var itemId: String?
    /** Gets or sets the primary image item identifier. */
    public var primaryImageItemId: String?
    public var refreshProgress: Double?
    public var refreshStatus: String?

    public init(name: String? = nil, locations: [String]? = nil, collectionType: CollectionTypeOptions? = nil, libraryOptions: LibraryOptions? = nil, itemId: String? = nil, primaryImageItemId: String? = nil, refreshProgress: Double? = nil, refreshStatus: String? = nil) {
        self.name = name
        self.locations = locations
        self.collectionType = collectionType
        self.libraryOptions = libraryOptions
        self.itemId = itemId
        self.primaryImageItemId = primaryImageItemId
        self.refreshProgress = refreshProgress
        self.refreshStatus = refreshStatus
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case locations = "Locations"
        case collectionType = "CollectionType"
        case libraryOptions = "LibraryOptions"
        case itemId = "ItemId"
        case primaryImageItemId = "PrimaryImageItemId"
        case refreshProgress = "RefreshProgress"
        case refreshStatus = "RefreshStatus"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(name, forKey: .name)
        try encoderContainer.encodeIfPresent(locations, forKey: .locations)
        try encoderContainer.encodeIfPresent(collectionType, forKey: .collectionType)
        try encoderContainer.encodeIfPresent(libraryOptions, forKey: .libraryOptions)
        try encoderContainer.encodeIfPresent(itemId, forKey: .itemId)
        try encoderContainer.encodeIfPresent(primaryImageItemId, forKey: .primaryImageItemId)
        try encoderContainer.encodeIfPresent(refreshProgress, forKey: .refreshProgress)
        try encoderContainer.encodeIfPresent(refreshStatus, forKey: .refreshStatus)
    }
}
