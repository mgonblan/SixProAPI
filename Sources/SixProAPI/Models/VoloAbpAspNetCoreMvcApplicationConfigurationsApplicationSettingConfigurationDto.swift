//
// VoloAbpAspNetCoreMvcApplicationConfigurationsApplicationSettingConfigurationDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct VoloAbpAspNetCoreMvcApplicationConfigurationsApplicationSettingConfigurationDto: Codable, Hashable {

    public var values: [String: String]?

    public init(values: [String: String]? = nil) {
        self.values = values
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case values
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(values, forKey: .values)
    }



}