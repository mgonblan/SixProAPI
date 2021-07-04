//
// SixLinkedProvincesProvince.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct SixLinkedProvincesProvince: Codable, Hashable {

    public var id: UUID?
    public var creationTime: Date?
    public var creatorId: UUID?
    public var lastModificationTime: Date?
    public var lastModifierId: UUID?
    public var isDeleted: Bool?
    public var deleterId: UUID?
    public var deletionTime: Date?
    public var name: String?
    public var shortName: String?
    public var countryId: UUID?
    public var country: SixLinkedCountriesCountry?
    public var cities: [SixLinkedCitiesCity]?

    public init(id: UUID? = nil, creationTime: Date? = nil, creatorId: UUID? = nil, lastModificationTime: Date? = nil, lastModifierId: UUID? = nil, isDeleted: Bool? = nil, deleterId: UUID? = nil, deletionTime: Date? = nil, name: String? = nil, shortName: String? = nil, countryId: UUID? = nil, country: SixLinkedCountriesCountry? = nil, cities: [SixLinkedCitiesCity]? = nil) {
        self.id = id
        self.creationTime = creationTime
        self.creatorId = creatorId
        self.lastModificationTime = lastModificationTime
        self.lastModifierId = lastModifierId
        self.isDeleted = isDeleted
        self.deleterId = deleterId
        self.deletionTime = deletionTime
        self.name = name
        self.shortName = shortName
        self.countryId = countryId
        self.country = country
        self.cities = cities
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case creationTime
        case creatorId
        case lastModificationTime
        case lastModifierId
        case isDeleted
        case deleterId
        case deletionTime
        case name
        case shortName
        case countryId
        case country
        case cities
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(creationTime, forKey: .creationTime)
        try container.encodeIfPresent(creatorId, forKey: .creatorId)
        try container.encodeIfPresent(lastModificationTime, forKey: .lastModificationTime)
        try container.encodeIfPresent(lastModifierId, forKey: .lastModifierId)
        try container.encodeIfPresent(isDeleted, forKey: .isDeleted)
        try container.encodeIfPresent(deleterId, forKey: .deleterId)
        try container.encodeIfPresent(deletionTime, forKey: .deletionTime)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(shortName, forKey: .shortName)
        try container.encodeIfPresent(countryId, forKey: .countryId)
        try container.encodeIfPresent(country, forKey: .country)
        try container.encodeIfPresent(cities, forKey: .cities)
    }



}
