import Foundation

/// ISO 639-1 alpha-2 language code.
///
/// Modeled as an extensible `RawRepresentable` value type (matching Apple's `Locale.LanguageCode` pattern)
/// with `static let` constants for known languages.
public struct LanguageCodeISO639_1: RawRepresentable, Hashable, Codable, Sendable, CustomStringConvertible, ExpressibleByStringLiteral {
    public let rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .lowercased()
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

    /// Canonical English name for this ISO 639-1 code, if known.
    public var knownEnglishName: String? {
        Self.englishNames[self]
    }

    /// Arabic (`ar`).
    public static let ar = LanguageCodeISO639_1(rawValue: "ar")
    /// Azerbaijani (`az`).
    public static let az = LanguageCodeISO639_1(rawValue: "az")
    /// Belarusian (`be`).
    public static let be = LanguageCodeISO639_1(rawValue: "be")
    /// Bulgarian (`bg`).
    public static let bg = LanguageCodeISO639_1(rawValue: "bg")
    /// Czech (`cs`).
    public static let cs = LanguageCodeISO639_1(rawValue: "cs")
    /// Welsh (`cy`).
    public static let cy = LanguageCodeISO639_1(rawValue: "cy")
    /// Danish (`da`).
    public static let da = LanguageCodeISO639_1(rawValue: "da")
    /// German (`de`).
    public static let de = LanguageCodeISO639_1(rawValue: "de")
    /// Greek (`el`).
    public static let el = LanguageCodeISO639_1(rawValue: "el")
    /// English (`en`).
    public static let en = LanguageCodeISO639_1(rawValue: "en")
    /// Spanish (`es`).
    public static let es = LanguageCodeISO639_1(rawValue: "es")
    /// Estonian (`et`).
    public static let et = LanguageCodeISO639_1(rawValue: "et")
    /// Finnish (`fi`).
    public static let fi = LanguageCodeISO639_1(rawValue: "fi")
    /// Faroese (`fo`).
    public static let fo = LanguageCodeISO639_1(rawValue: "fo")
    /// French (`fr`).
    public static let fr = LanguageCodeISO639_1(rawValue: "fr")
    /// Irish (`ga`).
    public static let ga = LanguageCodeISO639_1(rawValue: "ga")
    /// Hebrew (`he`).
    public static let he = LanguageCodeISO639_1(rawValue: "he")
    /// Croatian (`hr`).
    public static let hr = LanguageCodeISO639_1(rawValue: "hr")
    /// Hungarian (`hu`).
    public static let hu = LanguageCodeISO639_1(rawValue: "hu")
    /// Armenian (`hy`).
    public static let hy = LanguageCodeISO639_1(rawValue: "hy")
    /// Indonesian (`id`).
    public static let id = LanguageCodeISO639_1(rawValue: "id")
    /// Icelandic (`is`).
    public static let `is` = LanguageCodeISO639_1(rawValue: "is")
    /// Italian (`it`).
    public static let it = LanguageCodeISO639_1(rawValue: "it")
    /// Japanese (`ja`).
    public static let ja = LanguageCodeISO639_1(rawValue: "ja")
    /// Khmer (`km`).
    public static let km = LanguageCodeISO639_1(rawValue: "km")
    /// Korean (`ko`).
    public static let ko = LanguageCodeISO639_1(rawValue: "ko")
    /// Lithuanian (`lt`).
    public static let lt = LanguageCodeISO639_1(rawValue: "lt")
    /// Latvian (`lv`).
    public static let lv = LanguageCodeISO639_1(rawValue: "lv")
    /// Macedonian (`mk`).
    public static let mk = LanguageCodeISO639_1(rawValue: "mk")
    /// Malay (`ms`).
    public static let ms = LanguageCodeISO639_1(rawValue: "ms")
    /// Maltese (`mt`).
    public static let mt = LanguageCodeISO639_1(rawValue: "mt")
    /// Burmese (`my`).
    public static let my = LanguageCodeISO639_1(rawValue: "my")
    /// Nepali (`ne`).
    public static let ne = LanguageCodeISO639_1(rawValue: "ne")
    /// Dutch (`nl`).
    public static let nl = LanguageCodeISO639_1(rawValue: "nl")
    /// Norwegian (`no`).
    public static let no = LanguageCodeISO639_1(rawValue: "no")
    /// Polish (`pl`).
    public static let pl = LanguageCodeISO639_1(rawValue: "pl")
    /// Portuguese (`pt`).
    public static let pt = LanguageCodeISO639_1(rawValue: "pt")
    /// Romanian (`ro`).
    public static let ro = LanguageCodeISO639_1(rawValue: "ro")
    /// Russian (`ru`).
    public static let ru = LanguageCodeISO639_1(rawValue: "ru")
    /// Slovak (`sk`).
    public static let sk = LanguageCodeISO639_1(rawValue: "sk")
    /// Slovene (`sl`).
    public static let sl = LanguageCodeISO639_1(rawValue: "sl")
    /// Albanian (`sq`).
    public static let sq = LanguageCodeISO639_1(rawValue: "sq")
    /// Serbian (`sr`).
    public static let sr = LanguageCodeISO639_1(rawValue: "sr")
    /// Swedish (`sv`).
    public static let sv = LanguageCodeISO639_1(rawValue: "sv")
    /// Thai (`th`).
    public static let th = LanguageCodeISO639_1(rawValue: "th")
    /// Turkish (`tr`).
    public static let tr = LanguageCodeISO639_1(rawValue: "tr")
    /// Vietnamese (`vi`).
    public static let vi = LanguageCodeISO639_1(rawValue: "vi")
    /// Chinese (`zh`).
    public static let zh = LanguageCodeISO639_1(rawValue: "zh")

    /// All 48 ISO 639-1 language codes present in GLEIF ELF Code List v1.6.
    public static let allKnown: [LanguageCodeISO639_1] = [
        .ar,
        .az,
        .be,
        .bg,
        .cs,
        .cy,
        .da,
        .de,
        .el,
        .en,
        .es,
        .et,
        .fi,
        .fo,
        .fr,
        .ga,
        .he,
        .hr,
        .hu,
        .hy,
        .id,
        .`is`,
        .it,
        .ja,
        .km,
        .ko,
        .lt,
        .lv,
        .mk,
        .ms,
        .mt,
        .my,
        .ne,
        .nl,
        .no,
        .pl,
        .pt,
        .ro,
        .ru,
        .sk,
        .sl,
        .sq,
        .sr,
        .sv,
        .th,
        .tr,
        .vi,
        .zh,
    ]

    private static let englishNames: [LanguageCodeISO639_1: String] = [
        .ar: "Arabic",
        .az: "Azerbaijani",
        .be: "Belarusian",
        .bg: "Bulgarian",
        .cs: "Czech",
        .cy: "Welsh",
        .da: "Danish",
        .de: "German",
        .el: "Greek",
        .en: "English",
        .es: "Spanish",
        .et: "Estonian",
        .fi: "Finnish",
        .fo: "Faroese",
        .fr: "French",
        .ga: "Irish",
        .he: "Hebrew",
        .hr: "Croatian",
        .hu: "Hungarian",
        .hy: "Armenian",
        .id: "Indonesian",
        .`is`: "Icelandic",
        .it: "Italian",
        .ja: "Japanese",
        .km: "Khmer",
        .ko: "Korean",
        .lt: "Lithuanian",
        .lv: "Latvian",
        .mk: "Macedonian",
        .ms: "Malay",
        .mt: "Maltese",
        .my: "Burmese",
        .ne: "Nepali",
        .nl: "Dutch",
        .no: "Norwegian",
        .pl: "Polish",
        .pt: "Portuguese",
        .ro: "Romanian",
        .ru: "Russian",
        .sk: "Slovak",
        .sl: "Slovene",
        .sq: "Albanian",
        .sr: "Serbian",
        .sv: "Swedish",
        .th: "Thai",
        .tr: "Turkish",
        .vi: "Vietnamese",
        .zh: "Chinese",
    ]
}
