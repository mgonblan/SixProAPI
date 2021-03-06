//
// VoloAbpHttpModelingApplicationApiDescriptionModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct VoloAbpHttpModelingApplicationApiDescriptionModel: Codable, Hashable {

    public var modules: [String: VoloAbpHttpModelingModuleApiDescriptionModel]?
    public var types: [String: VoloAbpHttpModelingTypeApiDescriptionModel]?

    public init(modules: [String: VoloAbpHttpModelingModuleApiDescriptionModel]? = nil, types: [String: VoloAbpHttpModelingTypeApiDescriptionModel]? = nil) {
        self.modules = modules
        self.types = types
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case modules
        case types
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(modules, forKey: .modules)
        try container.encodeIfPresent(types, forKey: .types)
    }



}
