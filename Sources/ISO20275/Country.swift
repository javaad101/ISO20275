import Foundation

/// Country or territory of formation in the ISO 20275 Entity Legal Forms (ELF) Code List.
public enum Country: String, CaseIterable, Codable, Hashable, Sendable, CustomStringConvertible {
    /// Antigua and Barbuda (`AG`).
    case antiguaAndBarbuda = "Antigua and Barbuda"
    /// Argentina (`AR`).
    case argentina = "Argentina"
    /// Armenia (`AM`).
    case armenia = "Armenia"
    /// Aruba (`AW`).
    case aruba = "Aruba"
    /// Australia (`AU`).
    case australia = "Australia"
    /// Austria (`AT`).
    case austria = "Austria"
    /// Azerbaijan (`AZ`).
    case azerbaijan = "Azerbaijan"
    /// Bahamas (`BS`).
    case bahamas = "Bahamas"
    /// Bahrain (`BH`).
    case bahrain = "Bahrain"
    /// Barbados (`BB`).
    case barbados = "Barbados"
    /// Belarus (`BY`).
    case belarus = "Belarus"
    /// Belgium (`BE`).
    case belgium = "Belgium"
    /// Belize (`BZ`).
    case belize = "Belize"
    /// Benin (`BJ`).
    case benin = "Benin"
    /// Bermuda (`BM`).
    case bermuda = "Bermuda"
    /// Bolivia (Plurinational State of) (`BO`).
    case bolivia = "Bolivia (Plurinational State of)"
    /// Bonaire, Sint Eustatius and Saba (`BQ`).
    case bonaireSintEustatiusAndSaba = "Bonaire, Sint Eustatius and Saba"
    /// Botswana (`BW`).
    case botswana = "Botswana"
    /// Brazil (`BR`).
    case brazil = "Brazil"
    /// Brunei Darussalam (`BN`).
    case bruneiDarussalam = "Brunei Darussalam"
    /// Bulgaria (`BG`).
    case bulgaria = "Bulgaria"
    /// Cambodia (`KH`).
    case cambodia = "Cambodia"
    /// Canada (`CA`).
    case canada = "Canada"
    /// Cayman Islands (`KY`).
    case caymanIslands = "Cayman Islands"
    /// Chile (`CL`).
    case chile = "Chile"
    /// China (`CN`).
    case china = "China"
    /// Colombia (`CO`).
    case colombia = "Colombia"
    /// Cook Islands (`CK`).
    case cookIslands = "Cook Islands"
    /// Costa Rica (`CR`).
    case costaRica = "Costa Rica"
    /// Croatia (`HR`).
    case croatia = "Croatia"
    /// Curaçao (`CW`).
    case curacao = "Curaçao"
    /// Cyprus (`CY`).
    case cyprus = "Cyprus"
    /// Czechia (`CZ`).
    case czechia = "Czechia"
    /// Denmark (`DK`).
    case denmark = "Denmark"
    /// Dominican Republic (`DO`).
    case dominicanRepublic = "Dominican Republic"
    /// Ecuador (`EC`).
    case ecuador = "Ecuador"
    /// Estonia (`EE`).
    case estonia = "Estonia"
    /// Faroe Islands (`FO`).
    case faroeIslands = "Faroe Islands"
    /// Fiji (`FJ`).
    case fiji = "Fiji"
    /// Finland (`FI`).
    case finland = "Finland"
    /// France (`FR`).
    case france = "France"
    /// Germany (`DE`).
    case germany = "Germany"
    /// Ghana (`GH`).
    case ghana = "Ghana"
    /// Gibraltar (`GI`).
    case gibraltar = "Gibraltar"
    /// Greece (`GR`).
    case greece = "Greece"
    /// Guam (`GU`).
    case guam = "Guam"
    /// Guatemala (`GT`).
    case guatemala = "Guatemala"
    /// Guernsey (`GG`).
    case guernsey = "Guernsey"
    /// Honduras (`HN`).
    case honduras = "Honduras"
    /// Hong Kong (`HK`).
    case hongKong = "Hong Kong"
    /// Hungary (`HU`).
    case hungary = "Hungary"
    /// Iceland (`IS`).
    case iceland = "Iceland"
    /// India (`IN`).
    case india = "India"
    /// Indonesia (`ID`).
    case indonesia = "Indonesia"
    /// Ireland (`IE`).
    case ireland = "Ireland"
    /// Isle of Man (`IM`).
    case isleOfMan = "Isle of Man"
    /// Israel (`IL`).
    case israel = "Israel"
    /// Italy (`IT`).
    case italy = "Italy"
    /// Jamaica (`JM`).
    case jamaica = "Jamaica"
    /// Japan (`JP`).
    case japan = "Japan"
    /// Jersey (`JE`).
    case jersey = "Jersey"
    /// Jordan (`JO`).
    case jordan = "Jordan"
    /// Korea (Republic of) (`KR`).
    case koreaRepublicOf = "Korea (Republic of)"
    /// Kosovo (`XK`).
    case kosovo = "Kosovo"
    /// Kuwait (`KW`).
    case kuwait = "Kuwait"
    /// Latvia (`LV`).
    case latvia = "Latvia"
    /// Lesotho (`LS`).
    case lesotho = "Lesotho"
    /// Liechtenstein (`LI`).
    case liechtenstein = "Liechtenstein"
    /// Lithuania (`LT`).
    case lithuania = "Lithuania"
    /// Luxembourg (`LU`).
    case luxembourg = "Luxembourg"
    /// Malaysia (`MY`).
    case malaysia = "Malaysia"
    /// Malta (`MT`).
    case malta = "Malta"
    /// Marshall Islands (`MH`).
    case marshallIslands = "Marshall Islands"
    /// Mauritius (`MU`).
    case mauritius = "Mauritius"
    /// Mexico (`MX`).
    case mexico = "Mexico"
    /// Monaco (`MC`).
    case monaco = "Monaco"
    /// Myanmar (`MM`).
    case myanmar = "Myanmar"
    /// Nepal (`NP`).
    case nepal = "Nepal"
    /// Netherlands (`NL`).
    case netherlands = "Netherlands"
    /// New Zealand (`NZ`).
    case newZealand = "New Zealand"
    /// Niger (`NE`).
    case niger = "Niger"
    /// Nigeria (`NG`).
    case nigeria = "Nigeria"
    /// North Macedonia (`MK`).
    case northMacedonia = "North Macedonia"
    /// Norway (`NO`).
    case norway = "Norway"
    /// Oman (`OM`).
    case oman = "Oman"
    /// Pakistan (`PK`).
    case pakistan = "Pakistan"
    /// Panama (`PA`).
    case panama = "Panama"
    /// Papua New Guinea (`PG`).
    case papuaNewGuinea = "Papua New Guinea"
    /// Paraguay (`PY`).
    case paraguay = "Paraguay"
    /// Peru (`PE`).
    case peru = "Peru"
    /// Philippines (`PH`).
    case philippines = "Philippines"
    /// Poland (`PL`).
    case poland = "Poland"
    /// Portugal (`PT`).
    case portugal = "Portugal"
    /// Puerto Rico (`PR`).
    case puertoRico = "Puerto Rico"
    /// Qatar (`QA`).
    case qatar = "Qatar"
    /// Romania (`RO`).
    case romania = "Romania"
    /// Russian Federation (`RU`).
    case russianFederation = "Russian Federation"
    /// Saint Kitts and Nevis (`KN`).
    case saintKittsAndNevis = "Saint Kitts and Nevis"
    /// Saint Vincent and the Grenadines (`VC`).
    case saintVincentAndTheGrenadines = "Saint Vincent and the Grenadines"
    /// Samoa (`WS`).
    case samoa = "Samoa"
    /// San Marino (`SM`).
    case sanMarino = "San Marino"
    /// Saudi Arabia (`SA`).
    case saudiArabia = "Saudi Arabia"
    /// Serbia (`RS`).
    case serbia = "Serbia"
    /// Seychelles (`SC`).
    case seychelles = "Seychelles"
    /// Singapore (`SG`).
    case singapore = "Singapore"
    /// Sint Maarten (`SX`).
    case sintMaarten = "Sint Maarten"
    /// Slovakia (`SK`).
    case slovakia = "Slovakia"
    /// Slovenia (`SI`).
    case slovenia = "Slovenia"
    /// Solomon Islands (`SB`).
    case solomonIslands = "Solomon Islands"
    /// South Africa (`ZA`).
    case southAfrica = "South Africa"
    /// Spain (`ES`).
    case spain = "Spain"
    /// Suriname (`SR`).
    case suriname = "Suriname"
    /// Sweden (`SE`).
    case sweden = "Sweden"
    /// Switzerland (`CH`).
    case switzerland = "Switzerland"
    /// Taiwan (Province of China) (`TW`).
    case taiwan = "Taiwan (Province of China)"
    /// Tanzania (`TZ`).
    case tanzania = "Tanzania"
    /// Thailand (`TH`).
    case thailand = "Thailand"
    /// Tonga (`TO`).
    case tonga = "Tonga"
    /// Tunisia (`TN`).
    case tunisia = "Tunisia"
    /// Türkiye (`TR`).
    case turkiye = "Türkiye"
    /// Tuvalu (`TV`).
    case tuvalu = "Tuvalu"
    /// United Arab Emirates (`AE`).
    case unitedArabEmirates = "United Arab Emirates"
    /// United Kingdom of Great Britain and Northern Ireland (`GB`).
    case unitedKingdom = "United Kingdom of Great Britain and Northern Ireland"
    /// United States of America (`US`).
    case unitedStatesOfAmerica = "United States of America"
    /// Uruguay (`UY`).
    case uruguay = "Uruguay"
    /// Vanuatu (`VU`).
    case vanuatu = "Vanuatu"
    /// Viet Nam (`VN`).
    case vietNam = "Viet Nam"
    /// Virgin Islands (British) (`VG`).
    case virginIslandsBritish = "Virgin Islands (British)"
    /// Virgin Islands (U.S.) (`VI`).
    case virginIslandsUS = "Virgin Islands (U.S.)"

    public var description: String { rawValue }

    /// Corresponding ISO 3166-1 alpha-2 country code.
    public var iso3166_1Code: CountryCodeISO3166_1 {
        switch self {
        case .antiguaAndBarbuda: return .ag
        case .argentina: return .ar
        case .armenia: return .am
        case .aruba: return .aw
        case .australia: return .au
        case .austria: return .at
        case .azerbaijan: return .az
        case .bahamas: return .bs
        case .bahrain: return .bh
        case .barbados: return .bb
        case .belarus: return .by
        case .belgium: return .be
        case .belize: return .bz
        case .benin: return .bj
        case .bermuda: return .bm
        case .bolivia: return .bo
        case .bonaireSintEustatiusAndSaba: return .bq
        case .botswana: return .bw
        case .brazil: return .br
        case .bruneiDarussalam: return .bn
        case .bulgaria: return .bg
        case .cambodia: return .kh
        case .canada: return .ca
        case .caymanIslands: return .ky
        case .chile: return .cl
        case .china: return .cn
        case .colombia: return .co
        case .cookIslands: return .ck
        case .costaRica: return .cr
        case .croatia: return .hr
        case .curacao: return .cw
        case .cyprus: return .cy
        case .czechia: return .cz
        case .denmark: return .dk
        case .dominicanRepublic: return .`do`
        case .ecuador: return .ec
        case .estonia: return .ee
        case .faroeIslands: return .fo
        case .fiji: return .fj
        case .finland: return .fi
        case .france: return .fr
        case .germany: return .de
        case .ghana: return .gh
        case .gibraltar: return .gi
        case .greece: return .gr
        case .guam: return .gu
        case .guatemala: return .gt
        case .guernsey: return .gg
        case .honduras: return .hn
        case .hongKong: return .hk
        case .hungary: return .hu
        case .iceland: return .`is`
        case .india: return .`in`
        case .indonesia: return .id
        case .ireland: return .ie
        case .isleOfMan: return .im
        case .israel: return .il
        case .italy: return .it
        case .jamaica: return .jm
        case .japan: return .jp
        case .jersey: return .je
        case .jordan: return .jo
        case .koreaRepublicOf: return .kr
        case .kosovo: return .xk
        case .kuwait: return .kw
        case .latvia: return .lv
        case .lesotho: return .ls
        case .liechtenstein: return .li
        case .lithuania: return .lt
        case .luxembourg: return .lu
        case .malaysia: return .my
        case .malta: return .mt
        case .marshallIslands: return .mh
        case .mauritius: return .mu
        case .mexico: return .mx
        case .monaco: return .mc
        case .myanmar: return .mm
        case .nepal: return .np
        case .netherlands: return .nl
        case .newZealand: return .nz
        case .niger: return .ne
        case .nigeria: return .ng
        case .northMacedonia: return .mk
        case .norway: return .no
        case .oman: return .om
        case .pakistan: return .pk
        case .panama: return .pa
        case .papuaNewGuinea: return .pg
        case .paraguay: return .py
        case .peru: return .pe
        case .philippines: return .ph
        case .poland: return .pl
        case .portugal: return .pt
        case .puertoRico: return .pr
        case .qatar: return .qa
        case .romania: return .ro
        case .russianFederation: return .ru
        case .saintKittsAndNevis: return .kn
        case .saintVincentAndTheGrenadines: return .vc
        case .samoa: return .ws
        case .sanMarino: return .sm
        case .saudiArabia: return .sa
        case .serbia: return .rs
        case .seychelles: return .sc
        case .singapore: return .sg
        case .sintMaarten: return .sx
        case .slovakia: return .sk
        case .slovenia: return .si
        case .solomonIslands: return .sb
        case .southAfrica: return .za
        case .spain: return .es
        case .suriname: return .sr
        case .sweden: return .se
        case .switzerland: return .ch
        case .taiwan: return .tw
        case .tanzania: return .tz
        case .thailand: return .th
        case .tonga: return .to
        case .tunisia: return .tn
        case .turkiye: return .tr
        case .tuvalu: return .tv
        case .unitedArabEmirates: return .ae
        case .unitedKingdom: return .gb
        case .unitedStatesOfAmerica: return .us
        case .uruguay: return .uy
        case .vanuatu: return .vu
        case .vietNam: return .vn
        case .virginIslandsBritish: return .vg
        case .virginIslandsUS: return .vi
        }
    }
}