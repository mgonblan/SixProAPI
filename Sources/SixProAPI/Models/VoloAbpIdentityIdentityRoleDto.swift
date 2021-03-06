//
// VoloAbpIdentityIdentityRoleDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct VoloAbpIdentityIdentityRoleDto: Codable, Hashable {

    public var extraProperties: [String: AnyCodable]?
    public var id: UUID?
    public var name: String?
    public var isDefault: Bool?
    public var isStatic: Bool?
    public var isPublic: Bool?
    public var concurrencyStamp: String?

    public init(extraProperties: [String: AnyCodable]? = nil, id: UUID? = nil, name: String? = nil, isDefault: Bool? = nil, isStatic: Bool? = nil, isPublic: Bool? = nil, concurrencyStamp: String? = nil) {
        self.extraProperties = extraProperties
        self.id = id
        self.name = name
        self.isDefault = isDefault
        self.isStatic = isStatic
        self.isPublic = isPublic
        self.concurrencyStamp = concurrencyStamp
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case extraProperties
        case id
        case name
        case isDefault
        case isStatic
        case isPublic
        case concurrencyStamp
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(extraProperties, forKey: .extraProperties)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(isDefault, forKey: .isDefault)
        try container.encodeIfPresent(isStatic, forKey: .isStatic)
        try container.encodeIfPresent(isPublic, forKey: .isPublic)
        try container.encodeIfPresent(concurrencyStamp, forKey: .concurrencyStamp)
    }



}
