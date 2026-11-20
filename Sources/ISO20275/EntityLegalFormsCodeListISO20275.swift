import Foundation

/// A single entry in the ISO 20275 Entity Legal Forms (ELF) Code List published by GLEIF.
///
/// Note that multi-lingual jurisdictions (such as Switzerland, Belgium, and Canada) publish
/// multiple rows sharing the same ``ELFCode``—one per official language or subdivision.
public struct EntityLegalFormsCodeListISO20275: Codable, Hashable, Sendable, Identifiable {
    /// Bundled GLEIF ELF Code List version shipped with this package.
    public static let bundledVersion = "1.6"
    /// Publication date of the bundled GLEIF ELF Code List (`2026-02-19`).
    public static let bundledReleaseDate = "2026-02-19"
    /// Resource filename inside `Bundle.module`.
    public static let bundledResourceFilename = "2026-02-19-elf-code-list-v1.6.csv"

    /// Four-character alphanumeric ISO 20275 Entity Legal Form code.
    public let code: ELFCode
    /// Country of formation (`nil` only on special GLEIF codes such as `8888` and `9999`).
    public let countryOfFormation: Country?
    /// ISO 3166-1 alpha-2 country code (`nil` only on special GLEIF codes such as `8888` and `9999`).
    public let countryCodeISO3166_1: CountryCodeISO3166_1?
    /// Sub-national jurisdiction of formation (e.g., `"Delaware"`, `"British Columbia"`), if applicable.
    public let jurisdictionOfFormation: String?
    /// ISO 3166-2 country subdivision code (e.g., `.usDE`, `.caBC`), if applicable.
    public let countrySubdivisionCode: CountryCodeISO3166_2?
    /// Entity legal form name in the local language and script.
    public let entityLegalFormLocalName: String?
    /// Language name as recorded in the GLEIF list (e.g., `"English"`, `"Armenian"`).
    public let language: String?
    /// ISO 639-1 alpha-2 language code (e.g., `.en`, `.hy`).
    public let languageCode: LanguageCodeISO639_1?
    /// Entity legal form name transliterated into Latin script per ISO 01-140-10.
    public let entityLegalFormTransliteratedName: String?
    /// Semicolon-separated local-language abbreviations as recorded by GLEIF (e.g., `"GmbH; Ges.m.b.H."`).
    public let abbreviationsLocalLanguage: String?
    /// Semicolon-separated transliterated abbreviations as recorded by GLEIF.
    public let abbreviationsTransliterated: String?
    /// UTC calendar date (`YYYY-MM-DD`) when this ELF entry was created.
    public let dateCreated: Date
    /// Lifecycle status (`ACTV` or `INAC`).
    public let status: ELFStatus
    /// Modification description provided by GLEIF, if modified since creation.
    public let modification: String?
    /// UTC calendar date (`YYYY-MM-DD`) of the latest modification, if any.
    public let modificationDate: Date?
    /// Explanation or notes recorded by GLEIF for the entry or modification.
    public let reason: String?

    public init(
        code: ELFCode,
        countryOfFormation: Country?,
        countryCodeISO3166_1: CountryCodeISO3166_1?,
        jurisdictionOfFormation: String?,
        countrySubdivisionCode: CountryCodeISO3166_2?,
        entityLegalFormLocalName: String?,
        language: String?,
        languageCode: LanguageCodeISO639_1?,
        entityLegalFormTransliteratedName: String?,
        abbreviationsLocalLanguage: String?,
        abbreviationsTransliterated: String?,
        dateCreated: Date,
        status: ELFStatus,
        modification: String?,
        modificationDate: Date?,
        reason: String?
    ) {
        self.code = code
        self.countryOfFormation = countryOfFormation
        self.countryCodeISO3166_1 = countryCodeISO3166_1
        self.jurisdictionOfFormation = jurisdictionOfFormation
        self.countrySubdivisionCode = countrySubdivisionCode
        self.entityLegalFormLocalName = entityLegalFormLocalName
        self.language = language
        self.languageCode = languageCode
        self.entityLegalFormTransliteratedName = entityLegalFormTransliteratedName
        self.abbreviationsLocalLanguage = abbreviationsLocalLanguage
        self.abbreviationsTransliterated = abbreviationsTransliterated
        self.dateCreated = dateCreated
        self.status = status
        self.modification = modification
        self.modificationDate = modificationDate
        self.reason = reason
    }

    /// Stable composite identifier distinguishing multi-lingual variants of the same ``ELFCode``.
    public var id: String {
        [
            code.rawValue,
            countryCodeISO3166_1?.rawValue ?? "",
            countrySubdivisionCode?.rawValue ?? "",
            languageCode?.rawValue ?? "",
            entityLegalFormLocalName ?? "",
        ].joined(separator: "|")
    }

    /// Whether this ELF entry currently has active (`ACTV`) status.
    public var isActive: Bool {
        status == .active
    }

    /// Parsed array of individual local-language abbreviations (split on `;`).
    public var localAbbreviationsList: [String] {
        Self.splitAbbreviations(abbreviationsLocalLanguage)
    }

    /// Parsed array of individual transliterated abbreviations (split on `;`).
    public var transliteratedAbbreviationsList: [String] {
        Self.splitAbbreviations(abbreviationsTransliterated)
    }

    private static func splitAbbreviations(_ raw: String?) -> [String] {
        guard let raw else { return [] }
        return raw
            .split(separator: ";")
            .map { $0.trimmingCharacters(in: .whitespacesAndNewlines) }
            .filter { !$0.isEmpty }
    }
}

// MARK: - CSV Column Names & Loading

extension EntityLegalFormsCodeListISO20275 {
    /// Canonical CSV column headers defined by GLEIF for the ISO 20275 ELF Code List.
    public enum CSVColumn: String, CaseIterable, Sendable {
        case elfCode = "ELF Code"
        case countryOfFormation = "Country of formation"
        case countryCode = "Country Code (ISO 3166-1)"
        case jurisdictionOfFormation = "Jurisdiction of formation"
        case countrySubdivisionCode = "Country sub-division code (ISO 3166-2)"
        case localName = "Entity Legal Form name Local name"
        case language = "Language"
        case languageCode = "Language Code (ISO 639-1)"
        case transliteratedName = "Entity Legal Form name Transliterated name (per ISO 01-140-10)"
        case abbreviationsLocal = "Abbreviations Local language"
        case abbreviationsTransliterated = "Abbreviations transliterated"
        case dateCreated = "Date created YYYY-MM-DD (ISO 8601)"
        case status = "ELF Status ACTV/INAC"
        case modification = "Modification"
        case modificationDate = "Modification date YYYY-MM-DD (ISO 8601)"
        case reason = "Reason"
    }

    /// Loads all entries from the GLEIF v1.6 CSV resource bundled with the `ISO20275` package.
    public static func bundled() throws -> [EntityLegalFormsCodeListISO20275] {
        guard let url = Bundle.module.url(
            forResource: "2026-02-19-elf-code-list-v1.6",
            withExtension: "csv"
        ) else {
            throw ISO20275Error.missingBundledResource(bundledResourceFilename)
        }
        return try load(from: url)
    }

    /// Loads ISO 20275 ELF entries from any GLEIF-compatible CSV file URL, including future releases.
    public static func load(from url: URL) throws -> [EntityLegalFormsCodeListISO20275] {
        let data = try Data(contentsOf: url)
        return try load(csvData: data)
    }

    /// Loads ISO 20275 ELF entries from raw UTF-8 CSV data.
    public static func load(csvData: Data) throws -> [EntityLegalFormsCodeListISO20275] {
        guard let string = String(data: csvData, encoding: .utf8) else {
            throw ISO20275Error.invalidUTF8Encoding
        }
        return try load(csvString: string)
    }

    /// Loads ISO 20275 ELF entries from a CSV string.
    public static func load(csvString: String) throws -> [EntityLegalFormsCodeListISO20275] {
        let rows = try RFC4180CSVParser.parse(csvString)
        guard let headerRow = rows.first else {
            throw ISO20275Error.emptyCSV
        }

        var headerIndices: [String: Int] = [:]
        headerIndices.reserveCapacity(headerRow.count)
        for (idx, rawHeader) in headerRow.enumerated() {
            let trimmed = rawHeader.trimmingCharacters(in: .whitespacesAndNewlines)
            headerIndices[trimmed] = idx
        }

        func index(of column: CSVColumn) throws -> Int {
            guard let idx = headerIndices[column.rawValue] else {
                throw ISO20275Error.missingRequiredColumn(column.rawValue)
            }
            return idx
        }

        let iCode = try index(of: .elfCode)
        let iCountry = try index(of: .countryOfFormation)
        let iCountryCode = try index(of: .countryCode)
        let iJurisdiction = try index(of: .jurisdictionOfFormation)
        let iSubdiv = try index(of: .countrySubdivisionCode)
        let iLocalName = try index(of: .localName)
        let iLanguage = try index(of: .language)
        let iLanguageCode = try index(of: .languageCode)
        let iTranslitName = try index(of: .transliteratedName)
        let iAbbrLocal = try index(of: .abbreviationsLocal)
        let iAbbrTranslit = try index(of: .abbreviationsTransliterated)
        let iDateCreated = try index(of: .dateCreated)
        let iStatus = try index(of: .status)
        let iModification = try index(of: .modification)
        let iModificationDate = try index(of: .modificationDate)
        let iReason = try index(of: .reason)

        let expectedCount = headerRow.count
        var entries: [EntityLegalFormsCodeListISO20275] = []
        entries.reserveCapacity(max(0, rows.count - 1))

        for (offset, row) in rows.dropFirst().enumerated() {
            if row.count == 1 && row[0].trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                continue
            }
            let rowNumber = offset + 2
            guard row.count == expectedCount else {
                throw ISO20275Error.malformedRowColumnCount(
                    row: rowNumber,
                    expected: expectedCount,
                    actual: row.count
                )
            }

            func trimmed(_ colIndex: Int) -> String? {
                let s = row[colIndex].trimmingCharacters(in: .whitespacesAndNewlines)
                return s.isEmpty ? nil : s
            }

            guard let rawCode = trimmed(iCode) else {
                throw ISO20275Error.missingRequiredValue(row: rowNumber, column: CSVColumn.elfCode.rawValue)
            }

            guard let rawCreated = trimmed(iDateCreated) else {
                throw ISO20275Error.missingRequiredValue(row: rowNumber, column: CSVColumn.dateCreated.rawValue)
            }
            guard let dateCreated = ISO8601CalendarDate.parse(rawCreated) else {
                throw ISO20275Error.invalidISO8601Date(
                    row: rowNumber,
                    column: CSVColumn.dateCreated.rawValue,
                    value: rawCreated
                )
            }

            guard let rawStatus = trimmed(iStatus) else {
                throw ISO20275Error.missingRequiredValue(row: rowNumber, column: CSVColumn.status.rawValue)
            }

            let modificationDate: Date? = try trimmed(iModificationDate).map { raw in
                guard let parsed = ISO8601CalendarDate.parse(raw) else {
                    throw ISO20275Error.invalidISO8601Date(
                        row: rowNumber,
                        column: CSVColumn.modificationDate.rawValue,
                        value: raw
                    )
                }
                return parsed
            }

            entries.append(
                EntityLegalFormsCodeListISO20275(
                    code: ELFCode(rawValue: rawCode),
                    countryOfFormation: trimmed(iCountry).map(Country.init(rawValue:)),
                    countryCodeISO3166_1: trimmed(iCountryCode).map(CountryCodeISO3166_1.init(rawValue:)),
                    jurisdictionOfFormation: trimmed(iJurisdiction),
                    countrySubdivisionCode: trimmed(iSubdiv).map(CountryCodeISO3166_2.init(rawValue:)),
                    entityLegalFormLocalName: trimmed(iLocalName),
                    language: trimmed(iLanguage),
                    languageCode: trimmed(iLanguageCode).map(LanguageCodeISO639_1.init(rawValue:)),
                    entityLegalFormTransliteratedName: trimmed(iTranslitName),
                    abbreviationsLocalLanguage: trimmed(iAbbrLocal),
                    abbreviationsTransliterated: trimmed(iAbbrTranslit),
                    dateCreated: dateCreated,
                    status: ELFStatus(rawValue: rawStatus),
                    modification: trimmed(iModification),
                    modificationDate: modificationDate,
                    reason: trimmed(iReason)
                )
            )
        }

        return entries
    }
}
