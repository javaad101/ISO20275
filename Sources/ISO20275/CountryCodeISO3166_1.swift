import Foundation

/// ISO 3166-1 alpha-2 country code used in the ISO 20275 Entity Legal Forms (ELF) Code List.
public enum CountryCodeISO3166_1: String, CaseIterable, Codable, Hashable, Sendable, CustomStringConvertible {
    /// United Arab Emirates (`AE`).
    case ae = "AE"
    /// Antigua and Barbuda (`AG`).
    case ag = "AG"
    /// Armenia (`AM`).
    case am = "AM"
    /// Argentina (`AR`).
    case ar = "AR"
    /// Austria (`AT`).
    case at = "AT"
    /// Australia (`AU`).
    case au = "AU"
    /// Aruba (`AW`).
    case aw = "AW"
    /// Azerbaijan (`AZ`).
    case az = "AZ"
    /// Barbados (`BB`).
    case bb = "BB"
    /// Belgium (`BE`).
    case be = "BE"
    /// Bulgaria (`BG`).
    case bg = "BG"
    /// Bahrain (`BH`).
    case bh = "BH"
    /// Benin (`BJ`).
    case bj = "BJ"
    /// Bermuda (`BM`).
    case bm = "BM"
    /// Brunei Darussalam (`BN`).
    case bn = "BN"
    /// Bolivia (Plurinational State of) (`BO`).
    case bo = "BO"
    /// Bonaire, Sint Eustatius and Saba (`BQ`).
    case bq = "BQ"
    /// Brazil (`BR`).
    case br = "BR"
    /// Bahamas (`BS`).
    case bs = "BS"
    /// Botswana (`BW`).
    case bw = "BW"
    /// Belarus (`BY`).
    case by = "BY"
    /// Belize (`BZ`).
    case bz = "BZ"
    /// Canada (`CA`).
    case ca = "CA"
    /// Switzerland (`CH`).
    case ch = "CH"
    /// Cook Islands (`CK`).
    case ck = "CK"
    /// Chile (`CL`).
    case cl = "CL"
    /// China (`CN`).
    case cn = "CN"
    /// Colombia (`CO`).
    case co = "CO"
    /// Costa Rica (`CR`).
    case cr = "CR"
    /// Curaçao (`CW`).
    case cw = "CW"
    /// Cyprus (`CY`).
    case cy = "CY"
    /// Czechia (`CZ`).
    case cz = "CZ"
    /// Germany (`DE`).
    case de = "DE"
    /// Denmark (`DK`).
    case dk = "DK"
    /// Dominican Republic (`DO`).
    case `do` = "DO"
    /// Ecuador (`EC`).
    case ec = "EC"
    /// Estonia (`EE`).
    case ee = "EE"
    /// Spain (`ES`).
    case es = "ES"
    /// Finland (`FI`).
    case fi = "FI"
    /// Fiji (`FJ`).
    case fj = "FJ"
    /// Faroe Islands (`FO`).
    case fo = "FO"
    /// France (`FR`).
    case fr = "FR"
    /// United Kingdom of Great Britain and Northern Ireland (`GB`).
    case gb = "GB"
    /// Guernsey (`GG`).
    case gg = "GG"
    /// Ghana (`GH`).
    case gh = "GH"
    /// Gibraltar (`GI`).
    case gi = "GI"
    /// Greece (`GR`).
    case gr = "GR"
    /// Guatemala (`GT`).
    case gt = "GT"
    /// Guam (`GU`).
    case gu = "GU"
    /// Hong Kong (`HK`).
    case hk = "HK"
    /// Honduras (`HN`).
    case hn = "HN"
    /// Croatia (`HR`).
    case hr = "HR"
    /// Hungary (`HU`).
    case hu = "HU"
    /// Indonesia (`ID`).
    case id = "ID"
    /// Ireland (`IE`).
    case ie = "IE"
    /// Israel (`IL`).
    case il = "IL"
    /// Isle of Man (`IM`).
    case im = "IM"
    /// India (`IN`).
    case `in` = "IN"
    /// Iceland (`IS`).
    case `is` = "IS"
    /// Italy (`IT`).
    case it = "IT"
    /// Jersey (`JE`).
    case je = "JE"
    /// Jamaica (`JM`).
    case jm = "JM"
    /// Jordan (`JO`).
    case jo = "JO"
    /// Japan (`JP`).
    case jp = "JP"
    /// Cambodia (`KH`).
    case kh = "KH"
    /// Saint Kitts and Nevis (`KN`).
    case kn = "KN"
    /// Korea (Republic of) (`KR`).
    case kr = "KR"
    /// Kuwait (`KW`).
    case kw = "KW"
    /// Cayman Islands (`KY`).
    case ky = "KY"
    /// Liechtenstein (`LI`).
    case li = "LI"
    /// Lesotho (`LS`).
    case ls = "LS"
    /// Lithuania (`LT`).
    case lt = "LT"
    /// Luxembourg (`LU`).
    case lu = "LU"
    /// Latvia (`LV`).
    case lv = "LV"
    /// Monaco (`MC`).
    case mc = "MC"
    /// Marshall Islands (`MH`).
    case mh = "MH"
    /// North Macedonia (`MK`).
    case mk = "MK"
    /// Myanmar (`MM`).
    case mm = "MM"
    /// Malta (`MT`).
    case mt = "MT"
    /// Mauritius (`MU`).
    case mu = "MU"
    /// Mexico (`MX`).
    case mx = "MX"
    /// Malaysia (`MY`).
    case my = "MY"
    /// Niger (`NE`).
    case ne = "NE"
    /// Nigeria (`NG`).
    case ng = "NG"
    /// Netherlands (`NL`).
    case nl = "NL"
    /// Norway (`NO`).
    case no = "NO"
    /// Nepal (`NP`).
    case np = "NP"
    /// New Zealand (`NZ`).
    case nz = "NZ"
    /// Oman (`OM`).
    case om = "OM"
    /// Panama (`PA`).
    case pa = "PA"
    /// Peru (`PE`).
    case pe = "PE"
    /// Papua New Guinea (`PG`).
    case pg = "PG"
    /// Philippines (`PH`).
    case ph = "PH"
    /// Pakistan (`PK`).
    case pk = "PK"
    /// Poland (`PL`).
    case pl = "PL"
    /// Puerto Rico (`PR`).
    case pr = "PR"
    /// Portugal (`PT`).
    case pt = "PT"
    /// Paraguay (`PY`).
    case py = "PY"
    /// Qatar (`QA`).
    case qa = "QA"
    /// Romania (`RO`).
    case ro = "RO"
    /// Serbia (`RS`).
    case rs = "RS"
    /// Russian Federation (`RU`).
    case ru = "RU"
    /// Saudi Arabia (`SA`).
    case sa = "SA"
    /// Solomon Islands (`SB`).
    case sb = "SB"
    /// Seychelles (`SC`).
    case sc = "SC"
    /// Sweden (`SE`).
    case se = "SE"
    /// Singapore (`SG`).
    case sg = "SG"
    /// Slovenia (`SI`).
    case si = "SI"
    /// Slovakia (`SK`).
    case sk = "SK"
    /// San Marino (`SM`).
    case sm = "SM"
    /// Suriname (`SR`).
    case sr = "SR"
    /// Sint Maarten (`SX`).
    case sx = "SX"
    /// Thailand (`TH`).
    case th = "TH"
    /// Tunisia (`TN`).
    case tn = "TN"
    /// Tonga (`TO`).
    case to = "TO"
    /// Türkiye (`TR`).
    case tr = "TR"
    /// Tuvalu (`TV`).
    case tv = "TV"
    /// Taiwan (Province of China) (`TW`).
    case tw = "TW"
    /// Tanzania (`TZ`).
    case tz = "TZ"
    /// United States of America (`US`).
    case us = "US"
    /// Uruguay (`UY`).
    case uy = "UY"
    /// Saint Vincent and the Grenadines (`VC`).
    case vc = "VC"
    /// Virgin Islands (British) (`VG`).
    case vg = "VG"
    /// Virgin Islands (U.S.) (`VI`).
    case vi = "VI"
    /// Viet Nam (`VN`).
    case vn = "VN"
    /// Vanuatu (`VU`).
    case vu = "VU"
    /// Samoa (`WS`).
    case ws = "WS"
    /// Kosovo (`XK`).
    case xk = "XK"
    /// South Africa (`ZA`).
    case za = "ZA"

    /// Case-insensitive initializer from a 2-letter ISO 3166-1 alpha-2 code (e.g., `"us"` or `"US"`).
    public init?(code: String) {
        self.init(rawValue: code.trimmingCharacters(in: .whitespacesAndNewlines).uppercased())
    }

    public var description: String { rawValue }

    /// Corresponding ``Country`` in the ISO 20275 dataset.
    public var country: Country {
        switch self {
        case .ae: return .unitedArabEmirates
        case .ag: return .antiguaAndBarbuda
        case .am: return .armenia
        case .ar: return .argentina
        case .at: return .austria
        case .au: return .australia
        case .aw: return .aruba
        case .az: return .azerbaijan
        case .bb: return .barbados
        case .be: return .belgium
        case .bg: return .bulgaria
        case .bh: return .bahrain
        case .bj: return .benin
        case .bm: return .bermuda
        case .bn: return .bruneiDarussalam
        case .bo: return .bolivia
        case .bq: return .bonaireSintEustatiusAndSaba
        case .br: return .brazil
        case .bs: return .bahamas
        case .bw: return .botswana
        case .by: return .belarus
        case .bz: return .belize
        case .ca: return .canada
        case .ch: return .switzerland
        case .ck: return .cookIslands
        case .cl: return .chile
        case .cn: return .china
        case .co: return .colombia
        case .cr: return .costaRica
        case .cw: return .curacao
        case .cy: return .cyprus
        case .cz: return .czechia
        case .de: return .germany
        case .dk: return .denmark
        case .`do`: return .dominicanRepublic
        case .ec: return .ecuador
        case .ee: return .estonia
        case .es: return .spain
        case .fi: return .finland
        case .fj: return .fiji
        case .fo: return .faroeIslands
        case .fr: return .france
        case .gb: return .unitedKingdom
        case .gg: return .guernsey
        case .gh: return .ghana
        case .gi: return .gibraltar
        case .gr: return .greece
        case .gt: return .guatemala
        case .gu: return .guam
        case .hk: return .hongKong
        case .hn: return .honduras
        case .hr: return .croatia
        case .hu: return .hungary
        case .id: return .indonesia
        case .ie: return .ireland
        case .il: return .israel
        case .im: return .isleOfMan
        case .`in`: return .india
        case .`is`: return .iceland
        case .it: return .italy
        case .je: return .jersey
        case .jm: return .jamaica
        case .jo: return .jordan
        case .jp: return .japan
        case .kh: return .cambodia
        case .kn: return .saintKittsAndNevis
        case .kr: return .koreaRepublicOf
        case .kw: return .kuwait
        case .ky: return .caymanIslands
        case .li: return .liechtenstein
        case .ls: return .lesotho
        case .lt: return .lithuania
        case .lu: return .luxembourg
        case .lv: return .latvia
        case .mc: return .monaco
        case .mh: return .marshallIslands
        case .mk: return .northMacedonia
        case .mm: return .myanmar
        case .mt: return .malta
        case .mu: return .mauritius
        case .mx: return .mexico
        case .my: return .malaysia
        case .ne: return .niger
        case .ng: return .nigeria
        case .nl: return .netherlands
        case .no: return .norway
        case .np: return .nepal
        case .nz: return .newZealand
        case .om: return .oman
        case .pa: return .panama
        case .pe: return .peru
        case .pg: return .papuaNewGuinea
        case .ph: return .philippines
        case .pk: return .pakistan
        case .pl: return .poland
        case .pr: return .puertoRico
        case .pt: return .portugal
        case .py: return .paraguay
        case .qa: return .qatar
        case .ro: return .romania
        case .rs: return .serbia
        case .ru: return .russianFederation
        case .sa: return .saudiArabia
        case .sb: return .solomonIslands
        case .sc: return .seychelles
        case .se: return .sweden
        case .sg: return .singapore
        case .si: return .slovenia
        case .sk: return .slovakia
        case .sm: return .sanMarino
        case .sr: return .suriname
        case .sx: return .sintMaarten
        case .th: return .thailand
        case .tn: return .tunisia
        case .to: return .tonga
        case .tr: return .turkiye
        case .tv: return .tuvalu
        case .tw: return .taiwan
        case .tz: return .tanzania
        case .us: return .unitedStatesOfAmerica
        case .uy: return .uruguay
        case .vc: return .saintVincentAndTheGrenadines
        case .vg: return .virginIslandsBritish
        case .vi: return .virginIslandsUS
        case .vn: return .vietNam
        case .vu: return .vanuatu
        case .ws: return .samoa
        case .xk: return .kosovo
        case .za: return .southAfrica
        }
    }
}