import Foundation

/// Country or territory of formation in the ISO 20275 Entity Legal Forms (ELF) Code List.
///
/// Modeled as an extensible `RawRepresentable` value type with `static let` constants so newly
/// added countries in future GLEIF releases load without breaking source or binary compatibility.
public struct Country: RawRepresentable, Hashable, Codable, Sendable, CustomStringConvertible {
    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue.trimmingCharacters(in: .whitespacesAndNewlines)
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

    /// Known ISO 3166-1 alpha-2 country code for this country, if defined in the known registry.
    public var knownISO3166_1Code: CountryCodeISO3166_1? {
        Self.toCode[self]
    }

    /// Antigua and Barbuda (`AG`).
    public static let antiguaAndBarbuda = Country(rawValue: "Antigua and Barbuda")
    /// Argentina (`AR`).
    public static let argentina = Country(rawValue: "Argentina")
    /// Armenia (`AM`).
    public static let armenia = Country(rawValue: "Armenia")
    /// Aruba (`AW`).
    public static let aruba = Country(rawValue: "Aruba")
    /// Australia (`AU`).
    public static let australia = Country(rawValue: "Australia")
    /// Austria (`AT`).
    public static let austria = Country(rawValue: "Austria")
    /// Azerbaijan (`AZ`).
    public static let azerbaijan = Country(rawValue: "Azerbaijan")
    /// Bahamas (`BS`).
    public static let bahamas = Country(rawValue: "Bahamas")
    /// Bahrain (`BH`).
    public static let bahrain = Country(rawValue: "Bahrain")
    /// Barbados (`BB`).
    public static let barbados = Country(rawValue: "Barbados")
    /// Belarus (`BY`).
    public static let belarus = Country(rawValue: "Belarus")
    /// Belgium (`BE`).
    public static let belgium = Country(rawValue: "Belgium")
    /// Belize (`BZ`).
    public static let belize = Country(rawValue: "Belize")
    /// Benin (`BJ`).
    public static let benin = Country(rawValue: "Benin")
    /// Bermuda (`BM`).
    public static let bermuda = Country(rawValue: "Bermuda")
    /// Bolivia (Plurinational State of) (`BO`).
    public static let bolivia = Country(rawValue: "Bolivia (Plurinational State of)")
    /// Bonaire, Sint Eustatius and Saba (`BQ`).
    public static let bonaireSintEustatiusAndSaba = Country(rawValue: "Bonaire, Sint Eustatius and Saba")
    /// Botswana (`BW`).
    public static let botswana = Country(rawValue: "Botswana")
    /// Brazil (`BR`).
    public static let brazil = Country(rawValue: "Brazil")
    /// Brunei Darussalam (`BN`).
    public static let bruneiDarussalam = Country(rawValue: "Brunei Darussalam")
    /// Bulgaria (`BG`).
    public static let bulgaria = Country(rawValue: "Bulgaria")
    /// Cambodia (`KH`).
    public static let cambodia = Country(rawValue: "Cambodia")
    /// Canada (`CA`).
    public static let canada = Country(rawValue: "Canada")
    /// Cayman Islands (`KY`).
    public static let caymanIslands = Country(rawValue: "Cayman Islands")
    /// Chile (`CL`).
    public static let chile = Country(rawValue: "Chile")
    /// China (`CN`).
    public static let china = Country(rawValue: "China")
    /// Colombia (`CO`).
    public static let colombia = Country(rawValue: "Colombia")
    /// Cook Islands (`CK`).
    public static let cookIslands = Country(rawValue: "Cook Islands")
    /// Costa Rica (`CR`).
    public static let costaRica = Country(rawValue: "Costa Rica")
    /// Croatia (`HR`).
    public static let croatia = Country(rawValue: "Croatia")
    /// Curaçao (`CW`).
    public static let curacao = Country(rawValue: "Curaçao")
    /// Cyprus (`CY`).
    public static let cyprus = Country(rawValue: "Cyprus")
    /// Czechia (`CZ`).
    public static let czechia = Country(rawValue: "Czechia")
    /// Denmark (`DK`).
    public static let denmark = Country(rawValue: "Denmark")
    /// Dominican Republic (`DO`).
    public static let dominicanRepublic = Country(rawValue: "Dominican Republic")
    /// Ecuador (`EC`).
    public static let ecuador = Country(rawValue: "Ecuador")
    /// Estonia (`EE`).
    public static let estonia = Country(rawValue: "Estonia")
    /// Faroe Islands (`FO`).
    public static let faroeIslands = Country(rawValue: "Faroe Islands")
    /// Fiji (`FJ`).
    public static let fiji = Country(rawValue: "Fiji")
    /// Finland (`FI`).
    public static let finland = Country(rawValue: "Finland")
    /// France (`FR`).
    public static let france = Country(rawValue: "France")
    /// Germany (`DE`).
    public static let germany = Country(rawValue: "Germany")
    /// Ghana (`GH`).
    public static let ghana = Country(rawValue: "Ghana")
    /// Gibraltar (`GI`).
    public static let gibraltar = Country(rawValue: "Gibraltar")
    /// Greece (`GR`).
    public static let greece = Country(rawValue: "Greece")
    /// Guam (`GU`).
    public static let guam = Country(rawValue: "Guam")
    /// Guatemala (`GT`).
    public static let guatemala = Country(rawValue: "Guatemala")
    /// Guernsey (`GG`).
    public static let guernsey = Country(rawValue: "Guernsey")
    /// Honduras (`HN`).
    public static let honduras = Country(rawValue: "Honduras")
    /// Hong Kong (`HK`).
    public static let hongKong = Country(rawValue: "Hong Kong")
    /// Hungary (`HU`).
    public static let hungary = Country(rawValue: "Hungary")
    /// Iceland (`IS`).
    public static let iceland = Country(rawValue: "Iceland")
    /// India (`IN`).
    public static let india = Country(rawValue: "India")
    /// Indonesia (`ID`).
    public static let indonesia = Country(rawValue: "Indonesia")
    /// Ireland (`IE`).
    public static let ireland = Country(rawValue: "Ireland")
    /// Isle of Man (`IM`).
    public static let isleOfMan = Country(rawValue: "Isle of Man")
    /// Israel (`IL`).
    public static let israel = Country(rawValue: "Israel")
    /// Italy (`IT`).
    public static let italy = Country(rawValue: "Italy")
    /// Jamaica (`JM`).
    public static let jamaica = Country(rawValue: "Jamaica")
    /// Japan (`JP`).
    public static let japan = Country(rawValue: "Japan")
    /// Jersey (`JE`).
    public static let jersey = Country(rawValue: "Jersey")
    /// Jordan (`JO`).
    public static let jordan = Country(rawValue: "Jordan")
    /// Korea (Republic of) (`KR`).
    public static let koreaRepublicOf = Country(rawValue: "Korea (Republic of)")
    /// Kosovo (`XK`).
    public static let kosovo = Country(rawValue: "Kosovo")
    /// Kuwait (`KW`).
    public static let kuwait = Country(rawValue: "Kuwait")
    /// Latvia (`LV`).
    public static let latvia = Country(rawValue: "Latvia")
    /// Lesotho (`LS`).
    public static let lesotho = Country(rawValue: "Lesotho")
    /// Liechtenstein (`LI`).
    public static let liechtenstein = Country(rawValue: "Liechtenstein")
    /// Lithuania (`LT`).
    public static let lithuania = Country(rawValue: "Lithuania")
    /// Luxembourg (`LU`).
    public static let luxembourg = Country(rawValue: "Luxembourg")
    /// Malaysia (`MY`).
    public static let malaysia = Country(rawValue: "Malaysia")
    /// Malta (`MT`).
    public static let malta = Country(rawValue: "Malta")
    /// Marshall Islands (`MH`).
    public static let marshallIslands = Country(rawValue: "Marshall Islands")
    /// Mauritius (`MU`).
    public static let mauritius = Country(rawValue: "Mauritius")
    /// Mexico (`MX`).
    public static let mexico = Country(rawValue: "Mexico")
    /// Monaco (`MC`).
    public static let monaco = Country(rawValue: "Monaco")
    /// Myanmar (`MM`).
    public static let myanmar = Country(rawValue: "Myanmar")
    /// Nepal (`NP`).
    public static let nepal = Country(rawValue: "Nepal")
    /// Netherlands (`NL`).
    public static let netherlands = Country(rawValue: "Netherlands")
    /// New Zealand (`NZ`).
    public static let newZealand = Country(rawValue: "New Zealand")
    /// Niger (`NE`).
    public static let niger = Country(rawValue: "Niger")
    /// Nigeria (`NG`).
    public static let nigeria = Country(rawValue: "Nigeria")
    /// North Macedonia (`MK`).
    public static let northMacedonia = Country(rawValue: "North Macedonia")
    /// Norway (`NO`).
    public static let norway = Country(rawValue: "Norway")
    /// Oman (`OM`).
    public static let oman = Country(rawValue: "Oman")
    /// Pakistan (`PK`).
    public static let pakistan = Country(rawValue: "Pakistan")
    /// Panama (`PA`).
    public static let panama = Country(rawValue: "Panama")
    /// Papua New Guinea (`PG`).
    public static let papuaNewGuinea = Country(rawValue: "Papua New Guinea")
    /// Paraguay (`PY`).
    public static let paraguay = Country(rawValue: "Paraguay")
    /// Peru (`PE`).
    public static let peru = Country(rawValue: "Peru")
    /// Philippines (`PH`).
    public static let philippines = Country(rawValue: "Philippines")
    /// Poland (`PL`).
    public static let poland = Country(rawValue: "Poland")
    /// Portugal (`PT`).
    public static let portugal = Country(rawValue: "Portugal")
    /// Puerto Rico (`PR`).
    public static let puertoRico = Country(rawValue: "Puerto Rico")
    /// Qatar (`QA`).
    public static let qatar = Country(rawValue: "Qatar")
    /// Romania (`RO`).
    public static let romania = Country(rawValue: "Romania")
    /// Russian Federation (`RU`).
    public static let russianFederation = Country(rawValue: "Russian Federation")
    /// Saint Kitts and Nevis (`KN`).
    public static let saintKittsAndNevis = Country(rawValue: "Saint Kitts and Nevis")
    /// Saint Vincent and the Grenadines (`VC`).
    public static let saintVincentAndTheGrenadines = Country(rawValue: "Saint Vincent and the Grenadines")
    /// Samoa (`WS`).
    public static let samoa = Country(rawValue: "Samoa")
    /// San Marino (`SM`).
    public static let sanMarino = Country(rawValue: "San Marino")
    /// Saudi Arabia (`SA`).
    public static let saudiArabia = Country(rawValue: "Saudi Arabia")
    /// Serbia (`RS`).
    public static let serbia = Country(rawValue: "Serbia")
    /// Seychelles (`SC`).
    public static let seychelles = Country(rawValue: "Seychelles")
    /// Singapore (`SG`).
    public static let singapore = Country(rawValue: "Singapore")
    /// Sint Maarten (`SX`).
    public static let sintMaarten = Country(rawValue: "Sint Maarten")
    /// Slovakia (`SK`).
    public static let slovakia = Country(rawValue: "Slovakia")
    /// Slovenia (`SI`).
    public static let slovenia = Country(rawValue: "Slovenia")
    /// Solomon Islands (`SB`).
    public static let solomonIslands = Country(rawValue: "Solomon Islands")
    /// South Africa (`ZA`).
    public static let southAfrica = Country(rawValue: "South Africa")
    /// Spain (`ES`).
    public static let spain = Country(rawValue: "Spain")
    /// Suriname (`SR`).
    public static let suriname = Country(rawValue: "Suriname")
    /// Sweden (`SE`).
    public static let sweden = Country(rawValue: "Sweden")
    /// Switzerland (`CH`).
    public static let switzerland = Country(rawValue: "Switzerland")
    /// Taiwan (Province of China) (`TW`).
    public static let taiwan = Country(rawValue: "Taiwan (Province of China)")
    /// Tanzania (`TZ`).
    public static let tanzania = Country(rawValue: "Tanzania")
    /// Thailand (`TH`).
    public static let thailand = Country(rawValue: "Thailand")
    /// Tonga (`TO`).
    public static let tonga = Country(rawValue: "Tonga")
    /// Tunisia (`TN`).
    public static let tunisia = Country(rawValue: "Tunisia")
    /// Türkiye (`TR`).
    public static let turkiye = Country(rawValue: "Türkiye")
    /// Tuvalu (`TV`).
    public static let tuvalu = Country(rawValue: "Tuvalu")
    /// United Arab Emirates (`AE`).
    public static let unitedArabEmirates = Country(rawValue: "United Arab Emirates")
    /// United Kingdom of Great Britain and Northern Ireland (`GB`).
    public static let unitedKingdom = Country(rawValue: "United Kingdom of Great Britain and Northern Ireland")
    /// United States of America (`US`).
    public static let unitedStatesOfAmerica = Country(rawValue: "United States of America")
    /// Uruguay (`UY`).
    public static let uruguay = Country(rawValue: "Uruguay")
    /// Vanuatu (`VU`).
    public static let vanuatu = Country(rawValue: "Vanuatu")
    /// Viet Nam (`VN`).
    public static let vietNam = Country(rawValue: "Viet Nam")
    /// Virgin Islands (British) (`VG`).
    public static let virginIslandsBritish = Country(rawValue: "Virgin Islands (British)")
    /// Virgin Islands (U.S.) (`VI`).
    public static let virginIslandsUS = Country(rawValue: "Virgin Islands (U.S.)")

    /// All 129 countries present in GLEIF ELF Code List v1.6.
    public static let allKnown: [Country] = [
        .antiguaAndBarbuda,
        .argentina,
        .armenia,
        .aruba,
        .australia,
        .austria,
        .azerbaijan,
        .bahamas,
        .bahrain,
        .barbados,
        .belarus,
        .belgium,
        .belize,
        .benin,
        .bermuda,
        .bolivia,
        .bonaireSintEustatiusAndSaba,
        .botswana,
        .brazil,
        .bruneiDarussalam,
        .bulgaria,
        .cambodia,
        .canada,
        .caymanIslands,
        .chile,
        .china,
        .colombia,
        .cookIslands,
        .costaRica,
        .croatia,
        .curacao,
        .cyprus,
        .czechia,
        .denmark,
        .dominicanRepublic,
        .ecuador,
        .estonia,
        .faroeIslands,
        .fiji,
        .finland,
        .france,
        .germany,
        .ghana,
        .gibraltar,
        .greece,
        .guam,
        .guatemala,
        .guernsey,
        .honduras,
        .hongKong,
        .hungary,
        .iceland,
        .india,
        .indonesia,
        .ireland,
        .isleOfMan,
        .israel,
        .italy,
        .jamaica,
        .japan,
        .jersey,
        .jordan,
        .koreaRepublicOf,
        .kosovo,
        .kuwait,
        .latvia,
        .lesotho,
        .liechtenstein,
        .lithuania,
        .luxembourg,
        .malaysia,
        .malta,
        .marshallIslands,
        .mauritius,
        .mexico,
        .monaco,
        .myanmar,
        .nepal,
        .netherlands,
        .newZealand,
        .niger,
        .nigeria,
        .northMacedonia,
        .norway,
        .oman,
        .pakistan,
        .panama,
        .papuaNewGuinea,
        .paraguay,
        .peru,
        .philippines,
        .poland,
        .portugal,
        .puertoRico,
        .qatar,
        .romania,
        .russianFederation,
        .saintKittsAndNevis,
        .saintVincentAndTheGrenadines,
        .samoa,
        .sanMarino,
        .saudiArabia,
        .serbia,
        .seychelles,
        .singapore,
        .sintMaarten,
        .slovakia,
        .slovenia,
        .solomonIslands,
        .southAfrica,
        .spain,
        .suriname,
        .sweden,
        .switzerland,
        .taiwan,
        .tanzania,
        .thailand,
        .tonga,
        .tunisia,
        .turkiye,
        .tuvalu,
        .unitedArabEmirates,
        .unitedKingdom,
        .unitedStatesOfAmerica,
        .uruguay,
        .vanuatu,
        .vietNam,
        .virginIslandsBritish,
        .virginIslandsUS,
    ]

    private static let toCode: [Country: CountryCodeISO3166_1] = [
        .antiguaAndBarbuda: .ag,
        .argentina: .ar,
        .armenia: .am,
        .aruba: .aw,
        .australia: .au,
        .austria: .at,
        .azerbaijan: .az,
        .bahamas: .bs,
        .bahrain: .bh,
        .barbados: .bb,
        .belarus: .by,
        .belgium: .be,
        .belize: .bz,
        .benin: .bj,
        .bermuda: .bm,
        .bolivia: .bo,
        .bonaireSintEustatiusAndSaba: .bq,
        .botswana: .bw,
        .brazil: .br,
        .bruneiDarussalam: .bn,
        .bulgaria: .bg,
        .cambodia: .kh,
        .canada: .ca,
        .caymanIslands: .ky,
        .chile: .cl,
        .china: .cn,
        .colombia: .co,
        .cookIslands: .ck,
        .costaRica: .cr,
        .croatia: .hr,
        .curacao: .cw,
        .cyprus: .cy,
        .czechia: .cz,
        .denmark: .dk,
        .dominicanRepublic: .`do`,
        .ecuador: .ec,
        .estonia: .ee,
        .faroeIslands: .fo,
        .fiji: .fj,
        .finland: .fi,
        .france: .fr,
        .germany: .de,
        .ghana: .gh,
        .gibraltar: .gi,
        .greece: .gr,
        .guam: .gu,
        .guatemala: .gt,
        .guernsey: .gg,
        .honduras: .hn,
        .hongKong: .hk,
        .hungary: .hu,
        .iceland: .`is`,
        .india: .`in`,
        .indonesia: .id,
        .ireland: .ie,
        .isleOfMan: .im,
        .israel: .il,
        .italy: .it,
        .jamaica: .jm,
        .japan: .jp,
        .jersey: .je,
        .jordan: .jo,
        .koreaRepublicOf: .kr,
        .kosovo: .xk,
        .kuwait: .kw,
        .latvia: .lv,
        .lesotho: .ls,
        .liechtenstein: .li,
        .lithuania: .lt,
        .luxembourg: .lu,
        .malaysia: .my,
        .malta: .mt,
        .marshallIslands: .mh,
        .mauritius: .mu,
        .mexico: .mx,
        .monaco: .mc,
        .myanmar: .mm,
        .nepal: .np,
        .netherlands: .nl,
        .newZealand: .nz,
        .niger: .ne,
        .nigeria: .ng,
        .northMacedonia: .mk,
        .norway: .no,
        .oman: .om,
        .pakistan: .pk,
        .panama: .pa,
        .papuaNewGuinea: .pg,
        .paraguay: .py,
        .peru: .pe,
        .philippines: .ph,
        .poland: .pl,
        .portugal: .pt,
        .puertoRico: .pr,
        .qatar: .qa,
        .romania: .ro,
        .russianFederation: .ru,
        .saintKittsAndNevis: .kn,
        .saintVincentAndTheGrenadines: .vc,
        .samoa: .ws,
        .sanMarino: .sm,
        .saudiArabia: .sa,
        .serbia: .rs,
        .seychelles: .sc,
        .singapore: .sg,
        .sintMaarten: .sx,
        .slovakia: .sk,
        .slovenia: .si,
        .solomonIslands: .sb,
        .southAfrica: .za,
        .spain: .es,
        .suriname: .sr,
        .sweden: .se,
        .switzerland: .ch,
        .taiwan: .tw,
        .tanzania: .tz,
        .thailand: .th,
        .tonga: .to,
        .tunisia: .tn,
        .turkiye: .tr,
        .tuvalu: .tv,
        .unitedArabEmirates: .ae,
        .unitedKingdom: .gb,
        .unitedStatesOfAmerica: .us,
        .uruguay: .uy,
        .vanuatu: .vu,
        .vietNam: .vn,
        .virginIslandsBritish: .vg,
        .virginIslandsUS: .vi,
    ]
}
