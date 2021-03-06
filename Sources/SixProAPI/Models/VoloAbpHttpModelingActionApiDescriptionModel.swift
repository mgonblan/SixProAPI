//
// VoloAbpHttpModelingActionApiDescriptionModel.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct VoloAbpHttpModelingActionApiDescriptionModel: Codable, Hashable {

    public var uniqueName: String?
    public var name: String?
    public var httpMethod: String?
    public var url: String?
    public var supportedVersions: [String]?
    public var parametersOnMethod: [VoloAbpHttpModelingMethodParameterApiDescriptionModel]?
    public var parameters: [VoloAbpHttpModelingParameterApiDescriptionModel]?
    public var returnValue: VoloAbpHttpModelingReturnValueApiDescriptionModel?

    public init(uniqueName: String? = nil, name: String? = nil, httpMethod: String? = nil, url: String? = nil, supportedVersions: [String]? = nil, parametersOnMethod: [VoloAbpHttpModelingMethodParameterApiDescriptionModel]? = nil, parameters: [VoloAbpHttpModelingParameterApiDescriptionModel]? = nil, returnValue: VoloAbpHttpModelingReturnValueApiDescriptionModel? = nil) {
        self.uniqueName = uniqueName
        self.name = name
        self.httpMethod = httpMethod
        self.url = url
        self.supportedVersions = supportedVersions
        self.parametersOnMethod = parametersOnMethod
        self.parameters = parameters
        self.returnValue = returnValue
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case uniqueName
        case name
        case httpMethod
        case url
        case supportedVersions
        case parametersOnMethod
        case parameters
        case returnValue
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(uniqueName, forKey: .uniqueName)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(httpMethod, forKey: .httpMethod)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(supportedVersions, forKey: .supportedVersions)
        try container.encodeIfPresent(parametersOnMethod, forKey: .parametersOnMethod)
        try container.encodeIfPresent(parameters, forKey: .parameters)
        try container.encodeIfPresent(returnValue, forKey: .returnValue)
    }



}
