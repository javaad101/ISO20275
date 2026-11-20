import Foundation

/// ISO 3166-1 alpha-2 country code.
///
/// Modeled as an extensible `RawRepresentable` value type (matching Apple's `Locale.Region` pattern)
/// with `static let` constants for known jurisdictions.
public struct CountryCodeISO3166_1: RawRepresentable, Hashable, Codable, Sendable, CustomStringConvertible, ExpressibleByStringLiteral {
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

    /// Corresponding ``Country`` name in the GLEIF registry, if known.
    public var knownCountry: Country? {
        Self.toCountry[self]
    }

    /// United Arab Emirates (`AE`).
    public static let ae = CountryCodeISO3166_1(rawValue: "AE")
    /// Antigua and Barbuda (`AG`).
    public static let ag = CountryCodeISO3166_1(rawValue: "AG")
    /// Armenia (`AM`).
    public static let am = CountryCodeISO3166_1(rawValue: "AM")
    /// Argentina (`AR`).
    public static let ar = CountryCodeISO3166_1(rawValue: "AR")
    /// Austria (`AT`).
    public static let at = CountryCodeISO3166_1(rawValue: "AT")
    /// Australia (`AU`).
    public static let au = CountryCodeISO3166_1(rawValue: "AU")
    /// Aruba (`AW`).
    public static let aw = CountryCodeISO3166_1(rawValue: "AW")
    /// Azerbaijan (`AZ`).
    public static let az = CountryCodeISO3166_1(rawValue: "AZ")
    /// Barbados (`BB`).
    public static let bb = CountryCodeISO3166_1(rawValue: "BB")
    /// Belgium (`BE`).
    public static let be = CountryCodeISO3166_1(rawValue: "BE")
    /// Bulgaria (`BG`).
    public static let bg = CountryCodeISO3166_1(rawValue: "BG")
    /// Bahrain (`BH`).
    public static let bh = CountryCodeISO3166_1(rawValue: "BH")
    /// Benin (`BJ`).
    public static let bj = CountryCodeISO3166_1(rawValue: "BJ")
    /// Bermuda (`BM`).
    public static let bm = CountryCodeISO3166_1(rawValue: "BM")
    /// Brunei Darussalam (`BN`).
    public static let bn = CountryCodeISO3166_1(rawValue: "BN")
    /// Bolivia (Plurinational State of) (`BO`).
    public static let bo = CountryCodeISO3166_1(rawValue: "BO")
    /// Bonaire, Sint Eustatius and Saba (`BQ`).
    public static let bq = CountryCodeISO3166_1(rawValue: "BQ")
    /// Brazil (`BR`).
    public static let br = CountryCodeISO3166_1(rawValue: "BR")
    /// Bahamas (`BS`).
    public static let bs = CountryCodeISO3166_1(rawValue: "BS")
    /// Botswana (`BW`).
    public static let bw = CountryCodeISO3166_1(rawValue: "BW")
    /// Belarus (`BY`).
    public static let by = CountryCodeISO3166_1(rawValue: "BY")
    /// Belize (`BZ`).
    public static let bz = CountryCodeISO3166_1(rawValue: "BZ")
    /// Canada (`CA`).
    public static let ca = CountryCodeISO3166_1(rawValue: "CA")
    /// Switzerland (`CH`).
    public static let ch = CountryCodeISO3166_1(rawValue: "CH")
    /// Cook Islands (`CK`).
    public static let ck = CountryCodeISO3166_1(rawValue: "CK")
    /// Chile (`CL`).
    public static let cl = CountryCodeISO3166_1(rawValue: "CL")
    /// China (`CN`).
    public static let cn = CountryCodeISO3166_1(rawValue: "CN")
    /// Colombia (`CO`).
    public static let co = CountryCodeISO3166_1(rawValue: "CO")
    /// Costa Rica (`CR`).
    public static let cr = CountryCodeISO3166_1(rawValue: "CR")
    /// Curaçao (`CW`).
    public static let cw = CountryCodeISO3166_1(rawValue: "CW")
    /// Cyprus (`CY`).
    public static let cy = CountryCodeISO3166_1(rawValue: "CY")
    /// Czechia (`CZ`).
    public static let cz = CountryCodeISO3166_1(rawValue: "CZ")
    /// Germany (`DE`).
    public static let de = CountryCodeISO3166_1(rawValue: "DE")
    /// Denmark (`DK`).
    public static let dk = CountryCodeISO3166_1(rawValue: "DK")
    /// Dominican Republic (`DO`).
    public static let `do` = CountryCodeISO3166_1(rawValue: "DO")
    /// Ecuador (`EC`).
    public static let ec = CountryCodeISO3166_1(rawValue: "EC")
    /// Estonia (`EE`).
    public static let ee = CountryCodeISO3166_1(rawValue: "EE")
    /// Spain (`ES`).
    public static let es = CountryCodeISO3166_1(rawValue: "ES")
    /// Finland (`FI`).
    public static let fi = CountryCodeISO3166_1(rawValue: "FI")
    /// Fiji (`FJ`).
    public static let fj = CountryCodeISO3166_1(rawValue: "FJ")
    /// Faroe Islands (`FO`).
    public static let fo = CountryCodeISO3166_1(rawValue: "FO")
    /// France (`FR`).
    public static let fr = CountryCodeISO3166_1(rawValue: "FR")
    /// United Kingdom of Great Britain and Northern Ireland (`GB`).
    public static let gb = CountryCodeISO3166_1(rawValue: "GB")
    /// Guernsey (`GG`).
    public static let gg = CountryCodeISO3166_1(rawValue: "GG")
    /// Ghana (`GH`).
    public static let gh = CountryCodeISO3166_1(rawValue: "GH")
    /// Gibraltar (`GI`).
    public static let gi = CountryCodeISO3166_1(rawValue: "GI")
    /// Greece (`GR`).
    public static let gr = CountryCodeISO3166_1(rawValue: "GR")
    /// Guatemala (`GT`).
    public static let gt = CountryCodeISO3166_1(rawValue: "GT")
    /// Guam (`GU`).
    public static let gu = CountryCodeISO3166_1(rawValue: "GU")
    /// Hong Kong (`HK`).
    public static let hk = CountryCodeISO3166_1(rawValue: "HK")
    /// Honduras (`HN`).
    public static let hn = CountryCodeISO3166_1(rawValue: "HN")
    /// Croatia (`HR`).
    public static let hr = CountryCodeISO3166_1(rawValue: "HR")
    /// Hungary (`HU`).
    public static let hu = CountryCodeISO3166_1(rawValue: "HU")
    /// Indonesia (`ID`).
    public static let id = CountryCodeISO3166_1(rawValue: "ID")
    /// Ireland (`IE`).
    public static let ie = CountryCodeISO3166_1(rawValue: "IE")
    /// Israel (`IL`).
    public static let il = CountryCodeISO3166_1(rawValue: "IL")
    /// Isle of Man (`IM`).
    public static let im = CountryCodeISO3166_1(rawValue: "IM")
    /// India (`IN`).
    public static let `in` = CountryCodeISO3166_1(rawValue: "IN")
    /// Iceland (`IS`).
    public static let `is` = CountryCodeISO3166_1(rawValue: "IS")
    /// Italy (`IT`).
    public static let it = CountryCodeISO3166_1(rawValue: "IT")
    /// Jersey (`JE`).
    public static let je = CountryCodeISO3166_1(rawValue: "JE")
    /// Jamaica (`JM`).
    public static let jm = CountryCodeISO3166_1(rawValue: "JM")
    /// Jordan (`JO`).
    public static let jo = CountryCodeISO3166_1(rawValue: "JO")
    /// Japan (`JP`).
    public static let jp = CountryCodeISO3166_1(rawValue: "JP")
    /// Cambodia (`KH`).
    public static let kh = CountryCodeISO3166_1(rawValue: "KH")
    /// Saint Kitts and Nevis (`KN`).
    public static let kn = CountryCodeISO3166_1(rawValue: "KN")
    /// Korea (Republic of) (`KR`).
    public static let kr = CountryCodeISO3166_1(rawValue: "KR")
    /// Kuwait (`KW`).
    public static let kw = CountryCodeISO3166_1(rawValue: "KW")
    /// Cayman Islands (`KY`).
    public static let ky = CountryCodeISO3166_1(rawValue: "KY")
    /// Liechtenstein (`LI`).
    public static let li = CountryCodeISO3166_1(rawValue: "LI")
    /// Lesotho (`LS`).
    public static let ls = CountryCodeISO3166_1(rawValue: "LS")
    /// Lithuania (`LT`).
    public static let lt = CountryCodeISO3166_1(rawValue: "LT")
    /// Luxembourg (`LU`).
    public static let lu = CountryCodeISO3166_1(rawValue: "LU")
    /// Latvia (`LV`).
    public static let lv = CountryCodeISO3166_1(rawValue: "LV")
    /// Monaco (`MC`).
    public static let mc = CountryCodeISO3166_1(rawValue: "MC")
    /// Marshall Islands (`MH`).
    public static let mh = CountryCodeISO3166_1(rawValue: "MH")
    /// North Macedonia (`MK`).
    public static let mk = CountryCodeISO3166_1(rawValue: "MK")
    /// Myanmar (`MM`).
    public static let mm = CountryCodeISO3166_1(rawValue: "MM")
    /// Malta (`MT`).
    public static let mt = CountryCodeISO3166_1(rawValue: "MT")
    /// Mauritius (`MU`).
    public static let mu = CountryCodeISO3166_1(rawValue: "MU")
    /// Mexico (`MX`).
    public static let mx = CountryCodeISO3166_1(rawValue: "MX")
    /// Malaysia (`MY`).
    public static let my = CountryCodeISO3166_1(rawValue: "MY")
    /// Niger (`NE`).
    public static let ne = CountryCodeISO3166_1(rawValue: "NE")
    /// Nigeria (`NG`).
    public static let ng = CountryCodeISO3166_1(rawValue: "NG")
    /// Netherlands (`NL`).
    public static let nl = CountryCodeISO3166_1(rawValue: "NL")
    /// Norway (`NO`).
    public static let no = CountryCodeISO3166_1(rawValue: "NO")
    /// Nepal (`NP`).
    public static let np = CountryCodeISO3166_1(rawValue: "NP")
    /// New Zealand (`NZ`).
    public static let nz = CountryCodeISO3166_1(rawValue: "NZ")
    /// Oman (`OM`).
    public static let om = CountryCodeISO3166_1(rawValue: "OM")
    /// Panama (`PA`).
    public static let pa = CountryCodeISO3166_1(rawValue: "PA")
    /// Peru (`PE`).
    public static let pe = CountryCodeISO3166_1(rawValue: "PE")
    /// Papua New Guinea (`PG`).
    public static let pg = CountryCodeISO3166_1(rawValue: "PG")
    /// Philippines (`PH`).
    public static let ph = CountryCodeISO3166_1(rawValue: "PH")
    /// Pakistan (`PK`).
    public static let pk = CountryCodeISO3166_1(rawValue: "PK")
    /// Poland (`PL`).
    public static let pl = CountryCodeISO3166_1(rawValue: "PL")
    /// Puerto Rico (`PR`).
    public static let pr = CountryCodeISO3166_1(rawValue: "PR")
    /// Portugal (`PT`).
    public static let pt = CountryCodeISO3166_1(rawValue: "PT")
    /// Paraguay (`PY`).
    public static let py = CountryCodeISO3166_1(rawValue: "PY")
    /// Qatar (`QA`).
    public static let qa = CountryCodeISO3166_1(rawValue: "QA")
    /// Romania (`RO`).
    public static let ro = CountryCodeISO3166_1(rawValue: "RO")
    /// Serbia (`RS`).
    public static let rs = CountryCodeISO3166_1(rawValue: "RS")
    /// Russian Federation (`RU`).
    public static let ru = CountryCodeISO3166_1(rawValue: "RU")
    /// Saudi Arabia (`SA`).
    public static let sa = CountryCodeISO3166_1(rawValue: "SA")
    /// Solomon Islands (`SB`).
    public static let sb = CountryCodeISO3166_1(rawValue: "SB")
    /// Seychelles (`SC`).
    public static let sc = CountryCodeISO3166_1(rawValue: "SC")
    /// Sweden (`SE`).
    public static let se = CountryCodeISO3166_1(rawValue: "SE")
    /// Singapore (`SG`).
    public static let sg = CountryCodeISO3166_1(rawValue: "SG")
    /// Slovenia (`SI`).
    public static let si = CountryCodeISO3166_1(rawValue: "SI")
    /// Slovakia (`SK`).
    public static let sk = CountryCodeISO3166_1(rawValue: "SK")
    /// San Marino (`SM`).
    public static let sm = CountryCodeISO3166_1(rawValue: "SM")
    /// Suriname (`SR`).
    public static let sr = CountryCodeISO3166_1(rawValue: "SR")
    /// Sint Maarten (`SX`).
    public static let sx = CountryCodeISO3166_1(rawValue: "SX")
    /// Thailand (`TH`).
    public static let th = CountryCodeISO3166_1(rawValue: "TH")
    /// Tunisia (`TN`).
    public static let tn = CountryCodeISO3166_1(rawValue: "TN")
    /// Tonga (`TO`).
    public static let to = CountryCodeISO3166_1(rawValue: "TO")
    /// Türkiye (`TR`).
    public static let tr = CountryCodeISO3166_1(rawValue: "TR")
    /// Tuvalu (`TV`).
    public static let tv = CountryCodeISO3166_1(rawValue: "TV")
    /// Taiwan (Province of China) (`TW`).
    public static let tw = CountryCodeISO3166_1(rawValue: "TW")
    /// Tanzania (`TZ`).
    public static let tz = CountryCodeISO3166_1(rawValue: "TZ")
    /// United States of America (`US`).
    public static let us = CountryCodeISO3166_1(rawValue: "US")
    /// Uruguay (`UY`).
    public static let uy = CountryCodeISO3166_1(rawValue: "UY")
    /// Saint Vincent and the Grenadines (`VC`).
    public static let vc = CountryCodeISO3166_1(rawValue: "VC")
    /// Virgin Islands (British) (`VG`).
    public static let vg = CountryCodeISO3166_1(rawValue: "VG")
    /// Virgin Islands (U.S.) (`VI`).
    public static let vi = CountryCodeISO3166_1(rawValue: "VI")
    /// Viet Nam (`VN`).
    public static let vn = CountryCodeISO3166_1(rawValue: "VN")
    /// Vanuatu (`VU`).
    public static let vu = CountryCodeISO3166_1(rawValue: "VU")
    /// Samoa (`WS`).
    public static let ws = CountryCodeISO3166_1(rawValue: "WS")
    /// Kosovo (`XK`).
    public static let xk = CountryCodeISO3166_1(rawValue: "XK")
    /// South Africa (`ZA`).
    public static let za = CountryCodeISO3166_1(rawValue: "ZA")

    /// All 129 ISO 3166-1 alpha-2 codes present in GLEIF ELF Code List v1.6.
    public static let allKnown: [CountryCodeISO3166_1] = [
        .ae,
        .ag,
        .am,
        .ar,
        .at,
        .au,
        .aw,
        .az,
        .bb,
        .be,
        .bg,
        .bh,
        .bj,
        .bm,
        .bn,
        .bo,
        .bq,
        .br,
        .bs,
        .bw,
        .by,
        .bz,
        .ca,
        .ch,
        .ck,
        .cl,
        .cn,
        .co,
        .cr,
        .cw,
        .cy,
        .cz,
        .de,
        .dk,
        .`do`,
        .ec,
        .ee,
        .es,
        .fi,
        .fj,
        .fo,
        .fr,
        .gb,
        .gg,
        .gh,
        .gi,
        .gr,
        .gt,
        .gu,
        .hk,
        .hn,
        .hr,
        .hu,
        .id,
        .ie,
        .il,
        .im,
        .`in`,
        .`is`,
        .it,
        .je,
        .jm,
        .jo,
        .jp,
        .kh,
        .kn,
        .kr,
        .kw,
        .ky,
        .li,
        .ls,
        .lt,
        .lu,
        .lv,
        .mc,
        .mh,
        .mk,
        .mm,
        .mt,
        .mu,
        .mx,
        .my,
        .ne,
        .ng,
        .nl,
        .no,
        .np,
        .nz,
        .om,
        .pa,
        .pe,
        .pg,
        .ph,
        .pk,
        .pl,
        .pr,
        .pt,
        .py,
        .qa,
        .ro,
        .rs,
        .ru,
        .sa,
        .sb,
        .sc,
        .se,
        .sg,
        .si,
        .sk,
        .sm,
        .sr,
        .sx,
        .th,
        .tn,
        .to,
        .tr,
        .tv,
        .tw,
        .tz,
        .us,
        .uy,
        .vc,
        .vg,
        .vi,
        .vn,
        .vu,
        .ws,
        .xk,
        .za,
    ]

    private static let toCountry: [CountryCodeISO3166_1: Country] = [
        .ae: .unitedArabEmirates,
        .ag: .antiguaAndBarbuda,
        .am: .armenia,
        .ar: .argentina,
        .at: .austria,
        .au: .australia,
        .aw: .aruba,
        .az: .azerbaijan,
        .bb: .barbados,
        .be: .belgium,
        .bg: .bulgaria,
        .bh: .bahrain,
        .bj: .benin,
        .bm: .bermuda,
        .bn: .bruneiDarussalam,
        .bo: .bolivia,
        .bq: .bonaireSintEustatiusAndSaba,
        .br: .brazil,
        .bs: .bahamas,
        .bw: .botswana,
        .by: .belarus,
        .bz: .belize,
        .ca: .canada,
        .ch: .switzerland,
        .ck: .cookIslands,
        .cl: .chile,
        .cn: .china,
        .co: .colombia,
        .cr: .costaRica,
        .cw: .curacao,
        .cy: .cyprus,
        .cz: .czechia,
        .de: .germany,
        .dk: .denmark,
        .`do`: .dominicanRepublic,
        .ec: .ecuador,
        .ee: .estonia,
        .es: .spain,
        .fi: .finland,
        .fj: .fiji,
        .fo: .faroeIslands,
        .fr: .france,
        .gb: .unitedKingdom,
        .gg: .guernsey,
        .gh: .ghana,
        .gi: .gibraltar,
        .gr: .greece,
        .gt: .guatemala,
        .gu: .guam,
        .hk: .hongKong,
        .hn: .honduras,
        .hr: .croatia,
        .hu: .hungary,
        .id: .indonesia,
        .ie: .ireland,
        .il: .israel,
        .im: .isleOfMan,
        .`in`: .india,
        .`is`: .iceland,
        .it: .italy,
        .je: .jersey,
        .jm: .jamaica,
        .jo: .jordan,
        .jp: .japan,
        .kh: .cambodia,
        .kn: .saintKittsAndNevis,
        .kr: .koreaRepublicOf,
        .kw: .kuwait,
        .ky: .caymanIslands,
        .li: .liechtenstein,
        .ls: .lesotho,
        .lt: .lithuania,
        .lu: .luxembourg,
        .lv: .latvia,
        .mc: .monaco,
        .mh: .marshallIslands,
        .mk: .northMacedonia,
        .mm: .myanmar,
        .mt: .malta,
        .mu: .mauritius,
        .mx: .mexico,
        .my: .malaysia,
        .ne: .niger,
        .ng: .nigeria,
        .nl: .netherlands,
        .no: .norway,
        .np: .nepal,
        .nz: .newZealand,
        .om: .oman,
        .pa: .panama,
        .pe: .peru,
        .pg: .papuaNewGuinea,
        .ph: .philippines,
        .pk: .pakistan,
        .pl: .poland,
        .pr: .puertoRico,
        .pt: .portugal,
        .py: .paraguay,
        .qa: .qatar,
        .ro: .romania,
        .rs: .serbia,
        .ru: .russianFederation,
        .sa: .saudiArabia,
        .sb: .solomonIslands,
        .sc: .seychelles,
        .se: .sweden,
        .sg: .singapore,
        .si: .slovenia,
        .sk: .slovakia,
        .sm: .sanMarino,
        .sr: .suriname,
        .sx: .sintMaarten,
        .th: .thailand,
        .tn: .tunisia,
        .to: .tonga,
        .tr: .turkiye,
        .tv: .tuvalu,
        .tw: .taiwan,
        .tz: .tanzania,
        .us: .unitedStatesOfAmerica,
        .uy: .uruguay,
        .vc: .saintVincentAndTheGrenadines,
        .vg: .virginIslandsBritish,
        .vi: .virginIslandsUS,
        .vn: .vietNam,
        .vu: .vanuatu,
        .ws: .samoa,
        .xk: .kosovo,
        .za: .southAfrica,
    ]
}
