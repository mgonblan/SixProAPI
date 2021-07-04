//
// SixLinkedInvitationsDtosCreateNewInvitationDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct SixLinkedInvitationsDtosCreateNewInvitationDto: Codable, Hashable {

    public var email: String?
    public var publicationId: UUID?
    public var invitationType: SixLinkedInvitationsInvitationType?

    public init(email: String? = nil, publicationId: UUID? = nil, invitationType: SixLinkedInvitationsInvitationType? = nil) {
        self.email = email
        self.publicationId = publicationId
        self.invitationType = invitationType
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case publicationId
        case invitationType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(publicationId, forKey: .publicationId)
        try container.encodeIfPresent(invitationType, forKey: .invitationType)
    }



}
