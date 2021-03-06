//
// SixLinkedPublicationsPublication.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct SixLinkedPublicationsPublication: Codable, Hashable {

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
    public var company: SixLinkedCompaniesCompany?
    public var budget: SixLinkedBudgetsBudget?
    public var category: SixLinkedCategoriesCategory?
    public var tenantId: UUID?
    public var companyId: UUID?
    public var title: String?
    public var slug: String?
    public var description: String?
    public var content: String?
    public var publicationStartDate: Date?
    public var publicationEndDate: Date?
    public var projectStartDate: Date?
    public var projectEndDate: Date?
    public var isAnonymous: Bool?
    public var categoryId: UUID?
    public var status: SixLinkedPublicationsStatus?
    public var visibilityType: SixLinkedPublicationsVisibilityType?
    public var publicationType: SixLinkedPublicationsPublicationType?
    public var requirements: [SixLinkedRequirementsRequirement]?
    public var contacts: [SixLinkedContactsContact]?
    public var proposals: [SixLinkedProposalsProposal]?
    public var projects: [SixLinkedProjectsProject]?
    public var addressId: UUID?
    public var address: SixLinkedAddressesAddress?
    public var budgetId: UUID?

    public init(id: UUID? = nil, extraProperties: [String: AnyCodable]? = nil, concurrencyStamp: String? = nil, creationTime: Date? = nil, creatorId: UUID? = nil, lastModificationTime: Date? = nil, lastModifierId: UUID? = nil, isDeleted: Bool? = nil, deleterId: UUID? = nil, deletionTime: Date? = nil, company: SixLinkedCompaniesCompany? = nil, budget: SixLinkedBudgetsBudget? = nil, category: SixLinkedCategoriesCategory? = nil, tenantId: UUID? = nil, companyId: UUID? = nil, title: String? = nil, slug: String? = nil, description: String? = nil, content: String? = nil, publicationStartDate: Date? = nil, publicationEndDate: Date? = nil, projectStartDate: Date? = nil, projectEndDate: Date? = nil, isAnonymous: Bool? = nil, categoryId: UUID? = nil, status: SixLinkedPublicationsStatus? = nil, visibilityType: SixLinkedPublicationsVisibilityType? = nil, publicationType: SixLinkedPublicationsPublicationType? = nil, requirements: [SixLinkedRequirementsRequirement]? = nil, contacts: [SixLinkedContactsContact]? = nil, proposals: [SixLinkedProposalsProposal]? = nil, projects: [SixLinkedProjectsProject]? = nil, addressId: UUID? = nil, address: SixLinkedAddressesAddress? = nil, budgetId: UUID? = nil) {
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
        self.company = company
        self.budget = budget
        self.category = category
        self.tenantId = tenantId
        self.companyId = companyId
        self.title = title
        self.slug = slug
        self.description = description
        self.content = content
        self.publicationStartDate = publicationStartDate
        self.publicationEndDate = publicationEndDate
        self.projectStartDate = projectStartDate
        self.projectEndDate = projectEndDate
        self.isAnonymous = isAnonymous
        self.categoryId = categoryId
        self.status = status
        self.visibilityType = visibilityType
        self.publicationType = publicationType
        self.requirements = requirements
        self.contacts = contacts
        self.proposals = proposals
        self.projects = projects
        self.addressId = addressId
        self.address = address
        self.budgetId = budgetId
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
        case company
        case budget
        case category
        case tenantId
        case companyId
        case title
        case slug
        case description
        case content
        case publicationStartDate
        case publicationEndDate
        case projectStartDate
        case projectEndDate
        case isAnonymous
        case categoryId
        case status
        case visibilityType
        case publicationType
        case requirements
        case contacts
        case proposals
        case projects
        case addressId
        case address
        case budgetId
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
        try container.encodeIfPresent(company, forKey: .company)
        try container.encodeIfPresent(budget, forKey: .budget)
        try container.encodeIfPresent(category, forKey: .category)
        try container.encodeIfPresent(tenantId, forKey: .tenantId)
        try container.encodeIfPresent(companyId, forKey: .companyId)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(slug, forKey: .slug)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(content, forKey: .content)
        try container.encodeIfPresent(publicationStartDate, forKey: .publicationStartDate)
        try container.encodeIfPresent(publicationEndDate, forKey: .publicationEndDate)
        try container.encodeIfPresent(projectStartDate, forKey: .projectStartDate)
        try container.encodeIfPresent(projectEndDate, forKey: .projectEndDate)
        try container.encodeIfPresent(isAnonymous, forKey: .isAnonymous)
        try container.encodeIfPresent(categoryId, forKey: .categoryId)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(visibilityType, forKey: .visibilityType)
        try container.encodeIfPresent(publicationType, forKey: .publicationType)
        try container.encodeIfPresent(requirements, forKey: .requirements)
        try container.encodeIfPresent(contacts, forKey: .contacts)
        try container.encodeIfPresent(proposals, forKey: .proposals)
        try container.encodeIfPresent(projects, forKey: .projects)
        try container.encodeIfPresent(addressId, forKey: .addressId)
        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(budgetId, forKey: .budgetId)
    }



}
