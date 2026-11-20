import Foundation

/// High-performance, in-memory indexed catalog over ISO 20275 Entity Legal Forms (ELF) entries.
///
/// Provides O(1) lookups by ``ELFCode``, ``Country``, ``CountryCodeISO3166_1``,
/// ``CountryCodeISO3166_2``, and ``LanguageCodeISO639_1``, as well as country prefix
/// completion and diacritic- and punctuation-insensitive entity search.
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

    /// All distinct countries present in this catalog, sorted alphabetically by name.
    public let countries: [Country]

    private let byCode: [ELFCode: [EntityLegalFormsCodeListISO20275]]
    private let byCountry: [Country: [EntityLegalFormsCodeListISO20275]]
    private let byCountryCode: [CountryCodeISO3166_1: [EntityLegalFormsCodeListISO20275]]
    private let bySubdivisionCode: [CountryCodeISO3166_2: [EntityLegalFormsCodeListISO20275]]
    private let byLanguageCode: [LanguageCodeISO639_1: [EntityLegalFormsCodeListISO20275]]
    private let byFoldedAbbreviation: [String: [EntityLegalFormsCodeListISO20275]]

    /// Builds an indexed catalog from an array of ``EntityLegalFormsCodeListISO20275`` entries.
    public init(entries: [EntityLegalFormsCodeListISO20275]) {
        self.entries = entries

        var byCode: [ELFCode: [EntityLegalFormsCodeListISO20275]] = [:]
        var byCountry: [Country: [EntityLegalFormsCodeListISO20275]] = [:]
        var byCountryCode: [CountryCodeISO3166_1: [EntityLegalFormsCodeListISO20275]] = [:]
        var bySubdivisionCode: [CountryCodeISO3166_2: [EntityLegalFormsCodeListISO20275]] = [:]
        var byLanguageCode: [LanguageCodeISO639_1: [EntityLegalFormsCodeListISO20275]] = [:]
        var byFoldedAbbreviation: [String: [EntityLegalFormsCodeListISO20275]] = [:]

        byCode.reserveCapacity(entries.count)

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

            var seenCompact: Set<String> = []
            for abbr in entry.localAbbreviationsList + entry.transliteratedAbbreviationsList {
                let key = Self.foldCompact(abbr)
                if !key.isEmpty, seenCompact.insert(key).inserted {
                    byFoldedAbbreviation[key, default: []].append(entry)
                }
            }
        }

        self.byCode = byCode
        self.byCountry = byCountry
        self.byCountryCode = byCountryCode
        self.bySubdivisionCode = bySubdivisionCode
        self.byLanguageCode = byLanguageCode
        self.byFoldedAbbreviation = byFoldedAbbreviation
        self.countries = byCountry.keys.sorted { $0.rawValue < $1.rawValue }
    }

    /// Loads an indexed catalog from any GLEIF-compatible CSV file URL.
    public static func load(from url: URL) throws -> ELFCatalog {
        try ELFCatalog(entries: EntityLegalFormsCodeListISO20275.load(from: url))
    }

    /// Distinct ``ELFCode`` values present in this catalog.
    public var uniqueCodes: Set<ELFCode> {
        Set(byCode.keys)
    }

    /// Number of distinct ``ELFCode`` values present in this catalog.
    public var uniqueCodeCount: Int {
        byCode.count
    }

    /// Returns all language/jurisdiction rows associated with `code`.
    public subscript(_ code: ELFCode) -> [EntityLegalFormsCodeListISO20275] {
        byCode[code] ?? []
    }

    /// Case-insensitive lookup by 4-character ELF code string (e.g., `"2HBR"` or `"CDOV"`).
    public subscript(_ rawCode: String) -> [EntityLegalFormsCodeListISO20275] {
        byCode[ELFCode(rawValue: rawCode)] ?? []
    }

    /// Returns countries matching a typed prefix or ISO 3166-1 code (e.g., `"Ger"` -> `[.germany]`),
    /// prioritizing prefix matches before substring matches.
    public func matchingCountries(_ query: String) -> [Country] {
        let folded = Self.foldTokens(query)
        guard !folded.isEmpty else { return countries }

        var prefixMatches: [Country] = []
        var codeMatches: [Country] = []
        var substringMatches: [Country] = []

        for country in countries {
            let foldedName = Self.foldTokens(country.rawValue)
            if foldedName.hasPrefix(folded) {
                prefixMatches.append(country)
            } else if country.knownISO3166_1Code?.rawValue.lowercased() == folded {
                codeMatches.append(country)
            } else if foldedName.contains(folded) {
                substringMatches.append(country)
            }
        }
        return prefixMatches + codeMatches + substringMatches
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

    /// Returns all entries for a given ISO 3166-2 subdivision code (e.g., `.usDE` or `.caBC`).
    public func entries(for subdivision: CountryCodeISO3166_2, activeOnly: Bool = false) -> [EntityLegalFormsCodeListISO20275] {
        let list = bySubdivisionCode[subdivision] ?? []
        return activeOnly ? list.filter(\.isActive) : list
    }

    /// Returns all entries recorded in a given ISO 639-1 language code.
    public func entries(for language: LanguageCodeISO639_1, activeOnly: Bool = false) -> [EntityLegalFormsCodeListISO20275] {
        let list = byLanguageCode[language] ?? []
        return activeOnly ? list.filter(\.isActive) : list
    }

    /// Case-, diacritic-, and punctuation-insensitive lookup by entity legal form abbreviation
    /// (e.g., `"GmBH"`, `"G.m.b.H."`, `"S.A."`).
    public func entries(matchingAbbreviation abbreviation: String, activeOnly: Bool = false) -> [EntityLegalFormsCodeListISO20275] {
        let key = Self.foldCompact(abbreviation)
        let list = byFoldedAbbreviation[key] ?? []
        return activeOnly ? list.filter(\.isActive) : list
    }

    /// Case- and diacritic-insensitive search across ELF code, local/transliterated legal form names,
    /// abbreviations, country name, and jurisdiction name.
    public func search(
        _ query: String,
        countryCode: CountryCodeISO3166_1? = nil,
        activeOnly: Bool = false
    ) -> [EntityLegalFormsCodeListISO20275] {
        let foldedQuery = Self.foldTokens(query)
        let compactQuery = Self.foldCompact(query)
        guard !compactQuery.isEmpty else { return [] }

        let pool: [EntityLegalFormsCodeListISO20275]
        if let countryCode {
            pool = entries(for: countryCode, activeOnly: activeOnly)
        } else {
            pool = activeOnly ? entries.filter(\.isActive) : entries
        }

        return pool.filter { entry in
            entry.code.rawValue.lowercased().contains(compactQuery)
                || (entry.entityLegalFormLocalName.map { Self.foldTokens($0).contains(foldedQuery) } ?? false)
                || (entry.entityLegalFormTransliteratedName.map { Self.foldTokens($0).contains(foldedQuery) } ?? false)
                || (entry.abbreviationsLocalLanguage.map { Self.foldCompact($0).contains(compactQuery) } ?? false)
                || (entry.abbreviationsTransliterated.map { Self.foldCompact($0).contains(compactQuery) } ?? false)
                || (entry.countryOfFormation.map { Self.foldTokens($0.rawValue).contains(foldedQuery) } ?? false)
                || (entry.jurisdictionOfFormation.map { Self.foldTokens($0).contains(foldedQuery) } ?? false)
        }
    }

    // MARK: - Normalization Helpers

    static func foldTokens(_ input: String) -> String {
        let prefolded = replaceSpecialLatinCharacters(in: input)
            .folding(options: [.diacriticInsensitive, .caseInsensitive, .widthInsensitive], locale: Locale(identifier: "en_US_POSIX"))

        var tokens: [String] = []
        var current = ""
        for scalar in prefolded.unicodeScalars {
            if CharacterSet.alphanumerics.contains(scalar) {
                current.unicodeScalars.append(scalar)
            } else if !current.isEmpty {
                tokens.append(current)
                current = ""
            }
        }
        if !current.isEmpty {
            tokens.append(current)
        }
        return tokens.joined(separator: " ")
    }

    static func foldCompact(_ input: String) -> String {
        foldTokens(input).replacingOccurrences(of: " ", with: "")
    }

    private static func replaceSpecialLatinCharacters(in string: String) -> String {
        var out = ""
        out.reserveCapacity(string.count)
        for ch in string {
            switch ch {
            case "ł", "Ł": out.append("l")
            case "ø", "Ø": out.append("o")
            case "ı", "İ": out.append("i")
            case "ß", "ẞ": out.append("ss")
            case "æ", "Æ": out.append("ae")
            case "œ", "Œ": out.append("oe")
            case "đ", "Đ", "ð", "Ð": out.append("d")
            case "þ", "Þ": out.append("th")
            default: out.append(ch)
            }
        }
        return out
    }
}
