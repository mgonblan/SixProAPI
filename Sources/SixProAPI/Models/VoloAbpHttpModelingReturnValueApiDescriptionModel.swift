//
// VoloAbpHttpModelingReturnValueApiDescriptionModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct VoloAbpHttpModelingReturnValueApiDescriptionModel: Codable, Hashable {

    public var type: String?
    public var typeSimple: String?

    public init(type: String? = nil, typeSimple: String? = nil) {
        self.type = type
        self.typeSimple = typeSimple
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case type
        case typeSimple
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(typeSimple, forKey: .typeSimple)
    }



}
