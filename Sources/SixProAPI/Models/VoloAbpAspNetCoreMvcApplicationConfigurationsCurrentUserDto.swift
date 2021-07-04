//
// VoloAbpAspNetCoreMvcApplicationConfigurationsCurrentUserDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct VoloAbpAspNetCoreMvcApplicationConfigurationsCurrentUserDto: Codable, Hashable {

    public var isAuthenticated: Bool?
    public var id: UUID?
    public var tenantId: UUID?
    public var userName: String?
    public var name: String?
    public var surName: String?
    public var email: String?
    public var emailVerified: Bool?
    public var phoneNumber: String?
    public var phoneNumberVerified: Bool?
    public var roles: [String]?

    public init(isAuthenticated: Bool? = nil, id: UUID? = nil, tenantId: UUID? = nil, userName: String? = nil, name: String? = nil, surName: String? = nil, email: String? = nil, emailVerified: Bool? = nil, phoneNumber: String? = nil, phoneNumberVerified: Bool? = nil, roles: [String]? = nil) {
        self.isAuthenticated = isAuthenticated
        self.id = id
        self.tenantId = tenantId
        self.userName = userName
        self.name = name
        self.surName = surName
        self.email = email
        self.emailVerified = emailVerified
        self.phoneNumber = phoneNumber
        self.phoneNumberVerified = phoneNumberVerified
        self.roles = roles
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case isAuthenticated
        case id
        case tenantId
        case userName
        case name
        case surName
        case email
        case emailVerified
        case phoneNumber
        case phoneNumberVerified
        case roles
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(isAuthenticated, forKey: .isAuthenticated)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(tenantId, forKey: .tenantId)
        try container.encodeIfPresent(userName, forKey: .userName)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(surName, forKey: .surName)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(emailVerified, forKey: .emailVerified)
        try container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        try container.encodeIfPresent(phoneNumberVerified, forKey: .phoneNumberVerified)
        try container.encodeIfPresent(roles, forKey: .roles)
    }



}
