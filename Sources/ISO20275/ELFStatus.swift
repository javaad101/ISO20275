import Foundation

/// Lifecycle status of an ISO 20275 Entity Legal Form code (`ACTV` or `INAC`).
public enum ELFStatus: String, CaseIterable, Codable, Hashable, Sendable, CustomStringConvertible {
    /// Active entity legal form code (`ACTV`).
    case active = "ACTV"
    /// Deprecated / inactive entity legal form code (`INAC`).
    case inactive = "INAC"

    public var description: String { rawValue }
}
