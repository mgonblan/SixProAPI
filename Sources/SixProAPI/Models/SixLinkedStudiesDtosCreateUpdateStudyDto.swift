//
// SixLinkedStudiesDtosCreateUpdateStudyDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct SixLinkedStudiesDtosCreateUpdateStudyDto: Codable, Hashable {

    public var startDate: Date?
    public var endDate: Date?
    public var title: String?
    public var description: String?
    public var institutionName: String?
    public var type: SixLinkedStudiesStudyType?

    public init(startDate: Date? = nil, endDate: Date? = nil, title: String? = nil, description: String? = nil, institutionName: String? = nil, type: SixLinkedStudiesStudyType? = nil) {
        self.startDate = startDate
        self.endDate = endDate
        self.title = title
        self.description = description
        self.institutionName = institutionName
        self.type = type
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case startDate
        case endDate
        case title
        case description
        case institutionName
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(startDate, forKey: .startDate)
        try container.encodeIfPresent(endDate, forKey: .endDate)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(institutionName, forKey: .institutionName)
        try container.encodeIfPresent(type, forKey: .type)
    }



}
