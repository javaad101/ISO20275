import Foundation
import Testing
@testable import ISO20275

@Suite("ISO 20275 Entity Legal Forms Library Tests")
struct ISO20275Tests {
    @Test("Bundled GLEIF v1.6 CSV loads all 4,002 entries without loss")
    func loadsBundledDataset() throws {
        let entries = try EntityLegalFormsCodeListISO20275.bundled()
        #expect(entries.count == 4002)

        // Check enum cardinalities match the v1.6 GLEIF specification
        #expect(ELFCode.allCases.count == 3599)
        #expect(Country.allCases.count == 129)
        #expect(CountryCodeISO3166_1.allCases.count == 129)
        #expect(CountryCodeISO3166_2.allCases.count == 71)
        #expect(LanguageCodeISO639_1.allCases.count == 48)
        #expect(ELFStatus.allCases.count == 2)

        // Every enum case in the library should appear at least once in the bundled dataset
        let seenCodes = Set(entries.map(\.code))
        let seenCountries = Set(entries.compactMap(\.countryOfFormation))
        let seenCC1 = Set(entries.compactMap(\.countryCodeISO3166_1))
        let seenCC2 = Set(entries.compactMap(\.countrySubdivisionCode))
        let seenLangs = Set(entries.compactMap(\.languageCode))
        let seenStatuses = Set(entries.map(\.status))

        #expect(seenCodes.count == ELFCode.allCases.count)
        #expect(seenCountries.count == Country.allCases.count)
        #expect(seenCC1.count == CountryCodeISO3166_1.allCases.count)
        #expect(seenCC2.count == CountryCodeISO3166_2.allCases.count)
        #expect(seenLangs.count == LanguageCodeISO639_1.allCases.count)
        #expect(seenStatuses.count == ELFStatus.allCases.count)
    }

    @Test("Special reserved GLEIF codes 8888 and 9999 parse with nil country and language")
    func reservedGLEIFCodes() {
        let catalog = ELFCatalog.shared

        let pending = catalog[.pendingNewCodeRequest]
        #expect(pending.count == 1)
        #expect(pending[0].code == ._8888)
        #expect(pending[0].countryOfFormation == nil)
        #expect(pending[0].countryCodeISO3166_1 == nil)
        #expect(pending[0].languageCode == nil)
        #expect(pending[0].status == .active)
        #expect(pending[0].reason?.contains("GLEIF") == true)

        let noSeparateForm = catalog[.noSeparateLegalForm]
        #expect(noSeparateForm.count == 1)
        #expect(noSeparateForm[0].code == ._9999)
        #expect(noSeparateForm[0].countryOfFormation == nil)
    }

    @Test("Country, ISO 3166-1, ISO 3166-2, and ISO 639-1 cross-references are consistent")
    func isoMetadataCrossReferences() {
        for country in Country.allCases {
            #expect(country.iso3166_1Code.country == country)
        }
        for code in CountryCodeISO3166_1.allCases {
            #expect(code.country.iso3166_1Code == code)
            #expect(CountryCodeISO3166_1(code: code.rawValue.lowercased()) == code)
        }
        for subdiv in CountryCodeISO3166_2.allCases {
            #expect(subdiv.rawValue.hasPrefix(subdiv.countryCode.rawValue + "-"))
            #expect(!subdiv.canonicalJurisdictionName.isEmpty)
        }
        // Check keyword-escaped codes work cleanly
        #expect(CountryCodeISO3166_1.is.country == .iceland)
        #expect(CountryCodeISO3166_1.in.country == .india)
        #expect(CountryCodeISO3166_1.do.country == .dominicanRepublic)
        #expect(LanguageCodeISO639_1.is.englishName == "Icelandic")
        #expect(LanguageCodeISO639_1.el.englishName == "Greek")
        #expect(LanguageCodeISO639_1.pt.englishName == "Portuguese")
    }

    @Test("Catalog lookups for jurisdictions, non-Latin scripts, and abbreviations")
    func catalogQueries() {
        let catalog = ELFCatalog.shared
        #expect(catalog.uniqueCodeCount == 3599)

        // Antigua and Barbuda CDOV
        let cdov = catalog[.cdov]
        #expect(cdov.count == 1)
        #expect(cdov[0].countryOfFormation == .antiguaAndBarbuda)
        #expect(cdov[0].countryCodeISO3166_1 == .ag)
        #expect(cdov[0].entityLegalFormLocalName == "International Business Corporation")
        #expect(cdov[0].languageCode == .en)

        // Armenia non-Latin script & transliteration
        let armenian = catalog["2prk"]
        #expect(armenian.count == 1)
        #expect(armenian[0].countryOfFormation == .armenia)
        #expect(armenian[0].languageCode == .hy)
        #expect(armenian[0].abbreviationsLocalLanguage == "ԼԸ")
        #expect(armenian[0].abbreviationsTransliterated == "LĒ")

        // Delaware subdivision lookup
        let delaware = catalog.entries(for: .usDE, activeOnly: true)
        #expect(!delaware.isEmpty)
        #expect(delaware.allSatisfy { $0.countryOfFormation == .unitedStatesOfAmerica })
        #expect(delaware.allSatisfy { $0.countrySubdivisionCode == .usDE })

        // Abbreviation lookup (e.g., GmbH)
        let gmbh = catalog.entries(matchingAbbreviation: "gmbh", activeOnly: true)
        #expect(!gmbh.isEmpty)

        // Search scoped to US
        let usLLC = catalog.search("Limited Liability Company", countryCode: .us, activeOnly: true)
        #expect(!usLLC.isEmpty)
    }

    @Test("Full dataset Codable JSON round-trip preserves all 4,002 entries")
    func codableRoundTrip() throws {
        let original = try EntityLegalFormsCodeListISO20275.bundled()
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .iso8601
        let data = try encoder.encode(original)

        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        let decoded = try decoder.decode([EntityLegalFormsCodeListISO20275].self, from: data)

        #expect(decoded == original)
    }

    @Test("RFC 4180 CSV parser handles BOM, escaped quotes, embedded commas, and multiline cells")
    func rfc4180ParserEdgeCases() throws {
        let raw = "\u{FEFF}\"Col A\",\"Col B\",\"Col C\"\r\n\"Hello, \"\"World\"\"\",\"Line 1\nLine 2\",\"Plain\"\r\n"
        let rows = try RFC4180CSVParser.parse(raw)
        #expect(rows.count == 2)
        #expect(rows[0] == ["Col A", "Col B", "Col C"])
        #expect(rows[1] == ["Hello, \"World\"", "Line 1\nLine 2", "Plain"])

        #expect(throws: ISO20275Error.unterminatedQuotedField(line: 1)) {
            try RFC4180CSVParser.parse("\"unclosed")
        }
    }
}
