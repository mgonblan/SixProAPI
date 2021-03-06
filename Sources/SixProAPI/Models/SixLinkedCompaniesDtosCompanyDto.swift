//
// SixLinkedCompaniesDtosCompanyDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct SixLinkedCompaniesDtosCompanyDto: Codable, Hashable {

    public var id: UUID?
    public var creationTime: Date?
    public var creatorId: UUID?
    public var lastModificationTime: Date?
    public var lastModifierId: UUID?
    public var isDeleted: Bool?
    public var deleterId: UUID?
    public var deletionTime: Date?
    public var name: String?
    public var shortBio: String?
    public var description: String?
    public var companyLogoId: UUID?
    public var companyBannerId: UUID?
    public var ssn: String?
    public var taxNumber: String?
    public var isVerified: Bool?
    public var address: SixLinkedAddressesDtosSimpleAddressDto?
    public var addresses: [SixLinkedAddressesDtosCompanyAddressDto]?
    public var categories: [SixLinkedCompaniesDtosSimpleCategoryDto]?
    public var publications: [SixLinkedPublicationsDtosPublicationDto]?

    public init(id: UUID? = nil, creationTime: Date? = nil, creatorId: UUID? = nil, lastModificationTime: Date? = nil, lastModifierId: UUID? = nil, isDeleted: Bool? = nil, deleterId: UUID? = nil, deletionTime: Date? = nil, name: String? = nil, shortBio: String? = nil, description: String? = nil, companyLogoId: UUID? = nil, companyBannerId: UUID? = nil, ssn: String? = nil, taxNumber: String? = nil, isVerified: Bool? = nil, address: SixLinkedAddressesDtosSimpleAddressDto? = nil, addresses: [SixLinkedAddressesDtosCompanyAddressDto]? = nil, categories: [SixLinkedCompaniesDtosSimpleCategoryDto]? = nil, publications: [SixLinkedPublicationsDtosPublicationDto]? = nil) {
        self.id = id
        self.creationTime = creationTime
        self.creatorId = creatorId
        self.lastModificationTime = lastModificationTime
        self.lastModifierId = lastModifierId
        self.isDeleted = isDeleted
        self.deleterId = deleterId
        self.deletionTime = deletionTime
        self.name = name
        self.shortBio = shortBio
        self.description = description
        self.companyLogoId = companyLogoId
        self.companyBannerId = companyBannerId
        self.ssn = ssn
        self.taxNumber = taxNumber
        self.isVerified = isVerified
        self.address = address
        self.addresses = addresses
        self.categories = categories
        self.publications = publications
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case creationTime
        case creatorId
        case lastModificationTime
        case lastModifierId
        case isDeleted
        case deleterId
        case deletionTime
        case name
        case shortBio
        case description
        case companyLogoId
        case companyBannerId
        case ssn
        case taxNumber
        case isVerified
        case address
        case addresses
        case categories
        case publications
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(creationTime, forKey: .creationTime)
        try container.encodeIfPresent(creatorId, forKey: .creatorId)
        try container.encodeIfPresent(lastModificationTime, forKey: .lastModificationTime)
        try container.encodeIfPresent(lastModifierId, forKey: .lastModifierId)
        try container.encodeIfPresent(isDeleted, forKey: .isDeleted)
        try container.encodeIfPresent(deleterId, forKey: .deleterId)
        try container.encodeIfPresent(deletionTime, forKey: .deletionTime)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(shortBio, forKey: .shortBio)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(companyLogoId, forKey: .companyLogoId)
        try container.encodeIfPresent(companyBannerId, forKey: .companyBannerId)
        try container.encodeIfPresent(ssn, forKey: .ssn)
        try container.encodeIfPresent(taxNumber, forKey: .taxNumber)
        try container.encodeIfPresent(isVerified, forKey: .isVerified)
        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(addresses, forKey: .addresses)
        try container.encodeIfPresent(categories, forKey: .categories)
        try container.encodeIfPresent(publications, forKey: .publications)
    }



}
