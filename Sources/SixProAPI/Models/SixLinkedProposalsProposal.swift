//
// SixLinkedProposalsProposal.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct SixLinkedProposalsProposal: Codable, Hashable {

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
    public var userId: UUID?
    public var companyId: UUID?
    public var publicationId: UUID?
    public var publication: SixLinkedPublicationsPublication?
    public var quantity: Double?
    public var description: String?
    public var status: SixLinkedProposalsProposalStatus?
    public var requirementFulfillments: [SixLinkedProposalsRequirementFulfillment]?
    public var proposedUsers: [SixLinkedProposalsProposedUser]?

    public init(id: UUID? = nil, extraProperties: [String: AnyCodable]? = nil, concurrencyStamp: String? = nil, creationTime: Date? = nil, creatorId: UUID? = nil, lastModificationTime: Date? = nil, lastModifierId: UUID? = nil, isDeleted: Bool? = nil, deleterId: UUID? = nil, deletionTime: Date? = nil, userId: UUID? = nil, companyId: UUID? = nil, publicationId: UUID? = nil, publication: SixLinkedPublicationsPublication? = nil, quantity: Double? = nil, description: String? = nil, status: SixLinkedProposalsProposalStatus? = nil, requirementFulfillments: [SixLinkedProposalsRequirementFulfillment]? = nil, proposedUsers: [SixLinkedProposalsProposedUser]? = nil) {
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
        self.userId = userId
        self.companyId = companyId
        self.publicationId = publicationId
        self.publication = publication
        self.quantity = quantity
        self.description = description
        self.status = status
        self.requirementFulfillments = requirementFulfillments
        self.proposedUsers = proposedUsers
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
        case userId
        case companyId
        case publicationId
        case publication
        case quantity
        case description
        case status
        case requirementFulfillments
        case proposedUsers
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
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(companyId, forKey: .companyId)
        try container.encodeIfPresent(publicationId, forKey: .publicationId)
        try container.encodeIfPresent(publication, forKey: .publication)
        try container.encodeIfPresent(quantity, forKey: .quantity)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(requirementFulfillments, forKey: .requirementFulfillments)
        try container.encodeIfPresent(proposedUsers, forKey: .proposedUsers)
    }



}