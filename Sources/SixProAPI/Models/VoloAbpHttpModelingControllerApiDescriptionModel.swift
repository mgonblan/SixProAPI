//
// VoloAbpHttpModelingControllerApiDescriptionModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct VoloAbpHttpModelingControllerApiDescriptionModel: Codable, Hashable {

    public var controllerName: String?
    public var type: String?
    public var interfaces: [VoloAbpHttpModelingControllerInterfaceApiDescriptionModel]?
    public var actions: [String: VoloAbpHttpModelingActionApiDescriptionModel]?

    public init(controllerName: String? = nil, type: String? = nil, interfaces: [VoloAbpHttpModelingControllerInterfaceApiDescriptionModel]? = nil, actions: [String: VoloAbpHttpModelingActionApiDescriptionModel]? = nil) {
        self.controllerName = controllerName
        self.type = type
        self.interfaces = interfaces
        self.actions = actions
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case controllerName
        case type
        case interfaces
        case actions
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(controllerName, forKey: .controllerName)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(interfaces, forKey: .interfaces)
        try container.encodeIfPresent(actions, forKey: .actions)
    }



}