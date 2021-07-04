//
// SixLinkedCompaniesCompany.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct SixLinkedCompaniesCompany: Codable, Hashable {

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
    public var name: String?
    public var shortBio: String?
    public var description: String?
    public var companyLogoId: UUID?
    public var companyBannerId: UUID?
    public var ssn: String?
    public var slug: String?
    public var taxNumber: String?
    public var isVerified: Bool?
    public var isPublic: Bool?
    public var addresses: [SixLinkedAddressesCompanyAddress]?
    public var categories: [SixLinkedCategoriesCategory]?
    public var publications: [SixLinkedPublicationsPublication]?
    public var contacts: [SixLinkedContactsContact]?
    public var contactFor: [SixLinkedContactsContact]?
    public var invitations: [SixLinkedInvitationsInvitation]?
    public var projects: [SixLinkedProjectsProject]?

    public init(id: UUID? = nil, extraProperties: [String: AnyCodable]? = nil, concurrencyStamp: String? = nil, creationTime: Date? = nil, creatorId: UUID? = nil, lastModificationTime: Date? = nil, lastModifierId: UUID? = nil, isDeleted: Bool? = nil, deleterId: UUID? = nil, deletionTime: Date? = nil, tenantId: UUID? = nil, name: String? = nil, shortBio: String? = nil, description: String? = nil, companyLogoId: UUID? = nil, companyBannerId: UUID? = nil, ssn: String? = nil, slug: String? = nil, taxNumber: String? = nil, isVerified: Bool? = nil, isPublic: Bool? = nil, addresses: [SixLinkedAddressesCompanyAddress]? = nil, categories: [SixLinkedCategoriesCategory]? = nil, publications: [SixLinkedPublicationsPublication]? = nil, contacts: [SixLinkedContactsContact]? = nil, contactFor: [SixLinkedContactsContact]? = nil, invitations: [SixLinkedInvitationsInvitation]? = nil, projects: [SixLinkedProjectsProject]? = nil) {
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
        self.name = name
        self.shortBio = shortBio
        self.description = description
        self.companyLogoId = companyLogoId
        self.companyBannerId = companyBannerId
        self.ssn = ssn
        self.slug = slug
        self.taxNumber = taxNumber
        self.isVerified = isVerified
        self.isPublic = isPublic
        self.addresses = addresses
        self.categories = categories
        self.publications = publications
        self.contacts = contacts
        self.contactFor = contactFor
        self.invitations = invitations
        self.projects = projects
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
        case name
        case shortBio
        case description
        case companyLogoId
        case companyBannerId
        case ssn
        case slug
        case taxNumber
        case isVerified
        case isPublic
        case addresses
        case categories
        case publications
        case contacts
        case contactFor
        case invitations
        case projects
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
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(shortBio, forKey: .shortBio)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(companyLogoId, forKey: .companyLogoId)
        try container.encodeIfPresent(companyBannerId, forKey: .companyBannerId)
        try container.encodeIfPresent(ssn, forKey: .ssn)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(taxNumber, forKey: .taxNumber)
        try container.encodeIfPresent(isVerified, forKey: .isVerified)
        try container.encodeIfPresent(isPublic, forKey: .isPublic)
        try container.encodeIfPresent(addresses, forKey: .addresses)
        try container.encodeIfPresent(categories, forKey: .categories)
        try container.encodeIfPresent(publications, forKey: .publications)
        try container.encodeIfPresent(contacts, forKey: .contacts)
        try container.encodeIfPresent(contactFor, forKey: .contactFor)
        try container.encodeIfPresent(invitations, forKey: .invitations)
        try container.encodeIfPresent(projects, forKey: .projects)
    }



}