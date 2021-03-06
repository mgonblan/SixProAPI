//
// SixLinkedProvincesDtosCreateUpdateProvinceDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct SixLinkedProvincesDtosCreateUpdateProvinceDto: Codable, Hashable {

    public var name: String?
    public var shortName: String?
    public var countryId: UUID?
    public var cities: [SixLinkedCitiesDtosCityDto]?

    public init(name: String? = nil, shortName: String? = nil, countryId: UUID? = nil, cities: [SixLinkedCitiesDtosCityDto]? = nil) {
        self.name = name
        self.shortName = shortName
        self.countryId = countryId
        self.cities = cities
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case shortName
        case countryId
        case cities
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(shortName, forKey: .shortName)
        try container.encodeIfPresent(countryId, forKey: .countryId)
        try container.encodeIfPresent(cities, forKey: .cities)
    }



}
