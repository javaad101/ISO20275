import Foundation

/// Errors thrown when loading or parsing an ISO 20275 Entity Legal Forms (ELF) dataset.
public enum ISO20275Error: Error, LocalizedError, Equatable, Sendable {
    /// The bundled GLEIF ELF Code List CSV resource could not be located in `Bundle.module`.
    case missingBundledResource(String)
    /// Raw CSV bytes could not be decoded as UTF-8 text.
    case invalidUTF8Encoding
    /// The CSV file contains no header row.
    case emptyCSV
    /// An unclosed double-quoted string was encountered on the given 1-based line.
    case unterminatedQuotedField(line: Int)
    /// Unexpected character immediately following a closing quote on the given 1-based line.
    case unexpectedCharacterAfterQuote(line: Int, character: Character)
    /// Required CSV header column is missing from the first row.
    case missingRequiredColumn(String)
    /// A data row does not match the header column count.
    case malformedRowColumnCount(row: Int, expected: Int, actual: Int)
    /// A required field in a CSV row was blank.
    case missingRequiredValue(row: Int, column: String)
    /// A typed code or enum value in a CSV row did not match a known ISO standard value.
    case unrecognizedCode(row: Int, column: String, value: String)
    /// A date string could not be parsed as an ISO 8601 calendar date (`YYYY-MM-DD`).
    case invalidISO8601Date(row: Int, column: String, value: String)

    public var errorDescription: String? {
        switch self {
        case .missingBundledResource(let name):
            return "Bundled ISO 20275 resource '\(name)' was not found in Bundle.module."
        case .invalidUTF8Encoding:
            return "CSV data is not valid UTF-8."
        case .emptyCSV:
            return "CSV input is empty and contains no header row."
        case .unterminatedQuotedField(let line):
            return "Unterminated quoted field starting on line \(line)."
        case .unexpectedCharacterAfterQuote(let line, let char):
            return "Unexpected character '\(char)' after closing quote on line \(line)."
        case .missingRequiredColumn(let column):
            return "Missing required ISO 20275 CSV column '\(column)'."
        case .malformedRowColumnCount(let row, let expected, let actual):
            return "Row \(row) has \(actual) columns, expected \(expected)."
        case .missingRequiredValue(let row, let column):
            return "Row \(row) is missing a required value for '\(column)'."
        case .unrecognizedCode(let row, let column, let value):
            return "Row \(row) contains unrecognized value '\(value)' for '\(column)'."
        case .invalidISO8601Date(let row, let column, let value):
            return "Row \(row) contains invalid ISO 8601 date '\(value)' for '\(column)' (expected YYYY-MM-DD)."
        }
    }
}
