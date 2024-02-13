//
// ProblemDetails.swift
//
// Generated by Konfig
// https://konfigthis.com
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProblemDetails: Codable, JSONEncodable, Hashable {

    public var title: String?
    public var type: String?
    public var status: Int?
    public var detail: String?
    public var instance: String?

    public init(title: String? = nil, type: String? = nil, status: Int? = nil, detail: String? = nil, instance: String? = nil) {
        self.title = title
        self.type = type
        self.status = status
        self.detail = detail
        self.instance = instance
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case type
        case status
        case detail
        case instance
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(title, forKey: .title)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(detail, forKey: .detail)
        try container.encodeIfPresent(instance, forKey: .instance)
    }
}

