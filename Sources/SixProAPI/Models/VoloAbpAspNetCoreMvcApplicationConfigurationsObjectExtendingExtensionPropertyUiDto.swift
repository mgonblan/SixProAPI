//
// VoloAbpAspNetCoreMvcApplicationConfigurationsObjectExtendingExtensionPropertyUiDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct VoloAbpAspNetCoreMvcApplicationConfigurationsObjectExtendingExtensionPropertyUiDto: Codable, Hashable {

    public var onTable: VoloAbpAspNetCoreMvcApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto?
    public var onCreateForm: VoloAbpAspNetCoreMvcApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto?
    public var onEditForm: VoloAbpAspNetCoreMvcApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto?
    public var lookup: VoloAbpAspNetCoreMvcApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDto?

    public init(onTable: VoloAbpAspNetCoreMvcApplicationConfigurationsObjectExtendingExtensionPropertyUiTableDto? = nil, onCreateForm: VoloAbpAspNetCoreMvcApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto? = nil, onEditForm: VoloAbpAspNetCoreMvcApplicationConfigurationsObjectExtendingExtensionPropertyUiFormDto? = nil, lookup: VoloAbpAspNetCoreMvcApplicationConfigurationsObjectExtendingExtensionPropertyUiLookupDto? = nil) {
        self.onTable = onTable
        self.onCreateForm = onCreateForm
        self.onEditForm = onEditForm
        self.lookup = lookup
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case onTable
        case onCreateForm
        case onEditForm
        case lookup
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(onTable, forKey: .onTable)
        try container.encodeIfPresent(onCreateForm, forKey: .onCreateForm)
        try container.encodeIfPresent(onEditForm, forKey: .onEditForm)
        try container.encodeIfPresent(lookup, forKey: .lookup)
    }



}