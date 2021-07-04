//
// VoloAbpPermissionManagementPermissionGroupDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct VoloAbpPermissionManagementPermissionGroupDto: Codable, Hashable {

    public var name: String?
    public var displayName: String?
    public var permissions: [VoloAbpPermissionManagementPermissionGrantInfoDto]?

    public init(name: String? = nil, displayName: String? = nil, permissions: [VoloAbpPermissionManagementPermissionGrantInfoDto]? = nil) {
        self.name = name
        self.displayName = displayName
        self.permissions = permissions
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case displayName
        case permissions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(displayName, forKey: .displayName)
        try container.encodeIfPresent(permissions, forKey: .permissions)
    }



}
