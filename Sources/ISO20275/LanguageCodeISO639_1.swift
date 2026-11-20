import Foundation

/// ISO 639-1 alpha-2 language code used in the ISO 20275 Entity Legal Forms (ELF) Code List.
public enum LanguageCodeISO639_1: String, CaseIterable, Codable, Hashable, Sendable, CustomStringConvertible {
    /// Arabic (`ar`).
    case ar = "ar"
    /// Azerbaijani (`az`).
    case az = "az"
    /// Belarusian (`be`).
    case be = "be"
    /// Bulgarian (`bg`).
    case bg = "bg"
    /// Czech (`cs`).
    case cs = "cs"
    /// Welsh (`cy`).
    case cy = "cy"
    /// Danish (`da`).
    case da = "da"
    /// German (`de`).
    case de = "de"
    /// Greek (`el`).
    case el = "el"
    /// English (`en`).
    case en = "en"
    /// Spanish (`es`).
    case es = "es"
    /// Estonian (`et`).
    case et = "et"
    /// Finnish (`fi`).
    case fi = "fi"
    /// Faroese (`fo`).
    case fo = "fo"
    /// French (`fr`).
    case fr = "fr"
    /// Irish (`ga`).
    case ga = "ga"
    /// Hebrew (`he`).
    case he = "he"
    /// Croatian (`hr`).
    case hr = "hr"
    /// Hungarian (`hu`).
    case hu = "hu"
    /// Armenian (`hy`).
    case hy = "hy"
    /// Indonesian (`id`).
    case id = "id"
    /// Icelandic (`is`).
    case `is` = "is"
    /// Italian (`it`).
    case it = "it"
    /// Japanese (`ja`).
    case ja = "ja"
    /// Khmer (`km`).
    case km = "km"
    /// Korean (`ko`).
    case ko = "ko"
    /// Lithuanian (`lt`).
    case lt = "lt"
    /// Latvian (`lv`).
    case lv = "lv"
    /// Macedonian (`mk`).
    case mk = "mk"
    /// Malay (`ms`).
    case ms = "ms"
    /// Maltese (`mt`).
    case mt = "mt"
    /// Burmese (`my`).
    case my = "my"
    /// Nepali (`ne`).
    case ne = "ne"
    /// Dutch (`nl`).
    case nl = "nl"
    /// Norwegian (`no`).
    case no = "no"
    /// Polish (`pl`).
    case pl = "pl"
    /// Portuguese (`pt`).
    case pt = "pt"
    /// Romanian (`ro`).
    case ro = "ro"
    /// Russian (`ru`).
    case ru = "ru"
    /// Slovak (`sk`).
    case sk = "sk"
    /// Slovene (`sl`).
    case sl = "sl"
    /// Albanian (`sq`).
    case sq = "sq"
    /// Serbian (`sr`).
    case sr = "sr"
    /// Swedish (`sv`).
    case sv = "sv"
    /// Thai (`th`).
    case th = "th"
    /// Turkish (`tr`).
    case tr = "tr"
    /// Vietnamese (`vi`).
    case vi = "vi"
    /// Chinese (`zh`).
    case zh = "zh"

    /// Case-insensitive initializer from a 2-letter ISO 639-1 code (e.g., `"EN"` or `"en"`).
    public init?(code: String) {
        self.init(rawValue: code.trimmingCharacters(in: .whitespacesAndNewlines).lowercased())
    }

    public var description: String { rawValue }

    /// Canonical English name for this ISO 639-1 language code (normalizing GLEIF CSV typos such as `"Greece"` or `"Portugese"`).
    public var englishName: String {
        switch self {
        case .ar: return "Arabic"
        case .az: return "Azerbaijani"
        case .be: return "Belarusian"
        case .bg: return "Bulgarian"
        case .cs: return "Czech"
        case .cy: return "Welsh"
        case .da: return "Danish"
        case .de: return "German"
        case .el: return "Greek"
        case .en: return "English"
        case .es: return "Spanish"
        case .et: return "Estonian"
        case .fi: return "Finnish"
        case .fo: return "Faroese"
        case .fr: return "French"
        case .ga: return "Irish"
        case .he: return "Hebrew"
        case .hr: return "Croatian"
        case .hu: return "Hungarian"
        case .hy: return "Armenian"
        case .id: return "Indonesian"
        case .`is`: return "Icelandic"
        case .it: return "Italian"
        case .ja: return "Japanese"
        case .km: return "Khmer"
        case .ko: return "Korean"
        case .lt: return "Lithuanian"
        case .lv: return "Latvian"
        case .mk: return "Macedonian"
        case .ms: return "Malay"
        case .mt: return "Maltese"
        case .my: return "Burmese"
        case .ne: return "Nepali"
        case .nl: return "Dutch"
        case .no: return "Norwegian"
        case .pl: return "Polish"
        case .pt: return "Portuguese"
        case .ro: return "Romanian"
        case .ru: return "Russian"
        case .sk: return "Slovak"
        case .sl: return "Slovene"
        case .sq: return "Albanian"
        case .sr: return "Serbian"
        case .sv: return "Swedish"
        case .th: return "Thai"
        case .tr: return "Turkish"
        case .vi: return "Vietnamese"
        case .zh: return "Chinese"
        }
    }
}