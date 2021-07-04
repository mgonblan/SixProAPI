//
// VoloAbpPermissionManagementUpdatePermissionDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct VoloAbpPermissionManagementUpdatePermissionDto: Codable, Hashable {

    public var name: String?
    public var isGranted: Bool?

    public init(name: String? = nil, isGranted: Bool? = nil) {
        self.name = name
        self.isGranted = isGranted
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case isGranted
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(isGranted, forKey: .isGranted)
    }



}