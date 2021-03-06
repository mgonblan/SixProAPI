//
// VoloAbpAspNetCoreMvcApplicationConfigurationsIanaTimeZone.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct VoloAbpAspNetCoreMvcApplicationConfigurationsIanaTimeZone: Codable, Hashable {

    public var timeZoneName: String?

    public init(timeZoneName: String? = nil) {
        self.timeZoneName = timeZoneName
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case timeZoneName
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(timeZoneName, forKey: .timeZoneName)
    }



}
