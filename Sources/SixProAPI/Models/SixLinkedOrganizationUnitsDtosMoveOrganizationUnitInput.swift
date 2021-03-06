//
// SixLinkedOrganizationUnitsDtosMoveOrganizationUnitInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct SixLinkedOrganizationUnitsDtosMoveOrganizationUnitInput: Codable, Hashable {

    public var id: UUID?
    public var newParentId: UUID?

    public init(id: UUID? = nil, newParentId: UUID? = nil) {
        self.id = id
        self.newParentId = newParentId
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case newParentId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(newParentId, forKey: .newParentId)
    }



}
