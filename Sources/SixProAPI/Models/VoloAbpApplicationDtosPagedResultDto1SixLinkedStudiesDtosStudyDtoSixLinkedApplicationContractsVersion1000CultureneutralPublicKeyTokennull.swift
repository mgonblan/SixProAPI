//
// VoloAbpApplicationDtosPagedResultDto1SixLinkedStudiesDtosStudyDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct VoloAbpApplicationDtosPagedResultDto1SixLinkedStudiesDtosStudyDtoSixLinkedApplicationContractsVersion1000CultureneutralPublicKeyTokennull: Codable, Hashable {

    public var items: [SixLinkedStudiesDtosStudyDto]?
    public var totalCount: Int64?

    public init(items: [SixLinkedStudiesDtosStudyDto]? = nil, totalCount: Int64? = nil) {
        self.items = items
        self.totalCount = totalCount
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case items
        case totalCount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(items, forKey: .items)
        try container.encodeIfPresent(totalCount, forKey: .totalCount)
    }



}
