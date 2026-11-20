import Foundation

/// Four-character alphanumeric ISO 20275 Entity Legal Form (ELF) code assigned by GLEIF.
///
/// Modeled as an extensible `RawRepresentable` value type (following Apple's `Locale.Region`
/// and `UTType` API pattern) so newly assigned codes in future GLEIF releases decode
/// and index without requiring library recompilation.
public struct ELFCode: RawRepresentable, Hashable, Codable, Sendable, Comparable, CustomStringConvertible, ExpressibleByStringLiteral {
    /// Canonical uppercased code string (e.g., `"2HBR"`, `"6QQB"`, `"8888"`).
    public let rawValue: String

    /// Creates a normalized (trimmed and uppercased) ISO 20275 ELF code.
    public init(rawValue: String) {
        self.rawValue = rawValue
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .uppercased()
    }

    public init(_ rawValue: String) {
        self.init(rawValue: rawValue)
    }

    /// Creates a normalized ISO 20275 ELF code from a string literal.
    public init(stringLiteral value: StringLiteralType) {
        self.init(rawValue: value)
    }

    public init(from decoder: any Decoder) throws {
        let container = try decoder.singleValueContainer()
        self.init(rawValue: try container.decode(String.self))
    }

    public func encode(to encoder: any Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(rawValue)
    }

    public static func < (lhs: ELFCode, rhs: ELFCode) -> Bool {
        lhs.rawValue < rhs.rawValue
    }

    public var description: String { rawValue }

    /// Whether `rawValue` conforms to the ISO 20275 four-character `[A-Z0-9]{4}` syntax.
    public var isStandardFormat: Bool {
        let utf8 = rawValue.utf8
        guard utf8.count == 4 else { return false }
        return utf8.allSatisfy { byte in
            (byte >= UInt8(ascii: "0") && byte <= UInt8(ascii: "9"))
                || (byte >= UInt8(ascii: "A") && byte <= UInt8(ascii: "Z"))
        }
    }

    /// Reserved GLEIF code (`"8888"`) used when requesting a new ELF code for a legal form not yet on the list.
    public static let pendingNewCodeRequest = ELFCode(rawValue: "8888")

    /// Reserved GLEIF code (`"9999"`) used for LEIs of entities that have no separate legal form.
    public static let noSeparateLegalForm = ELFCode(rawValue: "9999")
}
