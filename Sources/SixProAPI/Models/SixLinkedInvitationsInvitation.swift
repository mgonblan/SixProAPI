//
// SixLinkedInvitationsInvitation.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct SixLinkedInvitationsInvitation: Codable, Hashable {

    public var id: UUID?
    public var extraProperties: [String: AnyCodable]?
    public var concurrencyStamp: String?
    public var creationTime: Date?
    public var creatorId: UUID?
    public var lastModificationTime: Date?
    public var lastModifierId: UUID?
    public var isDeleted: Bool?
    public var deleterId: UUID?
    public var deletionTime: Date?
    public var tenantId: UUID?
    public var email: String?
    public var isUsed: Bool?
    public var companyId: UUID?
    public var company: SixLinkedCompaniesCompany?
    public var publicationId: UUID?
    public var userId: UUID?
    public var invitationType: SixLinkedInvitationsInvitationType?

    public init(id: UUID? = nil, extraProperties: [String: AnyCodable]? = nil, concurrencyStamp: String? = nil, creationTime: Date? = nil, creatorId: UUID? = nil, lastModificationTime: Date? = nil, lastModifierId: UUID? = nil, isDeleted: Bool? = nil, deleterId: UUID? = nil, deletionTime: Date? = nil, tenantId: UUID? = nil, email: String? = nil, isUsed: Bool? = nil, companyId: UUID? = nil, company: SixLinkedCompaniesCompany? = nil, publicationId: UUID? = nil, userId: UUID? = nil, invitationType: SixLinkedInvitationsInvitationType? = nil) {
        self.id = id
        self.extraProperties = extraProperties
        self.concurrencyStamp = concurrencyStamp
        self.creationTime = creationTime
        self.creatorId = creatorId
        self.lastModificationTime = lastModificationTime
        self.lastModifierId = lastModifierId
        self.isDeleted = isDeleted
        self.deleterId = deleterId
        self.deletionTime = deletionTime
        self.tenantId = tenantId
        self.email = email
        self.isUsed = isUsed
        self.companyId = companyId
        self.company = company
        self.publicationId = publicationId
        self.userId = userId
        self.invitationType = invitationType
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case extraProperties
        case concurrencyStamp
        case creationTime
        case creatorId
        case lastModificationTime
        case lastModifierId
        case isDeleted
        case deleterId
        case deletionTime
        case tenantId
        case email
        case isUsed
        case companyId
        case company
        case publicationId
        case userId
        case invitationType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(extraProperties, forKey: .extraProperties)
        try container.encodeIfPresent(concurrencyStamp, forKey: .concurrencyStamp)
        try container.encodeIfPresent(creationTime, forKey: .creationTime)
        try container.encodeIfPresent(creatorId, forKey: .creatorId)
        try container.encodeIfPresent(lastModificationTime, forKey: .lastModificationTime)
        try container.encodeIfPresent(lastModifierId, forKey: .lastModifierId)
        try container.encodeIfPresent(isDeleted, forKey: .isDeleted)
        try container.encodeIfPresent(deleterId, forKey: .deleterId)
        try container.encodeIfPresent(deletionTime, forKey: .deletionTime)
        try container.encodeIfPresent(tenantId, forKey: .tenantId)
        try container.encodeIfPresent(email, forKey: .email)
        try container.encodeIfPresent(isUsed, forKey: .isUsed)
        try container.encodeIfPresent(companyId, forKey: .companyId)
        try container.encodeIfPresent(company, forKey: .company)
        try container.encodeIfPresent(publicationId, forKey: .publicationId)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(invitationType, forKey: .invitationType)
    }



}