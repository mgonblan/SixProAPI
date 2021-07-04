//
// SixLinkedNotificationsDtosSendNotificationInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct SixLinkedNotificationsDtosSendNotificationInput: Codable, Hashable {

    public var targetUserId: UUID?
    public var message: String?

    public init(targetUserId: UUID? = nil, message: String? = nil) {
        self.targetUserId = targetUserId
        self.message = message
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case targetUserId
        case message
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(targetUserId, forKey: .targetUserId)
        try container.encodeIfPresent(message, forKey: .message)
    }



}