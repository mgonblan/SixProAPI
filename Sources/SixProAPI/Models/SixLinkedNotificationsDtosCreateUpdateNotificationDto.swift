//
// SixLinkedNotificationsDtosCreateUpdateNotificationDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct SixLinkedNotificationsDtosCreateUpdateNotificationDto: Codable, Hashable {

    public var data: String?
    public var entityType: String?
    public var entityId: UUID?
    public var type: SixLinkedNotificationsNotificationType?
    public var severity: SixLinkedNotificationsNotificationSeverity?
    public var isGeneral: Bool?
    public var creationTime: Date?

    public init(data: String? = nil, entityType: String? = nil, entityId: UUID? = nil, type: SixLinkedNotificationsNotificationType? = nil, severity: SixLinkedNotificationsNotificationSeverity? = nil, isGeneral: Bool? = nil, creationTime: Date? = nil) {
        self.data = data
        self.entityType = entityType
        self.entityId = entityId
        self.type = type
        self.severity = severity
        self.isGeneral = isGeneral
        self.creationTime = creationTime
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case entityType
        case entityId
        case type
        case severity
        case isGeneral
        case creationTime
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(entityType, forKey: .entityType)
        try container.encodeIfPresent(entityId, forKey: .entityId)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(severity, forKey: .severity)
        try container.encodeIfPresent(isGeneral, forKey: .isGeneral)
        try container.encodeIfPresent(creationTime, forKey: .creationTime)
    }



}
