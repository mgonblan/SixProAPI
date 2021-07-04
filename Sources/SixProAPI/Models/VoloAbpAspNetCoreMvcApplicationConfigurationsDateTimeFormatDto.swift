//
// VoloAbpAspNetCoreMvcApplicationConfigurationsDateTimeFormatDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct VoloAbpAspNetCoreMvcApplicationConfigurationsDateTimeFormatDto: Codable, Hashable {

    public var calendarAlgorithmType: String?
    public var dateTimeFormatLong: String?
    public var shortDatePattern: String?
    public var fullDateTimePattern: String?
    public var dateSeparator: String?
    public var shortTimePattern: String?
    public var longTimePattern: String?

    public init(calendarAlgorithmType: String? = nil, dateTimeFormatLong: String? = nil, shortDatePattern: String? = nil, fullDateTimePattern: String? = nil, dateSeparator: String? = nil, shortTimePattern: String? = nil, longTimePattern: String? = nil) {
        self.calendarAlgorithmType = calendarAlgorithmType
        self.dateTimeFormatLong = dateTimeFormatLong
        self.shortDatePattern = shortDatePattern
        self.fullDateTimePattern = fullDateTimePattern
        self.dateSeparator = dateSeparator
        self.shortTimePattern = shortTimePattern
        self.longTimePattern = longTimePattern
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case calendarAlgorithmType
        case dateTimeFormatLong
        case shortDatePattern
        case fullDateTimePattern
        case dateSeparator
        case shortTimePattern
        case longTimePattern
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(calendarAlgorithmType, forKey: .calendarAlgorithmType)
        try container.encodeIfPresent(dateTimeFormatLong, forKey: .dateTimeFormatLong)
        try container.encodeIfPresent(shortDatePattern, forKey: .shortDatePattern)
        try container.encodeIfPresent(fullDateTimePattern, forKey: .fullDateTimePattern)
        try container.encodeIfPresent(dateSeparator, forKey: .dateSeparator)
        try container.encodeIfPresent(shortTimePattern, forKey: .shortTimePattern)
        try container.encodeIfPresent(longTimePattern, forKey: .longTimePattern)
    }



}