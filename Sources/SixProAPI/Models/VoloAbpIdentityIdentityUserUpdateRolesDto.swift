//
// VoloAbpIdentityIdentityUserUpdateRolesDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct VoloAbpIdentityIdentityUserUpdateRolesDto: Codable, Hashable {

    public var roleNames: [String]

    public init(roleNames: [String]) {
        self.roleNames = roleNames
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case roleNames
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(roleNames, forKey: .roleNames)
    }



}
