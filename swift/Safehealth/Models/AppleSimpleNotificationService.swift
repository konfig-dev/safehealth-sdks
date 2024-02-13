//
// AppleSimpleNotificationService.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AppleSimpleNotificationService: Codable, JSONEncodable, Hashable {

    public var apnsVoip: ApplePushNotificationServiceVoIp?

    public init(apnsVoip: ApplePushNotificationServiceVoIp? = nil) {
        self.apnsVoip = apnsVoip
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case apnsVoip
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(apnsVoip, forKey: .apnsVoip)
    }
}

