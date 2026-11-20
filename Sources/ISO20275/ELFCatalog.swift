import Foundation

/// High-performance, in-memory indexed catalog over ISO 20275 Entity Legal Forms (ELF) entries.
///
/// Provides O(1) lookups by ``ELFCode``, ``Country``, ``CountryCodeISO3166_1``,
/// ``CountryCodeISO3166_2``, ``LanguageCodeISO639_1``, and ``ELFStatus``, as well as
/// name and abbreviation search.
public struct ELFCatalog: Sendable {
    /// Shared catalog initialized from the bundled GLEIF v1.6 dataset.
    public static let shared: ELFCatalog = {
        do {
            return try ELFCatalog(entries: EntityLegalFormsCodeListISO20275.bundled())
        } catch {
            preconditionFailure("Failed to load bundled ISO 20275 dataset: \(error)")
        }
    }()

    /// All entries in CSV order (4,002 rows in v1.6).
    public let entries: [EntityLegalFormsCodeListISO20275]

    private let byCode: [ELFCode: [EntityLegalFormsCodeListISO20275]]
    private let byCountry: [Country: [EntityLegalFormsCodeListISO20275]]
    private let byCountryCode: [CountryCodeISO3166_1: [EntityLegalFormsCodeListISO20275]]
    private let bySubdivisionCode: [CountryCodeISO3166_2: [EntityLegalFormsCodeListISO20275]]
    private let byLanguageCode: [LanguageCodeISO639_1: [EntityLegalFormsCodeListISO20275]]
    private let byAbbreviationUppercased: [String: [EntityLegalFormsCodeListISO20275]]

    /// Builds an indexed catalog from an array of ``EntityLegalFormsCodeListISO20275`` entries.
    public init(entries: [EntityLegalFormsCodeListISO20275]) {
        self.entries = entries

        var byCode: [ELFCode: [EntityLegalFormsCodeListISO20275]] = [:]
        var byCountry: [Country: [EntityLegalFormsCodeListISO20275]] = [:]
        var byCountryCode: [CountryCodeISO3166_1: [EntityLegalFormsCodeListISO20275]] = [:]
        var bySubdivisionCode: [CountryCodeISO3166_2: [EntityLegalFormsCodeListISO20275]] = [:]
        var byLanguageCode: [LanguageCodeISO639_1: [EntityLegalFormsCodeListISO20275]] = [:]
        var byAbbreviation: [String: [EntityLegalFormsCodeListISO20275]] = [:]

        byCode.reserveCapacity(ELFCode.allCases.count)

        for entry in entries {
            byCode[entry.code, default: []].append(entry)
            if let country = entry.countryOfFormation {
                byCountry[country, default: []].append(entry)
            }
            if let cc = entry.countryCodeISO3166_1 {
                byCountryCode[cc, default: []].append(entry)
            }
            if let sub = entry.countrySubdivisionCode {
                bySubdivisionCode[sub, default: []].append(entry)
            }
            if let lang = entry.languageCode {
                byLanguageCode[lang, default: []].append(entry)
            }

            var seenAbbreviations: Set<String> = []
            for abbr in entry.localAbbreviationsList + entry.transliteratedAbbreviationsList {
                let normalized = abbr.uppercased()
                if seenAbbreviations.insert(normalized).inserted {
                    byAbbreviation[normalized, default: []].append(entry)
                }
            }
        }

        self.byCode = byCode
        self.byCountry = byCountry
        self.byCountryCode = byCountryCode
        self.bySubdivisionCode = bySubdivisionCode
        self.byLanguageCode = byLanguageCode
        self.byAbbreviationUppercased = byAbbreviation
    }

    /// Loads an indexed catalog from a CSV file URL.
    public static func load(from url: URL) throws -> ELFCatalog {
        try ELFCatalog(entries: EntityLegalFormsCodeListISO20275.load(from: url))
    }

    /// Distinct ``ELFCode`` values present in this catalog.
    public var uniqueCodeCount: Int {
        byCode.count
    }

    /// Returns all language/jurisdiction rows associated with `code`.
    public subscript(_ code: ELFCode) -> [EntityLegalFormsCodeListISO20275] {
        byCode[code] ?? []
    }

    /// Case-insensitive lookup by 4-character ELF code string (e.g., `"CDOV"` or `"8888"`).
    public subscript(_ rawCode: String) -> [EntityLegalFormsCodeListISO20275] {
        guard let code = ELFCode(code: rawCode) else { return [] }
        return byCode[code] ?? []
    }

    /// Returns all entries for a given ``Country``, optionally filtered to active entries only.
    public func entries(for country: Country, activeOnly: Bool = false) -> [EntityLegalFormsCodeListISO20275] {
        let list = byCountry[country] ?? []
        return activeOnly ? list.filter(\.isActive) : list
    }

    /// Returns all entries for a given ISO 3166-1 alpha-2 country code, optionally filtered to active entries only.
    public func entries(for countryCode: CountryCodeISO3166_1, activeOnly: Bool = false) -> [EntityLegalFormsCodeListISO20275] {
        let list = byCountryCode[countryCode] ?? []
        return activeOnly ? list.filter(\.isActive) : list
    }

    /// Returns all entries for a given ISO 3166-2 subdivision code (e.g., `.usDE` for Delaware).
    public func entries(for subdivision: CountryCodeISO3166_2, activeOnly: Bool = false) -> [EntityLegalFormsCodeListISO20275] {
        let list = bySubdivisionCode[subdivision] ?? []
        return activeOnly ? list.filter(\.isActive) : list
    }

    /// Returns all entries recorded in a given ISO 639-1 language code.
    public func entries(for language: LanguageCodeISO639_1, activeOnly: Bool = false) -> [EntityLegalFormsCodeListISO20275] {
        let list = byLanguageCode[language] ?? []
        return activeOnly ? list.filter(\.isActive) : list
    }

    /// Exact case-insensitive lookup by entity legal form abbreviation (e.g., `"GmbH"`, `"LLC"`, `"S.A."`).
    public func entries(matchingAbbreviation abbreviation: String, activeOnly: Bool = false) -> [EntityLegalFormsCodeListISO20275] {
        let key = abbreviation.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        let list = byAbbreviationUppercased[key] ?? []
        return activeOnly ? list.filter(\.isActive) : list
    }

    /// Case- and diacritic-insensitive search across ELF code, local/transliterated legal form names,
    /// abbreviations, country name, and jurisdiction name.
    public func search(
        _ query: String,
        countryCode: CountryCodeISO3166_1? = nil,
        activeOnly: Bool = false
    ) -> [EntityLegalFormsCodeListISO20275] {
        let trimmed = query.trimmingCharacters(in: .whitespacesAndNewlines)
        guard !trimmed.isEmpty else { return [] }

        let pool: [EntityLegalFormsCodeListISO20275]
        if let countryCode {
            pool = entries(for: countryCode, activeOnly: activeOnly)
        } else {
            pool = activeOnly ? entries.filter(\.isActive) : entries
        }

        return pool.filter { entry in
            entry.code.rawValue.localizedStandardContains(trimmed)
                || (entry.entityLegalFormLocalName?.localizedStandardContains(trimmed) ?? false)
                || (entry.entityLegalFormTransliteratedName?.localizedStandardContains(trimmed) ?? false)
                || (entry.abbreviationsLocalLanguage?.localizedStandardContains(trimmed) ?? false)
                || (entry.abbreviationsTransliterated?.localizedStandardContains(trimmed) ?? false)
                || (entry.countryOfFormation?.rawValue.localizedStandardContains(trimmed) ?? false)
                || (entry.jurisdictionOfFormation?.localizedStandardContains(trimmed) ?? false)
        }
    }
}
