//
// VoloAbpAccountWebAreasAccountControllersModelsUserLoginInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct VoloAbpAccountWebAreasAccountControllersModelsUserLoginInfo: Codable, Hashable {

    public var userNameOrEmailAddress: String
    public var password: String
    public var rememberMe: Bool?

    public init(userNameOrEmailAddress: String, password: String, rememberMe: Bool? = nil) {
        self.userNameOrEmailAddress = userNameOrEmailAddress
        self.password = password
        self.rememberMe = rememberMe
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userNameOrEmailAddress
        case password
        case rememberMe
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(userNameOrEmailAddress, forKey: .userNameOrEmailAddress)
        try container.encode(password, forKey: .password)
        try container.encodeIfPresent(rememberMe, forKey: .rememberMe)
    }



}
