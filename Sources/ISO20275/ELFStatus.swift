import Foundation

/// Lifecycle status of an ISO 20275 Entity Legal Form code (e.g., `ACTV` or `INAC`).
public struct ELFStatus: RawRepresentable, Hashable, Codable, Sendable, CustomStringConvertible {
    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .uppercased()
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.singleValueContainer()
        self.init(rawValue: try container.decode(String.self))
    }

    public func encode(to encoder: any Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(rawValue)
    }

    public var description: String { rawValue }

    /// Active entity legal form code (`"ACTV"`).
    public static let active = ELFStatus(rawValue: "ACTV")

    /// Deprecated / inactive entity legal form code (`"INAC"`).
    public static let inactive = ELFStatus(rawValue: "INAC")

    /// All status values defined in GLEIF ELF Code List v1.6.
    public static let allKnown: [ELFStatus] = [.active, .inactive]
}
