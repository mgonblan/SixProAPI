//
// VoloAbpAspNetCoreMvcApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct VoloAbpAspNetCoreMvcApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto: Codable, Hashable {

    public var isVisible: Bool?

    public init(isVisible: Bool? = nil) {
        self.isVisible = isVisible
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case isVisible
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(isVisible, forKey: .isVisible)
    }



}