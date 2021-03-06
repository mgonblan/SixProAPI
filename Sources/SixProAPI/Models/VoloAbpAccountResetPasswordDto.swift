//
// VoloAbpAccountResetPasswordDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct VoloAbpAccountResetPasswordDto: Codable, Hashable {

    public var userId: UUID?
    public var resetToken: String
    public var password: String

    public init(userId: UUID? = nil, resetToken: String, password: String) {
        self.userId = userId
        self.resetToken = resetToken
        self.password = password
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userId
        case resetToken
        case password
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encode(resetToken, forKey: .resetToken)
        try container.encode(password, forKey: .password)
    }



}
