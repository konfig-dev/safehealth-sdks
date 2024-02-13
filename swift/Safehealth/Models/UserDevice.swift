//
// UserDevice.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Unfortunately we can&#39;t derive this class from the BaseDto since legacy Id is a string. */
public struct UserDevice: Codable, JSONEncodable, Hashable {

    public var id: String?
    public var createdAt: Date?
    public var updatedAt: Date?
    public var deviceId: String?
    public var appVersion: String?
    public var deviceModel: String?
    public var deviceToken: String?
    public var deviceType: String?
    public var idfaId: String?
    public var isLoggedIn: Bool?
    public var osVersion: String?
    public var voipToken: String?
    public var userId: String?
    public var tenantId: String?
    public var userUUID: String?
    public var nationalHealthId: String?
    public var language: String?

    public init(id: String? = nil, createdAt: Date? = nil, updatedAt: Date? = nil, deviceId: String? = nil, appVersion: String? = nil, deviceModel: String? = nil, deviceToken: String? = nil, deviceType: String? = nil, idfaId: String? = nil, isLoggedIn: Bool? = nil, osVersion: String? = nil, voipToken: String? = nil, userId: String? = nil, tenantId: String? = nil, userUUID: String? = nil, nationalHealthId: String? = nil, language: String? = nil) {
        self.id = id
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deviceId = deviceId
        self.appVersion = appVersion
        self.deviceModel = deviceModel
        self.deviceToken = deviceToken
        self.deviceType = deviceType
        self.idfaId = idfaId
        self.isLoggedIn = isLoggedIn
        self.osVersion = osVersion
        self.voipToken = voipToken
        self.userId = userId
        self.tenantId = tenantId
        self.userUUID = userUUID
        self.nationalHealthId = nationalHealthId
        self.language = language
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case createdAt
        case updatedAt
        case deviceId
        case appVersion
        case deviceModel
        case deviceToken
        case deviceType
        case idfaId
        case isLoggedIn
        case osVersion
        case voipToken
        case userId
        case tenantId
        case userUUID
        case nationalHealthId
        case language
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(createdAt, forKey: .createdAt)
        try container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        try container.encodeIfPresent(deviceId, forKey: .deviceId)
        try container.encodeIfPresent(appVersion, forKey: .appVersion)
        try container.encodeIfPresent(deviceModel, forKey: .deviceModel)
        try container.encodeIfPresent(deviceToken, forKey: .deviceToken)
        try container.encodeIfPresent(deviceType, forKey: .deviceType)
        try container.encodeIfPresent(idfaId, forKey: .idfaId)
        try container.encodeIfPresent(isLoggedIn, forKey: .isLoggedIn)
        try container.encodeIfPresent(osVersion, forKey: .osVersion)
        try container.encodeIfPresent(voipToken, forKey: .voipToken)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(tenantId, forKey: .tenantId)
        try container.encodeIfPresent(userUUID, forKey: .userUUID)
        try container.encodeIfPresent(nationalHealthId, forKey: .nationalHealthId)
        try container.encodeIfPresent(language, forKey: .language)
    }
}

