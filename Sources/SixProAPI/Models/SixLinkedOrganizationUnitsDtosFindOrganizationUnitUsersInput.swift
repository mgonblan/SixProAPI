//
// SixLinkedOrganizationUnitsDtosFindOrganizationUnitUsersInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct SixLinkedOrganizationUnitsDtosFindOrganizationUnitUsersInput: Codable, Hashable {

    public var maxResultCount: Int?
    public var skipCount: Int?
    public var filter: String?
    public var organizationUnitId: UUID?

    public init(maxResultCount: Int? = nil, skipCount: Int? = nil, filter: String? = nil, organizationUnitId: UUID? = nil) {
        self.maxResultCount = maxResultCount
        self.skipCount = skipCount
        self.filter = filter
        self.organizationUnitId = organizationUnitId
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case maxResultCount
        case skipCount
        case filter
        case organizationUnitId
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(maxResultCount, forKey: .maxResultCount)
        try container.encodeIfPresent(skipCount, forKey: .skipCount)
        try container.encodeIfPresent(filter, forKey: .filter)
        try container.encodeIfPresent(organizationUnitId, forKey: .organizationUnitId)
    }



}