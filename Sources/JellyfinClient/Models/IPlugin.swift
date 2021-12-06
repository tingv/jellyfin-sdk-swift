//
// IPlugin.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Defines the MediaBrowser.Common.Plugins.IPlugin. */
public struct IPlugin: Codable, Hashable {

    /** Gets the name of the plugin. */
    public var name: String?
    /** Gets the Description. */
    public var description: String?
    /** Gets the unique id. */
    public var id: String?
    public var version: Version?
    /** Gets the path to the assembly file. */
    public var assemblyFilePath: String?
    /** Gets a value indicating whether the plugin can be uninstalled. */
    public var canUninstall: Bool?
    /** Gets the full path to the data folder, where the plugin can store any miscellaneous files needed. */
    public var dataFolderPath: String?

    public init(name: String? = nil, description: String? = nil, id: String? = nil, version: Version? = nil, assemblyFilePath: String? = nil, canUninstall: Bool? = nil, dataFolderPath: String? = nil) {
        self.name = name
        self.description = description
        self.id = id
        self.version = version
        self.assemblyFilePath = assemblyFilePath
        self.canUninstall = canUninstall
        self.dataFolderPath = dataFolderPath
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case description = "Description"
        case id = "Id"
        case version = "Version"
        case assemblyFilePath = "AssemblyFilePath"
        case canUninstall = "CanUninstall"
        case dataFolderPath = "DataFolderPath"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(name, forKey: .name)
        try encoderContainer.encodeIfPresent(description, forKey: .description)
        try encoderContainer.encodeIfPresent(id, forKey: .id)
        try encoderContainer.encodeIfPresent(version, forKey: .version)
        try encoderContainer.encodeIfPresent(assemblyFilePath, forKey: .assemblyFilePath)
        try encoderContainer.encodeIfPresent(canUninstall, forKey: .canUninstall)
        try encoderContainer.encodeIfPresent(dataFolderPath, forKey: .dataFolderPath)
    }
}
