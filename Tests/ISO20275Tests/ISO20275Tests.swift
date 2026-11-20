import Foundation
import Testing
@testable import ISO20275

@Suite("ISO 20275 Entity Legal Forms Library Tests")
struct ISO20275Tests {
    @Test("Bundled GLEIF v1.6 CSV loads all 4,002 entries without loss")
    func loadsBundledDataset() throws {
        let entries = try EntityLegalFormsCodeListISO20275.bundled()
        #expect(entries.count == 4002)

        #expect(Country.allKnown.count == 129)
        #expect(CountryCodeISO3166_1.allKnown.count == 129)
        #expect(CountryCodeISO3166_2.allKnown.count == 71)
        #expect(LanguageCodeISO639_1.allKnown.count == 48)
        #expect(ELFStatus.allKnown.count == 2)

        let seenCodes = Set(entries.map(\.code))
        let seenCountries = Set(entries.compactMap(\.countryOfFormation))
        let seenCC1 = Set(entries.compactMap(\.countryCodeISO3166_1))
        let seenCC2 = Set(entries.compactMap(\.countrySubdivisionCode))
        let seenLangs = Set(entries.compactMap(\.languageCode))
        let seenStatuses = Set(entries.map(\.status))

        #expect(seenCodes.count == 3599)
        #expect(seenCodes.allSatisfy { $0.isStandardFormat })
        #expect(seenCountries == Set(Country.allKnown))
        #expect(seenCC1 == Set(CountryCodeISO3166_1.allKnown))
        #expect(seenCC2 == Set(CountryCodeISO3166_2.allKnown))
        #expect(seenLangs == Set(LanguageCodeISO639_1.allKnown))
        #expect(seenStatuses == Set(ELFStatus.allKnown))
    }

    @Test("Forward compatibility with future GLEIF codes, countries, subdivisions, and languages")
    func forwardCompatibilityWithFutureCSVRows() throws {
        let futureCSV = """
        "ELF Code","Country of formation","Country Code (ISO 3166-1)","Jurisdiction of formation","Country sub-division code (ISO 3166-2)","Entity Legal Form name Local name","Language","Language Code (ISO 639-1)","Entity Legal Form name Transliterated name (per ISO 01-140-10)","Abbreviations Local language","Abbreviations transliterated","Date created YYYY-MM-DD (ISO 8601)","ELF Status ACTV/INAC","Modification","Modification date YYYY-MM-DD (ISO 8601)","Reason"
        "NEW1","Andorra","AD","Andorra la Vella","AD-07","Societat Limitada","Catalan","ca","Societat Limitada","S.L.","","2027-01-15","ACTV","","",""
        """
        let parsed = try EntityLegalFormsCodeListISO20275.load(csvString: futureCSV)
        #expect(parsed.count == 1)
        #expect(parsed[0].code == "NEW1")
        #expect(parsed[0].countryOfFormation?.rawValue == "Andorra")
        #expect(parsed[0].countryCodeISO3166_1?.rawValue == "AD")
        #expect(parsed[0].countrySubdivisionCode?.rawValue == "AD-07")
        #expect(parsed[0].countrySubdivisionCode?.countryCode == "AD")
        #expect(parsed[0].languageCode?.rawValue == "ca")
        #expect(parsed[0].status == .active)
    }

    @Test("Special reserved GLEIF codes 8888 and 9999 parse with nil country and language")
    func reservedGLEIFCodes() {
        let catalog = ELFCatalog.shared

        let pending = catalog[.pendingNewCodeRequest]
        #expect(pending.count == 1)
        #expect(pending[0].code == "8888")
        #expect(pending[0].countryOfFormation == nil)
        #expect(pending[0].countryCodeISO3166_1 == nil)
        #expect(pending[0].languageCode == nil)
        #expect(pending[0].status == .active)

        let noSeparateForm = catalog[.noSeparateLegalForm]
        #expect(noSeparateForm.count == 1)
        #expect(noSeparateForm[0].code == "9999")
        #expect(noSeparateForm[0].countryOfFormation == nil)
    }

    @Test("Static constants and metadata cross-references")
    func isoMetadataCrossReferences() {
        for country in Country.allKnown {
            #expect(country.knownISO3166_1Code?.knownCountry == country)
        }
        for code in CountryCodeISO3166_1.allKnown {
            #expect(code.knownCountry?.knownISO3166_1Code == code)
            #expect(CountryCodeISO3166_1(rawValue: code.rawValue.lowercased()) == code)
        }
        for subdiv in CountryCodeISO3166_2.allKnown {
            #expect(subdiv.rawValue.hasPrefix(subdiv.countryCode.rawValue + "-"))
            #expect(subdiv.knownJurisdictionName?.isEmpty == false)
        }
        #expect(CountryCodeISO3166_1.is.knownCountry == .iceland)
        #expect(CountryCodeISO3166_1.in.knownCountry == .india)
        #expect(CountryCodeISO3166_1.do.knownCountry == .dominicanRepublic)
        #expect(LanguageCodeISO639_1.is.knownEnglishName == "Icelandic")
        #expect(LanguageCodeISO639_1.el.knownEnglishName == "Greek")
        #expect(LanguageCodeISO639_1.pt.knownEnglishName == "Portuguese")
    }

    @Test("Catalog lookups for jurisdictions, prefix completion, non-Latin scripts, and abbreviations")
    func catalogQueries() {
        let catalog = ELFCatalog.shared
        #expect(catalog.uniqueCodeCount == 3599)

        #expect(catalog.matchingCountries("Ger").first == .germany)

        let cdov = catalog["CDOV"]
        #expect(cdov.count == 1)
        #expect(cdov[0].countryOfFormation == .antiguaAndBarbuda)
        #expect(cdov[0].countryCodeISO3166_1 == .ag)
        #expect(cdov[0].entityLegalFormLocalName == "International Business Corporation")
        #expect(cdov[0].languageCode == .en)

        let armenian = catalog["2prk"]
        #expect(armenian.count == 1)
        #expect(armenian[0].countryOfFormation == .armenia)
        #expect(armenian[0].languageCode == .hy)
        #expect(armenian[0].abbreviationsLocalLanguage == "ԼԸ")
        #expect(armenian[0].abbreviationsTransliterated == "LĒ")

        let delaware = catalog.entries(for: .usDE, activeOnly: true)
        #expect(!delaware.isEmpty)
        #expect(delaware.allSatisfy { $0.countryOfFormation == .unitedStatesOfAmerica })

        // Case- and punctuation-insensitive abbreviation matching ("GmBH", "G.m.b.H.")
        let gmbh = catalog.entries(matchingAbbreviation: "GmBH", activeOnly: true)
        #expect(gmbh.contains { $0.countryCodeISO3166_1 == .de && $0.code == "2HBR" })

        let gmbhDotted = catalog.entries(matchingAbbreviation: "G.m.b.H.", activeOnly: true)
        #expect(gmbhDotted == gmbh)
    }

    @Test("Full dataset Codable JSON round-trip encodes codes as flat strings and preserves all 4,002 entries")
    func codableRoundTrip() throws {
        let original = try EntityLegalFormsCodeListISO20275.bundled()
        let encoder = JSONEncoder()
        encoder.dateEncodingStrategy = .iso8601
        let data = try encoder.encode(original)

        let singleCodeJSON = try String(data: encoder.encode(ELFCode("2hbr")), encoding: .utf8)
        #expect(singleCodeJSON == "\"2HBR\"")

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
