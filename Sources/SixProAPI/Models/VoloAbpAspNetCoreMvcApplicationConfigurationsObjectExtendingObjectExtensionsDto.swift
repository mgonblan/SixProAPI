//
// VoloAbpAspNetCoreMvcApplicationConfigurationsObjectExtendingObjectExtensionsDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct VoloAbpAspNetCoreMvcApplicationConfigurationsObjectExtendingObjectExtensionsDto: Codable, Hashable {

    public var modules: [String: VoloAbpAspNetCoreMvcApplicationConfigurationsObjectExtendingModuleExtensionDto]?
    public var enums: [String: VoloAbpAspNetCoreMvcApplicationConfigurationsObjectExtendingExtensionEnumDto]?

    public init(modules: [String: VoloAbpAspNetCoreMvcApplicationConfigurationsObjectExtendingModuleExtensionDto]? = nil, enums: [String: VoloAbpAspNetCoreMvcApplicationConfigurationsObjectExtendingExtensionEnumDto]? = nil) {
        self.modules = modules
        self.enums = enums
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case modules
        case enums
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(modules, forKey: .modules)
        try container.encodeIfPresent(enums, forKey: .enums)
    }



}
