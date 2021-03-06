//
// VoloAbpAccountWebAreasAccountControllersModelsLoginResultType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public enum VoloAbpAccountWebAreasAccountControllersModelsLoginResultType: String, Codable, CaseIterable {
    case success = "Success"
    case invalidUserNameOrPassword = "InvalidUserNameOrPassword"
    case notAllowed = "NotAllowed"
    case lockedOut = "LockedOut"
    case requiresTwoFactor = "RequiresTwoFactor"
}
