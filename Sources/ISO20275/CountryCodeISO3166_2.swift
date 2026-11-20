import Foundation

/// ISO 3166-2 country subdivision code used in the ISO 20275 Entity Legal Forms (ELF) Code List.
public enum CountryCodeISO3166_2: String, CaseIterable, Codable, Hashable, Sendable, CustomStringConvertible {
    /// Abu Dhabi (`AE-AZ`).
    case aeAZ = "AE-AZ"
    /// Dubai (`AE-DU`).
    case aeDU = "AE-DU"
    /// Ras Al Khaimah (`AE-RK`).
    case aeRK = "AE-RK"
    /// Flemish Region (`BE-VLG`).
    case beVLG = "BE-VLG"
    /// Alberta (`CA-AB`).
    case caAB = "CA-AB"
    /// British Columbia (`CA-BC`).
    case caBC = "CA-BC"
    /// Manitoba (`CA-MB`).
    case caMB = "CA-MB"
    /// New Brunswick (`CA-NB`).
    case caNB = "CA-NB"
    /// Newfoundland and Labrador (`CA-NL`).
    case caNL = "CA-NL"
    /// Nova Scotia (`CA-NS`).
    case caNS = "CA-NS"
    /// Northwest Territories (`CA-NT`).
    case caNT = "CA-NT"
    /// Ontario (`CA-ON`).
    case caON = "CA-ON"
    /// Prince Edward Island (`CA-PE`).
    case caPE = "CA-PE"
    /// Quebec (`CA-QC`).
    case caQC = "CA-QC"
    /// Saskatchewan (`CA-SK`).
    case caSK = "CA-SK"
    /// Northern Ireland (`GB-NIR`).
    case gbNIR = "GB-NIR"
    /// Scotland (`GB-SCT`).
    case gbSCT = "GB-SCT"
    /// Nevis (`KN-N`).
    case knN = "KN-N"
    /// Labuan (`MY-15`).
    case my15 = "MY-15"
    /// Madeira (`PT-30`).
    case pt30 = "PT-30"
    /// Alaska (`US-AK`).
    case usAK = "US-AK"
    /// Alabama (`US-AL`).
    case usAL = "US-AL"
    /// Arkansas (`US-AR`).
    case usAR = "US-AR"
    /// Arizona (`US-AZ`).
    case usAZ = "US-AZ"
    /// California (`US-CA`).
    case usCA = "US-CA"
    /// Colorado (`US-CO`).
    case usCO = "US-CO"
    /// Connecticut (`US-CT`).
    case usCT = "US-CT"
    /// District of Columbia (`US-DC`).
    case usDC = "US-DC"
    /// Delaware (`US-DE`).
    case usDE = "US-DE"
    /// Florida (`US-FL`).
    case usFL = "US-FL"
    /// Georgia (`US-GA`).
    case usGA = "US-GA"
    /// Hawaii (`US-HI`).
    case usHI = "US-HI"
    /// Iowa (`US-IA`).
    case usIA = "US-IA"
    /// Idaho (`US-ID`).
    case usID = "US-ID"
    /// Illinois (`US-IL`).
    case usIL = "US-IL"
    /// Indiana (`US-IN`).
    case usIN = "US-IN"
    /// Kansas (`US-KS`).
    case usKS = "US-KS"
    /// Kentucky (`US-KY`).
    case usKY = "US-KY"
    /// Louisiana (`US-LA`).
    case usLA = "US-LA"
    /// Massachusetts (`US-MA`).
    case usMA = "US-MA"
    /// Maryland (`US-MD`).
    case usMD = "US-MD"
    /// Maine (`US-ME`).
    case usME = "US-ME"
    /// Michigan (`US-MI`).
    case usMI = "US-MI"
    /// Minnesota (`US-MN`).
    case usMN = "US-MN"
    /// Missouri (`US-MO`).
    case usMO = "US-MO"
    /// Mississippi (`US-MS`).
    case usMS = "US-MS"
    /// Montana (`US-MT`).
    case usMT = "US-MT"
    /// North Carolina (`US-NC`).
    case usNC = "US-NC"
    /// North Dakota (`US-ND`).
    case usND = "US-ND"
    /// Nebraska (`US-NE`).
    case usNE = "US-NE"
    /// New Hampshire (`US-NH`).
    case usNH = "US-NH"
    /// New Jersey (`US-NJ`).
    case usNJ = "US-NJ"
    /// New Mexico (`US-NM`).
    case usNM = "US-NM"
    /// Nevada (`US-NV`).
    case usNV = "US-NV"
    /// New York (`US-NY`).
    case usNY = "US-NY"
    /// Ohio (`US-OH`).
    case usOH = "US-OH"
    /// Oklahoma (`US-OK`).
    case usOK = "US-OK"
    /// Oregon (`US-OR`).
    case usOR = "US-OR"
    /// Pennsylvania (`US-PA`).
    case usPA = "US-PA"
    /// Rhode Island (`US-RI`).
    case usRI = "US-RI"
    /// South Carolina (`US-SC`).
    case usSC = "US-SC"
    /// South Dakota (`US-SD`).
    case usSD = "US-SD"
    /// Tennessee (`US-TN`).
    case usTN = "US-TN"
    /// Texas (`US-TX`).
    case usTX = "US-TX"
    /// Utah (`US-UT`).
    case usUT = "US-UT"
    /// Virginia (`US-VA`).
    case usVA = "US-VA"
    /// Vermont (`US-VT`).
    case usVT = "US-VT"
    /// Washington (`US-WA`).
    case usWA = "US-WA"
    /// Wisconsin (`US-WI`).
    case usWI = "US-WI"
    /// West Virginia (`US-WV`).
    case usWV = "US-WV"
    /// Wyoming (`US-WY`).
    case usWY = "US-WY"

    /// Case-insensitive initializer from an ISO 3166-2 code (e.g., `"us-de"` or `"US-DE"`).
    public init?(code: String) {
        self.init(rawValue: code.trimmingCharacters(in: .whitespacesAndNewlines).uppercased())
    }

    public var description: String { rawValue }

    /// Canonical English subdivision / jurisdiction name (e.g., `"Delaware"` for `.usDE`).
    public var canonicalJurisdictionName: String {
        switch self {
        case .aeAZ: return "Abu Dhabi"
        case .aeDU: return "Dubai"
        case .aeRK: return "Ras Al Khaimah"
        case .beVLG: return "Flemish Region"
        case .caAB: return "Alberta"
        case .caBC: return "British Columbia"
        case .caMB: return "Manitoba"
        case .caNB: return "New Brunswick"
        case .caNL: return "Newfoundland and Labrador"
        case .caNS: return "Nova Scotia"
        case .caNT: return "Northwest Territories"
        case .caON: return "Ontario"
        case .caPE: return "Prince Edward Island"
        case .caQC: return "Quebec"
        case .caSK: return "Saskatchewan"
        case .gbNIR: return "Northern Ireland"
        case .gbSCT: return "Scotland"
        case .knN: return "Nevis"
        case .my15: return "Labuan"
        case .pt30: return "Madeira"
        case .usAK: return "Alaska"
        case .usAL: return "Alabama"
        case .usAR: return "Arkansas"
        case .usAZ: return "Arizona"
        case .usCA: return "California"
        case .usCO: return "Colorado"
        case .usCT: return "Connecticut"
        case .usDC: return "District of Columbia"
        case .usDE: return "Delaware"
        case .usFL: return "Florida"
        case .usGA: return "Georgia"
        case .usHI: return "Hawaii"
        case .usIA: return "Iowa"
        case .usID: return "Idaho"
        case .usIL: return "Illinois"
        case .usIN: return "Indiana"
        case .usKS: return "Kansas"
        case .usKY: return "Kentucky"
        case .usLA: return "Louisiana"
        case .usMA: return "Massachusetts"
        case .usMD: return "Maryland"
        case .usME: return "Maine"
        case .usMI: return "Michigan"
        case .usMN: return "Minnesota"
        case .usMO: return "Missouri"
        case .usMS: return "Mississippi"
        case .usMT: return "Montana"
        case .usNC: return "North Carolina"
        case .usND: return "North Dakota"
        case .usNE: return "Nebraska"
        case .usNH: return "New Hampshire"
        case .usNJ: return "New Jersey"
        case .usNM: return "New Mexico"
        case .usNV: return "Nevada"
        case .usNY: return "New York"
        case .usOH: return "Ohio"
        case .usOK: return "Oklahoma"
        case .usOR: return "Oregon"
        case .usPA: return "Pennsylvania"
        case .usRI: return "Rhode Island"
        case .usSC: return "South Carolina"
        case .usSD: return "South Dakota"
        case .usTN: return "Tennessee"
        case .usTX: return "Texas"
        case .usUT: return "Utah"
        case .usVA: return "Virginia"
        case .usVT: return "Vermont"
        case .usWA: return "Washington"
        case .usWI: return "Wisconsin"
        case .usWV: return "West Virginia"
        case .usWY: return "Wyoming"
        }
    }

    /// Parent ISO 3166-1 alpha-2 country code.
    public var countryCode: CountryCodeISO3166_1 {
        let prefix = String(rawValue.prefix(2))
        return CountryCodeISO3166_1(rawValue: prefix)!
    }

    /// Parent ``Country`` of formation.
    public var country: Country {
        countryCode.country
    }
}