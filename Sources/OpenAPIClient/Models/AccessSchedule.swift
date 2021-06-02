//
// AccessSchedule.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** An entity representing a user&#39;s access schedule. */
public struct AccessSchedule: Codable, Hashable {

    /** Gets or sets the id of this instance. */
    public var id: Int
    /** Gets or sets the id of the associated user. */
    public var userId: UUID
    /** Gets or sets the day of week. */
    public var dayOfWeek: DynamicDayOfWeek
    /** Gets or sets the start hour. */
    public var startHour: Double
    /** Gets or sets the end hour. */
    public var endHour: Double

    public init(id: Int, userId: UUID, dayOfWeek: DynamicDayOfWeek, startHour: Double, endHour: Double) {
        self.id = id
        self.userId = userId
        self.dayOfWeek = dayOfWeek
        self.startHour = startHour
        self.endHour = endHour
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "Id"
        case userId = "UserId"
        case dayOfWeek = "DayOfWeek"
        case startHour = "StartHour"
        case endHour = "EndHour"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(userId, forKey: .userId)
        try container.encode(dayOfWeek, forKey: .dayOfWeek)
        try container.encode(startHour, forKey: .startHour)
        try container.encode(endHour, forKey: .endHour)
    }



}
