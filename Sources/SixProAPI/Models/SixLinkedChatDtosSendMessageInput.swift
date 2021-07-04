//
// SixLinkedChatDtosSendMessageInput.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct SixLinkedChatDtosSendMessageInput: Codable, Hashable {

    public var targetUserName: String?
    public var message: String?

    public init(targetUserName: String? = nil, message: String? = nil) {
        self.targetUserName = targetUserName
        self.message = message
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case targetUserName
        case message
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(targetUserName, forKey: .targetUserName)
        try container.encodeIfPresent(message, forKey: .message)
    }



}
