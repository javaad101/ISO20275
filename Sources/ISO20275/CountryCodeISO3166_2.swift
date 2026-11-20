import Foundation

/// ISO 3166-2 country subdivision code (e.g., `"US-DE"`, `"CA-NS"`, `"GB-SCT"`).
///
/// Modeled as an extensible `RawRepresentable` value type with `static let` constants so newly
/// added sub-national jurisdictions in future GLEIF releases load seamlessly.
public struct CountryCodeISO3166_2: RawRepresentable, Hashable, Codable, Sendable, CustomStringConvertible, ExpressibleByStringLiteral {
    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .uppercased()
    }

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

    public var description: String { rawValue }

    /// Parent ISO 3166-1 alpha-2 country code extracted from the prefix before `"-"`.
    public var countryCode: CountryCodeISO3166_1 {
        let prefix = rawValue.split(separator: "-", maxSplits: 1).first.map(String.init) ?? rawValue
        return CountryCodeISO3166_1(rawValue: prefix)
    }

    /// Canonical English subdivision / jurisdiction name, if known in the v1.6 registry.
    public var knownJurisdictionName: String? {
        Self.jurisdictionNames[self]
    }

    /// Abu Dhabi (`AE-AZ`).
    public static let aeAZ = CountryCodeISO3166_2(rawValue: "AE-AZ")
    /// Dubai (`AE-DU`).
    public static let aeDU = CountryCodeISO3166_2(rawValue: "AE-DU")
    /// Ras Al Khaimah (`AE-RK`).
    public static let aeRK = CountryCodeISO3166_2(rawValue: "AE-RK")
    /// Flemish Region (`BE-VLG`).
    public static let beVLG = CountryCodeISO3166_2(rawValue: "BE-VLG")
    /// Alberta (`CA-AB`).
    public static let caAB = CountryCodeISO3166_2(rawValue: "CA-AB")
    /// British Columbia (`CA-BC`).
    public static let caBC = CountryCodeISO3166_2(rawValue: "CA-BC")
    /// Manitoba (`CA-MB`).
    public static let caMB = CountryCodeISO3166_2(rawValue: "CA-MB")
    /// New Brunswick (`CA-NB`).
    public static let caNB = CountryCodeISO3166_2(rawValue: "CA-NB")
    /// Newfoundland and Labrador (`CA-NL`).
    public static let caNL = CountryCodeISO3166_2(rawValue: "CA-NL")
    /// Nova Scotia (`CA-NS`).
    public static let caNS = CountryCodeISO3166_2(rawValue: "CA-NS")
    /// Northwest Territories (`CA-NT`).
    public static let caNT = CountryCodeISO3166_2(rawValue: "CA-NT")
    /// Ontario (`CA-ON`).
    public static let caON = CountryCodeISO3166_2(rawValue: "CA-ON")
    /// Prince Edward Island (`CA-PE`).
    public static let caPE = CountryCodeISO3166_2(rawValue: "CA-PE")
    /// Quebec (`CA-QC`).
    public static let caQC = CountryCodeISO3166_2(rawValue: "CA-QC")
    /// Saskatchewan (`CA-SK`).
    public static let caSK = CountryCodeISO3166_2(rawValue: "CA-SK")
    /// Northern Ireland (`GB-NIR`).
    public static let gbNIR = CountryCodeISO3166_2(rawValue: "GB-NIR")
    /// Scotland (`GB-SCT`).
    public static let gbSCT = CountryCodeISO3166_2(rawValue: "GB-SCT")
    /// Nevis (`KN-N`).
    public static let knN = CountryCodeISO3166_2(rawValue: "KN-N")
    /// Labuan (`MY-15`).
    public static let my15 = CountryCodeISO3166_2(rawValue: "MY-15")
    /// Madeira (`PT-30`).
    public static let pt30 = CountryCodeISO3166_2(rawValue: "PT-30")
    /// Alaska (`US-AK`).
    public static let usAK = CountryCodeISO3166_2(rawValue: "US-AK")
    /// Alabama (`US-AL`).
    public static let usAL = CountryCodeISO3166_2(rawValue: "US-AL")
    /// Arkansas (`US-AR`).
    public static let usAR = CountryCodeISO3166_2(rawValue: "US-AR")
    /// Arizona (`US-AZ`).
    public static let usAZ = CountryCodeISO3166_2(rawValue: "US-AZ")
    /// California (`US-CA`).
    public static let usCA = CountryCodeISO3166_2(rawValue: "US-CA")
    /// Colorado (`US-CO`).
    public static let usCO = CountryCodeISO3166_2(rawValue: "US-CO")
    /// Connecticut (`US-CT`).
    public static let usCT = CountryCodeISO3166_2(rawValue: "US-CT")
    /// District of Columbia (`US-DC`).
    public static let usDC = CountryCodeISO3166_2(rawValue: "US-DC")
    /// Delaware (`US-DE`).
    public static let usDE = CountryCodeISO3166_2(rawValue: "US-DE")
    /// Florida (`US-FL`).
    public static let usFL = CountryCodeISO3166_2(rawValue: "US-FL")
    /// Georgia (`US-GA`).
    public static let usGA = CountryCodeISO3166_2(rawValue: "US-GA")
    /// Hawaii (`US-HI`).
    public static let usHI = CountryCodeISO3166_2(rawValue: "US-HI")
    /// Iowa (`US-IA`).
    public static let usIA = CountryCodeISO3166_2(rawValue: "US-IA")
    /// Idaho (`US-ID`).
    public static let usID = CountryCodeISO3166_2(rawValue: "US-ID")
    /// Illinois (`US-IL`).
    public static let usIL = CountryCodeISO3166_2(rawValue: "US-IL")
    /// Indiana (`US-IN`).
    public static let usIN = CountryCodeISO3166_2(rawValue: "US-IN")
    /// Kansas (`US-KS`).
    public static let usKS = CountryCodeISO3166_2(rawValue: "US-KS")
    /// Kentucky (`US-KY`).
    public static let usKY = CountryCodeISO3166_2(rawValue: "US-KY")
    /// Louisiana (`US-LA`).
    public static let usLA = CountryCodeISO3166_2(rawValue: "US-LA")
    /// Massachusetts (`US-MA`).
    public static let usMA = CountryCodeISO3166_2(rawValue: "US-MA")
    /// Maryland (`US-MD`).
    public static let usMD = CountryCodeISO3166_2(rawValue: "US-MD")
    /// Maine (`US-ME`).
    public static let usME = CountryCodeISO3166_2(rawValue: "US-ME")
    /// Michigan (`US-MI`).
    public static let usMI = CountryCodeISO3166_2(rawValue: "US-MI")
    /// Minnesota (`US-MN`).
    public static let usMN = CountryCodeISO3166_2(rawValue: "US-MN")
    /// Missouri (`US-MO`).
    public static let usMO = CountryCodeISO3166_2(rawValue: "US-MO")
    /// Mississippi (`US-MS`).
    public static let usMS = CountryCodeISO3166_2(rawValue: "US-MS")
    /// Montana (`US-MT`).
    public static let usMT = CountryCodeISO3166_2(rawValue: "US-MT")
    /// North Carolina (`US-NC`).
    public static let usNC = CountryCodeISO3166_2(rawValue: "US-NC")
    /// North Dakota (`US-ND`).
    public static let usND = CountryCodeISO3166_2(rawValue: "US-ND")
    /// Nebraska (`US-NE`).
    public static let usNE = CountryCodeISO3166_2(rawValue: "US-NE")
    /// New Hampshire (`US-NH`).
    public static let usNH = CountryCodeISO3166_2(rawValue: "US-NH")
    /// New Jersey (`US-NJ`).
    public static let usNJ = CountryCodeISO3166_2(rawValue: "US-NJ")
    /// New Mexico (`US-NM`).
    public static let usNM = CountryCodeISO3166_2(rawValue: "US-NM")
    /// Nevada (`US-NV`).
    public static let usNV = CountryCodeISO3166_2(rawValue: "US-NV")
    /// New York (`US-NY`).
    public static let usNY = CountryCodeISO3166_2(rawValue: "US-NY")
    /// Ohio (`US-OH`).
    public static let usOH = CountryCodeISO3166_2(rawValue: "US-OH")
    /// Oklahoma (`US-OK`).
    public static let usOK = CountryCodeISO3166_2(rawValue: "US-OK")
    /// Oregon (`US-OR`).
    public static let usOR = CountryCodeISO3166_2(rawValue: "US-OR")
    /// Pennsylvania (`US-PA`).
    public static let usPA = CountryCodeISO3166_2(rawValue: "US-PA")
    /// Rhode Island (`US-RI`).
    public static let usRI = CountryCodeISO3166_2(rawValue: "US-RI")
    /// South Carolina (`US-SC`).
    public static let usSC = CountryCodeISO3166_2(rawValue: "US-SC")
    /// South Dakota (`US-SD`).
    public static let usSD = CountryCodeISO3166_2(rawValue: "US-SD")
    /// Tennessee (`US-TN`).
    public static let usTN = CountryCodeISO3166_2(rawValue: "US-TN")
    /// Texas (`US-TX`).
    public static let usTX = CountryCodeISO3166_2(rawValue: "US-TX")
    /// Utah (`US-UT`).
    public static let usUT = CountryCodeISO3166_2(rawValue: "US-UT")
    /// Virginia (`US-VA`).
    public static let usVA = CountryCodeISO3166_2(rawValue: "US-VA")
    /// Vermont (`US-VT`).
    public static let usVT = CountryCodeISO3166_2(rawValue: "US-VT")
    /// Washington (`US-WA`).
    public static let usWA = CountryCodeISO3166_2(rawValue: "US-WA")
    /// Wisconsin (`US-WI`).
    public static let usWI = CountryCodeISO3166_2(rawValue: "US-WI")
    /// West Virginia (`US-WV`).
    public static let usWV = CountryCodeISO3166_2(rawValue: "US-WV")
    /// Wyoming (`US-WY`).
    public static let usWY = CountryCodeISO3166_2(rawValue: "US-WY")

    /// All 71 ISO 3166-2 subdivision codes present in GLEIF ELF Code List v1.6.
    public static let allKnown: [CountryCodeISO3166_2] = [
        .aeAZ,
        .aeDU,
        .aeRK,
        .beVLG,
        .caAB,
        .caBC,
        .caMB,
        .caNB,
        .caNL,
        .caNS,
        .caNT,
        .caON,
        .caPE,
        .caQC,
        .caSK,
        .gbNIR,
        .gbSCT,
        .knN,
        .my15,
        .pt30,
        .usAK,
        .usAL,
        .usAR,
        .usAZ,
        .usCA,
        .usCO,
        .usCT,
        .usDC,
        .usDE,
        .usFL,
        .usGA,
        .usHI,
        .usIA,
        .usID,
        .usIL,
        .usIN,
        .usKS,
        .usKY,
        .usLA,
        .usMA,
        .usMD,
        .usME,
        .usMI,
        .usMN,
        .usMO,
        .usMS,
        .usMT,
        .usNC,
        .usND,
        .usNE,
        .usNH,
        .usNJ,
        .usNM,
        .usNV,
        .usNY,
        .usOH,
        .usOK,
        .usOR,
        .usPA,
        .usRI,
        .usSC,
        .usSD,
        .usTN,
        .usTX,
        .usUT,
        .usVA,
        .usVT,
        .usWA,
        .usWI,
        .usWV,
        .usWY,
    ]

    private static let jurisdictionNames: [CountryCodeISO3166_2: String] = [
        .aeAZ: "Abu Dhabi",
        .aeDU: "Dubai",
        .aeRK: "Ras Al Khaimah",
        .beVLG: "Flemish Region",
        .caAB: "Alberta",
        .caBC: "British Columbia",
        .caMB: "Manitoba",
        .caNB: "New Brunswick",
        .caNL: "Newfoundland and Labrador",
        .caNS: "Nova Scotia",
        .caNT: "Northwest Territories",
        .caON: "Ontario",
        .caPE: "Prince Edward Island",
        .caQC: "Quebec",
        .caSK: "Saskatchewan",
        .gbNIR: "Northern Ireland",
        .gbSCT: "Scotland",
        .knN: "Nevis",
        .my15: "Labuan",
        .pt30: "Madeira",
        .usAK: "Alaska",
        .usAL: "Alabama",
        .usAR: "Arkansas",
        .usAZ: "Arizona",
        .usCA: "California",
        .usCO: "Colorado",
        .usCT: "Connecticut",
        .usDC: "District of Columbia",
        .usDE: "Delaware",
        .usFL: "Florida",
        .usGA: "Georgia",
        .usHI: "Hawaii",
        .usIA: "Iowa",
        .usID: "Idaho",
        .usIL: "Illinois",
        .usIN: "Indiana",
        .usKS: "Kansas",
        .usKY: "Kentucky",
        .usLA: "Louisiana",
        .usMA: "Massachusetts",
        .usMD: "Maryland",
        .usME: "Maine",
        .usMI: "Michigan",
        .usMN: "Minnesota",
        .usMO: "Missouri",
        .usMS: "Mississippi",
        .usMT: "Montana",
        .usNC: "North Carolina",
        .usND: "North Dakota",
        .usNE: "Nebraska",
        .usNH: "New Hampshire",
        .usNJ: "New Jersey",
        .usNM: "New Mexico",
        .usNV: "Nevada",
        .usNY: "New York",
        .usOH: "Ohio",
        .usOK: "Oklahoma",
        .usOR: "Oregon",
        .usPA: "Pennsylvania",
        .usRI: "Rhode Island",
        .usSC: "South Carolina",
        .usSD: "South Dakota",
        .usTN: "Tennessee",
        .usTX: "Texas",
        .usUT: "Utah",
        .usVA: "Virginia",
        .usVT: "Vermont",
        .usWA: "Washington",
        .usWI: "Wisconsin",
        .usWV: "West Virginia",
        .usWY: "Wyoming",
    ]
}
