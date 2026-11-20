import Foundation

/// Four-character alphanumeric ISO 20275 Entity Legal Form (ELF) code assigned by GLEIF.
///
/// Digit-leading codes use a leading underscore identifier (e.g., `._8888` for `"8888"`, `._5awn` for `"5AWN"`),
/// while letter-leading codes use their lowercased identifier (e.g., `.cdov` for `"CDOV"`).
public enum ELFCode: String, CaseIterable, Codable, Hashable, Sendable, CustomStringConvertible {
    /// Reserved GLEIF code (`"8888"`) used when requesting a new ELF code for a legal form not yet on the list.
    public static let pendingNewCodeRequest: ELFCode = ._8888
    /// Reserved GLEIF code (`"9999"`) used for LEIs of entities that have no separate legal form.
    public static let noSeparateLegalForm: ELFCode = ._9999

    private static let byRawValue: [String: ELFCode] = {
        var map: [String: ELFCode] = [:]
        map.reserveCapacity(allCases.count)
        for c in allCases {
            map[c.rawValue] = c
        }
        return map
    }()

    /// `09K3` — Faroe Islands: Samstarvsfelag við ábyrgd
    case _09k3 = "09K3"
    /// `0AWU` — United States of America — Oregon: credit union
    case _0awu = "0AWU"
    /// `0GY3` — United States of America — Colorado: credit union
    case _0gy3 = "0GY3"
    /// `0NYS` — Singapore: Partnership
    case _0nys = "0NYS"
    /// `0OCP` — Viet Nam: công ty trách nhiệm hữu hạn
    case _0ocp = "0OCP"
    /// `0SKB` — United States of America — Indiana: credit union
    case _0skb = "0SKB"
    /// `0WOU` — United States of America — Kansas: credit union
    case _0wou = "0WOU"
    /// `106J` — Belarus: Zakrytae akcyyanernae tavarystva
    case _106j = "106J"
    /// `10GE` — United States of America — Wisconsin: credit union
    case _10ge = "10GE"
    /// `10ST` — Saint Vincent and the Grenadines: association
    case _10st = "10ST"
    /// `10UR` — Canada — Quebec: Syndicat coopératif
    case _10ur = "10UR"
    /// `11GD` — United States of America — South Carolina: Nonprofit Corporation
    case _11gd = "11GD"
    /// `12F9` — Honduras: Sociedades de Capital Variable
    case _12f9 = "12F9"
    /// `12KO` — Korea (Republic of): HoeSaHyeong fund
    case _12ko = "12KO"
    /// `12MV` — Liechtenstein: Kommanditaktiengesellschaft
    case _12mv = "12MV"
    /// `12N6` — United States of America — Delaware: Unincorporated Nonprofit Association
    case _12n6 = "12N6"
    /// `135L` — Italy: Societa' Costituita In Base A Leggi Di Altro Stato
    case _135l = "135L"
    /// `13AV` — Germany: Versicherungsverein auf Gegenseitigkeit
    case _13av = "13AV"
    /// `13T9` — Lithuania: Europos bendrovės
    case _13t9 = "13T9"
    /// `13ZV` — Poland: samodzielny publiczny zakład opieki zdrowotnej
    case _13zv = "13ZV"
    /// `149O` — North Macedonia: Komanditno drustvo so akcii
    case _149o = "149O"
    /// `14AT` — Slovenia: Javna agencija
    case _14at = "14AT"
    /// `14NU` — Slovakia: Rozpočtové a príspevkové organizácie
    case _14nu = "14NU"
    /// `14OD` — United States of America: credit union
    case _14od = "14OD"
    /// `14U1` — Taiwan (Province of China): Wúxiàn zérèn gǔdōng de wúxiàn gōngsī
    case _14u1 = "14U1"
    /// `157O` — France: Régie d'une collectivité locale à caractère administratif
    case _157o = "157O"
    /// `15A2` — Russian Federation: Ob"yedineniya (assotsiatsii i soyuzy) blagotvoritel'nykh organizatsiy
    case _15a2 = "15A2"
    /// `15BP` — Cambodia: Private Limited Company
    case _15bp = "15BP"
    /// `15JS` — United States of America — South Dakota: Limited Partnership
    case _15js = "15JS"
    /// `16GH` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les cercles agricoles
    case _16gh = "16GH"
    /// `16RL` — Canada — Quebec: Personne morale sans but lucratif par Loi sur la mise en marché des produits agricoles
    case _16rl = "16RL"
    /// `17FJ` — Singapore: Limited Partnership
    case _17fj = "17FJ"
    /// `17R0` — United Kingdom of Great Britain and Northern Ireland: Community Interest Company
    case _17r0 = "17R0"
    /// `17R7` — Russian Federation: Obshchestva s ogranichennoy otvetstvennost'yu
    case _17r7 = "17R7"
    /// `180P` — India: Stand Alone Primary Dealer
    case _180p = "180P"
    /// `189Q` — Slovakia: Špecializovaná organizačná jednotka ČSD
    case _189q = "189Q"
    /// `194I` — Puerto Rico: Professional Corporation
    case _194i = "194I"
    /// `1A0A` — Bonaire, Sint Eustatius and Saba: Besloten vennootschap
    case _1a0a = "1A0A"
    /// `1ADA` — United States of America — Missouri: Family Trust Company
    case _1ada = "1ADA"
    /// `1ADH` — Canada — Northwest Territories: Extra-Territorial Corporation(for profit and not-for-profit)
    case _1adh = "1ADH"
    /// `1AFG` — Finland: Muu yhtiö
    case _1afg = "1AFG"
    /// `1ASH` — United States of America — Minnesota: Religious corporations
    case _1ash = "1ASH"
    /// `1B88` — France: SCP de médecins
    case _1b88 = "1B88"
    /// `1BL5` — Switzerland: Swiss branch of an enterprise domiciled abroad not registered in the commercial register
    case _1bl5 = "1BL5"
    /// `1CDX` — Romania: Societate europeană
    case _1cdx = "1CDX"
    /// `1CML` — Canada — British Columbia: Sole proprietorship
    case _1cml = "1CML"
    /// `1CSW` — Slovakia: Obecný podnik
    case _1csw = "1CSW"
    /// `1CSZ` — Sint Maarten: vereniging
    case _1csz = "1CSZ"
    /// `1CZS` — United States of America — Utah: General Partnership
    case _1czs = "1CZS"
    /// `1DGT` — Liechtenstein: Treuunternehmen
    case _1dgt = "1DGT"
    /// `1E9M` — Canada — Newfoundland and Labrador: Limited Partnership
    case _1e9m = "1E9M"
    /// `1EQC` — Canada — Alberta: trade name/sole proprietorship
    case _1eqc = "1EQC"
    /// `1G26` — Isle of Man: Public Limited by Guarantee and not having a Share Capital (1931 Act)
    case _1g26 = "1G26"
    /// `1G29` — Spain: Sociedad Limitada Laboral (o Sociedad de Responsabilidad Limitada laboral)
    case _1g29 = "1G29"
    /// `1GLU` — Slovakia: Jednotka železničného správneho úradu
    case _1glu = "1GLU"
    /// `1GNM` — France: Syndicat de salariés
    case _1gnm = "1GNM"
    /// `1GR6` — Virgin Islands (British): Partnership
    case _1gr6 = "1GR6"
    /// `1HEP` — Slovakia: Rozpočtová organizácia
    case _1hep = "1HEP"
    /// `1HGD` — Portugal: Cooperativa
    case _1hgd = "1HGD"
    /// `1HXP` — United States of America — Delaware: Limited Liability Partnership
    case _1hxp = "1HXP"
    /// `1IPK` — Latvia: Komandītsabiedrība
    case _1ipk = "1IPK"
    /// `1IWK` — China: wai guo chang zhu xin wen ji gou
    case _1iwk = "1IWK"
    /// `1JGX` — Canada — Ontario: Limited Partnership
    case _1jgx = "1JGX"
    /// `1JK6` — Czechia: Svépomocné zemědělské družstvo
    case _1jk6 = "1JK6"
    /// `1JXS` — United States of America — Colorado: Savings Bank
    case _1jxs = "1JXS"
    /// `1K73` — Slovakia: Zahraničná osoba, právnická osoba so sídlom mimo územia SR
    case _1k73 = "1K73"
    /// `1K9U` — United States of America — Arkansas: Non-Profit Corporation
    case _1k9u = "1K9U"
    /// `1KU4` — United States of America — Illinois: credit union
    case _1ku4 = "1KU4"
    /// `1L24` — France: Autre société civile
    case _1l24 = "1L24"
    /// `1MBR` — Cyprus: Alli nomiki morfi
    case _1mbr = "1MBR"
    /// `1MJ0` — Russian Federation: Krest'yanskiye (fermerskiye) khozyaystva
    case _1mj0 = "1MJ0"
    /// `1MQ6` — Peru: Sociedad en Comandita por Acciones
    case _1mq6 = "1MQ6"
    /// `1MWR` — Denmark: Fond
    case _1mwr = "1MWR"
    /// `1NF1` — France: SA nationale à conseil d'administration
    case _1nf1 = "1NF1"
    /// `1NKP` — Estonia: Sihtasutus
    case _1nkp = "1NKP"
    /// `1NOX` — Austria: Sonstiger Rechtsträger
    case _1nox = "1NOX"
    /// `1ONH` — United States of America — Minnesota: Public Benefit Corporations
    case _1onh = "1ONH"
    /// `1OR3` — Slovenia: delniška družba
    case _1or3 = "1OR3"
    /// `1PAD` — Colombia: Empresa Unipersonal
    case _1pad = "1PAD"
    /// `1PWF` — Saint Vincent and the Grenadines: public company
    case _1pwf = "1PWF"
    /// `1Q16` — France: Société créée de fait entre personnes physiques
    case _1q16 = "1Q16"
    /// `1Q2B` — Guernsey — Alderney: company limited by guarantee
    case _1q2b = "1Q2B"
    /// `1QMT` — United States of America — North Carolina: Business Corporation
    case _1qmt = "1QMT"
    /// `1QNZ` — Uruguay: Fundacion
    case _1qnz = "1QNZ"
    /// `1QU8` — Spain: Sociedad Cooperativa
    case _1qu8 = "1QU8"
    /// `1RI9` — Italy: Ente Ecclesiastico Civilmente Riconosciuto
    case _1ri9 = "1RI9"
    /// `1RJ2` — Russian Federation: Avtonomnyye nekommercheskiye organizatsii
    case _1rj2 = "1RJ2"
    /// `1RKS` — Switzerland: Foreign public administration (e.g. embassy)
    case _1rks = "1RKS"
    /// `1RPE` — Samoa: Charitable trust
    case _1rpe = "1RPE"
    /// `1S9L` — United States of America — Montana: Professional Series Limited Liability Company
    case _1s9l = "1S9L"
    /// `1SL4` — Spain: Empresario Individual
    case _1sl4 = "1SL4"
    /// `1SOY` — Liechtenstein: Europäische Genossenschaft
    case _1soy = "1SOY"
    /// `1SVL` — Curaçao: Stille vennootschap
    case _1svl = "1SVL"
    /// `1T06` — Curaçao: Stichting
    case _1t06 = "1T06"
    /// `1T9S` — United States of America — Arizona: Commercial Bank
    case _1t9s = "1T9S"
    /// `1TG4` — Puerto Rico: Low Profit LLC
    case _1tg4 = "1TG4"
    /// `1TN0` — Sweden: Ideell förening (som bedriver näringsverksamhet)
    case _1tn0 = "1TN0"
    /// `1TON` — Italy: Associazione
    case _1ton = "1TON"
    /// `1TX8` — Belgium: Commanditaire vennootschap op aandelen met een sociaal oogmerk
    case _1tx8 = "1TX8"
    /// `1U7Y` — Russian Federation: Blagotvoritel'nyye uchrezhdeniya
    case _1u7y = "1U7Y"
    /// `1V0I` — United States of America — Louisiana: Domestic Benefit Corporation
    case _1v0i = "1V0I"
    /// `1VTA` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les évêques catholiques romains
    case _1vta = "1VTA"
    /// `1W62` — United Kingdom of Great Britain and Northern Ireland: Oversea Company
    case _1w62 = "1W62"
    /// `1W6I` — Bahamas: Limited Liability Partnership
    case _1w6i = "1W6I"
    /// `1W8B` — Slovakia: Zahraničná osoba
    case _1w8b = "1W8B"
    /// `1WZP` — United States of America — Illinois: Limited Partnership
    case _1wzp = "1WZP"
    /// `1XME` — United States of America — Massachusetts: Housing Cooperative Corporation
    case _1xme = "1XME"
    /// `1XOG` — United States of America — Montana: Agricultural Marketing Association
    case _1xog = "1XOG"
    /// `1Y0C` — France: SARL d'attribution
    case _1y0c = "1Y0C"
    /// `1YA4` — United States of America — Wyoming: Statutory Foundation
    case _1ya4 = "1YA4"
    /// `1YIR` — Finland: Metsänhoitoyhdistys
    case _1yir = "1YIR"
    /// `1ZHJ` — Spain: Sociedad Colectiva Profesional (o Sociedad regular colectiva profesional)
    case _1zhj = "1ZHJ"
    /// `211B` — France: Société coopérative agricole
    case _211b = "211B"
    /// `21F4` — Jersey: Separate Limited Partnerships
    case _21f4 = "21F4"
    /// `21OE` — United States of America — Missouri: Limited Liability Partnership
    case _21oe = "21OE"
    /// `22EO` — United States of America — Massachusetts: credit union
    case _22eo = "22EO"
    /// `22SC` — United States of America — Illinois: Savings and Loan Association
    case _22sc = "22SC"
    /// `233U` — Cyprus: Synetairismos
    case _233u = "233U"
    /// `23Q4` — United States of America — Pennsylvania: Non-deposit Trust Company
    case _23q4 = "23Q4"
    /// `23V9` — Canada — British Columbia: Limited partnership
    case _23v9 = "23V9"
    /// `23XJ` — Mexico: Sociedad anónima de capital variable, sociedad de información crediticia
    case _23xj = "23XJ"
    /// `24EG` — Croatia: Kreditna unija
    case _24eg = "24EG"
    /// `24TU` — Russian Federation: Soyuzy (assotsiatsii) obshchestvennykh ob"yedineniy
    case _24tu = "24TU"
    /// `254M` — Hong Kong: Si ren gu fen you xian gong si
    case _254m = "254M"
    /// `274G` — Croatia: Udruga
    case _274g = "274G"
    /// `27AW` — Sweden: offentlig enhet
    case _27aw = "27AW"
    /// `27WJ` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les cités et villes
    case _27wj = "27WJ"
    /// `28FE` — Belgium: Coöperatieve vennootschap
    case _28fe = "28FE"
    /// `28RA` — Croatia: Fond
    case _28ra = "28RA"
    /// `29FA` — France: Institution interrégionale ou entente
    case _29fa = "29FA"
    /// `29OB` — Saint Kitts and Nevis: foundation
    case _29ob = "29OB"
    /// `2A44` — Hungary: Egyéni cég
    case _2a44 = "2A44"
    /// `2AUN` — Guernsey — Guernsey: incorporated cell
    case _2aun = "2AUN"
    /// `2B81` — Switzerland: Simple partnership
    case _2b81 = "2B81"
    /// `2CC3` — Sint Maarten: besloten vennootschap
    case _2cc3 = "2CC3"
    /// `2CTG` — Slovenia: zadruga
    case _2ctg = "2CTG"
    /// `2DGO` — Brunei Darussalam: Public Company
    case _2dgo = "2DGO"
    /// `2DK3` — Czechia: Podnik nebo hospodářské zařízení politické strany
    case _2dk3 = "2DK3"
    /// `2DVA` — India: Cooperative Society
    case _2dva = "2DVA"
    /// `2DY1` — Türkiye: kamu tüzel kişiliği
    case _2dy1 = "2DY1"
    /// `2EEG` — Slovakia: Akciová spoločnosť
    case _2eeg = "2EEG"
    /// `2EPF` — United States of America — Ohio: Savings Bank
    case _2epf = "2EPF"
    /// `2F0A` — Saint Kitts and Nevis — Nevis: limited liability company
    case _2f0a = "2F0A"
    /// `2FED` — Croatia: Gospodarsko interesno udruženje
    case _2fed = "2FED"
    /// `2FHC` — Canada — Nova Scotia: partnerships
    case _2fhc = "2FHC"
    /// `2GEJ` — Niger: Société à Responsabilité Limitée
    case _2gej = "2GEJ"
    /// `2GV9` — Ireland: Irish Collective Asset-management Vehicle
    case _2gv9 = "2GV9"
    /// `2H36` — Russian Federation: Soyuzy (assotsiatsii) kooperativov
    case _2h36 = "2H36"
    /// `2HBR` — Germany: Gesellschaft mit beschränkter Haftung
    case _2hbr = "2HBR"
    /// `2HC6` — Italy: pubblica amministrazione
    case _2hc6 = "2HC6"
    /// `2I4P` — United States of America — Utah: Profit Corporation
    case _2i4p = "2I4P"
    /// `2IGL` — Luxembourg: Entreprise individuelle
    case _2igl = "2IGL"
    /// `2J66` — Curaçao: Stichting Particulier Fonds
    case _2j66 = "2J66"
    /// `2J7Z` — Italy: Consorzio con attività Esterna
    case _2j7z = "2J7Z"
    /// `2JB4` — United States of America — New Hampshire: Savings Bank
    case _2jb4 = "2JB4"
    /// `2JEI` — Luxembourg: Association sans but lucratif
    case _2jei = "2JEI"
    /// `2JZ4` — Switzerland: Foundation
    case _2jz4 = "2JZ4"
    /// `2KMA` — Slovakia: Štátny podnik v oddieli Pšn
    case _2kma = "2KMA"
    /// `2L5O` — Niger: Groupement d'intérêt économique
    case _2l5o = "2L5O"
    /// `2LB5` — Hungary: Munkavállalói Résztulajdonosi Program szervezet
    case _2lb5 = "2LB5"
    /// `2LNV` — Mexico: Sociedad anónima de capital variable, institución de seguros
    case _2lnv = "2LNV"
    /// `2M6Y` — China: ji jin hui
    case _2m6y = "2M6Y"
    /// `2MAO` — Bahrain: Alsharikat ghayr hadifat lilribih
    case _2mao = "2MAO"
    /// `2N4L` — France: (Autre) Collectivité territoriale
    case _2n4l = "2N4L"
    /// `2N9X` — Czechia: Česká konsolidační agentura
    case _2n9x = "2N9X"
    /// `2NAI` — Mexico: Comunidad
    case _2nai = "2NAI"
    /// `2NL6` — France: État, collectivité ou établissement public étranger
    case _2nl6 = "2NL6"
    /// `2NRQ` — Japan: chihokokyoudantai
    case _2nrq = "2NRQ"
    /// `2ODA` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les sociétés agricoles et laitières
    case _2oda = "2ODA"
    /// `2OJP` — Iceland: Samlagshlutafélag
    case _2ojp = "2OJP"
    /// `2ONM` — France: SA d'attribution à directoire
    case _2onm = "2ONM"
    /// `2OTW` — Russian Federation: Munitsipal'nyye avtonomnyye uchrezhdeniya
    case _2otw = "2OTW"
    /// `2PHU` — Singapore: Business
    case _2phu = "2PHU"
    /// `2PRK` — Armenia: Liakatar enkeraktsʿutʿyun
    case _2prk = "2PRK"
    /// `2QMJ` — Hong Kong: Trust
    case _2qmj = "2QMJ"
    /// `2QSA` — Belgium: Coöperatieve vennootschap met beperkte aansprakelijkheid met een sociaal oogmerk
    case _2qsa = "2QSA"
    /// `2R1N` — United States of America — Ohio: Savings and Loan Association
    case _2r1n = "2R1N"
    /// `2R46` — Russian Federation: Tovarishchestva sobstvennikov zhil'ya
    case _2r46 = "2R46"
    /// `2R82` — Jordan: sharikat raas almal almughamir
    case _2r82 = "2R82"
    /// `2RK5` — Finland: Kunta
    case _2rk5 = "2RK5"
    /// `2RVP` — Mexico: Sociedad anónima promotora de inversión de capital variable, sociedad financiera de objeto múltiple, entidad no regulada
    case _2rvp = "2RVP"
    /// `2S2U` — Luxembourg: Association d'épargne pension
    case _2s2u = "2S2U"
    /// `2SPI` — Malaysia — Labuan: Labuan Islamic Limited Partnership
    case _2spi = "2SPI"
    /// `2SZI` — Italy: Ente Sociale
    case _2szi = "2SZI"
    /// `2T7B` — Barbados: society with restricted liability
    case _2t7b = "2T7B"
    /// `2U3G` — Canada — Quebec: Société en nom collectif à responsabilité limitée
    case _2u3g = "2U3G"
    /// `2UAX` — Sweden: Trossamfund (som bedriver näringsverksamhet)
    case _2uax = "2UAX"
    /// `2UBX` — Sint Maarten: commanditaire vennootschap op aandelen
    case _2ubx = "2UBX"
    /// `2UZP` — Chile: Sociedad Colectiva Civil
    case _2uzp = "2UZP"
    /// `2W1A` — Spain: Sociedad Civil
    case _2w1a = "2W1A"
    /// `2WCH` — United States of America — Oregon: savings bank
    case _2wch = "2WCH"
    /// `2WFG` — Switzerland: Foreign public company
    case _2wfg = "2WFG"
    /// `2WJZ` — United States of America — North Dakota: Cooperative Association
    case _2wjz = "2WJZ"
    /// `2WMP` — France: Autre personne morale de droit administratif
    case _2wmp = "2WMP"
    /// `2XIK` — France: Mutuelle
    case _2xik = "2XIK"
    /// `2XJA` — Switzerland: Federal administration
    case _2xja = "2XJA"
    /// `2XNE` — Slovakia: Komoditná burza
    case _2xne = "2XNE"
    /// `2XXG` — United States of America — Maine: Nonprofit Corporation
    case _2xxg = "2XXG"
    /// `2XXH` — Italy: Società Semplice
    case _2xxh = "2XXH"
    /// `2Y95` — India: Special Purpose Vehicle - Company
    case _2y95 = "2Y95"
    /// `2YZO` — Germany: Partnerschaftsgesellschaft mit beschränkter Berufshaftung
    case _2yzo = "2YZO"
    /// `2ZB3` — Indonesia: Perseroan Publik
    case _2zb3 = "2ZB3"
    /// `30D6` — United States of America — Oklahoma: Savings and Loan Association
    case _30d6 = "30D6"
    /// `30IT` — Canada — Quebec: Société par actions constitué par Loi sur les compagnies minières
    case _30it = "30IT"
    /// `30PQ` — United States of America — Montana: Limited Liability Limited Partnership
    case _30pq = "30PQ"
    /// `30TX` — United States of America — Montana: Trust Company
    case _30tx = "30TX"
    /// `31N9` — Mexico: Partido político
    case _31n9 = "31N9"
    /// `326Y` — Norway: Ansvarlig selskap
    case _326y = "326Y"
    /// `328X` — Israel: Chevra Tziburit
    case _328x = "328X"
    /// `32AX` — United States of America — Iowa: Cooperative Association
    case _32ax = "32AX"
    /// `32HC` — Liechtenstein: Verein
    case _32hc = "32HC"
    /// `32J9` — Uruguay: Sociedad por Acciones Simplificada
    case _32j9 = "32J9"
    /// `33IP` — Jersey: Incorporated Limited Partnerships
    case _33ip = "33IP"
    /// `33MN` — Netherlands: vereniging met volledige rechtsbevoegdheid
    case _33mn = "33MN"
    /// `346N` — Taiwan (Province of China): Císhàn tuántǐ
    case _346n = "346N"
    /// `34PA` — Slovenia: Centralna banka
    case _34pa = "34PA"
    /// `34QS` — France: Autre personne morale de droit privé
    case _34qs = "34QS"
    /// `358I` — United States of America — North Carolina: Nonprofit Corporation
    case _358i = "358I"
    /// `35BX` — United Arab Emirates — Ras Al Khaimah: Intellectual Property Holding Company
    case _35bx = "35BX"
    /// `35QN` — United States of America — Kansas: Public Benefit Corporation
    case _35qn = "35QN"
    /// `35RF` — Puerto Rico: Limited Liability Company
    case _35rf = "35RF"
    /// `363J` — Ireland: European Economic Interest Grouping
    case _363j = "363J"
    /// `36AO` — Curaçao: Naamloze Vennootschap
    case _36ao = "36AO"
    /// `36KV` — Belgium: Europese vennootschap (Societas Europaea)
    case _36kv = "36KV"
    /// `36YD` — India: Unlimited Company
    case _36yd = "36YD"
    /// `375P` — United Arab Emirates — Dubai: Foundation
    case _375p = "375P"
    /// `37F5` — United States of America — Minnesota: Professional Firms
    case _37f5 = "37F5"
    /// `37G2` — Peru: Sociedad por Acciones Cerrada Simplificada
    case _37g2 = "37G2"
    /// `37GR` — Finland: Elinkeinoyhtymä
    case _37gr = "37GR"
    /// `37II` — Romania: Cooperativă meșteșugărească
    case _37ii = "37II"
    /// `37UT` — Denmark: Region
    case _37ut = "37UT"
    /// `37YG` — Russian Federation: Federal'nyye kazennyye predpriyatiya
    case _37yg = "37YG"
    /// `380O` — United States of America: Federal Savings Association
    case _380o = "380O"
    /// `381R` — Sweden: Medlemsbank
    case _381r = "381R"
    /// `38JQ` — Bolivia (Plurinational State of): Empresa Unipersonal
    case _38jq = "38JQ"
    /// `3AMJ` — Russian Federation: Sel'skokhozyaystvennyye proizvodstvennyye kooperativy
    case _3amj = "3AMJ"
    /// `3AZY` — France: Coopérative d'utilisation de matériel agricole en commun (CUMA)
    case _3azy = "3AZY"
    /// `3BJG` — Poland: spółka partnerska
    case _3bjg = "3BJG"
    /// `3BX3` — Czechia: Evropské seskupení pro územní spolupráci
    case _3bx3 = "3BX3"
    /// `3C5P` — Canada — Quebec: Personne morale sans but lucratif par Loi sur la probation et sur les établissements de détention
    case _3c5p = "3C5P"
    /// `3C7U` — Norway: Stiftelse
    case _3c7u = "3C7U"
    /// `3DXJ` — United States of America — North Carolina: Professional Limited Liability Company
    case _3dxj = "3DXJ"
    /// `3EAX` — Russian Federation: Proizvodstvennyye kooperativy (krome sel'skokhozyaystvennykh proizvodstvennykh kooperativov)
    case _3eax = "3EAX"
    /// `3EKS` — Switzerland: Limited liability company
    case _3eks = "3EKS"
    /// `3EPR` — New Zealand: Incorporated Society
    case _3epr = "3EPR"
    /// `3F98` — Russian Federation: Uchrezhdeniya
    case _3f98 = "3F98"
    /// `3FCU` — France: Société d'exercice libéral par action simplifiée
    case _3fcu = "3FCU"
    /// `3FI5` — Myanmar: hkan 0 n hkyet aarrhpyint tar 0 n k ant saathtarr saeet kumpane
    case _3fi5 = "3FI5"
    /// `3FP6` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les corporations de fonds de sécurité
    case _3fp6 = "3FP6"
    /// `3FUP` — Bulgaria: Evropeysko kooperativno druzhestvo s ogranichena otgovornost
    case _3fup = "3FUP"
    /// `3G3D` — Czechia: Nadace
    case _3g3d = "3G3D"
    /// `3GQ5` — Kuwait: Milkiat fardia
    case _3gq5 = "3GQ5"
    /// `3GTV` — United States of America — Nebraska: Sanitary & Improvement District
    case _3gtv = "3GTV"
    /// `3HLJ` — Bulgaria: Podelenie na evropeysko obedinenie po ikonomicheski interesi
    case _3hlj = "3HLJ"
    /// `3JTE` — United States of America — Pennsylvania: Business Corporation
    case _3jte = "3JTE"
    /// `3KNT` — United States of America: Federal Government Entity
    case _3knt = "3KNT"
    /// `3L58` — Norway: Kommunalt foretak
    case _3l58 = "3L58"
    /// `3L7Q` — United States of America — Pennsylvania: Savings Bank
    case _3l7q = "3L7Q"
    /// `3LCY` — Latvia: Pilnsabiedrība
    case _3lcy = "3LCY"
    /// `3LHF` — Peru: Sociedad Colectiva
    case _3lhf = "3LHF"
    /// `3LMA` — Belgium: Buitenlandse onderneming
    case _3lma = "3LMA"
    /// `3LNE` — United States of America — New Hampshire: Commercial Bank
    case _3lne = "3LNE"
    /// `3LXM` — United States of America — Florida: Commercial Bank
    case _3lxm = "3LXM"
    /// `3M14` — Canada — Nova Scotia: A company formed under the Companies Act may seek designation as a Community Interest Company (a hybrid structure having characteristics of both for profit and non-profit entities)
    case _3m14 = "3M14"
    /// `3MM4` — United States of America: Edge Act Corporation
    case _3mm4 = "3MM4"
    /// `3MMY` — United States of America — Kentucky: Limited Liability Limited Partership
    case _3mmy = "3MMY"
    /// `3N55` — United States of America — Florida: Non-Profit Corporation
    case _3n55 = "3N55"
    /// `3N94` — Belgium: Onderneming-natuurlijk persoon
    case _3n94 = "3N94"
    /// `3NJL` — France: Autre personne de droit privé inscrite au registre du commerce et des sociétés
    case _3njl = "3NJL"
    /// `3OK3` — France: SCP de notaires
    case _3ok3 = "3OK3"
    /// `3OVJ` — Canada — Saskatchewan: Non-profit Corporations
    case _3ovj = "3OVJ"
    /// `3OW3` — Croatia: Europsko gospodarsko interesno udruženje (skraćeno EGIU)
    case _3ow3 = "3OW3"
    /// `3P03` — United Arab Emirates — Dubai: Open Ended Investment Company
    case _3p03 = "3P03"
    /// `3P3W` — Slovakia: Družstevný podnik (s jedným zakladateľom)
    case _3p3w = "3P3W"
    /// `3Q15` — Canada — New Brunswick: partnership
    case _3q15 = "3Q15"
    /// `3QSG` — Saint Vincent and the Grenadines: international business company - limited duration company
    case _3qsg = "3QSG"
    /// `3QSR` — South Africa: pension fund
    case _3qsr = "3QSR"
    /// `3QX8` — Puerto Rico: Limited Liability Company
    case _3qx8 = "3QX8"
    /// `3RHN` — Colombia: Sociedad Anónima
    case _3rhn = "3RHN"
    /// `3RHO` — Greece: Naftiki eteria
    case _3rho = "3RHO"
    /// `3RMA` — Czechia: Státní fond ze zákona
    case _3rma = "3RMA"
    /// `3S6E` — France: Service départemental d'incendie et de secours (SDIS)
    case _3s6e = "3S6E"
    /// `3SHX` — Bulgaria: Sdruzhenie v obshtestvena polza
    case _3shx = "3SHX"
    /// `3TOV` — Russian Federation: Profsoyuznyye organizatsii
    case _3tov = "3TOV"
    /// `3U3Y` — Malta: foundation
    case _3u3y = "3U3Y"
    /// `3U8X` — Russian Federation: Prochiye yuridicheskiye litsa, yavlyayushchiyesya kommercheskimi organizatsiyami
    case _3u8x = "3U8X"
    /// `3UPJ` — Estonia: Füüsilisest isikust ettevõtja
    case _3upj = "3UPJ"
    /// `3VSP` — India: Public Financial Institutions
    case _3vsp = "3VSP"
    /// `3W7E` — Belgium: Besloten Vennootschap
    case _3w7e = "3W7E"
    /// `3WVI` — Mexico: Sociedad de Responsabilidad Limitada Microindustrial
    case _3wvi = "3WVI"
    /// `3XTE` — France: SARL coopérative de consommation
    case _3xte = "3XTE"
    /// `3Y5C` — Bonaire, Sint Eustatius and Saba: Besloten vennootschap naar Nederlands recht
    case _3y5c = "3Y5C"
    /// `3Y5V` — Canada — Newfoundland and Labrador: co-operatives
    case _3y5v = "3Y5V"
    /// `3YIH` — Israel: shutafut
    case _3yih = "3YIH"
    /// `3YUD` — Kosovo: Ndërmarrjet shoqërore nën administrimin e Agjencisë Kosovare të Privatizimit
    case _3yud = "3YUD"
    /// `3YUS` — Seychelles: Foundation
    case _3yus = "3YUS"
    /// `3ZBR` — Dominican Republic: Sociedad Anónima
    case _3zbr = "3ZBR"
    /// `3ZXC` — United States of America — Utah: Limited Liability Company (LLC)
    case _3zxc = "3ZXC"
    /// `40A7` — Jersey: Foundation
    case _40a7 = "40A7"
    /// `40DB` — Germany: Offene Handelsgesellschaft
    case _40db = "40DB"
    /// `40JO` — Canada — New Brunswick: société en commandite
    case _40jo = "40JO"
    /// `40R4` — Denmark: Forening
    case _40r4 = "40R4"
    /// `40SO` — United States of America — Montana: Mutual Benefit Corporation
    case _40so = "40SO"
    /// `42GN` — Canada — Nova Scotia: unlimited company
    case _42gn = "42GN"
    /// `43JO` — Fiji: Sole Trader
    case _43jo = "43JO"
    /// `43LY` — United States of America — Minnesota: Limited Partnership
    case _43ly = "43LY"
    /// `43MZ` — Slovakia: Príspevková organizácia
    case _43mz = "43MZ"
    /// `449I` — Mexico: Sociedad de responsabilidad limitada
    case _449i = "449I"
    /// `44CQ` — Sweden: samfallighetsförening
    case _44cq = "44CQ"
    /// `44LR` — Canada — New Brunswick: professional corporation
    case _44lr = "44LR"
    /// `456O` — United States of America — Virginia: Partnership
    case _456o = "456O"
    /// `456Q` — Canada — Ontario: business name/sole proprietorship
    case _456q = "456Q"
    /// `45D7` — Bulgaria: Klon na chuzhdestranen targovets
    case _45d7 = "45D7"
    /// `468Q` — United Kingdom of Great Britain and Northern Ireland: United Kingdom Societas
    case _468q = "468Q"
    /// `46CD` — Slovakia: Pobočka sporiteľne
    case _46cd = "46CD"
    /// `46FG` — Thailand: Cạngh̄wạd
    case _46fg = "46FG"
    /// `46QC` — United Arab Emirates — Dubai: Public Company Limited by Shares
    case _46qc = "46QC"
    /// `478A` — Myanmar: a hcu aarr hpyint tar 0 n k ant saathtarr saeet a myarrnhaint masaatsine saeet kumpane
    case _478a = "478A"
    /// `47LQ` — United States of America — Michigan: Corporation (Nonprofit)
    case _47lq = "47LQ"
    /// `487E` — France: Établissement public local d'enseignement
    case _487e = "487E"
    /// `487P` — Canada — Prince Edward Island: corporation created by an Act of the Legislature
    case _487p = "487P"
    /// `48X2` — Paraguay: Empresa Unipersonal De Responsabilidad Limitada
    case _48x2 = "48X2"
    /// `491H` — France: Association non déclarée
    case _491h = "491H"
    /// `4A26` — Czechia: Zájmová organizace družstev
    case _4a26 = "4A26"
    /// `4A3J` — United Kingdom of Great Britain and Northern Ireland — Northern Ireland: Northern Ireland Company
    case _4a3j = "4A3J"
    /// `4A8T` — Slovenia: evropska delniška družba
    case _4a8t = "4A8T"
    /// `4AJY` — Mauritius: Business
    case _4ajy = "4AJY"
    /// `4B4B` — Canada — Quebec: Société par actions constitué par Loi sur les sociétés de patrons de fabriques de producteurs laitiers
    case _4b4b = "4B4B"
    /// `4BEM` — United States of America — Oregon: Assumed Business Name
    case _4bem = "4BEM"
    /// `4C0J` — Guernsey — Guernsey: protected cell company
    case _4c0j = "4C0J"
    /// `4C5L` — Hungary: Ügyvédi Iroda
    case _4c5l = "4C5L"
    /// `4CKX` — Slovakia: Krajský úrad
    case _4ckx = "4CKX"
    /// `4DZU` — France: Autre SARL coopérative
    case _4dzu = "4DZU"
    /// `4E5P` — Belgium: Coöperatieve vennootschap met onbeperkte aansprakelijkheid met een sociaal oogmerk
    case _4e5p = "4E5P"
    /// `4EP1` — Saint Kitts and Nevis — Nevis: multiform foundation
    case _4ep1 = "4EP1"
    /// `4EWZ` — Nepal: Partnership Firm
    case _4ewz = "4EWZ"
    /// `4FSX` — United States of America — Delaware: Statutory Trust
    case _4fsx = "4FSX"
    /// `4GJI` — United Kingdom of Great Britain and Northern Ireland: Private Limited by Guarantee
    case _4gji = "4GJI"
    /// `4GX1` — Slovakia: Národný výbor
    case _4gx1 = "4GX1"
    /// `4H0F` — France: Autre établissement public local de coopération non spécialisé ou entente
    case _4h0f = "4H0F"
    /// `4H61` — Finland: Keskinäinen vakuutusyhtiö
    case _4h61 = "4H61"
    /// `4H8O` — Oman: sharikat almusahamat eamatan
    case _4h8o = "4H8O"
    /// `4HBI` — Mexico: Sociedad cooperativa de ahorro y préstamo de capital variable
    case _4hbi = "4HBI"
    /// `4HC4` — United States of America — West Virginia: credit union
    case _4hc4 = "4HC4"
    /// `4HD1` — Ghana: Sole Proprietorship
    case _4hd1 = "4HD1"
    /// `4HTX` — United Kingdom of Great Britain and Northern Ireland: Private Fund Limited Partnership
    case _4htx = "4HTX"
    /// `4IXL` — Botswana: Close Companies
    case _4ixl = "4IXL"
    /// `4JCS` — United States of America — California: Non-deposit Trust Company
    case _4jcs = "4JCS"
    /// `4JS0` — France: Association syndicale autorisée
    case _4js0 = "4JS0"
    /// `4L1X` — Belgium: Autonoom gemeentebedrijf
    case _4l1x = "4L1X"
    /// `4LCX` — Peru: Empresas de Derecho Público
    case _4lcx = "4LCX"
    /// `4LEA` — New Zealand: Unlimited Liability Company
    case _4lea = "4LEA"
    /// `4LKE` — United States of America — North Carolina: County Agricultural Fair
    case _4lke = "4LKE"
    /// `4LKN` — Brazil: Empresa Pública
    case _4lkn = "4LKN"
    /// `4LZW` — United States of America — South Dakota: Commercial Bank
    case _4lzw = "4LZW"
    /// `4M62` — Canada — New Brunswick: loan company
    case _4m62 = "4M62"
    /// `4NMI` — United States of America — Rhode island: Savings Bank
    case _4nmi = "4NMI"
    /// `4OTK` — Czechia: Regionální rada regionu soudržnosti
    case _4otk = "4OTK"
    /// `4OYE` — Colombia: Persona natural comerciante
    case _4oye = "4OYE"
    /// `4P36` — United States of America — Minnesota: credit union
    case _4p36 = "4P36"
    /// `4PZX` — Russian Federation: Uchrezhdeniya, sozdannyye sub"yektom Rossiyskoy Federatsii
    case _4pzx = "4PZX"
    /// `4QBB` — Paraguay: Sociedad En Comandita Simple
    case _4qbb = "4QBB"
    /// `4QIE` — India: Sole Proprietorship
    case _4qie = "4QIE"
    /// `4QRE` — Hungary: Önkormányzat
    case _4qre = "4QRE"
    /// `4QXM` — Netherlands: eenmanszaak
    case _4qxm = "4QXM"
    /// `4RPP` — Liechtenstein: Kollektivgesellschaft mit beschränkter Haftung
    case _4rpp = "4RPP"
    /// `4RT7` — France: SA de HLM à conseil d'administration
    case _4rt7 = "4RT7"
    /// `4RXL` — Viet Nam: công ty trách nhiệm hữu hạn một thành viên
    case _4rxl = "4RXL"
    /// `4S4Z` — Bonaire, Sint Eustatius and Saba: Commanditaire vennootschap met meerdere beherende vennoten
    case _4s4z = "4S4Z"
    /// `4S57` — Spain: Caja de Ahorros
    case _4s57 = "4S57"
    /// `4SFS` — Costa Rica: Institución Autónoma
    case _4sfs = "4SFS"
    /// `4SJR` — Spain: Sociedad Agraría de Trasformación
    case _4sjr = "4SJR"
    /// `4TMV` — United States of America — Nebraska: Domestic Limited Cooperative Association
    case _4tmv = "4TMV"
    /// `4TNX` — France: Profession libérale
    case _4tnx = "4TNX"
    /// `4TYO` — Russian Federation: Publichnyye aktsionernyye obshchestva
    case _4tyo = "4TYO"
    /// `4U9V` — United States of America — North Dakota: Professional Limited Liabity Partnership
    case _4u9v = "4U9V"
    /// `4UB2` — Czechia: Garanční fond obchodníků s cennými papíry
    case _4ub2 = "4UB2"
    /// `4V0A` — Romania: Grupul european de interes economic
    case _4v0a = "4V0A"
    /// `4VD7` — France: Pôle d'équilibre territorial et rural (PETR)
    case _4vd7 = "4VD7"
    /// `4VH5` — United States of America — New York: Commercial Bank
    case _4vh5 = "4VH5"
    /// `4VPM` — United Arab Emirates — Abu Dhabi: Incorporated Cell
    case _4vpm = "4VPM"
    /// `4VTZ` — Russian Federation: Assotsiatsii (soyuzy)
    case _4vtz = "4VTZ"
    /// `4WN7` — United States of America — Virginia: Limited Liability Company
    case _4wn7 = "4WN7"
    /// `4WTP` — United States of America — Nebraska: Savings and Loan Association
    case _4wtp = "4WTP"
    /// `4WV7` — Hungary: Egyéb köztestület
    case _4wv7 = "4WV7"
    /// `4XMS` — Pakistan: Private Limited Company (multi member)
    case _4xms = "4XMS"
    /// `4XP8` — Cayman Islands: company limited by guarantee
    case _4xp8 = "4XP8"
    /// `4XY9` — Puerto Rico: Trust
    case _4xy9 = "4XY9"
    /// `4Y4D` — Costa Rica: Entidad Creada por Ley Especial
    case _4y4d = "4Y4D"
    /// `4YAK` — Czechia: Stálý rozhodčí soud
    case _4yak = "4YAK"
    /// `4YOA` — United States of America — New Mexico: Limited Liability Company
    case _4yoa = "4YOA"
    /// `4YUU` — South Africa: Close Corporation
    case _4yuu = "4YUU"
    /// `4ZBE` — Bonaire, Sint Eustatius and Saba: Maatschap
    case _4zbe = "4ZBE"
    /// `4ZF3` — Lithuania: Valstybės įmonės
    case _4zf3 = "4ZF3"
    /// `4ZRR` — Norway: Norskregistrert utenlandsk foretak
    case _4zrr = "4ZRR"
    /// `50TD` — Norway: Statsforetak
    case _50td = "50TD"
    /// `50Z9` — Canada — Quebec: Société par actions constitué par Loi sur les assurances
    case _50z9 = "50Z9"
    /// `51AN` — United States of America — Pennsylvania: Savings and Loan Association
    case _51an = "51AN"
    /// `51RC` — United States of America — New York: Not-for-profit Corporation
    case _51rc = "51RC"
    /// `51WZ` — Bonaire, Sint Eustatius and Saba: Vereniging met beperkte rechtsbevoegdheid
    case _51wz = "51WZ"
    /// `520I` — United States of America — New Hampshire: Foundation
    case _520i = "520I"
    /// `528Z` — Monaco: Société en Commandite Simple
    case _528z = "528Z"
    /// `529B` — Brazil: Sociedade em Nome Coletivo
    case _529b = "529B"
    /// `52AV` — Sint Maarten: stichting particulier fonds
    case _52av = "52AV"
    /// `52CK` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les villes minières
    case _52ck = "52CK"
    /// `52TH` — Azerbaijan: Törəmə təsərrüfat cəmiyyəti
    case _52th = "52TH"
    /// `52U0` — United States of America — Ohio: Limited Liability Partnership
    case _52u0 = "52U0"
    /// `530K` — United States of America — Idaho: Limited Partnership
    case _530k = "530K"
    /// `53DC` — United States of America — Maine: Limited Liability Company
    case _53dc = "53DC"
    /// `53QF` — Liechtenstein: Treuhänderschaft
    case _53qf = "53QF"
    /// `54AL` — Greece: Eterórithmi Etería
    case _54al = "54AL"
    /// `54M6` — Netherlands: besloten vennootschap met beperkte aansprakelijkheid
    case _54m6 = "54M6"
    /// `54P7` — Sweden: Europabolag
    case _54p7 = "54P7"
    /// `54SK` — Ireland: Friendly Society
    case _54sk = "54SK"
    /// `54WI` — Switzerland: Investment company with fixed capital
    case _54wi = "54WI"
    /// `55MA` — United Kingdom of Great Britain and Northern Ireland: Cwmni Cyfyngedig Cyhoeddus
    case _55ma = "55MA"
    /// `56KZ` — Canada — New Brunswick: agricultural fair association
    case _56kz = "56KZ"
    /// `56MU` — Bonaire, Sint Eustatius and Saba: Aandeelhouder bestuurde Besloten vennootschap
    case _56mu = "56MU"
    /// `56NA` — Ghana: Private Limited By Share
    case _56na = "56NA"
    /// `57V7` — United Kingdom of Great Britain and Northern Ireland: Private Unlimited
    case _57v7 = "57V7"
    /// `58N0` — United States of America — Michigan: Limited Partnership
    case _58n0 = "58N0"
    /// `599X` — Denmark: Fonde og andre selvejende institutioner
    case _599x = "599X"
    /// `59F9` — France: Groupement foncier agricole
    case _59f9 = "59F9"
    /// `59T2` — Canada — Canada: board of trade
    case _59t2 = "59T2"
    /// `5A9K` — China: jun dui shi ye dan wei
    case _5a9k = "5A9K"
    /// `5AAO` — United States of America — North Carolina: Commercial Bank
    case _5aao = "5AAO"
    /// `5ABK` — Isle of Man: Unlimited with Shares (2006 Act)
    case _5abk = "5ABK"
    /// `5AE9` — United States of America — Montana: Builidng and Loan Association
    case _5ae9 = "5AE9"
    /// `5AJO` — France: Caisse d'Épargne et de Prévoyance
    case _5ajo = "5AJO"
    /// `5AM3` — Slovakia: Zastupiteľské orgány iných štátov
    case _5am3 = "5AM3"
    /// `5AP3` — Czechia: Pobočná mezinárodní organizace zaměstnavatelů
    case _5ap3 = "5AP3"
    /// `5AWN` — Argentina: Sociedad del Estado
    case _5awn = "5AWN"
    /// `5AWU` — Mexico: Asociación civil
    case _5awu = "5AWU"
    /// `5AX8` — Ireland: Designated Activity Company Limited by Guarantee
    case _5ax8 = "5AX8"
    /// `5BEZ` — Switzerland: Special legal form
    case _5bez = "5BEZ"
    /// `5BY2` — Lithuania: Europos kooperatinės bendrovės
    case _5by2 = "5BY2"
    /// `5CIE` — Lithuania: Advokatų profesinės bendrijos
    case _5cie = "5CIE"
    /// `5D9I` — Canada — Saskatchewan: Limited Liabilty Partnerships
    case _5d9i = "5D9I"
    /// `5DBJ` — United States of America — South Carolina: Savings Bank
    case _5dbj = "5DBJ"
    /// `5DS0` — United States of America — Florida: Limited Partnership
    case _5ds0 = "5DS0"
    /// `5DWL` — Luxembourg: Association momentanée
    case _5dwl = "5DWL"
    /// `5E0K` — United States of America — Rhode Island: Benefit Professional Corporation
    case _5e0k = "5E0K"
    /// `5EEA` — Canada — Saskatchewan: Corporations formed by an Act of the Saskatchewan legislature
    case _5eea = "5EEA"
    /// `5EKE` — Saint Vincent and the Grenadines: international business company - company limited by shares
    case _5eke = "5EKE"
    /// `5F76` — Poland: cechy i izby rzemieślnicze, izby gospodarcze
    case _5f76 = "5F76"
    /// `5F9K` — Benin: Groupement d'intérêt Économique
    case _5f9k = "5F9K"
    /// `5FRT` — United Kingdom of Great Britain and Northern Ireland — Northern Ireland: Other Type of Company (in Northern Ireland)
    case _5frt = "5FRT"
    /// `5GGB` — Luxembourg: Société anonyme
    case _5ggb = "5GGB"
    /// `5GXA` — China: cun ji ji ti jing ji zu zhi
    case _5gxa = "5GXA"
    /// `5H68` — France: Commerçant
    case _5h68 = "5H68"
    /// `5HQ4` — United States of America — California: Limited Partnership
    case _5hq4 = "5HQ4"
    /// `5I7B` — Guam: limited liability company
    case _5i7b = "5I7B"
    /// `5IL6` — Barbados: sole proprietorship
    case _5il6 = "5IL6"
    /// `5J5Y` — Slovakia: Verejná obchodná spoločnosť
    case _5j5y = "5J5Y"
    /// `5JAL` — United States of America — North Carolina: Insurance Company
    case _5jal = "5JAL"
    /// `5K0Q` — France: Établissement public local social et médico-social
    case _5k0q = "5K0Q"
    /// `5K70` — Mexico: Sociedad anónima bursátil de capital variable, casa de bolsa
    case _5k70 = "5K70"
    /// `5KRB` — United States of America — Maine: Savings and Loan Association
    case _5krb = "5KRB"
    /// `5KU5` — Czechia: Veřejná obchodní společnost
    case _5ku5 = "5KU5"
    /// `5KVH` — Portugal: Cooperativa de 2º Grau
    case _5kvh = "5KVH"
    /// `5KVT` — Tanzania: Unlimited company
    case _5kvt = "5KVT"
    /// `5LXY` — Slovenia: Verska skupnost in podobne verske organizacije
    case _5lxy = "5LXY"
    /// `5MNR` — United States of America — Arizona: Professional Corporation
    case _5mnr = "5MNR"
    /// `5MRP` — United States of America — Montana: Close Corporation
    case _5mrp = "5MRP"
    /// `5MVV` — Japan: gousigaisya
    case _5mvv = "5MVV"
    /// `5NCK` — Romania: Organizație non-guvernamentală
    case _5nck = "5NCK"
    /// `5ODO` — Italy: Ente Diritto Pubblico
    case _5odo = "5ODO"
    /// `5OET` — United States of America — Nebraska: Foreign Limited Liability Company
    case _5oet = "5OET"
    /// `5OKA` — Kuwait: Sharikat almusaھmat almuqfala
    case _5oka = "5OKA"
    /// `5ONY` — Canada — Manitoba: Religious Society
    case _5ony = "5ONY"
    /// `5OZV` — Curaçao: Eenmanszaak
    case _5ozv = "5OZV"
    /// `5Q1W` — Israel: Osek Murshe
    case _5q1w = "5Q1W"
    /// `5Q66` — Vanuatu: International Company
    case _5q66 = "5Q66"
    /// `5QS7` — Denmark: Iværksætterselskab
    case _5qs7 = "5QS7"
    /// `5RCH` — Korea (Republic of): JuSikHoeSa
    case _5rch = "5RCH"
    /// `5RDO` — Spain: Sociedad Anonima
    case _5rdo = "5RDO"
    /// `5RRE` — United States of America — Kentucky: Corporation (professional)
    case _5rre = "5RRE"
    /// `5SGE` — Canada — Prince Edward Island: condominium corporation
    case _5sge = "5SGE"
    /// `5SGV` — Singapore: Limited Liability Partnership
    case _5sgv = "5SGV"
    /// `5T3H` — Türkiye: Fonlar
    case _5t3h = "5T3H"
    /// `5T3W` — Bolivia (Plurinational State of): Sociedad Anónima
    case _5t3w = "5T3W"
    /// `5TA8` — Lithuania: Šeimynos
    case _5ta8 = "5TA8"
    /// `5ULL` — Latvia: Eiropas Ekonomisko interešu grupa
    case _5ull = "5ULL"
    /// `5V5S` — Norway: Kommune
    case _5v5s = "5V5S"
    /// `5VCF` — France: SA à directoire (s.a.i.)
    case _5vcf = "5VCF"
    /// `5VMR` — Russian Federation: Advokaty, uchredivshiye advokatskiy kabinet
    case _5vmr = "5VMR"
    /// `5WI2` — Finland: Eläkesäätiö
    case _5wi2 = "5WI2"
    /// `5WU6` — Netherlands: Europees Economisch Samenwerkingsverband
    case _5wu6 = "5WU6"
    /// `5WWO` — Austria: Privatstiftung
    case _5wwo = "5WWO"
    /// `5Y1L` — United States of America — California: Industrial Bank
    case _5y1l = "5Y1L"
    /// `5Y4V` — United States of America — Virginia: credit union
    case _5y4v = "5Y4V"
    /// `5YBL` — Slovakia: Stavovská organizácia - profesná komora
    case _5ybl = "5YBL"
    /// `5Z8W` — Slovakia: Samostatne hospodáriaci roľník zapísaný v obchodnom registri
    case _5z8w = "5Z8W"
    /// `5ZTZ` — Norway: Fylkeskommunalt foretak
    case _5ztz = "5ZTZ"
    /// `60BG` — Poland: organy władzy, administracji rządowej, kontroli państwowej i ochrony prawa oraz sądy i trybunały
    case _60bg = "60BG"
    /// `60IF` — United Kingdom of Great Britain and Northern Ireland: Private Unlimited/No Share Capital
    case _60if = "60IF"
    /// `60MF` — Canada — Alberta: Alberta trust corporation
    case _60mf = "60MF"
    /// `61WE` — France: Institution de retraite supplémentaire
    case _61we = "61WE"
    /// `629I` — Poland: spółka jawna
    case _629i = "629I"
    /// `62L3` — United States of America — Nevada: Limited Partnership
    case _62l3 = "62L3"
    /// `62VJ` — United States of America: National Bank
    case _62vj = "62VJ"
    /// `62Y3` — Netherlands: vennootschap onder firma
    case _62y3 = "62Y3"
    /// `634M` — Italy: Gruppo Europeo Di Interesse Economico
    case _634m = "634M"
    /// `639V` — United States of America — Nebraska: Non Profit Domesticated Foreign Corporation
    case _639v = "639V"
    /// `63KS` — Germany: Unternehmergesellschaft
    case _63ks = "63KS"
    /// `63P9` — Luxembourg: Société en commandite simple
    case _63p9 = "63P9"
    /// `649C` — Peru: Sociedad Civil de Responsabilidad Limitada
    case _649c = "649C"
    /// `64HG` — United States of America — North Dakota: Professional Limited Liability Company
    case _64hg = "64HG"
    /// `64XG` — Canada — New Brunswick: association coopérative
    case _64xg = "64XG"
    /// `65B6` — United States of America — Utah: Commercial Bank
    case _65b6 = "65B6"
    /// `66JQ` — France: Syndicat de copropriété
    case _66jq = "66JQ"
    /// `66T3` — Sint Maarten: eenmanszaak
    case _66t3 = "66T3"
    /// `672E` — United States of America — Massachusetts: Cooperative Corporation
    case _672e = "672E"
    /// `68J6` — Luxembourg: Association agricole
    case _68j6 = "68J6"
    /// `68PD` — Portugal: Representação Permanente
    case _68pd = "68PD"
    /// `69H1` — Austria: Europäische Genossenschaft (SCE)
    case _69h1 = "69H1"
    /// `6B39` — Jordan: alsharika zat almasuwliat almahduda
    case _6b39 = "6B39"
    /// `6CHY` — France: société par actions simplifiée
    case _6chy = "6CHY"
    /// `6CJJ` — France: SCP de géomètres experts
    case _6cjj = "6CJJ"
    /// `6CQN` — Czechia: Akciová společnost
    case _6cqn = "6CQN"
    /// `6D9L` — Czechia: Svěřenský fond
    case _6d9l = "6D9L"
    /// `6DE6` — Puerto Rico: Close Corporation
    case _6de6 = "6DE6"
    /// `6DGX` — Belgium — Flemish Region: Dienstverlenende vereniging (Vlaams Gewest)
    case _6dgx = "6DGX"
    /// `6DVA` — United States of America — Louisiana: Foreign Non-Profit Limited Liability Company
    case _6dva = "6DVA"
    /// `6DYI` — France: Société de Participations Financières de Profession Libérale Société à responsabilité limitée (SPFPL SARL)
    case _6dyi = "6DYI"
    /// `6E4G` — United States of America — Michigan: Limited Liability Partnership
    case _6e4g = "6E4G"
    /// `6EDK` — United States of America — Louisiana: Domestic Non-Profit Corporation
    case _6edk = "6EDK"
    /// `6EH6` — Virgin Islands (British): company limited by shares
    case _6eh6 = "6EH6"
    /// `6ETM` — Honduras: Sociedad en Comandita por Acciones
    case _6etm = "6ETM"
    /// `6EYT` — Mexico: Sociedad por acciones simplificada de capital variable
    case _6eyt = "6EYT"
    /// `6FAI` — Czechia: Státní podnik
    case _6fai = "6FAI"
    /// `6GEC` — United States of America — Kentucky: Limited Liability Company (professional)
    case _6gec = "6GEC"
    /// `6H83` — Russian Federation: Sel'skokhozyaystvennyye potrebitel'skiye zhivotnovodcheskiye kooperativy
    case _6h83 = "6H83"
    /// `6H9F` — United Arab Emirates — Abu Dhabi: Open Ended Investment Company
    case _6h9f = "6H9F"
    /// `6HT0` — Malaysia — Labuan: Labuan Limited Partnership
    case _6ht0 = "6HT0"
    /// `6I0P` — Estonia: Hooneühistu
    case _6i0p = "6I0P"
    /// `6I75` — United States of America — Massachusetts: Professional Corporation
    case _6i75 = "6I75"
    /// `6ICB` — United States of America — Nebraska: Foreign Corp Professional Corporation
    case _6icb = "6ICB"
    /// `6IIE` — France: SA coopérative (d'intérêt) maritime à conseil d'administration
    case _6iie = "6IIE"
    /// `6IIM` — United States of America — Georgia: Limited Liability Company
    case _6iim = "6IIM"
    /// `6IK8` — Portugal: Entidade Empresarial Intermunicipal
    case _6ik8 = "6IK8"
    /// `6JCE` — United States of America — North Dakota: General Partnership
    case _6jce = "6JCE"
    /// `6JDN` — Lithuania: Profesinės sąjungos ir jų susivienijimai
    case _6jdn = "6JDN"
    /// `6JHZ` — Azerbaijan: Məhdud məsuliyyətli cəmiyyəti
    case _6jhz = "6JHZ"
    /// `6JS5` — San Marino: Società a responsabilità limitata
    case _6js5 = "6JS5"
    /// `6KC0` — China: zong jiao yuan xiao
    case _6kc0 = "6KC0"
    /// `6KSC` — Jordan: sharikat altawsia albasita
    case _6ksc = "6KSC"
    /// `6KWU` — France: Société d'exercice libéral en commandite par actions
    case _6kwu = "6KWU"
    /// `6L6P` — Portugal: Fundo
    case _6l6p = "6L6P"
    /// `6LI8` — Taiwan (Province of China): Yíng lì shè tuán fǎ rén
    case _6li8 = "6LI8"
    /// `6LUM` — Poland: główny oddział zagranicznego zakładu reasekuracji
    case _6lum = "6LUM"
    /// `6M6O` — United States of America — New Hampshire: Business Corporation
    case _6m6o = "6M6O"
    /// `6M6Z` — Mauritius: Public Company Limited By Guarantee
    case _6m6z = "6M6Z"
    /// `6M8Y` — Argentina: Sociedad Colectiva
    case _6m8y = "6M8Y"
    /// `6MB6` — United States of America — Hawaii: Limited Liability Limited Partnership
    case _6mb6 = "6MB6"
    /// `6MPY` — Slovenia: Ustanova
    case _6mpy = "6MPY"
    /// `6MS4` — Seychelles: Company Limited by Shares
    case _6ms4 = "6MS4"
    /// `6NI8` — United States of America — North Carolina: Railroad
    case _6ni8 = "6NI8"
    /// `6NSC` — China: lv shi zhi ye ji gou
    case _6nsc = "6NSC"
    /// `6OGF` — United States of America — Utah: Savings Bank
    case _6ogf = "6OGF"
    /// `6OMW` — Czechia: Organizační jednotka občanského sdružení
    case _6omw = "6OMW"
    /// `6OYI` — Poland: zrzeszenie
    case _6oyi = "6OYI"
    /// `6PEQ` — Finland: Paikallisyhteisö
    case _6peq = "6PEQ"
    /// `6Q6D` — Croatia: Pravna osoba Katoličke Crkve
    case _6q6d = "6Q6D"
    /// `6QCE` — Virgin Islands (U.S.): Commercial Bank
    case _6qce = "6QCE"
    /// `6QQB` — Germany: Aktiengesellschaft
    case _6qqb = "6QQB"
    /// `6R72` — Slovakia: Samostatne hospodáriaci roľník nezapísaný v obchodnom registri
    case _6r72 = "6R72"
    /// `6R7O` — United States of America — Louisiana: Savings Bank
    case _6r7o = "6R7O"
    /// `6RD2` — Croatia: Agencije I druge samostalne pravne osobe s javnim ovlastima
    case _6rd2 = "6RD2"
    /// `6RUE` — France: Groupement européen d'intérêt économique (GEIE)
    case _6rue = "6RUE"
    /// `6RZK` — United States of America — Michigan: Commercial Bank
    case _6rzk = "6RZK"
    /// `6S32` — United States of America — Wisconsin: Business Corporation
    case _6s32 = "6S32"
    /// `6SYJ` — France: SA de HLM à directoire
    case _6syj = "6SYJ"
    /// `6TGS` — United States of America — South Dakota: Non-deposit Trust Company
    case _6tgs = "6TGS"
    /// `6TPA` — Panama: Sociedad Anónima
    case _6tpa = "6TPA"
    /// `6TPE` — Ecuador: Compañía en nombre colectivo
    case _6tpe = "6TPE"
    /// `6TRA` — Canada — Canada: corporations enacted by an Act of Parliament
    case _6tra = "6TRA"
    /// `6U2Q` — Canada — New Brunswick: condominium corporation
    case _6u2q = "6U2Q"
    /// `6UED` — Papua New Guinea: Local Company
    case _6ued = "6UED"
    /// `6UPM` — Serbia: Zadružni savez
    case _6upm = "6UPM"
    /// `6UYJ` — United States of America — Louisiana: credit union
    case _6uyj = "6UYJ"
    /// `6VCW` — United States of America — Minnesota: Commercial Bank
    case _6vcw = "6VCW"
    /// `6W6X` — Australia: Co-operative
    case _6w6x = "6W6X"
    /// `6WQ5` — Portugal: Organismos de investimento colectivo em valores mobiliários
    case _6wq5 = "6WQ5"
    /// `6X4Q` — Benin: Société en Commandite Simple
    case _6x4q = "6X4Q"
    /// `6XB7` — Cayman Islands: exempted limited partnership
    case _6xb7 = "6XB7"
    /// `6YHU` — France: SA d'intérêt collectif agricole (SICA) à conseil d'administration
    case _6yhu = "6YHU"
    /// `6Z8B` — Colombia: Sucursal de Sociedad Extranjera
    case _6z8b = "6Z8B"
    /// `6ZAR` — United States of America — Minnesota: Limited Liability Partnership
    case _6zar = "6ZAR"
    /// `6ZCO` — Canada — Quebec: Personne morale sans but lucratif par Loi sur la formation et la qualification professionnelles de la main-d’œuvre
    case _6zco = "6ZCO"
    /// `702U` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les Chevaliers de Colomb de la province de Québec
    case _702u = "702U"
    /// `70BS` — Bolivia (Plurinational State of): Empresa Estatal
    case _70bs = "70BS"
    /// `70EO` — United Arab Emirates — Dubai: Private Company Limited by Shares
    case _70eo = "70EO"
    /// `70GJ` — India: Government Organization
    case _70gj = "70GJ"
    /// `70NZ` — Cook Islands: International Company
    case _70nz = "70NZ"
    /// `70X0` — Italy: Fondazione Impresa
    case _70x0 = "70X0"
    /// `71ZI` — United States of America — Wyoming: Registered Limited Liability Partnership
    case _71zi = "71ZI"
    /// `724Q` — United States of America — West Virginia: Savings Bank
    case _724q = "724Q"
    /// `72BT` — Costa Rica: Organismo Internacional
    case _72bt = "72BT"
    /// `72CA` — United States of America — Florida: Non-deposit Trust Company
    case _72ca = "72CA"
    /// `72I6` — Indonesia: Koperasi
    case _72i6 = "72I6"
    /// `72R7` — Slovakia: Stredná škola
    case _72r7 = "72R7"
    /// `73C0` — Peru: Sociedad Comercial de Responsabilidad Limitada
    case _73c0 = "73C0"
    /// `73MQ` — Slovakia: Samosprávny kraj (úrad samosprávneho kraja)
    case _73mq = "73MQ"
    /// `73PZ` — Serbia: Komanditno društvo
    case _73pz = "73PZ"
    /// `747U` — Czechia: Společnost komanditní na akcie
    case _747u = "747U"
    /// `74HH` — France: SCP de vétérinaires
    case _74hh = "74HH"
    /// `74LJ` — United States of America — District of Columbia: Limited Partnership (including Limited Liability Limited Partnership)
    case _74lj = "74LJ"
    /// `74W6` — Czechia: Státní příspěvková organizace ostatní
    case _74w6 = "74W6"
    /// `752Q` — Estonia: Euroopa äriühing
    case _752q = "752Q"
    /// `75WC` — Italy: Fondazione
    case _75wc = "75WC"
    /// `75XK` — Guernsey — Guernsey: limited partnership (without separate legal personality)
    case _75xk = "75XK"
    /// `760X` — Finland: Muu yhdistys
    case _760x = "760X"
    /// `761Z` — Mexico: Sociedad de producción rural de responsabilidad limitada de capital variable
    case _761z = "761Z"
    /// `76ME` — Philippines: nonstock corporation
    case _76me = "76ME"
    /// `771I` — Botswana: Private Limited Liability Companies
    case _771i = "771I"
    /// `776G` — Mexico: Sociedad de producción rural de responsabilidad ilimitada
    case _776g = "776G"
    /// `784B` — Mexico: Sociedad anónima de capital variable, sociedad controladora
    case _784b = "784B"
    /// `78H5` — United States of America — Arizona: Corporation (Nonprofit)
    case _78h5 = "78H5"
    /// `78PB` — United States of America — Indiana: Professional Corporation
    case _78pb = "78PB"
    /// `78QF` — Bahamas: Partnership
    case _78qf = "78QF"
    /// `78SG` — Paraguay: Empresa Unipersonal
    case _78sg = "78SG"
    /// `78VH` — Saudi Arabia: sharikat musahama
    case _78vh = "78VH"
    /// `78VN` — Chile: Asociación
    case _78vn = "78VN"
    /// `790T` — Canada — Prince Edward Island: non-profit company
    case _790t = "790T"
    /// `79H0` — Germany: Nicht eingetragener Verein
    case _79h0 = "79H0"
    /// `7AJT` — United States of America — Utah: Non-deposit Trust Company
    case _7ajt = "7AJT"
    /// `7AS7` — Bermuda: Exempted Companies Limited by Shares
    case _7as7 = "7AS7"
    /// `7AWY` — Fiji: Public Limited Company
    case _7awy = "7AWY"
    /// `7B9H` — Romania: Societate cooperativă
    case _7b9h = "7B9H"
    /// `7BQ5` — United States of America — Nebraska: Non Stock Corporation
    case _7bq5 = "7BQ5"
    /// `7CAL` — Kuwait: Sharikat musahima
    case _7cal = "7CAL"
    /// `7CDL` — United States of America — California: For-Profit Corporation Close
    case _7cdl = "7CDL"
    /// `7CKN` — San Marino: Società in nome collettivo
    case _7ckn = "7CKN"
    /// `7EG2` — Slovakia: Fondy
    case _7eg2 = "7EG2"
    /// `7F5B` — United States of America — Missouri: Limited Liability Company
    case _7f5b = "7F5B"
    /// `7FCS` — Barbados: partnership
    case _7fcs = "7FCS"
    /// `7G15` — Mexico: Sociedad Nacional de Crédito
    case _7g15 = "7G15"
    /// `7G8G` — United States of America — Massachusetts: Cooperative Bank
    case _7g8g = "7G8G"
    /// `7GMS` — United States of America — New Mexico: Cooperative Association
    case _7gms = "7GMS"
    /// `7GTR` — United States of America — Alaska: Public Corporation
    case _7gtr = "7GTR"
    /// `7H0X` — United States of America — Utah: Limited Liability Partnership
    case _7h0x = "7H0X"
    /// `7H63` — Mexico: Sociedad civil
    case _7h63 = "7H63"
    /// `7HCE` — Bermuda: Exempted LLC
    case _7hce = "7HCE"
    /// `7HY7` — United States of America — New Jersey: Limited Partnership
    case _7hy7 = "7HY7"
    /// `7IKZ` — Canada — Saskatchewan: Limited Partnership
    case _7ikz = "7IKZ"
    /// `7IYW` — Pakistan: Company Limited by Guarantee (having share capital)
    case _7iyw = "7IYW"
    /// `7J3S` — Germany: Wirtschaftlicher Verein
    case _7j3s = "7J3S"
    /// `7JAI` — Puerto Rico: Special Employee Owned Corporation
    case _7jai = "7JAI"
    /// `7K6U` — United States of America — Nevada: Limited Liability Partnership
    case _7k6u = "7K6U"
    /// `7L83` — Mexico: Unión ganadera regional especializada
    case _7l83 = "7L83"
    /// `7MGJ` — Bermuda: Exempted Limited Partnership
    case _7mgj = "7MGJ"
    /// `7MNN` — Switzerland: Public sector institution
    case _7mnn = "7MNN"
    /// `7O89` — Slovakia: Európske družstvo
    case _7o89 = "7O89"
    /// `7O94` — France: Groupement forestier
    case _7o94 = "7O94"
    /// `7OS8` — United States of America — Montana: Congressional Chartered Corporation
    case _7os8 = "7OS8"
    /// `7OYN` — Malaysia: Public Limited Company
    case _7oyn = "7OYN"
    /// `7OZQ` — Czechia: Zájmové sdružení
    case _7ozq = "7OZQ"
    /// `7P8Y` — Canada — New Brunswick: limited partnership
    case _7p8y = "7P8Y"
    /// `7PC4` — Nepal: Public Company
    case _7pc4 = "7PC4"
    /// `7PKK` — Mexico: Sociedad en comandita simple de capital variable
    case _7pkk = "7PKK"
    /// `7QEH` — Seychelles: International Business Company - Company Limited by Shares
    case _7qeh = "7QEH"
    /// `7QKB` — United States of America — Alaska: Commercial Bank
    case _7qkb = "7QKB"
    /// `7QQ0` — Japan: goudougaisya
    case _7qq0 = "7QQ0"
    /// `7QSE` — Slovakia: Zastúpenie zahraničnej právnickej osoby
    case _7qse = "7QSE"
    /// `7QV2` — United States of America — South Carolina: Business Corporation
    case _7qv2 = "7QV2"
    /// `7QWA` — Tanzania: Private Limited Company
    case _7qwa = "7QWA"
    /// `7RLC` — United States of America — Rhode Island: Limited Liability Partnership
    case _7rlc = "7RLC"
    /// `7RRP` — Liechtenstein: Aktiengesellschaft
    case _7rrp = "7RRP"
    /// `7RZH` — Jersey: Limited Liability Partnership
    case _7rzh = "7RZH"
    /// `7SIZ` — Luxembourg: Mutuelle
    case _7siz = "7SIZ"
    /// `7SJP` — Belgium: Europees economisch samenwerkingsverband
    case _7sjp = "7SJP"
    /// `7SZH` — France: Autre groupement de droit privé non doté de la personnalité morale
    case _7szh = "7SZH"
    /// `7T6S` — Chile: Sociedad Legal Minera
    case _7t6s = "7T6S"
    /// `7T8N` — United Kingdom of Great Britain and Northern Ireland: Charitable Incorporated Organisation
    case _7t8n = "7T8N"
    /// `7TJ1` — United States of America — Tennessee: General Partnership
    case _7tj1 = "7TJ1"
    /// `7TPC` — Australia: Trust
    case _7tpc = "7TPC"
    /// `7U4R` — Gibraltar: European Economic Interest Groupings
    case _7u4r = "7U4R"
    /// `7U8O` — Spain: Sociedades de Inversion Inmobiliaria
    case _7u8o = "7U8O"
    /// `7U8S` — United States of America — Kansas: General Partnership
    case _7u8s = "7U8S"
    /// `7UHA` — France: Collectivité et territoire d'Outre Mer
    case _7uha = "7UHA"
    /// `7VK5` — United States of America — Ohio: Corporation (Nonprofit)
    case _7vk5 = "7VK5"
    /// `7VKC` — Canada — Ontario: Condominium Corporation
    case _7vkc = "7VKC"
    /// `7VVZ` — United Kingdom of Great Britain and Northern Ireland — Northern Ireland: Co-operative Society (Northern Ireland)
    case _7vvz = "7VVZ"
    /// `7W53` — United States of America — Connecticut: Nonstock Corporation
    case _7w53 = "7W53"
    /// `7W9B` — Romania: Organizații cooperatiste de credit și casele centrale ale acestora
    case _7w9b = "7W9B"
    /// `7WL9` — Samoa: Public limited company
    case _7wl9 = "7WL9"
    /// `7WQO` — United States of America — Mississippi: Commercial Bank
    case _7wqo = "7WQO"
    /// `7WRN` — Denmark: Interessentskab
    case _7wrn = "7WRN"
    /// `7XPF` — United States of America — Iowa: Limited Liability Company
    case _7xpf = "7XPF"
    /// `7XPP` — Portugal: Fundo de Investimento Alternativo
    case _7xpp = "7XPP"
    /// `7XUS` — Seychelles: Special License Company
    case _7xus = "7XUS"
    /// `7XZL` — Canada — Saskatchewan: New Generation Co-operatives
    case _7xzl = "7XZL"
    /// `7Z3M` — Saint Kitts and Nevis — Nevis: public company
    case _7z3m = "7Z3M"
    /// `7ZMX` — Chile: Asociación Gremial
    case _7zmx = "7ZMX"
    /// `7ZU4` — Jamaica: collective investment scheme company
    case _7zu4 = "7ZU4"
    /// `814Y` — Canada — Quebec: Société en participation
    case _814y = "814Y"
    /// `81G5` — Luxembourg: Société en commandite par actions
    case _81g5 = "81G5"
    /// `81KA` — Lithuania: Akcinės bendrovės
    case _81ka = "81KA"
    /// `81WV` — United States of America — Colorado: Limited Cooperative Association
    case _81wv = "81WV"
    /// `81YI` — Puerto Rico: International Financial Entity (LLC)
    case _81yi = "81YI"
    /// `828X` — United States of America — Texas: credit union
    case _828x = "828X"
    /// `82QO` — France: Service déconcentré de l'État à compétence (inter) départementale
    case _82qo = "82QO"
    /// `84DD` — Belize: International Business Company
    case _84dd = "84DD"
    /// `84J8` — Czechia: Státní hospodářská organizace řízená okresním úřadem
    case _84j8 = "84J8"
    /// `85EC` — Canada — Northwest Territories: Limited Liability partnership
    case _85ec = "85EC"
    /// `85K5` — Romania: Reprezentanta
    case _85k5 = "85K5"
    /// `85PM` — Poland: Europejskie Zgrupowanie Interesów Gospodarczych
    case _85pm = "85PM"
    /// `85VD` — Hong Kong: zhu ce shou tuo ren
    case _85vd = "85VD"
    /// `85YQ` — United States of America — Kentucky: Statutory Trust
    case _85yq = "85YQ"
    /// `876R` — Hungary: Egyéb egyesület
    case _876r = "876R"
    /// `876U` — Canada — Nova Scotia: Credit Unions
    case _876u = "876U"
    /// `87N3` — Puerto Rico: Consumer Cooperative
    case _87n3 = "87N3"
    /// `87OW` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les collèges d'enseignement général et professionnel
    case _87ow = "87OW"
    /// `87VO` — France: Safer anonyme à directoire
    case _87vo = "87VO"
    /// `883O` — Finland: Sivuliike
    case _883o = "883O"
    /// `8888` — to be used when a new ELF Code (for a legal form not yet on the list) is requested from GLEIF
    case _8888 = "8888"
    /// `88OX` — Pakistan: Private Limited Company (single member)
    case _88ox = "88OX"
    /// `88TX` — Serbia: Društveno preduzeće
    case _88tx = "88TX"
    /// `88XU` — United States of America — Michigan: Sole proprietorship
    case _88xu = "88XU"
    /// `8AGD` — Mexico: Unión ganadera regional general
    case _8agd = "8AGD"
    /// `8APW` — United States of America — Nebraska: Domestic Limited Liability Company
    case _8apw = "8APW"
    /// `8AXV` — Italy: Società Consortile Cooperativa a Responsabilità Limitata
    case _8axv = "8AXV"
    /// `8B9A` — Russian Federation: Zhilishchnyye ili zhilishchno-stroitel'nyye kooperativy
    case _8b9a = "8B9A"
    /// `8BL9` — Cyprus: Evropaiki Dimosia Etaireia Periorismenis Efthynis
    case _8bl9 = "8BL9"
    /// `8BXP` — Türkiye: kooperatif
    case _8bxp = "8BXP"
    /// `8CF0` — United Kingdom of Great Britain and Northern Ireland: Assurance Company
    case _8cf0 = "8CF0"
    /// `8CIC` — Kuwait: Alsharikat ghayr alھadifat lilrabhi.
    case _8cic = "8CIC"
    /// `8CM0` — Germany: Partnerschaftsgesellschaft
    case _8cm0 = "8CM0"
    /// `8E0H` — United States of America — North Carolina: credit union
    case _8e0h = "8E0H"
    /// `8E2A` — Belgium: Coöperatieve vennootschap met beperkte aansprakelijkheid
    case _8e2a = "8E2A"
    /// `8EHB` — Spain: Sociedad de Inversión de Capital Variable
    case _8ehb = "8EHB"
    /// `8ER6` — Slovenia: Stanovanjska zadruga
    case _8er6 = "8ER6"
    /// `8FD2` — Romania: Cooperativă de consum
    case _8fd2 = "8FD2"
    /// `8FZW` — France: SCP de conseils juridiques
    case _8fzw = "8FZW"
    /// `8G07` — France: (Autre) Personne physique
    case _8g07 = "8G07"
    /// `8GEA` — Brazil: Sociedade Simples
    case _8gea = "8GEA"
    /// `8GTU` — France: (Autre) Service déconcentré de l'État à compétence territoriale
    case _8gtu = "8GTU"
    /// `8GU1` — Italy: Società A Responsabilità Limitata Semplificata
    case _8gu1 = "8GU1"
    /// `8HGS` — Finland: Erityislainsäädäntöön perustuva yhdistys
    case _8hgs = "8HGS"
    /// `8HNT` — United States of America — Nebraska: Foreign Corporation
    case _8hnt = "8HNT"
    /// `8HR7` — Cayman Islands: unlimited company
    case _8hr7 = "8HR7"
    /// `8II5` — France: Autre SA coopérative à conseil d'administration
    case _8ii5 = "8II5"
    /// `8IWA` — France: Commune associée et commune déléguée
    case _8iwa = "8IWA"
    /// `8JWV` — Russian Federation: Gosudarstvennyye akademii nauk
    case _8jwv = "8JWV"
    /// `8K5T` — Czechia: Spotřební družstvo
    case _8k5t = "8K5T"
    /// `8KA4` — United States of America — Virginia: Registered Limited Liability Partnership
    case _8ka4 = "8KA4"
    /// `8KHD` — Slovakia: Jednotka zboru ozbrojenej ochrany železníc
    case _8khd = "8KHD"
    /// `8KL5` — Canada — Saskatchewan: Condominium Corporations
    case _8kl5 = "8KL5"
    /// `8LX5` — France: Autre régime de prévoyance sociale
    case _8lx5 = "8LX5"
    /// `8M03` — Canada — Nova Scotia: Condominiums
    case _8m03 = "8M03"
    /// `8M3D` — Mexico: Sociedad cooperativa de productores de bienes y/o servicios de capital variable
    case _8m3d = "8M3D"
    /// `8MBD` — United States of America — Tennessee: Limited Liability Partnership
    case _8mbd = "8MBD"
    /// `8MEC` — Canada — New Brunswick: New Brunswick limited liability partnership
    case _8mec = "8MEC"
    /// `8MQM` — Russian Federation: Gosudarstvennyye byudzhetnyye uchrezhdeniya sub"yektov Rossiyskoy Federatsii
    case _8mqm = "8MQM"
    /// `8MS6` — Suriname: Stichting
    case _8ms6 = "8MS6"
    /// `8MY7` — Mexico: Sociedad anónima de capital variable, valuadora de acciones de fondos de inversión
    case _8my7 = "8MY7"
    /// `8N0C` — United States of America — North Carolina: Savings Bank
    case _8n0c = "8N0C"
    /// `8N21` — United States of America — Florida: Limited Liability Company
    case _8n21 = "8N21"
    /// `8NF7` — Russian Federation: Federal'nyye gosudarstvennyye byudzhetnyye uchrezhdeniya
    case _8nf7 = "8NF7"
    /// `8NZE` — Russian Federation: Sadovodcheskiye, ogorodnicheskiye ili dachnyye potrebitel'skiye kooperativy
    case _8nze = "8NZE"
    /// `8OK2` — United States of America — Minnesota: Business Trusts
    case _8ok2 = "8OK2"
    /// `8OKM` — France: Service déconcentré à compétence nationale d'un ministère (hors Défense)
    case _8okm = "8OKM"
    /// `8OZ0` — Canada — Nova Scotia: limited liability partnerships
    case _8oz0 = "8OZ0"
    /// `8PIA` — Solomon Islands: Private Company
    case _8pia = "8PIA"
    /// `8PUO` — United States of America — Louisiana: Foreign Partnership
    case _8puo = "8PUO"
    /// `8QMN` — United States of America — North Carolina: Professional Corporation
    case _8qmn = "8QMN"
    /// `8QZA` — Mexico: Sociedad cooperativa de responsabilidad limitada de capital variable
    case _8qza = "8QZA"
    /// `8R2G` — France: Société civile immobilière de construction-vente
    case _8r2g = "8R2G"
    /// `8RE3` — Slovakia: Družstevný podnik poľnohospodársky
    case _8re3 = "8RE3"
    /// `8RIH` — Russian Federation: Publichno-pravovyye kompanii
    case _8rih = "8RIH"
    /// `8RLE` — United States of America — Illinois: Limited Liability Company
    case _8rle = "8RLE"
    /// `8RRB` — Mexico: Sociedad cooperativa de ahorro y préstamo
    case _8rrb = "8RRB"
    /// `8S9H` — Norway: Gjensidig forsikringsselskap
    case _8s9h = "8S9H"
    /// `8T79` — Iceland: Samlagsfélag
    case _8t79 = "8T79"
    /// `8TOF` — Poland: spółdzielnia
    case _8tof = "8TOF"
    /// `8TYA` — France: Autre SA coopérative à directoire
    case _8tya = "8TYA"
    /// `8UE6` — Slovakia: Organizačná jednotka politickej strany, politického hnutia
    case _8ue6 = "8UE6"
    /// `8UEG` — Hungary: Nyilvánosan működő részvénytársaság
    case _8ueg = "8UEG"
    /// `8UMK` — Hungary: Európai gazdasági egyesülés
    case _8umk = "8UMK"
    /// `8VDW` — France: Société d'assurance à forme mutuelle
    case _8vdw = "8VDW"
    /// `8VFX` — Netherlands: vereniging met beperkte rechtsbevoegdheid
    case _8vfx = "8VFX"
    /// `8VH3` — Hungary: Befektetési alap
    case _8vh3 = "8VH3"
    /// `8VLM` — United States of America — Iowa: Savings and Loan Association
    case _8vlm = "8VLM"
    /// `8VRU` — Croatia: Europska zadruga (Societas Cooperativa Europaea, skraćeno SCE)
    case _8vru = "8VRU"
    /// `8VWR` — France: SA d'économie mixte à conseil d'administration
    case _8vwr = "8VWR"
    /// `8VZ0` — Cyprus: Trust
    case _8vz0 = "8VZ0"
    /// `8W32` — Sint Maarten: openbare vennootschap
    case _8w32 = "8W32"
    /// `8WH8` — France: Autre personne morale de droit étranger
    case _8wh8 = "8WH8"
    /// `8WJ7` — Finland: Keskinäinen kiinteistöosakeyhtiö
    case _8wj7 = "8WJ7"
    /// `8WM4` — United States of America — Nevada: Profit Corporation
    case _8wm4 = "8WM4"
    /// `8WQ9` — Dominican Republic: Sociedad en Comandita Simple
    case _8wq9 = "8WQ9"
    /// `8XAW` — China: wai guo zai hua wen hua zhong xin
    case _8xaw = "8XAW"
    /// `8XDD` — Russian Federation: Sovety munitsipal'nykh obrazovaniy sub"yektov Rossiyskoy Federatsii
    case _8xdd = "8XDD"
    /// `8XDK` — France: SA d'aménagement foncier et d'équipement rural (SAFER) à conseil d'administration
    case _8xdk = "8XDK"
    /// `8XDW` — Austria: Genossenschaft
    case _8xdw = "8XDW"
    /// `8XN0` — United States of America — Vermont: Limited Liability Partnership
    case _8xn0 = "8XN0"
    /// `8YBQ` — United States of America — Mississippi: General Partnership
    case _8ybq = "8YBQ"
    /// `8YLB` — Belgium: Instelling zonder winstoogmerk
    case _8ylb = "8YLB"
    /// `8Z6G` — Germany: Kommanditgesellschaft
    case _8z6g = "8Z6G"
    /// `8Z76` — United States of America — Indiana: Savings and Loan Association
    case _8z76 = "8Z76"
    /// `8ZH8` — Canada — Alberta: Alberta Business Corporation
    case _8zh8 = "8ZH8"
    /// `8ZLF` — India: Special Purpose Vehicle - Trust
    case _8zlf = "8ZLF"
    /// `8ZQE` — Estonia: Korteriühistu
    case _8zqe = "8ZQE"
    /// `8ZUV` — Mexico: Sociedad anónima, sociedad financiera de objeto múltiple, entidad regulada
    case _8zuv = "8ZUV"
    /// `90YN` — Slovakia: Sociálna a zdravotné poisťovne
    case _90yn = "90YN"
    /// `917C` — Czechia: Česká tisková kancelář
    case _917c = "917C"
    /// `92JZ` — Bonaire, Sint Eustatius and Saba: Stichting
    case _92jz = "92JZ"
    /// `92OB` — United States of America — Nevada: credit union
    case _92ob = "92OB"
    /// `93CA` — United States of America — Montana: Agricultural Association
    case _93ca = "93CA"
    /// `93LG` — Kuwait: Sharikat altawsiat albasitat lilshiraka
    case _93lg = "93LG"
    /// `93WZ` — Slovakia: Podnikateľ-fyzická osoba-zapís.v OR-podnikajúca súčasne ako sam.hosp.roľník
    case _93wz = "93WZ"
    /// `946C` — Bulgaria: Ednolichen targovets
    case _946c = "946C"
    /// `94UQ` — Canada — Alberta: public recreation company
    case _94uq = "94UQ"
    /// `94WO` — France: District urbain
    case _94wo = "94WO"
    /// `956I` — Spain: Sociedad Limitada de nueva empresa
    case _956i = "956I"
    /// `95AW` — Malaysia — Labuan: Labuan Islamic Charitable Trust
    case _95aw = "95AW"
    /// `95EN` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les services de santé et les services sociaux pour les autochtones cris
    case _95en = "95EN"
    /// `95G8` — Czechia: Podnikající fyzická osoba tuzemská
    case _95g8 = "95G8"
    /// `95MS` — Slovakia: Slobodné povolanie-fyzická osoba podnikajúca na základe iného ako živnostenského zákona
    case _95ms = "95MS"
    /// `95OK` — United States of America — Ohio: General Partnership
    case _95ok = "95OK"
    /// `95W7` — United States of America — Indiana: Financial Institution
    case _95w7 = "95W7"
    /// `96OC` — Mexico: Sociedad cooperativa
    case _96oc = "96OC"
    /// `96XK` — Poland: fundacja
    case _96xk = "96XK"
    /// `971Y` — Czechia: Podnik nebo hospodářské zařízení sdružení
    case _971y = "971Y"
    /// `97PB` — Finland: Vakuutuskassa
    case _97pb = "97PB"
    /// `97PZ` — France: SARL coopérative d'intérêt maritime
    case _97pz = "97PZ"
    /// `982Z` — United States of America — Hawaii: Service Mark
    case _982z = "982Z"
    /// `98A8` — Bahamas: Company Limited by Shares
    case _98a8 = "98A8"
    /// `990B` — Bahrain: Wasiat alshirakat min qibal sharikat al'ashum
    case _990b = "990B"
    /// `995K` — Hungary: Magánnyugdíjpénztár
    case _995k = "995K"
    /// `9999` — to be used for LEIs for entities which have no separate legal form
    case _9999 = "9999"
    /// `99JD` — Portugal: Agrupamento Europeu de Interesse Económico
    case _99jd = "99JD"
    /// `9A4Q` — United States of America — Alaska: Religious Corporation
    case _9a4q = "9A4Q"
    /// `9AAK` — Netherlands: maatschap
    case _9aak = "9AAK"
    /// `9AAS` — United States of America — Texas: Professional Corporation
    case _9aas = "9AAS"
    /// `9AQ8` — United States of America — District of Columbia: Commercial Bank
    case _9aq8 = "9AQ8"
    /// `9ASJ` — United States of America — Delaware: Commercial Bank
    case _9asj = "9ASJ"
    /// `9AUC` — Finland: Vakuutusyhdistys
    case _9auc = "9AUC"
    /// `9B78` — United Kingdom of Great Britain and Northern Ireland: Royal Charter Company
    case _9b78 = "9B78"
    /// `9BH2` — United States of America — Missouri: Savings and Loan Association
    case _9bh2 = "9BH2"
    /// `9BIS` — Brazil: Organização Religiosa
    case _9bis = "9BIS"
    /// `9BPE` — Ireland: Credit Union
    case _9bpe = "9BPE"
    /// `9BQH` — Niger: Société Anonyme
    case _9bqh = "9BQH"
    /// `9C19` — United States of America — Pennsylvania: Limited Liability Company
    case _9c19 = "9C19"
    /// `9C91` — Luxembourg: Société d’épargne-pension à capital variable
    case _9c91 = "9C91"
    /// `9CB2` — Canada — Quebec: Société par actions constitué par Loi sur les syndicats d'élevage
    case _9cb2 = "9CB2"
    /// `9CEN` — Canada — Quebec: Société par actions constitué par Loi sur les sociétés d'exploration minière
    case _9cen = "9CEN"
    /// `9D1K` — Canada — Manitoba: non-share corporations
    case _9d1k = "9D1K"
    /// `9D9U` — Croatia: Trgovac pojedinac
    case _9d9u = "9D9U"
    /// `9DI1` — Norway: Boligbyggelag
    case _9di1 = "9DI1"
    /// `9E0Q` — Curaçao: Commanditaire vennootschap
    case _9e0q = "9E0Q"
    /// `9EGO` — Puerto Rico: Bank (LLC)
    case _9ego = "9EGO"
    /// `9EJ6` — United States of America — Pennsylvania: Nonprofit Corporation
    case _9ej6 = "9EJ6"
    /// `9F78` — Bulgaria: Chuzhdestranno druzhestvo - fizichesko litse
    case _9f78 = "9F78"
    /// `9FD9` — United States of America — Indiana: Master Limited Liability Company
    case _9fd9 = "9FD9"
    /// `9FPZ` — Spain: Sociedad Anonima Europea
    case _9fpz = "9FPZ"
    /// `9G8O` — United States of America — Hawaii: Savings Bank
    case _9g8o = "9G8O"
    /// `9GXA` — United States of America — Wyoming: Profit Corporation
    case _9gxa = "9GXA"
    /// `9HC8` — France: Société en participation entre personnes physiques
    case _9hc8 = "9HC8"
    /// `9HKD` — United States of America — Minnesota: Financial Corporations
    case _9hkd = "9HKD"
    /// `9HLU` — Czechia: Společnost s ručením omezeným
    case _9hlu = "9HLU"
    /// `9I4Y` — United States of America — Minnesota: Non-Profit Corporation
    case _9i4y = "9I4Y"
    /// `9I58` — United Arab Emirates — Abu Dhabi: Private Company Unlimited without Shares
    case _9i58 = "9I58"
    /// `9IF2` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les associations coopératives
    case _9if2 = "9IF2"
    /// `9JGX` — Germany: Landesinnungsverband
    case _9jgx = "9JGX"
    /// `9JWK` — United States of America — South Carolina: credit union
    case _9jwk = "9JWK"
    /// `9KGS` — Italy: Società Cooperativa Europea
    case _9kgs = "9KGS"
    /// `9KSX` — Denmark: Partnerselskab
    case _9ksx = "9KSX"
    /// `9KU7` — France: Union de sociétés coopératives agricoles
    case _9ku7 = "9KU7"
    /// `9L6B` — United States of America — Louisiana: Foreign Limited Liability Company
    case _9l6b = "9L6B"
    /// `9L9V` — Slovakia: Poľnohospodárske družstvo
    case _9l9v = "9L9V"
    /// `9LJA` — Estonia: Aktsiaselts
    case _9lja = "9LJA"
    /// `9M15` — Russian Federation: Central'nyj bank
    case _9m15 = "9M15"
    /// `9M2Q` — United States of America — New Hampshire: Benefit Corporation
    case _9m2q = "9M2Q"
    /// `9ME5` — India: Non profit company
    case _9me5 = "9ME5"
    /// `9N1F` — France: SA d'intérêt collectif agricole (SICA)
    case _9n1f = "9N1F"
    /// `9NBN` — Jordan: sharikat altadamun
    case _9nbn = "9NBN"
    /// `9NSV` — Slovakia: Neinvestičný fond
    case _9nsv = "9NSV"
    /// `9O0S` — France: Association fonciére urbaine
    case _9o0s = "9O0S"
    /// `9O67` — Serbia: Preduzetnik
    case _9o67 = "9O67"
    /// `9OSW` — United States of America — Montana: Limited Liability Partnership
    case _9osw = "9OSW"
    /// `9PZC` — Croatia: Fundacija
    case _9pzc = "9PZC"
    /// `9QHJ` — Malta: government entity
    case _9qhj = "9QHJ"
    /// `9RQZ` — Russian Federation: Gosudarstvennyye unitarnyye predpriyatiya sub"yektov Rossiyskoy Federatsii
    case _9rqz = "9RQZ"
    /// `9RVC` — Czechia: Družstvo
    case _9rvc = "9RVC"
    /// `9STD` — United States of America — Montana: Corporation
    case _9std = "9STD"
    /// `9T5S` — France: Fondation
    case _9t5s = "9T5S"
    /// `9TCY` — Bermuda: Mutual Company (Part XII)
    case _9tcy = "9TCY"
    /// `9U5M` — United States of America — Washington: credit union
    case _9u5m = "9U5M"
    /// `9U6F` — United Arab Emirates — Abu Dhabi: Limited Liability Partnership
    case _9u6f = "9U6F"
    /// `9X63` — Belarus: Unіtarnae pradpryemstva
    case _9x63 = "9X63"
    /// `9XDB` — Czechia: Občanské sdružení
    case _9xdb = "9XDB"
    /// `9XFK` — Guernsey — Guernsey: Foundation
    case _9xfk = "9XFK"
    /// `9XHE` — Canada — Nova Scotia: business names
    case _9xhe = "9XHE"
    /// `9YIP` — Sweden: Europakooperativ
    case _9yip = "9YIP"
    /// `A0J6` — Spain: Asociación
    case a0j6 = "A0J6"
    /// `A0PS` — India: Partnership Firm
    case a0ps = "A0PS"
    /// `A0VZ` — France: SCP d'architectes
    case a0vz = "A0VZ"
    /// `A0W7` — Netherlands: publiekrechtelijke rechtspersoon
    case a0w7 = "A0W7"
    /// `A2A8` — Mexico: Sociedad en comandita por acciones
    case a2a8 = "A2A8"
    /// `A2GC` — Lithuania: Religines bendruomenes, bendrijos ir centrai
    case a2gc = "A2GC"
    /// `A2X8` — United Kingdom of Great Britain and Northern Ireland: Unregistered Company
    case a2x8 = "A2X8"
    /// `A30N` — Virgin Islands (U.S.): Foreign Trade & Labor Corporation
    case a30n = "A30N"
    /// `A338` — Lithuania: Individualios įmonės
    case a338 = "A338"
    /// `A35I` — Vanuatu: Overseas Company
    case a35i = "A35I"
    /// `A3YH` — United States of America — Alabama: credit union
    case a3yh = "A3YH"
    /// `A4MM` — Puerto Rico: International Banking Center (Corporation)
    case a4mm = "A4MM"
    /// `A770` — United States of America — Montana: Professional Corporation
    case a770 = "A770"
    /// `A7G6` — Cook Islands: Limited Liability Company
    case a7g6 = "A7G6"
    /// `A7KA` — Canada — Quebec: Selon la loi par Loi spéciale du Québec à caractère public
    case a7ka = "A7KA"
    /// `A7VA` — Solomon Islands: Community Company
    case a7va = "A7VA"
    /// `A8CT` — Portugal: Entidade Pública Empresarial
    case a8ct = "A8CT"
    /// `A97B` — Spain: Mutualidad de Prevision Social
    case a97b = "A97B"
    /// `A9AW` — United States of America — Arizona: Limited Partnership
    case a9aw = "A9AW"
    /// `A9N4` — Bahamas: International Business Company
    case a9n4 = "A9N4"
    /// `A9VQ` — United States of America — Kentucky: Limited Cooperative Assocation
    case a9vq = "A9VQ"
    /// `AABD` — Belarus: Tavarystva z abmezhavanaj adkaznascyu
    case aabd = "AABD"
    /// `AABQ` — Peru: Empresas Multicomunales
    case aabq = "AABQ"
    /// `AAL7` — Austria: Kommandit-Erwerbsgesellschaft
    case aal7 = "AAL7"
    /// `AB76` — United States of America — Idaho: credit union
    case ab76 = "AB76"
    /// `ABII` — Saint Vincent and the Grenadines: international business company - unlimited company not authorised to issue shares
    case abii = "ABII"
    /// `AD0H` — United States of America — Georgia: Limited Partnership
    case ad0h = "AD0H"
    /// `ADAZ` — Italy: Istituto Religioso
    case adaz = "ADAZ"
    /// `ADF8` — Curaçao: Coöperatie
    case adf8 = "ADF8"
    /// `ADV0` — Qatar: Sharika That Almasuliah Almahduda
    case adv0 = "ADV0"
    /// `ADXG` — Australia: Fund
    case adxg = "ADXG"
    /// `AEJF` — United States of America — Ohio: Professional Association
    case aejf = "AEJF"
    /// `AEK0` — United States of America — Montana: Limited Liability Company
    case aek0 = "AEK0"
    /// `AEV1` — Norway: Partrederi
    case aev1 = "AEV1"
    /// `AEZW` — Indonesia: Perseroan Terbuka
    case aezw = "AEZW"
    /// `AF67` — Tunisia: Société unipersonnelle à responsabilité limitée
    case af67 = "AF67"
    /// `AGSR` — Slovakia: Jednotka štátnej železnično - technickej inšpekcie
    case agsr = "AGSR"
    /// `AHBR` — France: SA à participation ouvrière à directoire
    case ahbr = "AHBR"
    /// `AHJG` — Korea (Republic of): JoHabHyeong fund
    case ahjg = "AHJG"
    /// `AHK4` — United States of America — Mississippi: credit union
    case ahk4 = "AHK4"
    /// `AHRM` — Saint Kitts and Nevis: limited partnership
    case ahrm = "AHRM"
    /// `AI01` — Romania: Persoana fizica independentă
    case ai01 = "AI01"
    /// `AIR0` — United Arab Emirates — Dubai: Limited Partnership
    case air0 = "AIR0"
    /// `AIR5` — Luxembourg: Fond commun de placement
    case air5 = "AIR5"
    /// `AJ2Y` — Tuvalu: proprietary company
    case aj2y = "AJ2Y"
    /// `AJ9U` — Spain: Sociedad Anonima Profesional
    case aj9u = "AJ9U"
    /// `AKF5` — Korea (Republic of): JaeDanBeobIn
    case akf5 = "AKF5"
    /// `AL8W` — Brazil: Sociedade Limitada Unipessoal
    case al8w = "AL8W"
    /// `AL9T` — Poland: samorządowe jednostki organizacyjne
    case al9t = "AL9T"
    /// `ALDM` — Taiwan (Province of China): Hé zuò shè
    case aldm = "ALDM"
    /// `ALPT` — Portugal: Associação
    case alpt = "ALPT"
    /// `ALW3` — United States of America — Georgia: Non-deposit Trust Company
    case alw3 = "ALW3"
    /// `AM3T` — Czechia: Státní fond ze zákona nezapisující se do obchodního rejstříku
    case am3t = "AM3T"
    /// `AMFI` — France: Autorité constitutionnelle
    case amfi = "AMFI"
    /// `AMKW` — Germany: REIT-Aktiengesellschaft
    case amkw = "AMKW"
    /// `AMV2` — United States of America — Vermont: Savings Bank
    case amv2 = "AMV2"
    /// `AN8Z` — Virgin Islands (U.S.): Foreign Limited Partnership / Limited Liability Limited Partnership
    case an8z = "AN8Z"
    /// `ANDT` — Romania: Societate pe acţiuni
    case andt = "ANDT"
    /// `ANHM` — Brazil: Partido Político
    case anhm = "ANHM"
    /// `ANSR` — Liechtenstein: Kommanditgesellschaft
    case ansr = "ANSR"
    /// `ANXC` — Mexico: Federación de sindicatos
    case anxc = "ANXC"
    /// `AO0O` — Belize: Unlimited Company
    case ao0o = "AO0O"
    /// `AOKU` — Mexico: Unión de ejidos
    case aoku = "AOKU"
    /// `AOS4` — Mauritius: Private Company Limited By Guarantee
    case aos4 = "AOS4"
    /// `APEN` — Czechia: Správa železniční dopravní cesty, státní organizace
    case apen = "APEN"
    /// `AQBO` — United States of America — Hawaii: Limited Partnership
    case aqbo = "AQBO"
    /// `ARDP` — Spain: Sociedad Civil Profesional
    case ardp = "ARDP"
    /// `AREY` — United States of America — Kansas: Sole Proprietorship
    case arey = "AREY"
    /// `ARJF` — Italy: Ente Morale
    case arjf = "ARJF"
    /// `ARON` — United States of America — North Carolina: limited partnership
    case aron = "ARON"
    /// `AS4W` — Bonaire, Sint Eustatius and Saba: Stichting particulier fonds
    case as4w = "AS4W"
    /// `AS78` — Russian Federation: Advokatskiye byuro
    case as78 = "AS78"
    /// `AS7L` — Canada — Quebec: Société par actions constitué par Loi sur les compagnies de gaz, d’eau et d’électricité
    case as7l = "AS7L"
    /// `ASC7` — United States of America — Georgia: Professional Corporation
    case asc7 = "ASC7"
    /// `ASR5` — Bermuda: Exempted Partnership
    case asr5 = "ASR5"
    /// `ASWX` — Canada — Newfoundland and Labrador: share corporations
    case aswx = "ASWX"
    /// `AT9F` — United States of America — Maine: Savings Bank
    case at9f = "AT9F"
    /// `ATQY` — Luxembourg: Société en nom collectif
    case atqy = "ATQY"
    /// `AUPV` — Finland: Muu kiinteistöosakeyhtiö
    case aupv = "AUPV"
    /// `AVFT` — Ecuador: Cooperativa
    case avft = "AVFT"
    /// `AVLE` — United States of America — Rhode Island: Non-profit Corporation
    case avle = "AVLE"
    /// `AVYY` — United Kingdom of Great Britain and Northern Ireland: Government Entity
    case avyy = "AVYY"
    /// `AW80` — Canada — British Columbia: Association (includes housing cooperative and community service cooperative)
    case aw80 = "AW80"
    /// `AXEQ` — Korea (Republic of): HabMyeongHoeSa
    case axeq = "AXEQ"
    /// `AXS5` — Spain: Sociedad de Capital-Riesgo
    case axs5 = "AXS5"
    /// `AXSB` — Austria: Gesellschaft mit beschränkter Haftung
    case axsb = "AXSB"
    /// `AXW3` — Canada — New Brunswick: depends on Act of the Legislature
    case axw3 = "AXW3"
    /// `AZ8V` — San Marino: Società per azioni
    case az8v = "AZ8V"
    /// `AZA0` — Switzerland: Sole proprietorship
    case aza0 = "AZA0"
    /// `AZFE` — Germany: Eingetragene Genossenschaft
    case azfe = "AZFE"
    /// `AZH4` — United States of America — Maryland: credit union
    case azh4 = "AZH4"
    /// `AZTM` — Latvia: Eiropas komercsabiedrība
    case aztm = "AZTM"
    /// `AZTO` — Sweden: Sambruksförening
    case azto = "AZTO"
    /// `AZUK` — United States of America — Illinois: Business Corporation
    case azuk = "AZUK"
    /// `AZYL` — United States of America — North Dakota: Savings Bank
    case azyl = "AZYL"
    /// `B0LD` — Mauritius: Ministries And Parastal Bodies
    case b0ld = "B0LD"
    /// `B0V5` — Spain: Sociedad Cooperativa Profesional
    case b0v5 = "B0V5"
    /// `B12O` — United States of America — Utah: Business Trust
    case b12o = "B12O"
    /// `B13W` — United Arab Emirates — Abu Dhabi: Restricted Scope Company
    case b13w = "B13W"
    /// `B21W` — Poland: prosta spółka akcyjna
    case b21w = "B21W"
    /// `B2F4` — United States of America — Montana: Cooperative Association
    case b2f4 = "B2F4"
    /// `B2N4` — Benin: Entreprise Individuelle
    case b2n4 = "B2N4"
    /// `B2UK` — Bonaire, Sint Eustatius and Saba: Nevenvestiging met hoofdvestiging buiten bonaire
    case b2uk = "B2UK"
    /// `B35X` — Dominican Republic: Sociedad en Participación(sin personalidad jurídica)
    case b35x = "B35X"
    /// `B38Q` — United States of America — Hawaii: General Partnership
    case b38q = "B38Q"
    /// `B3JS` — Saudi Arabia: sharikat 'ashkhas
    case b3js = "B3JS"
    /// `B3RX` — Canada — New Brunswick: corporation
    case b3rx = "B3RX"
    /// `B3WQ` — Mexico: Sociedad anónima de capital variable, unión de crédito
    case b3wq = "B3WQ"
    /// `B4L0` — Qatar: Sharikat Almahasah
    case b4l0 = "B4L0"
    /// `B4OI` — Sint Maarten: onderlinge waarborgmaatschappij
    case b4oi = "B4OI"
    /// `B56A` — Kosovo: Zyra e Përfaqësisë së Shoqërisë së Huaj Tregtare në Kosovë
    case b56a = "B56A"
    /// `B5GH` — Russian Federation: Kazach'i obshchestva, vnesennyye v gosudarstvennyy reyestr kazach'ikh obshchestv v Rossiyskoy Federatsii
    case b5gh = "B5GH"
    /// `B5PM` — Netherlands: naamloze vennootschap
    case b5pm = "B5PM"
    /// `B5TO` — Italy: Società a Responsabilità Limitata con Unico Socio
    case b5to = "B5TO"
    /// `B5UZ` — China: shi ye dan wei
    case b5uz = "B5UZ"
    /// `B5YE` — United States of America — Wisconsin: Non-deposit Trust Company
    case b5ye = "B5YE"
    /// `B645` — France: SA d'attribution à conseil d'administration
    case b645 = "B645"
    /// `B69V` — Canada — Alberta: Alberta private non-profit company
    case b69v = "B69V"
    /// `B6ES` — United Kingdom of Great Britain and Northern Ireland: Public Limited Company
    case b6es = "B6ES"
    /// `B7I7` — France: SA coopérative artisanale à conseil d'administration
    case b7i7 = "B7I7"
    /// `B843` — United States of America — Nebraska: Domestic Professional Limited Liability Company
    case b843 = "B843"
    /// `B8CE` — Mexico: Sociedad anónima
    case b8ce = "B8CE"
    /// `B8KO` — United States of America — Pennsylvania: Limited Liability Partnership
    case b8ko = "B8KO"
    /// `B8OI` — Chile: Entidad religiosa
    case b8oi = "B8OI"
    /// `B8VT` — Indonesia: Commanditaire Vennootschap
    case b8vt = "B8VT"
    /// `B8XC` — United States of America — Oklahoma: Limited Liability Company
    case b8xc = "B8XC"
    /// `B910` — Belgium: Vennootschap onder firma met een sociaal oogmerk
    case b910 = "B910"
    /// `BADE` — United States of America — California: Nonprofit Common Interest Development Association
    case bade = "BADE"
    /// `BAK2` — France: Exploitation agricole à responsabilité limitée
    case bak2 = "BAK2"
    /// `BAMJ` — Singapore: Unlimited Private Company
    case bamj = "BAMJ"
    /// `BASA` — Canada — Alberta: Alberta cooperative
    case basa = "BASA"
    /// `BAUQ` — France: SA de crédit immobilier à conseil d'administration
    case bauq = "BAUQ"
    /// `BB0P` — Viet Nam: doanh nghiệp tư nhân
    case bb0p = "BB0P"
    /// `BB5Y` — Seychelles: International Trust
    case bb5y = "BB5Y"
    /// `BBB8` — Liechtenstein: Kommanditärengesellschaft
    case bbb8 = "BBB8"
    /// `BBEB` — Netherlands: Europese naamloze vennootschap (Societas Europaea)
    case bbeb = "BBEB"
    /// `BC32` — United States of America — Colorado: Limited Partnership Association
    case bc32 = "BC32"
    /// `BC38` — Australia: Incorporated association
    case bc38 = "BC38"
    /// `BCF5` — Cyprus: Dimosia Etaireia Periorismenis Efthynis me metoches
    case bcf5 = "BCF5"
    /// `BCM3` — Samoa: Credit Union
    case bcm3 = "BCM3"
    /// `BCSV` — Austria: Flexible Kapitalgesellschaft
    case bcsv = "BCSV"
    /// `BDDP` — France: SCP d'infirmiers
    case bddp = "BDDP"
    /// `BDTI` — China: bian ban zhi jie guan li ji gou bian zhi de qun zhong tuan ti
    case bdti = "BDTI"
    /// `BDYL` — Armenia: Petakan liazorutʿyunnerov ozhdvats iravabanakan andz
    case bdyl = "BDYL"
    /// `BE3O` — United States of America — Massachusetts: Savings and Loan Association
    case be3o = "BE3O"
    /// `BE56` — Estonia: Avalik-õiguslik juriidiline isik
    case be56 = "BE56"
    /// `BEAN` — Luxembourg: Société d'investissement à capital fixe
    case bean = "BEAN"
    /// `BEAY` — Sweden: Handelsbolag
    case beay = "BEAY"
    /// `BEWI` — France: Association déclarée
    case bewi = "BEWI"
    /// `BF9N` — Switzerland: Federal public company
    case bf9n = "BF9N"
    /// `BFIV` — Mexico: Sociedad anónima, casa de cambio
    case bfiv = "BFIV"
    /// `BG8P` — United States of America — Mississippi: Savings Bank
    case bg8p = "BG8P"
    /// `BGH4` — United States of America — Oklahoma: Profit Corporation
    case bgh4 = "BGH4"
    /// `BGPJ` — Lithuania: Europos ekonominių interesų grupės
    case bgpj = "BGPJ"
    /// `BH5D` — Canada — Alberta: rural utility cooperative
    case bh5d = "BH5D"
    /// `BI3B` — Spain: Agrupacion Europea de Interes Economico
    case bi3b = "BI3B"
    /// `BJ2V` — United States of America — Nebraska: Foreign Professional Limited Liability Company
    case bj2v = "BJ2V"
    /// `BJ65` — Norway: Pensjonskasse
    case bj65 = "BJ65"
    /// `BJ8Q` — Hungary: Egyéni vállalkozás
    case bj8q = "BJ8Q"
    /// `BJT3` — Indonesia: Firma
    case bjt3 = "BJT3"
    /// `BKAB` — Luxembourg: Association d'assurances mutuelles
    case bkab = "BKAB"
    /// `BKEB` — Slovakia: Oblastný závod poisťovne
    case bkeb = "BKEB"
    /// `BKQO` — Finland: Valtio ja sen laitokset
    case bkqo = "BKQO"
    /// `BKUX` — Hungary: Zártkörűen működő részvénytársaság
    case bkux = "BKUX"
    /// `BKVI` — Finland: Hypoteekkiyhdistys
    case bkvi = "BKVI"
    /// `BL4B` — Czechia: Obecně prospěšná společnost
    case bl4b = "BL4B"
    /// `BL52` — Italy: Società Consortile A Responsabilità Limitata
    case bl52 = "BL52"
    /// `BL60` — Jordan: alsharika almusahama aleama
    case bl60 = "BL60"
    /// `BLVV` — Russian Federation: Kreditnyye potrebitel'skiye kooperativy
    case blvv = "BLVV"
    /// `BMYJ` — Hungary: Egyéb alapítvány
    case bmyj = "BMYJ"
    /// `BNYZ` — Niger: Organisme mutualiste ou mutuel
    case bnyz = "BNYZ"
    /// `BO6L` — United States of America — New York: Limited Partnership
    case bo6l = "BO6L"
    /// `BOEX` — United States of America — Virginia: Business Trust
    case boex = "BOEX"
    /// `BOF1` — Mexico: Sociedad en nombre colectivo
    case bof1 = "BOF1"
    /// `BOYK` — Canada — Ontario: Corporations formed by an Act of the Ontario Legislative Assembly
    case boyk = "BOYK"
    /// `BPLS` — Lithuania: Uždarosios akcinės bendrovės
    case bpls = "BPLS"
    /// `BQ0P` — Cambodia: Public Limited Company
    case bq0p = "BQ0P"
    /// `BQ19` — Finland: Laivanisännistöyhtiö
    case bq19 = "BQ19"
    /// `BQ3A` — Russian Federation: Garazhnyye i garazhno-stroitel'nyye kooperativy
    case bq3a = "BQ3A"
    /// `BQ6L` — Puerto Rico: Sponsored By Municipal Corporation
    case bq6l = "BQ6L"
    /// `BQRL` — United States of America — Minnesota: Limited Liability Company
    case bqrl = "BQRL"
    /// `BRGA` — France: SA immobilière d'investissement à conseil d'administration
    case brga = "BRGA"
    /// `BRHI` — United States of America — Tennessee: credit union
    case brhi = "BRHI"
    /// `BRO8` — United States of America — Alaska: Business Corporation
    case bro8 = "BRO8"
    /// `BS22` — Latvia: Individuālais komersants
    case bs22 = "BS22"
    /// `BSJT` — Poland: spółka komandytowa
    case bsjt = "BSJT"
    /// `BSK1` — Hungary: Oktatási intézmények
    case bsk1 = "BSK1"
    /// `BSLM` — United States of America — Maryland: Limited Partnership
    case bslm = "BSLM"
    /// `BSN7` — Panama: Asociación
    case bsn7 = "BSN7"
    /// `BST2` — Virgin Islands (British): company limited by guarantee that is not authorised to issue shares
    case bst2 = "BST2"
    /// `BSZ8` — Liechtenstein: Stiftung
    case bsz8 = "BSZ8"
    /// `BTQ1` — United States of America — Ohio: Corporation (For-Profit)
    case btq1 = "BTQ1"
    /// `BUMI` — Slovakia: Európska spoločnosť
    case bumi = "BUMI"
    /// `BUSK` — Indonesia: Perusahaan Umum
    case busk = "BUSK"
    /// `BVJ0` — Malta: Partnership en commendite or limited partnership
    case bvj0 = "BVJ0"
    /// `BVOE` — Guernsey: Limited Company
    case bvoe = "BVOE"
    /// `BVPF` — Mauritius: Cooperative
    case bvpf = "BVPF"
    /// `BW92` — Korea (Republic of): HabJaHoeSa
    case bw92 = "BW92"
    /// `BX6Y` — United Kingdom of Great Britain and Northern Ireland: Friendly Society
    case bx6y = "BX6Y"
    /// `BXZH` — Saint Kitts and Nevis — Nevis: limited partnership
    case bxzh = "BXZH"
    /// `BY2Z` — Israel: Aguda Shitufit
    case by2z = "BY2Z"
    /// `BYFU` — United States of America — Massachusetts: Limited Liability Company
    case byfu = "BYFU"
    /// `BYQJ` — Sweden: Bankaktiebolag
    case byqj = "BYQJ"
    /// `BYZF` — France: Paroisse hors zone concordataire
    case byzf = "BYZF"
    /// `BZQL` — Russian Federation: Organizatsionno-pravovyye formy dlya deyatel'nosti grazhdan (fizicheskikh lits)
    case bzql = "BZQL"
    /// `C061` — Malta: Public Limited Liability Company
    case c061 = "C061"
    /// `C0CR` — United States of America — Wisconsin: Cooperative Association
    case c0cr = "C0CR"
    /// `C0VE` — United States of America — Alaska: Savings Bank
    case c0ve = "C0VE"
    /// `C1F4` — United States of America — Louisiana: Domestic Public Benefit Corporation
    case c1f4 = "C1F4"
    /// `C1IC` — Italy: Società Cooperativa Consortile
    case c1ic = "C1IC"
    /// `C276` — United States of America — South Dakota: Limited Liability Company
    case c276 = "C276"
    /// `C2O4` — United States of America — Rhode island: Savings and Loan Association
    case c2o4 = "C2O4"
    /// `C38B` — China: qi ta（ wai jiao ）
    case c38b = "C38B"
    /// `C3RQ` — Russian Federation: Organizatsionno-pravovyyу formy yuridicheskikh lits, yavlyayushchikhsya kommercheskimi korporativnymi organizatsiyami
    case c3rq = "C3RQ"
    /// `C42J` — France: SARL immobilière de gestion
    case c42j = "C42J"
    /// `C4D7` — France: Ensemble urbain
    case c4d7 = "C4D7"
    /// `C4PZ` — Slovakia: Podnikateľ-fyzická osoba-nezapísaný v obchodnom registri
    case c4pz = "C4PZ"
    /// `C4Q2` — Czechia: Všeobecná zdravotní pojišťovna
    case c4q2 = "C4Q2"
    /// `C4Z4` — Mexico: Asociación rural de interés colectivo
    case c4z4 = "C4Z4"
    /// `C51L` — Finland: Eurooppalainen taloudellinen etuyhtymä sivutoimipaikka
    case c51l = "C51L"
    /// `C58S` — Ireland: Company Limited by Guarantee
    case c58s = "C58S"
    /// `C5FE` — Czechia: Samostatná drobná provozovna (obecního úřadu)
    case c5fe = "C5FE"
    /// `C5K7` — United States of America — Texas: For-Profit Corporation
    case c5k7 = "C5K7"
    /// `C605` — United Kingdom of Great Britain and Northern Ireland: Private Limited by Shares (Section 30 Exemption)
    case c605 = "C605"
    /// `C609` — Belgium: Eenpersoons besloten vennootschap met beperkte aansprakelijkheid
    case c609 = "C609"
    /// `C61P` — Sweden: Ekonomisk förening
    case c61p = "C61P"
    /// `C639` — United States of America — Indiana: Industrial Bank
    case c639 = "C639"
    /// `C6AH` — Chile: Cooperativa
    case c6ah = "C6AH"
    /// `C7GZ` — Czechia: Výrobní družstvo
    case c7gz = "C7GZ"
    /// `C7TI` — Russian Federation: Assotsiatsii (soyuzy) sadovodcheskikh, ogorodnicheskikh i dachnykh nekommercheskikh ob"yedineniy
    case c7ti = "C7TI"
    /// `C8HJ` — United States of America — Tennessee: Savings and Loan Association
    case c8hj = "C8HJ"
    /// `C907` — Puerto Rico: Youth Cooperative
    case c907 = "C907"
    /// `C9KZ` — Canada — Alberta: Alberta professional corporation
    case c9kz = "C9KZ"
    /// `CAF9` — Mexico: Sociedad anónima, centro cambiario
    case caf9 = "CAF9"
    /// `CAGH` — United States of America — Massachusetts: Limited Liability Partnership
    case cagh = "CAGH"
    /// `CANT` — United States of America — Kansas: Professional Association
    case cant = "CANT"
    /// `CAQ1` — Austria: Versicherungsverein auf Gegenseitigkeit
    case caq1 = "CAQ1"
    /// `CATU` — Czechia: Spolek
    case catu = "CATU"
    /// `CAX5` — France: Régime général de la Sécurité Sociale
    case cax5 = "CAX5"
    /// `CB98` — Gibraltar: Foundations
    case cb98 = "CB98"
    /// `CBO2` — France: Service du ministère de la Défense
    case cbo2 = "CBO2"
    /// `CD28` — Czechia: Společnost komanditní
    case cd28 = "CD28"
    /// `CD8F` — Lesotho: Non-profit Company
    case cd8f = "CD8F"
    /// `CD96` — United States of America — Oklahoma: credit union
    case cd96 = "CD96"
    /// `CD9O` — United States of America — Louisiana: Domestic Limited Liability Company
    case cd9o = "CD9O"
    /// `CDOT` — United Kingdom of Great Britain and Northern Ireland: UK Establishment
    case cdot = "CDOT"
    /// `CDOV` — Antigua and Barbuda: International Business Corporation
    case cdov = "CDOV"
    /// `CDXK` — Isle of Man: Limited Liability Company
    case cdxk = "CDXK"
    /// `CDYY` — Seychelles: Company Limited by Guarantee
    case cdyy = "CDYY"
    /// `CF56` — France: Mutualité sociale agricole
    case cf56 = "CF56"
    /// `CF5L` — Norway: Ansvarlig selskap, delt ansvar
    case cf5l = "CF5L"
    /// `CFH5` — Belgium: Vennootschap of vereniging zonder rechtspersoonlijkheid
    case cfh5 = "CFH5"
    /// `CG81` — Canada — Quebec: Personne morale sans but lucratif par Loi sur la Société d’habitation du Québec
    case cg81 = "CG81"
    /// `CGSO` — Italy: Società in Accomandita Semplice
    case cgso = "CGSO"
    /// `CHJR` — Czechia: Podnik se zahraniční majetkovou účastí
    case chjr = "CHJR"
    /// `CHWX` — Virgin Islands (U.S.): Domestic Limited Liability Company
    case chwx = "CHWX"
    /// `CHX6` — Peru: Sociedad Anónima Cerrada
    case chx6 = "CHX6"
    /// `CIO8` — Czechia: Veřejná výzkumná instituce
    case cio8 = "CIO8"
    /// `CIUP` — Niger: Société multinationale
    case ciup = "CIUP"
    /// `CJ58` — United States of America — North Carolina: Cooperative Association
    case cj58 = "CJ58"
    /// `CJO4` — Oman: alsharikat mahdudat almaswuwlia
    case cjo4 = "CJO4"
    /// `CKOS` — Estonia: Usuline ühendus
    case ckos = "CKOS"
    /// `CKTA` — Russian Federation: Nekommercheskiye partnerstva
    case ckta = "CKTA"
    /// `CMB6` — Canada — Ontario: Not-For-Profit corporations
    case cmb6 = "CMB6"
    /// `CMHQ` — Iceland: Evrópufélag
    case cmhq = "CMHQ"
    /// `CN7I` — Russian Federation: Fondy prokata
    case cn7i = "CN7I"
    /// `CNQ3` — United States of America — District of Columbia: Business Corporation (including professional corporation)
    case cnq3 = "CNQ3"
    /// `CNSS` — France: Société en participation de professions libérales
    case cnss = "CNSS"
    /// `CNXL` — France: Artisan-commerçant
    case cnxl = "CNXL"
    /// `CODH` — Netherlands: commanditaire vennootschap
    case codh = "CODH"
    /// `COKS` — United States of America — Illinois: Savings Bank
    case coks = "COKS"
    /// `COVJ` — Mexico: Organismo de integración financiera rural
    case covj = "COVJ"
    /// `COZR` — Malaysia: Partnership
    case cozr = "COZR"
    /// `CPK1` — United States of America — North Dakota: Mutual Aid Cooperative
    case cpk1 = "CPK1"
    /// `CPNU` — Myanmar: hceepwarrrayylotengaann aasainnaahpwal
    case cpnu = "CPNU"
    /// `CQ5X` — Greece: Εvropaiki Εtaireia
    case cq5x = "CQ5X"
    /// `CQJI` — France: Région
    case cqji = "CQJI"
    /// `CQMY` — Switzerland: Limited partnership
    case cqmy = "CQMY"
    /// `CR3H` — United States of America — Alabama: Registered Limited Liability Partnership
    case cr3h = "CR3H"
    /// `CR7N` — Malta: European Company
    case cr7n = "CR7N"
    /// `CRL9` — Aruba: Stichting
    case crl9 = "CRL9"
    /// `CRX3` — Kosovo: Kooperativa Bujqësore
    case crx3 = "CRX3"
    /// `CS15` — Canada — Northwest Territories: NT society
    case cs15 = "CS15"
    /// `CS8B` — Slovakia: Štátna hospodárska organizácia riadená okresným úradom
    case cs8b = "CS8B"
    /// `CSUT` — Benin: Société Anonyme
    case csut = "CSUT"
    /// `CT3J` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les compagnies (Partie II et Partie III), Code des professions, Loi concernant le regroupement et la gestion des commissions scolaires , Loi sur l’aménagement et l’urbanisme, Loi sur l’instruction publique, Loi sur l’organisation municipale de certains territoires, Loi sur la conservation de la faune, Loi sur la conservation et la mise en valeur de la faune, Loi sur la constitution de certaines Églises, Loi sur la Fédération des guides catholiques du Québec , Loi sur la Fédération des scouts catholiques du Québec , Loi sur la formation et la qualification professionnelles de la main-d’œuvre, Loi sur la mise en marché des produits agricoles, alimentaires et de la pêche, Loi sur la mise en marché des produits agricoles, Loi sur la probation et sur les établissements de détention, Loi sur la santé et la sécurité du travail, Loi sur la Société d’habitation du Québec, Loi sur la société Saint-Jean-Baptiste de Trois-Rivières, Loi sur la société Saint-Jean-Baptiste du Québec, Loi sur les associations coopératives, Loi sur les assurances, Loi sur les cercles agricoles, Loi sur les Chevaliers de Colomb de la province de Québec, Loi sur les cités et villes, Loi sur les clubs de chasse et de pêche, Loi sur les clubs de récréation, Loi sur les collèges d'enseignement général et professionnel, Loi sur les compagnies de cimetière, Loi sur les compagnies de cimetières catholiques romains, Loi sur les corporations de fonds de sécurité, Loi sur les corporations religieuses, Loi sur les décrets de convention collective, Loi sur les évêques catholiques romains, Loi sur les fabriques, Loi sur les services correctionnels, Loi sur les services de santé et les services sociaux pour les autochtones cris, Loi sur les services de santé et les services sociaux, Loi sur les sociétés agricoles et laitières, Loi sur les sociétés d'agriculture, Loi sur les sociétés d'horticulture, Loi sur les sociétés nationales de bienfaisance, Loi sur les syndicats professionnels, Loi sur les villages miniers, Loi sur les villages nordiques et l’Administration régionale Kativik, Loi sur les villes minières, Loi sur l'organisation territoriale municipale, Loi sur les sociétés préventives de cruauté envers les animaux
    case ct3j = "CT3J"
    /// `CTBD` — Romania: Alte forme de proprietate
    case ctbd = "CTBD"
    /// `CTCH` — Bulgaria: Kooperatsia
    case ctch = "CTCH"
    /// `CTNS` — Italy: Società Cooperativa a Responsabilità Limitata
    case ctns = "CTNS"
    /// `CU5R` — Mexico: Asociación ganadera local general
    case cu5r = "CU5R"
    /// `CU68` — Mexico: Sociedad cooperativa limitada de capital variable
    case cu68 = "CU68"
    /// `CUGP` — Romania: Regie autonomă
    case cugp = "CUGP"
    /// `CUIH` — Spain: Mutua
    case cuih = "CUIH"
    /// `CUKQ` — Czechia: Mezinárodní organizace zaměstnavatelů
    case cukq = "CUKQ"
    /// `CUQF` — Canada — Prince Edward Island: public unlimited liability corporation
    case cuqf = "CUQF"
    /// `CVDP` — Chile: Sociedad de Responsabilidad Limitada
    case cvdp = "CVDP"
    /// `CVH6` — France: SARL d'aménagement foncier et d'équipement rural (SAFER)
    case cvh6 = "CVH6"
    /// `CVXK` — United States of America — California: Nonprofit Corporation Religious
    case cvxk = "CVXK"
    /// `CW38` — Bermuda: Local Company Limited by Guarantee
    case cw38 = "CW38"
    /// `CWRI` — United States of America — Alabama: Limited Liability Company
    case cwri = "CWRI"
    /// `CWTQ` — Monaco: Société Anonyme Monégasque
    case cwtq = "CWTQ"
    /// `CX05` — Sweden: Kommanditbolag
    case cx05 = "CX05"
    /// `CXIO` — United States of America — Nebraska: Domesticated Foreign Corporation Professional Corporation
    case cxio = "CXIO"
    /// `CXWJ` — South Africa: Co-operatives (Secondary)
    case cxwj = "CXWJ"
    /// `CY1M` — Poland: instytucje gospodarki budżetowej
    case cy1m = "CY1M"
    /// `CYV6` — China: qi ta（ zhong yang jun wei gai ge he bian zhi ban gong shi ）
    case cyv6 = "CYV6"
    /// `CYW2` — Aruba: Vennootschap onder firma
    case cyw2 = "CYW2"
    /// `CZCE` — Chile: Sociedad Colectiva Comercial
    case czce = "CZCE"
    /// `CZPI` — Viet Nam: doanh nghiệp nhà nước
    case czpi = "CZPI"
    /// `CZUA` — Czechia: Zahraniční fyzická osoba
    case czua = "CZUA"
    /// `D094` — Russian Federation: Ekologicheskiye fondy
    case d094 = "D094"
    /// `D155` — United States of America — Florida: Limited Liability Limited Partnership
    case d155 = "D155"
    /// `D18J` — Slovakia: Jednoduchá spoločnosť na akcie
    case d18j = "D18J"
    /// `D1IZ` — Niger: Coopérative
    case d1iz = "D1IZ"
    /// `D1SL` — Belize: Partnership
    case d1sl = "D1SL"
    /// `D1VK` — Czechia: Školská právnická osoba
    case d1vk = "D1VK"
    /// `D2EI` — United States of America — South Carolina: Commercial Bank
    case d2ei = "D2EI"
    /// `D2I2` — France: Syndicat intercommunal à vocation multiple (SIVOM)
    case d2i2 = "D2I2"
    /// `D2MO` — United States of America — Nebraska: Joint Public Agency
    case d2mo = "D2MO"
    /// `D2T3` — Colombia: Empresa Asociativa de Trabajo
    case d2t3 = "D2T3"
    /// `D2T8` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les compagnies (Partie II et Partie III)
    case d2t8 = "D2T8"
    /// `D35X` — Czechia: Zahraniční spolek
    case d35x = "D35X"
    /// `D37H` — Kosovo: Shoqëri me Përgjegjësi të Kufizuar
    case d37h = "D37H"
    /// `D3E0` — Argentina: Sociedad de Capital e Industria
    case d3e0 = "D3E0"
    /// `D3UY` — Cambodia: Limited Partnership
    case d3uy = "D3UY"
    /// `D40E` — Germany: Verein alten Rechts
    case d40e = "D40E"
    /// `D4KQ` — Türkiye: özel mevzuat ile kurulmuş kuruluş
    case d4kq = "D4KQ"
    /// `D4PU` — Denmark: Frivillig forening
    case d4pu = "D4PU"
    /// `D4YS` — United States of America — Alaska: Limited Liability Company
    case d4ys = "D4YS"
    /// `D5L6` — Puerto Rico: Consumer Cooperative
    case d5l6 = "D5L6"
    /// `D64E` — Slovenia: Gospodarska zbornica
    case d64e = "D64E"
    /// `D6JI` — United States of America — New York: credit union
    case d6ji = "D6JI"
    /// `D7OA` — Portugal: Entidade Empresarial Municipal
    case d7oa = "D7OA"
    /// `D84J` — Russian Federation: Obshchestvennyye organizatsii
    case d84j = "D84J"
    /// `D87D` — Thailand: Mūlniṭhi cdthabeīyn
    case d87d = "D87D"
    /// `D8PB` — United States of America — Arizona: Business Development Corporation
    case d8pb = "D8PB"
    /// `D8UQ` — Canada — New Brunswick: professional corporation
    case d8uq = "D8UQ"
    /// `D8XQ` — Puerto Rico: Municipal Enterprise
    case d8xq = "D8XQ"
    /// `D90J` — Canada — Canada: corporation without share capital
    case d90j = "D90J"
    /// `D92T` — United States of America — Indiana: Limited Liability Partnership
    case d92t = "D92T"
    /// `DA06` — Monaco: Société à Responsabilité Limitée
    case da06 = "DA06"
    /// `DAEG` — Bahamas: Unlimited Liability Company
    case daeg = "DAEG"
    /// `DAFV` — Finland: Vakuutusosakeyhtiö
    case dafv = "DAFV"
    /// `DAQC` — Slovakia: Základná škola
    case daqc = "DAQC"
    /// `DAVB` — United States of America — Kentucky: Corporation (non-profit)
    case davb = "DAVB"
    /// `DBGD` — United States of America — South Carolina: Limited Liability Company
    case dbgd = "DBGD"
    /// `DBU3` — Mexico: Sociedad anónima  de capital variable, financiera comunitaria
    case dbu3 = "DBU3"
    /// `DCRK` — Italy: Consorzio Fidi
    case dcrk = "DCRK"
    /// `DDES` — Spain: Sociedad de Capital-Riesgo-Pyme
    case ddes = "DDES"
    /// `DDKQ` — India: Public Limited Company
    case ddkq = "DDKQ"
    /// `DE0G` — United States of America — Tennessee: Savings Bank
    case de0g = "DE0G"
    /// `DE7H` — Puerto Rico: Professional Corporation
    case de7h = "DE7H"
    /// `DEF6` — Serbia: Javno preduzeće
    case def6 = "DEF6"
    /// `DEG4` — France: Société en commandite par actions
    case deg4 = "DEG4"
    /// `DEJ0` — Colombia: Sociedad Colectiva
    case dej0 = "DEJ0"
    /// `DEMP` — United States of America — Minnesota: General Partnership
    case demp = "DEMP"
    /// `DEO1` — Netherlands: onderlinge waarborgmaatschappij
    case deo1 = "DEO1"
    /// `DFE5` — Portugal: Sociedade Anónima
    case dfe5 = "DFE5"
    /// `DFPP` — United States of America — Nebraska: Domestic Limited Partnership
    case dfpp = "DFPP"
    /// `DHGI` — Canada — New Brunswick: project company
    case dhgi = "DHGI"
    /// `DHY2` — Mexico: Sociedad anónima financiera comunitaria
    case dhy2 = "DHY2"
    /// `DJ2D` — Malta: sole trader
    case dj2d = "DJ2D"
    /// `DK7L` — Canada — Alberta: Alberta loan corporation
    case dk7l = "DK7L"
    /// `DKUW` — Finland: Osakeyhtiö
    case dkuw = "DKUW"
    /// `DL9Z` — Finland: Ulkomainen yhteisö
    case dl9z = "DL9Z"
    /// `DLCX` — Lithuania: Tikrosios ūkinės bendrijos
    case dlcx = "DLCX"
    /// `DLEK` — China: xiang zhen ji ji ti jing ji zu zhi
    case dlek = "DLEK"
    /// `DLEW` — United States of America — North Dakota: Nonprofit Limited Liability Company
    case dlew = "DLEW"
    /// `DLS4` — Italy: Società in Accomandita per Azioni
    case dls4 = "DLS4"
    /// `DLUP` — Guatemala: Asociacion civil
    case dlup = "DLUP"
    /// `DM88` — Austria: Europäische wirtschaftliche Interessenvereinigung
    case dm88 = "DM88"
    /// `DMNZ` — Virgin Islands (U.S.): Foreign Non-Profit Corporation
    case dmnz = "DMNZ"
    /// `DMT8` — Finland: Työeläkekassa
    case dmt8 = "DMT8"
    /// `DN6F` — Hungary: Kölcsönös biztosító egyesület
    case dn6f = "DN6F"
    /// `DNF1` — Mexico: Sociedad anónima, sociedad financiera de objeto múltiple, entidad no regulada
    case dnf1 = "DNF1"
    /// `DO25` — Russian Federation: Gosudarstvennyye kompanii
    case do25 = "DO25"
    /// `DP2E` — Switzerland: International organisation
    case dp2e = "DP2E"
    /// `DP3Q` — Spain: Sociedad de Responsabilidad Limitada
    case dp3q = "DP3Q"
    /// `DPY1` — Hungary: Egyéb szövetkezet
    case dpy1 = "DPY1"
    /// `DQAU` — Dominican Republic: Sociedad Anónima Simplificada
    case dqau = "DQAU"
    /// `DQBZ` — United States of America — Indiana: Limited Liability Company
    case dqbz = "DQBZ"
    /// `DQMJ` — Bonaire, Sint Eustatius and Saba: Naamloze vennootschap
    case dqmj = "DQMJ"
    /// `DQMV` — United States of America — Virginia: Limited Partnership
    case dqmv = "DQMV"
    /// `DQUB` — United States of America — Tennessee: Limited Partnership
    case dqub = "DQUB"
    /// `DRPL` — Norway: Europeisk økonomisk foretaksgruppe
    case drpl = "DRPL"
    /// `DRQM` — France: SA coopérative de construction à conseil d'administration
    case drqm = "DRQM"
    /// `DRSE` — United States of America — Rhode Island: Limited Liability Company
    case drse = "DRSE"
    /// `DSII` — Marshall Islands: Corporation
    case dsii = "DSII"
    /// `DSML` — Bolivia (Plurinational State of): Institución Financiera De Desarrollo
    case dsml = "DSML"
    /// `DSSD` — Italy: Azienda Autonoma Statale
    case dssd = "DSSD"
    /// `DTAX` — France: Autre organisme mutualiste
    case dtax = "DTAX"
    /// `DTIU` — North Macedonia: Akcionersko drustvo
    case dtiu = "DTIU"
    /// `DU35` — United States of America — Iowa: Profit Corporation
    case du35 = "DU35"
    /// `DU8H` — Mexico: Sociedad cooperativa de consumidores de bienes y/o servicios de capital variable
    case du8h = "DU8H"
    /// `DUGD` — Romania: Intreprindere individuala
    case dugd = "DUGD"
    /// `DURX` — United States of America — West Virginia: Voluntary Association
    case durx = "DURX"
    /// `DUXT` — Costa Rica: Junta de Educación y Junta Administrativa de Patronatos Escolares
    case duxt = "DUXT"
    /// `DVXS` — Luxembourg: Société à responsabilité limitée
    case dvxs = "DVXS"
    /// `DW2W` — India: Company Limited by Guarantee
    case dw2w = "DW2W"
    /// `DW9N` — Saudi Arabia: sharikat tawsiat bial'ashum
    case dw9n = "DW9N"
    /// `DWEA` — Azerbaijan: Kooperativlər
    case dwea = "DWEA"
    /// `DWS3` — Ireland: General Partnership
    case dws3 = "DWS3"
    /// `DWYD` — France: Association déclarée d'insertion par l'économique
    case dwyd = "DWYD"
    /// `DX2N` — United States of America — Hawaii: Nonprofit Corporation
    case dx2n = "DX2N"
    /// `DX6Z` — Austria: Verein
    case dx6z = "DX6Z"
    /// `DXQH` — France: Société civile foncière
    case dxqh = "DXQH"
    /// `DYQK` — Japan: yugengaisya
    case dyqk = "DYQK"
    /// `DZSY` — Russian Federation: Kazennyye predpriyatiya sub"yektov Rossiyskoy Federatsii
    case dzsy = "DZSY"
    /// `E01X` — Slovenia: zadruga v zasebni lasti
    case e01x = "E01X"
    /// `E0FR` — Faroe Islands: Partafelag
    case e0fr = "E0FR"
    /// `E0NE` — Switzerland: Public corporation
    case e0ne = "E0NE"
    /// `E0VI` — Russian Federation: Gosudarstvennyye korporatsii
    case e0vi = "E0VI"
    /// `E0YF` — France: SA coopérative d'intérêt maritime à directoire
    case e0yf = "E0YF"
    /// `E0YZ` — Mexico: Sociedad de producción rural de responsabilidad suplementada
    case e0yz = "E0YZ"
    /// `E12O` — United Kingdom of Great Britain and Northern Ireland: Building Society
    case e12o = "E12O"
    /// `E1SE` — Hong Kong: gen ju fa li cheng li de shi ti
    case e1se = "E1SE"
    /// `E1VK` — Slovakia: Medzinárodné organizácie a združenia
    case e1vk = "E1VK"
    /// `E26K` — Costa Rica: Sociedad Profesional
    case e26k = "E26K"
    /// `E281` — Canada — Prince Edward Island: limited partnership
    case e281 = "E281"
    /// `E3YL` — Seychelles: Company Limited by Shares and Guarantee
    case e3yl = "E3YL"
    /// `E4CI` — Slovakia: Bytové družstvo
    case e4ci = "E4CI"
    /// `E4FG` — China: min ban fei qi ye dan wei
    case e4fg = "E4FG"
    /// `E4HU` — Lithuania: Lietuvos prekybos, pramonės ir amatų rūmų asociacija
    case e4hu = "E4HU"
    /// `E4KB` — Iceland: Hlutafélag
    case e4kb = "E4KB"
    /// `E4LW` — United States of America — Florida: Savings Bank
    case e4lw = "E4LW"
    /// `E4YV` — China: gang ao tai di qu lv you bu men chang zhu nei di ( da lu ) dai biao ji gou
    case e4yv = "E4YV"
    /// `E6J3` — Guernsey — Guernsey: company limited by shares
    case e6j3 = "E6J3"
    /// `E6YB` — France: Caisse (fédérale) de crédit mutuel
    case e6yb = "E6YB"
    /// `E7JZ` — Honduras: Comerciante Individual
    case e7jz = "E7JZ"
    /// `E7W8` — Serbia: Zadruga
    case e7w8 = "E7W8"
    /// `E85L` — Puerto Rico: Limited Liability Partnership
    case e85l = "E85L"
    /// `E88S` — China: gong zheng chu
    case e88s = "E88S"
    /// `E9BI` — Sweden: stiftelse
    case e9bi = "E9BI"
    /// `E9CM` — Croatia: Europsko društvo (Societas Europaea, skraćeno SE)
    case e9cm = "E9CM"
    /// `E9OX` — Austria: Gemeinnützige Stiftung
    case e9ox = "E9OX"
    /// `E9SH` — Slovakia: Zahraničná osoba, fyzická osoba s bydliskom mimo územia SR
    case e9sh = "E9SH"
    /// `EABD` — France: Société civile coopérative entre médecins
    case eabd = "EABD"
    /// `EAC8` — France: Société coopérative de production de HLM anonyme à directoire
    case eac8 = "EAC8"
    /// `EAD0` — Belize: Company Limited by Shares
    case ead0 = "EAD0"
    /// `EBP8` — United States of America — Kentucky: General Partnership
    case ebp8 = "EBP8"
    /// `EBRQ` — Jamaica: unlimited company
    case ebrq = "EBRQ"
    /// `EBYQ` — Canada — Newfoundland and Labrador: Credit Union
    case ebyq = "EBYQ"
    /// `ECAK` — China: qi ye
    case ecak = "ECAK"
    /// `ECLT` — United States of America — Nebraska: Domestic Corporation Professional Corporation
    case eclt = "ECLT"
    /// `ECUL` — France: Secteur de commune
    case ecul = "ECUL"
    /// `ECWU` — Austria: Einzelunternehmer
    case ecwu = "ECWU"
    /// `ED84` — Slovakia: Poisťovací spolok
    case ed84 = "ED84"
    /// `EDMK` — Belgium: Vereniging zonder winstoogmerk van publiek recht
    case edmk = "EDMK"
    /// `EDN7` — Finland: Taloudellinen yhdistys
    case edn7 = "EDN7"
    /// `EDOR` — United States of America — Oklahoma: Commercial Bank
    case edor = "EDOR"
    /// `EDZP` — Finland: Ylioppilaskunta tai osakunta
    case edzp = "EDZP"
    /// `EE3W` — Chile: Sociedad en Comandita Comercial
    case ee3w = "EE3W"
    /// `EE90` — Finland: Osuuskunta
    case ee90 = "EE90"
    /// `EF4Y` — Saint Kitts and Nevis — Nevis: foundation
    case ef4y = "EF4Y"
    /// `EFBR` — Romania: Grupul de interes economic
    case efbr = "EFBR"
    /// `EFE3` — Costa Rica: Municipalidad
    case efe3 = "EFE3"
    /// `EH3M` — Russian Federation: Obshchestvennyye fondy
    case eh3m = "EH3M"
    /// `EHWD` — Mexico: Sociedad anónima de capital variable, de inversión especializada de fondos para el retiro
    case ehwd = "EHWD"
    /// `EI4J` — United States of America — California: Limited Liability Company
    case ei4j = "EI4J"
    /// `EIDL` — Canada — Ontario: Insurance Corporations incorporated under Part V of the Corporations Act
    case eidl = "EIDL"
    /// `EJ06` — Bulgaria: Ednolichno aktsionerno druzhestvo
    case ej06 = "EJ06"
    /// `EJX1` — United States of America — Arkansas: For-Profit Corporation
    case ejx1 = "EJX1"
    /// `EKJG` — Barbados: segregated cell company
    case ekjg = "EKJG"
    /// `EKRT` — Canada — New Brunswick: loan company
    case ekrt = "EKRT"
    /// `EM3H` — Nepal: Partnership
    case em3h = "EM3H"
    /// `EMC8` — Finland: Muu taloudellinen yhdistys
    case emc8 = "EMC8"
    /// `EMLA` — Isle of Man: Limited Partnership - without Legal Personality
    case emla = "EMLA"
    /// `EMLK` — United States of America — Missouri: Limited Partnership
    case emlk = "EMLK"
    /// `EO0G` — Korea (Republic of): ByeonAcBoHeom
    case eo0g = "EO0G"
    /// `EO24` — United States of America — North Dakota: Cooperative Grazing Associations
    case eo24 = "EO24"
    /// `EO9A` — United States of America — Louisiana: Foreign Real Estate Investment Trust
    case eo9a = "EO9A"
    /// `EO9F` — Hungary: Részvénytársaság
    case eo9f = "EO9F"
    /// `EPCY` — United States of America — New York: Savings and Loan Association
    case epcy = "EPCY"
    /// `EPFN` — Canada — New Brunswick: New Brunswick limited liability partnership
    case epfn = "EPFN"
    /// `EPG7` — Hong Kong: Gong zhong gu fen you xian gong si
    case epg7 = "EPG7"
    /// `EQ7L` — Niger: Société par Actions Simplifiée
    case eq7l = "EQ7L"
    /// `EQAQ` — United States of America — Alaska: Sole Proprietorship
    case eqaq = "EQAQ"
    /// `EQOV` — Austria: Aktiengesellschaft
    case eqov = "EQOV"
    /// `EQQP` — Puerto Rico: Special Employee Owned Corporation
    case eqqp = "EQQP"
    /// `ER02` — Slovakia: Organizačná jednotka združenia
    case er02 = "ER02"
    /// `ER0H` — Canada — Newfoundland and Labrador: registration of extra-provincial corporations
    case er0h = "ER0H"
    /// `ER7C` — United States of America — North Dakota: Publicly Traded Corporation
    case er7c = "ER7C"
    /// `ERUM` — Puerto Rico: Public Benefit Corporation
    case erum = "ERUM"
    /// `ES2D` — Latvia: Sabiedrība ar ierobežotu atbildību
    case es2d = "ES2D"
    /// `ESTU` — Hungary: Társasház
    case estu = "ESTU"
    /// `ESVK` — Canada — Ontario: Credit Union
    case esvk = "ESVK"
    /// `ESZ8` — China: qi ta（ nong ye ）
    case esz8 = "ESZ8"
    /// `ET6Z` — Czechia: Svazy církví a náboženských společností
    case et6z = "ET6Z"
    /// `ETZT` — Uruguay: Empresa Unipersonal
    case etzt = "ETZT"
    /// `EU0T` — Poland: towarzystwo reasekuracji wzajemnej
    case eu0t = "EU0T"
    /// `EULU` — Brunei Darussalam: Private Limited Company
    case eulu = "EULU"
    /// `EURM` — Bermuda: Local Unlimited Company
    case eurm = "EURM"
    /// `EUT4` — Luxembourg: société à responsabilité limitée simplifiée
    case eut4 = "EUT4"
    /// `EV7F` — Liechtenstein: Einzelfirma
    case ev7f = "EV7F"
    /// `EVBW` — United States of America — Wisconsin: Corporation Nonstock Nonprofit
    case evbw = "EVBW"
    /// `EVE6` — United States of America — Idaho: Nonprofit Corporation
    case eve6 = "EVE6"
    /// `EVYY` — France: Caisse de crédit maritime mutuel
    case evyy = "EVYY"
    /// `EW8U` — United States of America — Maryland: Commercial Bank
    case ew8u = "EW8U"
    /// `EW9A` — United States of America — Indiana: Business Trust
    case ew9a = "EW9A"
    /// `EWQF` — Russian Federation: Organizatsionno-pravovyye formy dlya kommercheskoy deyatel'nosti grazhdan
    case ewqf = "EWQF"
    /// `EX8U` — India: Alternative Investment Fund
    case ex8u = "EX8U"
    /// `EXD7` — Norway: Enkeltpersonforetak
    case exd7 = "EXD7"
    /// `EXY8` — Belgium: Coöperatieve vennootschap met onbeperkte aansprakelijkheid, bij wijze van deelneming van publiek recht
    case exy8 = "EXY8"
    /// `EY94` — United States of America — Georgia: Savings and Loan Association
    case ey94 = "EY94"
    /// `EYKU` — Croatia: Stečajna masa
    case eyku = "EYKU"
    /// `EYRI` — France: Centre technique industriel ou comité professionnel du développement économique
    case eyri = "EYRI"
    /// `EZ08` — United States of America — Indiana: Agricultural Cooperative
    case ez08 = "EZ08"
    /// `EZG2` — Oman: alsharikat alqabida
    case ezg2 = "EZG2"
    /// `EZHS` — Benin: Société Unipersonnelle à Responsabilité Limitée
    case ezhs = "EZHS"
    /// `EZL8` — Marshall Islands: Limited Liability Company
    case ezl8 = "EZL8"
    /// `EZNQ` — United States of America — Ohio: Limited Liability Company
    case eznq = "EZNQ"
    /// `EZQW` — Netherlands: rechtspersoon in oprichting
    case ezqw = "EZQW"
    /// `F0A6` — Argentina: Sociedad Anonima
    case f0a6 = "F0A6"
    /// `F0B6` — France: Société en commandite simple coopérative
    case f0b6 = "F0B6"
    /// `F0BK` — Romania: Societate agricolă
    case f0bk = "F0BK"
    /// `F0IC` — Guatemala: Sociedad en Comandita por Acciones
    case f0ic = "F0IC"
    /// `F21U` — Poland: Skarb Państwa
    case f21u = "F21U"
    /// `F2QV` — United States of America — Kentucky: Limited Liability Company (profit)
    case f2qv = "F2QV"
    /// `F2TQ` — Lithuania: Tradicinės religinės bendruomenės ar bendrijos
    case f2tq = "F2TQ"
    /// `F2ZF` — Lithuania: Asociacijos
    case f2zf = "F2ZF"
    /// `F3L5` — Mexico: Fondos de Aseguramiento Agropecuario y Rural
    case f3l5 = "F3L5"
    /// `F3UE` — United Arab Emirates — Dubai: General Partnership
    case f3ue = "F3UE"
    /// `F502` — Tunisia: Entreprise individuelle
    case f502 = "F502"
    /// `F560` — Slovakia: Spoločná záujmová organizácia družstiev
    case f560 = "F560"
    /// `F5VB` — Taiwan (Province of China): cái tuán fǎ rén
    case f5vb = "F5VB"
    /// `F5VL` — United States of America — Illinois: Professional Services Corporation
    case f5vl = "F5VL"
    /// `F5X7` — Malta: cooperative
    case f5x7 = "F5X7"
    /// `F68H` — Romania: Societate în nume colectiv
    case f68h = "F68H"
    /// `F69V` — United States of America — New Mexico: Commercial Bank
    case f69v = "F69V"
    /// `F6SZ` — France: SA coopérative de production (SCOP) à directoire
    case f6sz = "F6SZ"
    /// `F72Z` — France: Établissement public national à caractére industriel ou commercial doté d'un comptable public
    case f72z = "F72Z"
    /// `F77L` — Indonesia: Perusahaan Perseroan
    case f77l = "F77L"
    /// `F7JY` — Denmark: Særlig Finansiel virksomhed
    case f7jy = "F7JY"
    /// `F7KI` — New Zealand: Limited Partnership
    case f7ki = "F7KI"
    /// `F8DD` — United States of America — Washington: Limited Liability Company
    case f8dd = "F8DD"
    /// `F8UD` — France: SCP d'avoués d'appel
    case f8ud = "F8UD"
    /// `F8VX` — United Arab Emirates: Joint Liability Company
    case f8vx = "F8VX"
    /// `F93F` — France: SA immobilière pour le commerce et l'industrie (SICOMI) à conseil d'administration
    case f93f = "F93F"
    /// `F99D` — United States of America — North Carolina: Electric Membership Cooperative
    case f99d = "F99D"
    /// `F9CT` — Canada — Quebec: Personne morale sans but lucratif par Loi sur l’instruction publique
    case f9ct = "F9CT"
    /// `F9I4` — United States of America — Kansas: Savings and Loan Association
    case f9i4 = "F9I4"
    /// `F9J3` — Canada — British Columbia: Limited partnership formed outside of BC
    case f9j3 = "F9J3"
    /// `F9OB` — United States of America — Georgia: credit union
    case f9ob = "F9OB"
    /// `FANM` — Poland: kółka rolnicze
    case fanm = "FANM"
    /// `FBN0` — United States of America — Kansas: Limited Liability Company
    case fbn0 = "FBN0"
    /// `FBQL` — Canada — Ontario: Co-operative Corporation
    case fbql = "FBQL"
    /// `FBX9` — Sint Maarten: aandeelhouder-bestuurde vennootschap
    case fbx9 = "FBX9"
    /// `FBYB` — France: Représentation ou agence commerciale d'état ou organisme public étranger immatriculé au RCS
    case fbyb = "FBYB"
    /// `FC7L` — India: Housing Finance Company
    case fc7l = "FC7L"
    /// `FCAN` — New Zealand: Māori Incorporation
    case fcan = "FCAN"
    /// `FCJF` — Spain: Fondo de Inversion en activos del Mercado Monetario
    case fcjf = "FCJF"
    /// `FCPM` — Bonaire, Sint Eustatius and Saba: Vereniging met volledige rechtsbevoegdheid
    case fcpm = "FCPM"
    /// `FDRT` — Thailand: S̄mākhm cdthabeīyn
    case fdrt = "FDRT"
    /// `FDVU` — Slovakia: Fyzická osoba-príležitostne činná-zapísaná v registri daňového informačného systému
    case fdvu = "FDVU"
    /// `FE1L` — United States of America — Texas: Limited Partnership
    case fe1l = "FE1L"
    /// `FE4G` — United Arab Emirates — Abu Dhabi: Protected Cell Company
    case fe4g = "FE4G"
    /// `FE8K` — Argentina: Sociedad Por Acciones Simplificada
    case fe8k = "FE8K"
    /// `FEBD` — Germany: Stiftung des öffentlichen Rechts
    case febd = "FEBD"
    /// `FEC4` — United States of America — Kansas: Not-For-Profit Corporation
    case fec4 = "FEC4"
    /// `FEEA` — France: Établissement public national ayant fonction d'administration centrale
    case feea = "FEEA"
    /// `FF1D` — Ireland: Public Unlimited Company that has no share capital
    case ff1d = "FF1D"
    /// `FFBM` — United States of America — New Jersey: Limited Liability Partnership
    case ffbm = "FFBM"
    /// `FFQL` — France: Commune et commune nouvelle
    case ffql = "FFQL"
    /// `FFTN` — Switzerland: Cantonal administration
    case fftn = "FFTN"
    /// `FG2L` — Saint Vincent and the Grenadines: company
    case fg2l = "FG2L"
    /// `FG84` — Luxembourg: Societas Cooperativa Europaea
    case fg84 = "FG84"
    /// `FGSL` — Canada — New Brunswick: association condominiale
    case fgsl = "FGSL"
    /// `FGT5` — United States of America — Kansas: Limited Liability Partnership
    case fgt5 = "FGT5"
    /// `FGVH` — United States of America — Arizona: Corporation (Business or for-profit)
    case fgvh = "FGVH"
    /// `FH4R` — Spain: Fondo de Pensiones
    case fh4r = "FH4R"
    /// `FHRL` — United Arab Emirates — Ras Al Khaimah: Segregated Portfolio Company
    case fhrl = "FHRL"
    /// `FHZY` — Nigeria: Private company limited by shares
    case fhzy = "FHZY"
    /// `FI4M` — Isle of Man: Industrial and Building Society
    case fi4m = "FI4M"
    /// `FI9R` — Sint Maarten: stichting
    case fi9r = "FI9R"
    /// `FIP8` — United States of America — Alabama: Savings Bank
    case fip8 = "FIP8"
    /// `FIPS` — Czechia: Banka-státní peněžní ústav
    case fips = "FIPS"
    /// `FJ0E` — Poland: spółka akcyjna
    case fj0e = "FJ0E"
    /// `FJG4` — Switzerland: Trust
    case fjg4 = "FJG4"
    /// `FJK0` — Myanmar: 1 9 5 0 hkunhait aahtuu kumpane aaatupadayaar a hcu aarr hpyint tar 0 n k ant saathtarrsaeet a myarrnhaint saatsine saeet kumpane
    case fjk0 = "FJK0"
    /// `FJQ8` — Romania: Persoana fizica autorizata
    case fjq8 = "FJQ8"
    /// `FK53` — United States of America — North Dakota: Farm/Ranch Limited Liability Company
    case fk53 = "FK53"
    /// `FKG2` — France: Organisation internationale
    case fkg2 = "FKG2"
    /// `FKG5` — Uruguay: Sociedad de Responsabilidad Limitada
    case fkg5 = "FKG5"
    /// `FKVG` — Ecuador: Compañía en Comandita Simple y dividida por acciones
    case fkvg = "FKVG"
    /// `FLNB` — Switzerland: Fund
    case flnb = "FLNB"
    /// `FMPL` — Isle of Man: Private Limited by Guarantee and not having a Share Capital (1931 Act)
    case fmpl = "FMPL"
    /// `FMUC` — Slovakia: Iné pracovisko vysokej školy/fakulty
    case fmuc = "FMUC"
    /// `FN6X` — Canada — Manitoba: Share corporations (including professional corporations)
    case fn6x = "FN6X"
    /// `FOUY` — France: SCP de commissaires aux comptes
    case fouy = "FOUY"
    /// `FPP2` — Bulgaria: Sabiratelno druzhestvo (SD)/Sadruzhie
    case fpp2 = "FPP2"
    /// `FPZK` — India: Banking Company - Scheduled Urban Cooperative Bank
    case fpzk = "FPZK"
    /// `FQ5Y` — Poland: organizacje społeczne i zawodowe
    case fq5y = "FQ5Y"
    /// `FQJ9` — Canada — Nova Scotia: for profit and not-for profit co-operatives
    case fqj9 = "FQJ9"
    /// `FQLY` — United States of America — Washington: Savings Bank
    case fqly = "FQLY"
    /// `FQRE` — Slovakia: Účelová zahranično - obchodná organizácia
    case fqre = "FQRE"
    /// `FR3V` — Germany: Gesellschaft bürgerlichen Rechts
    case fr3v = "FR3V"
    /// `FRUF` — Malaysia: Unlimited Company
    case fruf = "FRUF"
    /// `FSBD` — Norway: Forening
    case fsbd = "FSBD"
    /// `FTNW` — United States of America — Hawaii: Cooperative
    case ftnw = "FTNW"
    /// `FUKI` — Denmark: Enkeltmandsvirksomhed
    case fuki = "FUKI"
    /// `FV0K` — Cyprus: Emporiki Eponymia
    case fv0k = "FV0K"
    /// `FVGZ` — United Kingdom of Great Britain and Northern Ireland: Industrial and Provident Society
    case fvgz = "FVGZ"
    /// `FVTS` — Mexico: Unión de sociedades de producción rural
    case fvts = "FVTS"
    /// `FW66` — United States of America — Rhode Island: Limited Partnership
    case fw66 = "FW66"
    /// `FW7S` — Denmark: Europæisk andelsselskab
    case fw7s = "FW7S"
    /// `FWGK` — Russian Federation: Munitsipal'nyye byudzhetnyye uchrezhdeniya
    case fwgk = "FWGK"
    /// `FXHR` — United States of America — Vermont: Savings and Loan Association
    case fxhr = "FXHR"
    /// `FY0F` — France: Société civile immobilière
    case fy0f = "FY0F"
    /// `FY1B` — Czechia: Církve a náboženské společnosti
    case fy1b = "FY1B"
    /// `FYBN` — France: SARL mixte d'intérêt agricole (SMIA)
    case fybn = "FYBN"
    /// `FYYY` — Canada — Saskatchewan: Credit Unions
    case fyyy = "FYYY"
    /// `FZAC` — Jordan: alsharika almusahama alkhasa
    case fzac = "FZAC"
    /// `FZKX` — Russian Federation: Proizvodstvennyye kooperativy (arteli)
    case fzkx = "FZKX"
    /// `FZMT` — United States of America — Ohio: Cooperative
    case fzmt = "FZMT"
    /// `G04R` — Sweden: Sparbank
    case g04r = "G04R"
    /// `G0HE` — United States of America — South Carolina: Statutory Close Corporation
    case g0he = "G0HE"
    /// `G12F` — United Kingdom of Great Britain and Northern Ireland: Private Limited by Guarantee/No Share Capital
    case g12f = "G12F"
    /// `G1P6` — United States of America — California: Nonprofit Corporation Mutual Benefit
    case g1p6 = "G1P6"
    /// `G2CW` — Russian Federation: Territorial'nyye obshchestvennyye samoupravleniya
    case g2cw = "G2CW"
    /// `G2I3` — Czechia: Pobočný spolek
    case g2i3 = "G2I3"
    /// `G3JV` — Mexico: Sociedad anónima de capital variable, operadora de fondos de inversión
    case g3jv = "G3JV"
    /// `G3R6` — Austria: Einzelkaufmann
    case g3r6 = "G3R6"
    /// `G42I` — United States of America — New Jersey: Commercial Bank
    case g42i = "G42I"
    /// `G4V6` — Isle of Man: Public Unlimited and having a Share Capital (1931 Act)
    case g4v6 = "G4V6"
    /// `G4YY` — United States of America — Indiana: Limited Partnership
    case g4yy = "G4YY"
    /// `G522` — Mexico: Sociedad cooperativa de consumidores de bienes y/o servicios
    case g522 = "G522"
    /// `G54B` — Myanmar: tar 0 n k ant saat m htarr saeet kumpane
    case g54b = "G54B"
    /// `G5RH` — Croatia: Zadruge
    case g5rh = "G5RH"
    /// `G5RR` — Costa Rica: Fundación
    case g5rr = "G5RR"
    /// `G65S` — Canada — Alberta: Alberta credit union
    case g65s = "G65S"
    /// `G66U` — United States of America — New Hampshire: Limited Partnership
    case g66u = "G66U"
    /// `G6M8` — Seychelles: International Business Company - Protected Cell Company
    case g6m8 = "G6M8"
    /// `G6VI` — United States of America — South Carolina: Limited Partnership
    case g6vi = "G6VI"
    /// `G73Q` — Mexico: Sociedad anónima de capital variable, contraparte central de valores
    case g73q = "G73Q"
    /// `G76T` — United States of America — Massachusetts: Savings Bank
    case g76t = "G76T"
    /// `G7H0` — Mauritius: Private Company
    case g7h0 = "G7H0"
    /// `G7Z2` — France: SARL coopérative de construction
    case g7z2 = "G7Z2"
    /// `G8LP` — France: Sociétés Interprofessionnelles de Soins Ambulatoires
    case g8lp = "G8LP"
    /// `G98S` — France: Ordre professionnel ou assimilé
    case g98s = "G98S"
    /// `G9PJ` — Canada — Manitoba: Limited Liability Partnership (Manitoba and Extra-provincial, lawyers and accountants only)
    case g9pj = "G9PJ"
    /// `GA3A` — Estonia: Erakond
    case ga3a = "GA3A"
    /// `GAJN` — Aruba: Commanditaire vennootschap (1)
    case gajn = "GAJN"
    /// `GAMO` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les sociétés nationales de bienfaisance
    case gamo = "GAMO"
    /// `GBI5` — Armenia: Sahmanapʿak patasxanatvutʿyan enkerutʿyun
    case gbi5 = "GBI5"
    /// `GCCT` — Gibraltar: Limited Liability Partnerships
    case gcct = "GCCT"
    /// `GCP3` — Puerto Rico: International Financial Entity (LLC)
    case gcp3 = "GCP3"
    /// `GCU5` — United States of America — Kansas: Corporation
    case gcu5 = "GCU5"
    /// `GD6J` — United States of America — Arkansas: Savings Bank
    case gd6j = "GD6J"
    /// `GDH0` — United States of America — Iowa: Savings Bank
    case gdh0 = "GDH0"
    /// `GDT9` — Panama: Sociedad Civil
    case gdt9 = "GDT9"
    /// `GEE0` — United States of America — Oregon: Limited Partnership
    case gee0 = "GEE0"
    /// `GEXT` — United States of America — Nebraska: Commercial Bank
    case gext = "GEXT"
    /// `GF6X` — Canada — New Brunswick: business name - sole proprietor
    case gf6x = "GF6X"
    /// `GF7G` — Korea (Republic of): GaeInSaEopJa
    case gf7g = "GF7G"
    /// `GFN6` — France: SA coopérative de commerçants-détaillants à conseil d'administration
    case gfn6 = "GFN6"
    /// `GFXN` — Denmark: Primærkommune
    case gfxn = "GFXN"
    /// `GG0S` — Canada — Nova Scotia: company limited by guarantee
    case gg0s = "GG0S"
    /// `GGZ5` — China: she hui tuan ti
    case ggz5 = "GGZ5"
    /// `GHB2` — United States of America — North Dakota: (Business) Limited Liability Company
    case ghb2 = "GHB2"
    /// `GHC5` — Russian Federation: Sel'skokhozyaystvennyye potrebitel'skiye ogorodnicheskiye kooperativy
    case ghc5 = "GHC5"
    /// `GIN3` — United States of America — Utah: Benefit LLC
    case gin3 = "GIN3"
    /// `GIPE` — United States of America — Oklahoma: Savings Bank
    case gipe = "GIPE"
    /// `GJJJ` — France: Société d'exercice libéral à responsabilité limitée à associé unique
    case gjjj = "GJJJ"
    /// `GJKF` — Belize: Association
    case gjkf = "GJKF"
    /// `GJL1` — Spain: Sociedad Comanditaria por Acciones
    case gjl1 = "GJL1"
    /// `GJTL` — Spain: Sociedad Comanditaria por Acciones Profesional
    case gjtl = "GJTL"
    /// `GKUL` — Ecuador: Sociedad por Acciones Simplificada
    case gkul = "GKUL"
    /// `GL07` — Slovakia: Poisťovňa - akciová spoločnosť
    case gl07 = "GL07"
    /// `GL33` — Puerto Rico: International Banking Center (Corporation)
    case gl33 = "GL33"
    /// `GLCH` — Cyprus: Somateia kai Idrymata
    case glch = "GLCH"
    /// `GLCI` — Virgin Islands (British): restricted purposes company
    case glci = "GLCI"
    /// `GLN8` — France: Centre Intercommunal d'action sociale (CIAS)
    case gln8 = "GLN8"
    /// `GLX2` — Canada — New Brunswick: agricultural society
    case glx2 = "GLX2"
    /// `GM04` — Canada — Manitoba: Cooperative
    case gm04 = "GM04"
    /// `GMFE` — United States of America — Maryland: Savings Bank
    case gmfe = "GMFE"
    /// `GNNT` — Mexico: Sociedad anónima de capital variable, administradora de fondos para el retiro
    case gnnt = "GNNT"
    /// `GNXT` — Netherlands: vereniging van eigenaars
    case gnxt = "GNXT"
    /// `GNYB` — Guam: sole proprietorship
    case gnyb = "GNYB"
    /// `GOGQ` — United States of America — Massachusetts: Limited Partnership
    case gogq = "GOGQ"
    /// `GORM` — United Arab Emirates: Professional Company
    case gorm = "GORM"
    /// `GP8M` — Switzerland: Local administration
    case gp8m = "GP8M"
    /// `GPG0` — Canada — New Brunswick: compagnie
    case gpg0 = "GPG0"
    /// `GPHT` — China: qi ta（ wen hua ）
    case gpht = "GPHT"
    /// `GQ8F` — United Arab Emirates — Ras Al Khaimah: Company Limited By Guarantee
    case gq8f = "GQ8F"
    /// `GQRJ` — Russian Federation: Uchrezhdeniya, sozdannyye Rossiyskoy Federatsiyey
    case gqrj = "GQRJ"
    /// `GQV4` — France: SA immobilière pour le commerce et l'industrie (SICOMI) à directoire
    case gqv4 = "GQV4"
    /// `GQVQ` — South Africa: Private Company
    case gqvq = "GQVQ"
    /// `GR2X` — United States of America — Georgia: Commercial Bank
    case gr2x = "GR2X"
    /// `GRH5` — Puerto Rico: Workers Cooperative
    case grh5 = "GRH5"
    /// `GT4V` — Romania: Cooperativă de credit
    case gt4v = "GT4V"
    /// `GTBR` — Canada — Newfoundland and Labrador: Condominium Corporation
    case gtbr = "GTBR"
    /// `GU5E` — United Arab Emirates — Abu Dhabi: Public Company Limited by Shares
    case gu5e = "GU5E"
    /// `GULL` — Denmark: Selskab med begrænset ansvar
    case gull = "GULL"
    /// `GVPD` — Austria: Offene Handelsgesellschaft
    case gvpd = "GVPD"
    /// `GW1T` — Mexico: Sociedad anónima bursátil
    case gw1t = "GW1T"
    /// `GWHK` — Russian Federation: Obshchiny korennykh malochislennykh narodov Rossiyskoy Federatsii
    case gwhk = "GWHK"
    /// `GWZF` — Monaco: Société Civile Particulière
    case gwzf = "GWZF"
    /// `GXBE` — Mexico: Sociedad anónima promotora de inversión de capital variable, sociedad financiera de objeto múltiple, entidad regulada
    case gxbe = "GXBE"
    /// `GXL6` — France: Autre établissement public national d'enseignement
    case gxl6 = "GXL6"
    /// `GXLH` — United States of America — Ohio: credit union
    case gxlh = "GXLH"
    /// `GY0L` — Guatemala: Sociedad Colectiva
    case gy0l = "GY0L"
    /// `GY5R` — Slovakia: Cirkevná organizácia
    case gy5r = "GY5R"
    /// `GYY6` — Norway: Annen juridisk person
    case gyy6 = "GYY6"
    /// `GZCQ` — France: SCP de greffiers de tribunal de commerce
    case gzcq = "GZCQ"
    /// `GZE5` — Poland: wspólnota mieszkaniowa
    case gze5 = "GZE5"
    /// `GZF9` — Russian Federation: Strukturnyye podrazdeleniya obosoblennykh podrazdeleniy yuridicheskikh lits
    case gzf9 = "GZF9"
    /// `GZMZ` — United States of America — Vermont: Professional Corporation
    case gzmz = "GZMZ"
    /// `GZN4` — Liechtenstein: Anteilsgesellschaft
    case gzn4 = "GZN4"
    /// `H0PO` — United Kingdom of Great Britain and Northern Ireland: Private Limited Company
    case h0po = "H0PO"
    /// `H1J5` — United States of America — Idaho: Commercial Bank
    case h1j5 = "H1J5"
    /// `H1U2` — France: Société en nom collectif
    case h1u2 = "H1U2"
    /// `H1UM` — United States of America — California: For-Profit Corporation General Stock
    case h1um = "H1UM"
    /// `H2AF` — Russian Federation: Tovarishchestva sobstvennikov nedvizhimosti
    case h2af = "H2AF"
    /// `H2BW` — Costa Rica: Sociedad civil
    case h2bw = "H2BW"
    /// `H2P4` — Russian Federation: Kreditnyye kooperativy vtorogo urovnya
    case h2p4 = "H2P4"
    /// `H35I` — Seychelles: Public Company
    case h35i = "H35I"
    /// `H3Z4` — France: SA coopérative de transport à directoire
    case h3z4 = "H3Z4"
    /// `H3ZD` — France: SARL d'intérêt collectif agricole (SICA)
    case h3zd = "H3ZD"
    /// `H4NY` — Russian Federation: Advokatskiye palaty
    case h4ny = "H4NY"
    /// `H4VR` — France: Société civile coopérative de consommation
    case h4vr = "H4VR"
    /// `H4XQ` — Czechia: Veřejné neziskové ústavní zdravotnické zařízení
    case h4xq = "H4XQ"
    /// `H5G0` — United States of America — Georgia: Savings Bank
    case h5g0 = "H5G0"
    /// `H64R` — Saint Kitts and Nevis — Nevis: private company
    case h64r = "H64R"
    /// `H6OR` — Greece: Etería Periorisménis Euthínis
    case h6or = "H6OR"
    /// `H6WW` — Czechia: Státní příspěvková organizace
    case h6ww = "H6WW"
    /// `H70T` — Argentina: Sociedad en Comandita Simple
    case h70t = "H70T"
    /// `H725` — Mexico: Sociedad anónima de capital variable, fondo de inversión de objeto limitado
    case h725 = "H725"
    /// `H781` — Switzerland: Association
    case h781 = "H781"
    /// `H7D4` — Italy: Soggetto Estero
    case h7d4 = "H7D4"
    /// `H7OD` — Poland: spółdzielcza kasa oszczędnościowo-kredytowa
    case h7od = "H7OD"
    /// `H8G2` — Peru: Empresa Individual de Responsabilidad Limitada
    case h8g2 = "H8G2"
    /// `H8MU` — United Arab Emirates — Abu Dhabi: Limited Partnership
    case h8mu = "H8MU"
    /// `H8VP` — Denmark: Anpartsselskab
    case h8vp = "H8VP"
    /// `H987` — Seychelles: Proprietary Company
    case h987 = "H987"
    /// `H99T` — United States of America — Maine: credit union
    case h99t = "H99T"
    /// `HA2W` — Oman: sharikat alshakhs alwahid
    case ha2w = "HA2W"
    /// `HA3N` — France: Caisse de crédit municipal
    case ha3n = "HA3N"
    /// `HA7M` — United States of America — Rhode island: Commercial Bank
    case ha7m = "HA7M"
    /// `HAAY` — Türkiye: birlik
    case haay = "HAAY"
    /// `HATI` — France: Association intermédiaire
    case hati = "HATI"
    /// `HBCT` — Canada — Manitoba: Ukrainian Catholic Parish
    case hbct = "HBCT"
    /// `HBQK` — India: Alternate Investment Fund - Sub scheme
    case hbqk = "HBQK"
    /// `HBR3` — Finland: Julkinen keskinäinen vakuutusyhtiö
    case hbr3 = "HBR3"
    /// `HC8N` — France: SARL union de sociétés coopératives
    case hc8n = "HC8N"
    /// `HCBE` — Jamaica: company limited by shares
    case hcbe = "HCBE"
    /// `HCTP` — United States of America — Nevada: Commercial Bank
    case hctp = "HCTP"
    /// `HDOD` — United States of America — Mississippi: Savings and Loan Association
    case hdod = "HDOD"
    /// `HECG` — United Arab Emirates — Abu Dhabi: General Partnership
    case hecg = "HECG"
    /// `HELT` — Indonesia: Yayasan
    case helt = "HELT"
    /// `HEMZ` — United States of America — Montana: Credit Union
    case hemz = "HEMZ"
    /// `HEOB` — Finland: Kommandiittiyhtiö
    case heob = "HEOB"
    /// `HEXO` — North Macedonia: Javno trgovsko drushtvo
    case hexo = "HEXO"
    /// `HF2L` — France: Association de droit local (Bas-Rhin, Haut-Rhin et Moselle)
    case hf2l = "HF2L"
    /// `HFGV` — United States of America — Alabama: For-Profit Corporation
    case hfgv = "HFGV"
    /// `HGMH` — Lithuania: Labdaros ir paramos fondai
    case hgmh = "HGMH"
    /// `HH12` — United States of America — Kentucky: Savings Bank
    case hh12 = "HH12"
    /// `HHR4` — Luxembourg: Société par actions simplifiée
    case hhr4 = "HHR4"
    /// `HHYT` — United Kingdom of Great Britain and Northern Ireland: European Public Limited-Liability Company (Societas Europaea)
    case hhyt = "HHYT"
    /// `HIL6` — Cyprus: Allodapi Etaireia
    case hil6 = "HIL6"
    /// `HJ1Y` — Lithuania: Bendrijos
    case hj1y = "HJ1Y"
    /// `HJCS` — Slovenia: Društvo, zveza društev
    case hjcs = "HJCS"
    /// `HK03` — Canada — Prince Edward Island: public limited corporation
    case hk03 = "HK03"
    /// `HKKL` — Russian Federation: Federal'nyye gosudarstvennyye avtonomnyye uchrezhdeniya
    case hkkl = "HKKL"
    /// `HKL3` — Azerbaijan: Əlavə məsuliyyətli cəmiyyət
    case hkl3 = "HKL3"
    /// `HKVP` — Greece: Astiki (Proswpiki) Eteria
    case hkvp = "HKVP"
    /// `HKWO` — Mexico: Sociedad anónima de capital variable, sociedad financiera de objeto múltiple, entidad no regulada
    case hkwo = "HKWO"
    /// `HLBQ` — Canada — British Columbia: Pension fund society
    case hlbq = "HLBQ"
    /// `HLCG` — United States of America — Colorado: Limited Partnership
    case hlcg = "HLCG"
    /// `HLR4` — United States of America — Maryland: Stock Corporation
    case hlr4 = "HLR4"
    /// `HMEI` — France: Autre société civile coopérative
    case hmei = "HMEI"
    /// `HN63` — Bulgaria: Komanditno druzhestvo s aktsii
    case hn63 = "HN63"
    /// `HN75` — Italy: Consorzio
    case hn75 = "HN75"
    /// `HN8W` — United States of America — Alabama: Limited Partnership
    case hn8w = "HN8W"
    /// `HNJK` — Ireland: Limited Partnership
    case hnjk = "HNJK"
    /// `HNPH` — United Arab Emirates — Ras Al Khaimah: Restricted Purposes Company
    case hnph = "HNPH"
    /// `HNSU` — Bahamas: Public Company Limited by Shares
    case hnsu = "HNSU"
    /// `HNWB` — Finland: Eurooppalainen taloudellinen etuyhtymä
    case hnwb = "HNWB"
    /// `HOT8` — Poland: partie polityczne
    case hot8 = "HOT8"
    /// `HOV4` — United States of America — Virginia: Stock Corporation
    case hov4 = "HOV4"
    /// `HP0B` — Bahamas: Company Limited both by Shares and by Guarantee
    case hp0b = "HP0B"
    /// `HPKC` — United States of America — Iowa: Limited Partnership
    case hpkc = "HPKC"
    /// `HQJV` — United States of America — Michigan: Professional Corporation
    case hqjv = "HQJV"
    /// `HQKE` — Canada — Ontario: general partnership
    case hqke = "HQKE"
    /// `HQPK` — Czechia: Komora (hospodářská, agrární)
    case hqpk = "HQPK"
    /// `HQYG` — United States of America — Louisiana: Foreign Corporation
    case hqyg = "HQYG"
    /// `HRKG` — Singapore: Public Company Limited by Guarantee
    case hrkg = "HRKG"
    /// `HRQA` — Spain: Sociedad Cooperativa Europea
    case hrqa = "HRQA"
    /// `HS5W` — Czechia: Vnitřní organizační jednotka organizační složky státu
    case hs5w = "HS5W"
    /// `HSEV` — United States of America — Pennsylvania: Limited Partnership
    case hsev = "HSEV"
    /// `HSNC` — Czechia: Podnik zahraničního obchodu
    case hsnc = "HSNC"
    /// `HSPI` — United States of America — Illinois: Nonprofit Corporation
    case hspi = "HSPI"
    /// `HSX9` — Costa Rica: Temporalidad de la Iglesia
    case hsx9 = "HSX9"
    /// `HSYZ` — France: Autre société civile professionnelle
    case hsyz = "HSYZ"
    /// `HTBY` — Barbados: company
    case htby = "HTBY"
    /// `HTJD` — Hungary: Közhasznú társaság
    case htjd = "HTJD"
    /// `HTT9` — Finland: Erillishallinnollinen valtion laitos
    case htt9 = "HTT9"
    /// `HTV5` — United States of America — Texas: Commercial Bank
    case htv5 = "HTV5"
    /// `HUET` — Russian Federation: Religioznyye organizatsii
    case huet = "HUET"
    /// `HUR1` — Russian Federation: Sel'skokhozyaystvennyye potrebitel'skiye obsluzhivayushchiye kooperativy
    case hur1 = "HUR1"
    /// `HUSW` — United States of America — Iowa: Nonprofit Corporation
    case husw = "HUSW"
    /// `HV3B` — United States of America — Nebraska: Non Taxable Corporation
    case hv3b = "HV3B"
    /// `HV9Q` — United States of America — Pennsylvania: credit union
    case hv9q = "HV9Q"
    /// `HVWR` — Canada — Quebec: Personne morale sans but lucratif par Loi sur la constitution de certaines Églises
    case hvwr = "HVWR"
    /// `HW77` — Saint Kitts and Nevis — Nevis: International Business Company
    case hw77 = "HW77"
    /// `HX4T` — New Zealand: Building society
    case hx4t = "HX4T"
    /// `HX6D` — United Kingdom of Great Britain and Northern Ireland: Private Limited
    case hx6d = "HX6D"
    /// `HX77` — Switzerland: Cantonal public company
    case hx77 = "HX77"
    /// `HXKE` — United States of America — Wyoming: Savings Bank
    case hxke = "HXKE"
    /// `HY6K` — Czechia: Organizační složka zahraničního nadačního fondu
    case hy6k = "HY6K"
    /// `HZ6C` — Argentina: Sociedad Cooperativa
    case hz6c = "HZ6C"
    /// `HZEH` — United States of America — Delaware: Limited Liability Company
    case hzeh = "HZEH"
    /// `HZG7` — Slovakia: Vysoká škola
    case hzg7 = "HZG7"
    /// `HZI2` — Slovakia: Banka-štátny peňažný ústav
    case hzi2 = "HZI2"
    /// `I03S` — Saint Kitts and Nevis — Nevis: international exempt trust
    case i03s = "I03S"
    /// `I0MH` — France: Société civile coopérative de construction
    case i0mh = "I0MH"
    /// `I0X7` — Ghana: Private Unlimited By Share
    case i0x7 = "I0X7"
    /// `I15K` — Romania: Cooperativă agricolă
    case i15k = "I15K"
    /// `I1UP` — Estonia: Täisühing
    case i1up = "I1UP"
    /// `I1WG` — Puerto Rico: Municipal Enterprise
    case i1wg = "I1WG"
    /// `I2WU` — Spain: Agrupacion de Interes Economico
    case i2wu = "I2WU"
    /// `I2XB` — United States of America — Tennessee: Limited Liability Company
    case i2xb = "I2XB"
    /// `I32F` — Czechia: Sdružení mezinárodního obchodu
    case i32f = "I32F"
    /// `I39S` — China: ji guan
    case i39s = "I39S"
    /// `I3UX` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les services de santé et les services sociaux
    case i3ux = "I3UX"
    /// `I3Z9` — United States of America — Colorado: For-Profit Public Benefit Corporation
    case i3z9 = "I3Z9"
    /// `I47Z` — India: One Person Company
    case i47z = "I47Z"
    /// `I4T1` — Brazil: Fundação
    case i4t1 = "I4T1"
    /// `I5NO` — Canada — Prince Edward Island: sole proprietorship
    case i5no = "I5NO"
    /// `I5XP` — United States of America — Wisconsin: Limited Liability Limited Partnership
    case i5xp = "I5XP"
    /// `I68R` — Czechia: Organizační jednotka zvláštní organizace pro zastoupení českých zájmů v mezinárodních nevládních organizacích
    case i68r = "I68R"
    /// `I695` — Peru: Socieda Anónima
    case i695 = "I695"
    /// `I6FV` — Puerto Rico: Savings & Credit Cooperative
    case i6fv = "I6FV"
    /// `I7AS` — Slovakia: Družstvo
    case i7as = "I7AS"
    /// `I7JL` — United States of America — South Dakota: credit union
    case i7jl = "I7JL"
    /// `I7MN` — Slovenia: Javno podjetje
    case i7mn = "I7MN"
    /// `I8G4` — Saint Kitts and Nevis — Nevis: exempt private company
    case i8g4 = "I8G4"
    /// `I8RE` — Cyprus: Aftotelos ergazomenos
    case i8re = "I8RE"
    /// `I8TE` — France: SA mixte d'intérêt agricole (SMIA)
    case i8te = "I8TE"
    /// `I8VP` — Canada — Saskatchewan: Sole Proprietors
    case i8vp = "I8VP"
    /// `I8Z8` — New Zealand: Credit union
    case i8z8 = "I8Z8"
    /// `I93O` — Saint Kitts and Nevis: public company
    case i93o = "I93O"
    /// `I9BB` — Romania: Sucursala
    case i9bb = "I9BB"
    /// `I9K6` — Saint Vincent and the Grenadines: partnership
    case i9k6 = "I9K6"
    /// `I9O1` — Russian Federation: Sel'skokhozyaystvennyye potrebitel'skiye pererabatyvayushchiye kooperativy
    case i9o1 = "I9O1"
    /// `I9V2` — Russian Federation: Organizatsionno-pravovyye formy yuridicheskikh lits, yavlyayushchikhsya nekommercheskimi unitarnymi organizatsiyami
    case i9v2 = "I9V2"
    /// `IAP3` — France: Syndicat intercommunal à vocation unique (SIVU)
    case iap3 = "IAP3"
    /// `IAS6` — Spain: Sociedad de Garantia Reciproca
    case ias6 = "IAS6"
    /// `IBEM` — China: ji ceng fa lv fu wu suo
    case ibem = "IBEM"
    /// `IBSS` — Russian Federation: Sel'skokhozyaystvennyye potrebitel'skiye snabzhencheskiye kooperativy
    case ibss = "IBSS"
    /// `IC46` — Russian Federation: Sel'skokhozyaystvennyye arteli (kolkhozy)
    case ic46 = "IC46"
    /// `IC8G` — France: SCP d'avocats aux conseils
    case ic8g = "IC8G"
    /// `IC98` — France: SCP de commissaires-priseurs
    case ic98 = "IC98"
    /// `ICQT` — Slovenia: Družba za vzajemno zavarovanje
    case icqt = "ICQT"
    /// `ICXT` — Mexico: Sociedad anónima de capital variable, institución para el depósito de valores
    case icxt = "ICXT"
    /// `ID30` — United Kingdom of Great Britain and Northern Ireland: Limited Partnership
    case id30 = "ID30"
    /// `IDBS` — Canada — New Brunswick: compagnie de fiducie
    case idbs = "IDBS"
    /// `IDFN` — United States of America — Utah: Professional Corporation
    case idfn = "IDFN"
    /// `IF49` — Liechtenstein: Genossenschaft
    case if49 = "IF49"
    /// `IF7H` — France: SA coopérative de consommation à conseil d'administration
    case if7h = "IF7H"
    /// `IGSV` — France: Société civile laitière
    case igsv = "IGSV"
    /// `IHD0` — Curaçao: Rederij
    case ihd0 = "IHD0"
    /// `IHLF` — United States of America — North Carolina: Savings & Loan Association
    case ihlf = "IHLF"
    /// `IIZ4` — United States of America — Maine: Limited Partnership
    case iiz4 = "IIZ4"
    /// `IJAO` — Paraguay: Sociedad Anonima
    case ijao = "IJAO"
    /// `IJHI` — United States of America — West Virginia: Corporation (for profit)
    case ijhi = "IJHI"
    /// `IKBN` — Portugal — Madeira: Trust
    case ikbn = "IKBN"
    /// `IKGM` — Canada — Newfoundland and Labrador: non-share corporations
    case ikgm = "IKGM"
    /// `IKMB` — Canada — New Brunswick: co-operative association
    case ikmb = "IKMB"
    /// `IKSU` — Canada — New Brunswick: société en nom collectif
    case iksu = "IKSU"
    /// `ILEX` — Armenia: Himnadram
    case ilex = "ILEX"
    /// `ILON` — Canada — New Brunswick: caisse populaire
    case ilon = "ILON"
    /// `ILY0` — Russian Federation: Samoreguliruyemyye organizatsii
    case ily0 = "ILY0"
    /// `IMDT` — United States of America — Arizona: Limited Liability Limited Partnership
    case imdt = "IMDT"
    /// `IMHA` — Italy: Ente Ecclesiastico
    case imha = "IMHA"
    /// `IN4H` — United States of America — Michigan: Professional Limited Liability Company
    case in4h = "IN4H"
    /// `INDH` — Puerto Rico: Corporation
    case indh = "INDH"
    /// `INIG` — Czechia: Odborová organizace
    case inig = "INIG"
    /// `INTY` — Cyprus: Etaireia Periorismenis Efthynis me engyisi, kai pou echei metochiko kefalaio
    case inty = "INTY"
    /// `IODM` — Philippines: educational corporation
    case iodm = "IODM"
    /// `IOFN` — Fiji: Private Limited Company
    case iofn = "IOFN"
    /// `IOWN` — United States of America — Nebraska: Non Profit Foreign Limited Cooperative Association
    case iown = "IOWN"
    /// `IPGV` — United States of America — District of Columbia: Limited Cooperative Association
    case ipgv = "IPGV"
    /// `IPTQ` — Bonaire, Sint Eustatius and Saba: Eenmanszaak met meerdere eigenaren
    case iptq = "IPTQ"
    /// `IQ9O` — Czechia: Společenství vlastníků jednotek
    case iq9o = "IQ9O"
    /// `IQGE` — Norway: Allmennaksjeselskap
    case iqge = "IQGE"
    /// `IQR2` — France: Société civile d'intérêt collectif agricole (SICA)
    case iqr2 = "IQR2"
    /// `ISCZ` — Slovakia: Doplnková dôchodková poisťovňa
    case iscz = "ISCZ"
    /// `IT6N` — Spain: Emprendedor de Responsabilidad Limitada
    case it6n = "IT6N"
    /// `IUIY` — Colombia: Sociedad en comandita simple
    case iuiy = "IUIY"
    /// `IUOP` — Taiwan (Province of China): shāng hào
    case iuop = "IUOP"
    /// `IUVI` — Japan: goumeigaisya
    case iuvi = "IUVI"
    /// `IVQQ` — United States of America — Arizona: Corporation Sole
    case ivqq = "IVQQ"
    /// `IVVD` — Croatia: Savez zadruga
    case ivvd = "IVVD"
    /// `IW8Z` — Slovakia: Výrobné družstvo
    case iw8z = "IW8Z"
    /// `IWNQ` — Mexico: Sociedad anónima de capital variable, institución de financiamiento colectivo
    case iwnq = "IWNQ"
    /// `IWRC` — United States of America — Hawaii: Commercial Bank
    case iwrc = "IWRC"
    /// `IWZF` — Singapore: Private Company Limited by Shares
    case iwzf = "IWZF"
    /// `IX01` — Portugal: Empresa Intermunicipal
    case ix01 = "IX01"
    /// `IX7U` — Finland: Asukashallintoalue
    case ix7u = "IX7U"
    /// `IXQK` — Jordan: sharikat altawsia bial'ashum
    case ixqk = "IXQK"
    /// `IY8C` — United States of America — Nevada: Nonprofit Corporation
    case iy8c = "IY8C"
    /// `IYF9` — Finland: Evankelis-luterilainen kirkko
    case iyf9 = "IYF9"
    /// `IYXU` — United Kingdom of Great Britain and Northern Ireland: Community Benefit Society
    case iyxu = "IYXU"
    /// `IYZI` — United States of America — Minnesota: Limited Liability Limited Partnership
    case iyzi = "IYZI"
    /// `J18N` — Russian Federation: Tovarishchestva na vere (kommanditnyye tovarishchestva)
    case j18n = "J18N"
    /// `J1JO` — United States of America — Missouri: Commercial Bank
    case j1jo = "J1JO"
    /// `J1V0` — United States of America — North Dakota: Limited Liability Partnership
    case j1v0 = "J1V0"
    /// `J2DN` — Uruguay: Sindicato
    case j2dn = "J2DN"
    /// `J34T` — Estonia: Ametiühing
    case j34t = "J34T"
    /// `J3A3` — Poland: spółka europejska
    case j3a3 = "J3A3"
    /// `J3C5` — Canada — Alberta: Alberta unlimited liability corporation
    case j3c5 = "J3C5"
    /// `J3T2` — Ecuador: Compañía Anónima
    case j3t2 = "J3T2"
    /// `J3U5` — Korea (Republic of): YuHanHoeSa
    case j3u5 = "J3U5"
    /// `J3VJ` — Greece: Sinetairismos
    case j3vj = "J3VJ"
    /// `J4JC` — Australia: Limited Partnership
    case j4jc = "J4JC"
    /// `J4QX` — Armenia: Naxararutʿyun
    case j4qx = "J4QX"
    /// `J4S1` — Malta: association
    case j4s1 = "J4S1"
    /// `J5NM` — United States of America — Maryland: Savings and Loan Association
    case j5nm = "J5NM"
    /// `J5OU` — Belgium: Economisch samenwerkingsverband
    case j5ou = "J5OU"
    /// `J5RC` — Ghana: Private Limited By Guarantee
    case j5rc = "J5RC"
    /// `J5SC` — Canada — Quebec: Personne morale sans but lucratif par Loi sur la conservation et la mise en valeur de la faune
    case j5sc = "J5SC"
    /// `J6MO` — Hungary: Közkereseti társaság
    case j6mo = "J6MO"
    /// `J76S` — Mauritius: Limited Partnership
    case j76s = "J76S"
    /// `J7G9` — Brazil: Associação
    case j7g9 = "J7G9"
    /// `J7L0` — South Africa: Non-Profit Company
    case j7l0 = "J7L0"
    /// `J7NW` — Russian Federation: Prostyye tovarishchestva
    case j7nw = "J7NW"
    /// `J7SF` — China: youxian hehuo qiye
    case j7sf = "J7SF"
    /// `J8DW` — Slovakia: Podnik zahraničnej osoby (organizačná zložka podniku zahraničnej osoby)
    case j8dw = "J8DW"
    /// `J8PB` — Czechia: Obec
    case j8pb = "J8PB"
    /// `J98R` — Brunei Darussalam: Partnership
    case j98r = "J98R"
    /// `J9OZ` — France: Société d'exercice libéral à responsabilité limitée
    case j9oz = "J9OZ"
    /// `JAJS` — Indonesia: Perseroan Terbatas Penanaman Modal Asing
    case jajs = "JAJS"
    /// `JAM3` — Belgium: Coöperatieve vennootschap van publiek recht
    case jam3 = "JAM3"
    /// `JB25` — Switzerland: Swiss branch of an enterprise domiciled abroad registered in the commercial registrer
    case jb25 = "JB25"
    /// `JB2M` — Spain: Sociedad Limitada Profesional
    case jb2m = "JB2M"
    /// `JBBW` — Canada — New Brunswick: company
    case jbbw = "JBBW"
    /// `JBIQ` — France: Institution de prévoyance
    case jbiq = "JBIQ"
    /// `JBQI` — United States of America — Ohio: Non-deposit Trust Company
    case jbqi = "JBQI"
    /// `JBU2` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les clubs de chasse et de pêche
    case jbu2 = "JBU2"
    /// `JC0Y` — Estonia: Osaühing
    case jc0y = "JC0Y"
    /// `JCAD` — Czechia: Evidované církevní právnické osoby
    case jcad = "JCAD"
    /// `JCK1` — North Macedonia: Stopanska interesna zaednica
    case jck1 = "JCK1"
    /// `JCKO` — Poland: państwowe jednostki organizacyjne
    case jcko = "JCKO"
    /// `JDX6` — Cayman Islands: special economic zone company
    case jdx6 = "JDX6"
    /// `JEMR` — Armenia: Iravabanakan andzants miutʿyun
    case jemr = "JEMR"
    /// `JF6D` — United States of America — North Carolina: Nonprofit Community Trust
    case jf6d = "JF6D"
    /// `JFET` — France: Société de Participations Financières de Profession Libérale Société anonyme à Directoire (SPFPL SA à directoire)
    case jfet = "JFET"
    /// `JFQ5` — Bonaire, Sint Eustatius and Saba: Buitenlandse rechtsvorm hoofdvestiging op Bonaire
    case jfq5 = "JFQ5"
    /// `JGNU` — United Arab Emirates: Public Joint Stock Company
    case jgnu = "JGNU"
    /// `JGPP` — United States of America — Montana: Rural Cooperative Association
    case jgpp = "JGPP"
    /// `JGV1` — Mexico: Sociedad anónima de capital variable
    case jgv1 = "JGV1"
    /// `JH78` — Malaysia — Labuan: Labuan Company (Limited By Guarantee)
    case jh78 = "JH78"
    /// `JHC4` — Isle of Man: Foundation
    case jhc4 = "JHC4"
    /// `JHK5` — Netherlands: fonds voor gemene rekening
    case jhk5 = "JHK5"
    /// `JI3A` — Finland: Keskinäinen vahinkovakuutusyhdistys
    case ji3a = "JI3A"
    /// `JI4V` — Canada — Quebec: Personne morale sans but lucratif par Loi sur la mise en marché des produits agricoles, alimentaires et de la pêche
    case ji4v = "JI4V"
    /// `JIF7` — United States of America — Kansas: Statutory Public Benefit Limited Liability Company
    case jif7 = "JIF7"
    /// `JIWD` — Luxembourg: Autres personnes morales dont l'immatriculation est prévue par l'article 1 de la loi modifiée du 19 décembre 2002 concernant le registre de commerce et des sociétés ainsi que la comptabilité et les comptes annuels des entreprises
    case jiwd = "JIWD"
    /// `JIYK` — France: Syndicat inter hospitalier
    case jiyk = "JIYK"
    /// `JJ1V` — Puerto Rico: Trust
    case jj1v = "JJ1V"
    /// `JJ5L` — United States of America — Vermont: credit union
    case jj5l = "JJ5L"
    /// `JJ9M` — United States of America — Maryland: Limited Liability Company
    case jj9m = "JJ9M"
    /// `JJYB` — Czechia: Zahraniční pobočný spolek
    case jjyb = "JJYB"
    /// `JJYT` — Austria: Körperschaft öffentlichen Rechts
    case jjyt = "JJYT"
    /// `JKC5` — Slovakia: Podnik alebo hospodárske zariadenie združenia
    case jkc5 = "JKC5"
    /// `JKJX` — India: Provident fund / Superannuation fund / Gratuity fund / Insurance Fund
    case jkjx = "JKJX"
    /// `JKOT` — United States of America — Connecticut: Stock Corporation
    case jkot = "JKOT"
    /// `JLE0` — Canada — Quebec: Personne morale sans but lucratif par Loi sur la conservation de la faune
    case jle0 = "JLE0"
    /// `JLNM` — Kuwait: Sharikat tadamun
    case jlnm = "JLNM"
    /// `JLR3` — Belarus: Tavarystva z dadatkovaj adkaznascyu
    case jlr3 = "JLR3"
    /// `JLZW` — Canada — Quebec: Société par actions constitué par Loi sur les compagnies de fidéicommis
    case jlzw = "JLZW"
    /// `JM1W` — France: SCP de dentistes
    case jm1w = "JM1W"
    /// `JMO0` — France: Commission syndicale pour la gestion des biens indivis des communes
    case jmo0 = "JMO0"
    /// `JMQU` — Türkiye: kollektif şirket
    case jmqu = "JMQU"
    /// `JMVF` — Germany: Investmentaktiengesellschaft
    case jmvf = "JMVF"
    /// `JN2P` — France: SARL unipersonnelle
    case jn2p = "JN2P"
    /// `JN6Y` — Mexico: Sociedad cooperativa de capital variable
    case jn6y = "JN6Y"
    /// `JNAD` — Belgium: Besloten vennootschap met beperkte aansprakelijkheid met een sociaal oogmerk
    case jnad = "JNAD"
    /// `JNCJ` — Canada — Saskatchewan: Co-operatives
    case jncj = "JNCJ"
    /// `JNDX` — Germany: Europäische wirtschaftliche Interessenvereinigung
    case jndx = "JNDX"
    /// `JNJI` — Bahrain: Sharika That Almasuliah Almahduda
    case jnji = "JNJI"
    /// `JNYX` — United States of America — Wisconsin: Commercial Bank
    case jnyx = "JNYX"
    /// `JOGO` — Canada — Prince Edward Island: credit union
    case jogo = "JOGO"
    /// `JOX1` — Jersey: Public Limited Company
    case jox1 = "JOX1"
    /// `JOZN` — Malta: Partnership en nom collectif
    case jozn = "JOZN"
    /// `JPMQ` — Russian Federation: Organizatsionno-pravovyye formy organizatsiy, sozdannykh bez prav yuridicheskogo litsa
    case jpmq = "JPMQ"
    /// `JPZW` — United States of America — Alabama: Savings and Loan Association
    case jpzw = "JPZW"
    /// `JQA2` — Slovenia: Kmetijska zadruga
    case jqa2 = "JQA2"
    /// `JQNA` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les sociétés préventives de cruauté envers les animaux
    case jqna = "JQNA"
    /// `JQOI` — Austria: Sparkasse
    case jqoi = "JQOI"
    /// `JR3Z` — United States of America — Maine: Cooperative
    case jr3z = "JR3Z"
    /// `JR6U` — United States of America — Arkansas: Commercial Bank
    case jr6u = "JR6U"
    /// `JR7T` — France: SARL nationale
    case jr7t = "JR7T"
    /// `JRAQ` — Mexico: Agrupaciones financieras
    case jraq = "JRAQ"
    /// `JRTH` — Fiji: Trusts and Estates
    case jrth = "JRTH"
    /// `JS13` — Panama: Sociedad de Responsabilidad Limitada
    case js13 = "JS13"
    /// `JS65` — Virgin Islands (British): unlimited company that is not authorised to issue shares
    case js65 = "JS65"
    /// `JSTL` — Mexico: Sociedad de solidaridad social
    case jstl = "JSTL"
    /// `JTAV` — Austria: Offene Gesellschaft
    case jtav = "JTAV"
    /// `JTCO` — United Kingdom of Great Britain and Northern Ireland — Northern Ireland: Credit Union (Northern Ireland)
    case jtco = "JTCO"
    /// `JTJE` — Vanuatu: Local Company
    case jtje = "JTJE"
    /// `JTV5` — Spain: Fondo de Capital-Riesgo
    case jtv5 = "JTV5"
    /// `JU79` — United States of America — Delaware: Savings Bank
    case ju79 = "JU79"
    /// `JU82` — France: Ministére
    case ju82 = "JU82"
    /// `JUDZ` — Honduras: Sociedad Anónima
    case judz = "JUDZ"
    /// `JUEU` — Thailand: H̄̂āngh̄ûns̄̀wncảkạd
    case jueu = "JUEU"
    /// `JUHG` — Austria: Offene Erwerbsgesellschaft
    case juhg = "JUHG"
    /// `JVMD` — Canada — Quebec: Société par actions par Fonds mutuel constitué par acte de fiducie, Loi sur les assurances, Loi sur les compagnies de fidéicommis, Loi sur les compagnies de flottage, Loi sur les compagnies de gaz, d’eau et d’électricité, Loi sur les compagnies de télégraphe et de téléphone, Loi sur les compagnies minières, Loi sur les sociétés de construction, Loi sur les sociétés de développement de l'entreprise québécoise, Loi sur les sociétés de fiducie et les sociétés d'épargne, Loi sur les sociétés de patrons de fabriques de producteurs laitiers, Loi sur les sociétés d'entraide économique, Loi sur les sociétés d'exploration minière, Loi sur les syndicats d'élevage
    case jvmd = "JVMD"
    /// `JWTD` — United States of America — Vermont: Commercial Bank
    case jwtd = "JWTD"
    /// `JWWT` — Mauritius: Foundation
    case jwwt = "JWWT"
    /// `JXDX` — Ireland: Societas Europaea
    case jxdx = "JXDX"
    /// `JXO5` — Canada — Quebec: Société par actions constitué par Loi sur les sociétés de fiducie et les sociétés d'épargne
    case jxo5 = "JXO5"
    /// `JXUC` — United States of America — Idaho: Savings and Loan Association
    case jxuc = "JXUC"
    /// `JYAN` — Bolivia (Plurinational State of): Empresa Estatal Intergubernamental
    case jyan = "JYAN"
    /// `JYKN` — Greece: Lipa
    case jykn = "JYKN"
    /// `JZ1I` — Mexico: Sindicato
    case jz1i = "JZ1I"
    /// `JZBN` — Russian Federation: Nepublichnyye aktsionernyye obshchestva
    case jzbn = "JZBN"
    /// `JZED` — Tanzania: Public Limited Company
    case jzed = "JZED"
    /// `JZWN` — United States of America — South Dakota: Business Corporation
    case jzwn = "JZWN"
    /// `K021` — Italy: Contratto Di Rete Dotato Di Soggettivita' Giuridica
    case k021 = "K021"
    /// `K08P` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les compagnies de cimetière
    case k08p = "K08P"
    /// `K08V` — Paraguay: Sociedad De Responsabilidad Limitada
    case k08v = "K08V"
    /// `K09E` — Finland: Yksityinen elinkeinonharjoittaja
    case k09e = "K09E"
    /// `K09K` — Thailand: Bris̄ʹạthcảkạd
    case k09k = "K09K"
    /// `K0RI` — Spain: Institucion de Inversion Colectiva
    case k0ri = "K0RI"
    /// `K1QX` — Canada — Alberta: Alberta society
    case k1qx = "K1QX"
    /// `K26L` — Italy: Ente
    case k26l = "K26L"
    /// `K2BJ` — United States of America — Alaska: Non-Profit Corporation
    case k2bj = "K2BJ"
    /// `K2G8` — Finland: Muut oikeushenkilöt
    case k2g8 = "K2G8"
    /// `K361` — India: Special Purpose Vehicle-Coop  / Multistate Coop Society
    case k361 = "K361"
    /// `K39X` — France: SA union de sociétés coopératives à conseil d'administration
    case k39x = "K39X"
    /// `K3J6` — United States of America — Nevada: Savings Bank
    case k3j6 = "K3J6"
    /// `K4CD` — Dominican Republic: Empresa Individual de Responsabilidad Limitada
    case k4cd = "K4CD"
    /// `K4GR` — Lithuania: Biudžetinės įstaigos
    case k4gr = "K4GR"
    /// `K4MF` — United States of America — Vermont: Professional Limited Liability Company
    case k4mf = "K4MF"
    /// `K4OX` — India: Special Purpose Vehicle - Partnership Firm
    case k4ox = "K4OX"
    /// `K4ZA` — Suriname: Cooperatieve Vereniging
    case k4za = "K4ZA"
    /// `K575` — Cayman Islands: foundation company
    case k575 = "K575"
    /// `K5KA` — France: Régie d'une collectivité locale à caractère industriel ou commercial
    case k5ka = "K5KA"
    /// `K5P8` — Norway: Samvirkeforetak
    case k5p8 = "K5P8"
    /// `K65D` — France: SA à conseil d'administration (s.a.i.)
    case k65d = "K65D"
    /// `K69X` — France: SA de crédit immobilier à directoire
    case k69x = "K69X"
    /// `K6G7` — Lesotho: Public Company
    case k6g7 = "K6G7"
    /// `K6L9` — Spain: Sociedad Civil Profesional
    case k6l9 = "K6L9"
    /// `K6VE` — Finland: Julkinen osakeyhtiö
    case k6ve = "K6VE"
    /// `K7XQ` — France: Établissement public national à caractére scientifique culturel et professionnel
    case k7xq = "K7XQ"
    /// `K7YU` — United States of America — California: Nonprofit Corporation Public Benefit
    case k7yu = "K7YU"
    /// `K81Q` — Azerbaijan: Açıq səhmdar cəmiyyəti
    case k81q = "K81Q"
    /// `K98U` — Liechtenstein: Europäische Wirtschaftliche Interessenvereinigung
    case k98u = "K98U"
    /// `K99N` — France: Comité social économique d’établissement
    case k99n = "K99N"
    /// `K9L6` — Cyprus: Idiotiki Etaireia Periorismenis Efthynis me metoches
    case k9l6 = "K9L6"
    /// `K9SK` — Taiwan (Province of China): hé huǒ
    case k9sk = "K9SK"
    /// `KAEM` — United Arab Emirates — Abu Dhabi: Private Company Unlimited with Shares
    case kaem = "KAEM"
    /// `KAM9` — Canada — Northwest Territories: co-operative
    case kam9 = "KAM9"
    /// `KB52` — Slovakia: Komanditná spoločnosť
    case kb52 = "KB52"
    /// `KBEQ` — France: Société civile immobilière d' accession progressive à la propriété
    case kbeq = "KBEQ"
    /// `KBKD` — Slovenia: družba z omejeno odgovornostjo
    case kbkd = "KBKD"
    /// `KC51` — Colombia: Sociedad de Economía Mixta
    case kc51 = "KC51"
    /// `KC7Z` — United States of America — Missouri: For-Profit Corporation
    case kc7z = "KC7Z"
    /// `KCHO` — Italy: Azienda Speciale Di Cui Al Dlgs 267/2000
    case kcho = "KCHO"
    /// `KCN5` — France: Etablissement public administratif, cercle et foyer dans les armées
    case kcn5 = "KCN5"
    /// `KCSG` — Italy: Ente Impresa
    case kcsg = "KCSG"
    /// `KD84` — Cambodia: Sole Proprietorship
    case kd84 = "KD84"
    /// `KEMH` — Singapore: Company (Foreign Branch)
    case kemh = "KEMH"
    /// `KFPS` — United States of America — Nebraska: Domestic General Partnership
    case kfps = "KFPS"
    /// `KFR1` — France: Artisan
    case kfr1 = "KFR1"
    /// `KGUS` — Seychelles: International Business Company - Company Limited by Shares and Guarantee
    case kgus = "KGUS"
    /// `KGZ8` — United States of America — Arkansas: Limited Liability Partnership
    case kgz8 = "KGZ8"
    /// `KH4O` — Slovenia: Skupnost lastnikov stanovanj
    case kh4o = "KH4O"
    /// `KHAB` — North Macedonia: Drustvo so ogranicena odgvornost
    case khab = "KHAB"
    /// `KHBL` — Qatar: Sharikat Altawsia Albasita
    case khbl = "KHBL"
    /// `KHI5` — Finland: Julkinen vakuutusosakeyhtiö
    case khi5 = "KHI5"
    /// `KHQ2` — Taiwan (Province of China): Wúxiàn gōngsī
    case khq2 = "KHQ2"
    /// `KIU5` — Serbia: Društvo sa ograničenom odgovornošću
    case kiu5 = "KIU5"
    /// `KJ0B` — India: Insurance Company
    case kj0b = "KJ0B"
    /// `KJ1S` — Faroe Islands: Fyritøkugrunnur
    case kj1s = "KJ1S"
    /// `KJ1Y` — Guam: corporation
    case kj1y = "KJ1Y"
    /// `KJ9Q` — Switzerland: Non-commercial power of attorney
    case kj9q = "KJ9Q"
    /// `KJOW` — Philippines: one person corporation
    case kjow = "KJOW"
    /// `KJZ3` — Suriname: Filiaal of Bijkantoor
    case kjz3 = "KJZ3"
    /// `KLA2` — Russian Federation: Khozyaystvennyye tovarishchestva
    case kla2 = "KLA2"
    /// `KLBO` — Belgium: Burgerlijke vennootschap onder vorm van commanditaire vennootschap op aandelen
    case klbo = "KLBO"
    /// `KM1T` — Curaçao: Openbare vennootschap
    case km1t = "KM1T"
    /// `KM66` — Poland: instytuty badawcze
    case km66 = "KM66"
    /// `KM6O` — Belgium: Maatschap
    case km6o = "KM6O"
    /// `KM6Z` — Czechia: Státní banka československá
    case km6z = "KM6Z"
    /// `KMFX` — Ireland: Private Unlimited Company
    case kmfx = "KMFX"
    /// `KMPN` — France: Établissement public national à caractére administratif
    case kmpn = "KMPN"
    /// `KNIC` — Cook Islands: International Partnership
    case knic = "KNIC"
    /// `KO5T` — United States of America — North Dakota: credit union
    case ko5t = "KO5T"
    /// `KOFC` — Seychelles: International Business Company - Company Limited by Guarantee
    case kofc = "KOFC"
    /// `KORB` — Virgin Islands (British): Limited Partnership
    case korb = "KORB"
    /// `KOYR` — Russian Federation: Glavy krest'yanskikh (fermerskikh) khozyaystv
    case koyr = "KOYR"
    /// `KP34` — Croatia: Javno trgovačko društvo
    case kp34 = "KP34"
    /// `KPG6` — Monaco: Association
    case kpg6 = "KPG6"
    /// `KPH8` — United States of America — Montana: Investment Company
    case kph8 = "KPH8"
    /// `KPHM` — Guatemala: Organizacion No Gubernamental
    case kphm = "KPHM"
    /// `KQH7` — France: Société civile d'attribution
    case kqh7 = "KQH7"
    /// `KQWF` — Viet Nam: Nhóm Cty
    case kqwf = "KQWF"
    /// `KQXA` — United States of America — California: Commercial Bank
    case kqxa = "KQXA"
    /// `KS9B` — France: Syndicat patronal
    case ks9b = "KS9B"
    /// `KSHL` — Bonaire, Sint Eustatius and Saba: Commanditaire vennootschap op aandelen
    case kshl = "KSHL"
    /// `KSUS` — Hong Kong: fei xiang gang gong si
    case ksus = "KSUS"
    /// `KU3O` — United States of America — Massachusetts: Non-deposit Trust Company
    case ku3o = "KU3O"
    /// `KUHK` — Benin: Société à Responsabilité Limitée
    case kuhk = "KUHK"
    /// `KUQO` — Greece: Naftiliakí Etaireía Ploíon Anapsychís
    case kuqo = "KUQO"
    /// `KUUV` — Portugal: Organismo da Administração Pública
    case kuuv = "KUUV"
    /// `KUUZ` — Chile: Sociedad por Acciones
    case kuuz = "KUUZ"
    /// `KVC1` — Canada — Alberta: general partnership
    case kvc1 = "KVC1"
    /// `KVQU` — Slovakia: Združenie medzinárodného obchodu
    case kvqu = "KVQU"
    /// `KVSH` — Russian Federation: Organy obshchestvennoy samodeyatel'nosti
    case kvsh = "KVSH"
    /// `KWBA` — Lithuania: Viešosios įstaigos
    case kwba = "KWBA"
    /// `KWFE` — Slovakia: Komora (s výnimkou profesných komôr)
    case kwfe = "KWFE"
    /// `KWI4` — France: SCP de masseurs-kinésithérapeutes
    case kwi4 = "KWI4"
    /// `KX7D` — Norway: Fylkeskommune
    case kx7d = "KX7D"
    /// `KXDY` — North Macedonia: Podruznica na stransko trgovsko drustvo, odnosno na stranski trgovec poedinec
    case kxdy = "KXDY"
    /// `KXZT` — Italy: Azienda Speciale
    case kxzt = "KXZT"
    /// `KYFD` — Barbados: non-profit company
    case kyfd = "KYFD"
    /// `KYOI` — Saint Kitts and Nevis: exempt limited partnership
    case kyoi = "KYOI"
    /// `KYVO` — Colombia: Sociedad por Acciones Simplificada
    case kyvo = "KYVO"
    /// `KZ3R` — Slovakia: Poisťovňa - štátny podnik
    case kz3r = "KZ3R"
    /// `KZC6` — Russian Federation: Fondy
    case kzc6 = "KZC6"
    /// `KZDW` — Canada — Saskatchewan: Syndicates
    case kzdw = "KZDW"
    /// `KZMF` — Costa Rica: Sociedad de usuarios de aguas
    case kzmf = "KZMF"
    /// `L05H` — Belgium: Besloten Vennootschap van publiek recht
    case l05h = "L05H"
    /// `L10T` — United States of America — Colorado: Limited Liability Company
    case l10t = "L10T"
    /// `L1M7` — Slovakia: Fakulta vysokej školy
    case l1m7 = "L1M7"
    /// `L1PM` — United States of America — Montana: Professional Limited Liability Limited Partnership
    case l1pm = "L1PM"
    /// `L1ZJ` — Italy: Azienda Municipale
    case l1zj = "L1ZJ"
    /// `L22N` — United States of America — Iowa: Professional Corporation
    case l22n = "L22N"
    /// `L25Z` — France: Société anonyme mixte d'intérêt agricole (SMIA) à conseil d'administration
    case l25z = "L25Z"
    /// `L26C` — Canada — Quebec: Société par actions par Fonds mutuel constitué par acte de fiducie
    case l26c = "L26C"
    /// `L2DM` — United States of America — Arkansas: Limited Liability Limited Partnership
    case l2dm = "L2DM"
    /// `L2MQ` — Mexico: Sociedad de responsabilidad limitada de interés público de capital variable
    case l2mq = "L2MQ"
    /// `L2NN` — Canada — Saskatchewan: Joint Ventures
    case l2nn = "L2NN"
    /// `L2QV` — United States of America — Hawaii: Corporation
    case l2qv = "L2QV"
    /// `L2SY` — United States of America — New Jersey: credit union
    case l2sy = "L2SY"
    /// `L3XH` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les sociétés d'horticulture
    case l3xh = "L3XH"
    /// `L4HR` — Nepal: Cooperative Organization
    case l4hr = "L4HR"
    /// `L4QF` — Argentina: Organismo Publico
    case l4qf = "L4QF"
    /// `L5BO` — United States of America — Hawaii: Trade Name
    case l5bo = "L5BO"
    /// `L5DU` — Switzerland: Local public company
    case l5du = "L5DU"
    /// `L6IY` — Greece: Nomika Prosopa Dimosiou Dikeou
    case l6iy = "L6IY"
    /// `L6QO` — France: Régime spécial de Sécurité Sociale
    case l6qo = "L6QO"
    /// `L7HH` — United States of America — Connecticut: Religious Society or Religious Corporation
    case l7hh = "L7HH"
    /// `L7HX` — Netherlands: kerkgenootschap
    case l7hx = "L7HX"
    /// `L7XJ` — Finland: Paliskunta
    case l7xj = "L7XJ"
    /// `L8D6` — Greece: Afanis Eteria
    case l8d6 = "L8D6"
    /// `L9JC` — Mexico: Sociedad anónima bursátil de capital variable
    case l9jc = "L9JC"
    /// `L9WT` — Slovakia: Obec (obecný úrad), mesto (mestský úrad)
    case l9wt = "L9WT"
    /// `LA47` — Estonia: Euroopa majandushuviühing
    case la47 = "LA47"
    /// `LA66` — Malaysia — Labuan: Labuan Islamic Other Trust
    case la66 = "LA66"
    /// `LARO` — France: Société par actions simplifiée à associé unique ou société par actions simplifiée unipersonnelle
    case laro = "LARO"
    /// `LBJ1` — United States of America — Washington: Limited Partnership
    case lbj1 = "LBJ1"
    /// `LBPW` — Mexico: Sociedad anónima  de capital variable, financiera popular
    case lbpw = "LBPW"
    /// `LBQS` — Finland: Muu yhteisvastuullinen pidätysvelvollinen
    case lbqs = "LBQS"
    /// `LC2L` — Bermuda: Exempted Company Limited by Guarantee
    case lc2l = "LC2L"
    /// `LCR0` — Luxembourg: Groupement d'intérêt économique
    case lcr0 = "LCR0"
    /// `LCVA` — Saint Vincent and the Grenadines: international business company - company limited by guarantee not authorised to issue shares
    case lcva = "LCVA"
    /// `LDBS` — United States of America — Minnesota: Cooperative (Producer)
    case ldbs = "LDBS"
    /// `LDHG` — United States of America — Colorado: Savings and Loan Association
    case ldhg = "LDHG"
    /// `LECS` — Bulgaria: Sdruzhenie v chastna polza
    case lecs = "LECS"
    /// `LEDI` — Czechia: Honební společenstvo
    case ledi = "LEDI"
    /// `LF4E` — United States of America — North Dakota: Farm/Ranch Corporation
    case lf4e = "LF4E"
    /// `LFSO` — New Zealand: Industrial and provident society
    case lfso = "LFSO"
    /// `LGME` — France: SA à participation ouvrière à conseil d'administration
    case lgme = "LGME"
    /// `LGQZ` — United States of America — Idaho: Savings Bank
    case lgqz = "LGQZ"
    /// `LGVF` — United States of America — Oregon: Savings and Loan Association
    case lgvf = "LGVF"
    /// `LGWG` — Ireland: Designated Activity Company
    case lgwg = "LGWG"
    /// `LH0Q` — Pakistan: Unlimited Company
    case lh0q = "LH0Q"
    /// `LHBB` — Italy: Impresa Individuale
    case lhbb = "LHBB"
    /// `LIEA` — United States of America — Connecticut: Savings Bank
    case liea = "LIEA"
    /// `LJ92` — Czechia: Československé státní dráhy-státní organizace
    case lj92 = "LJ92"
    /// `LJH5` — United States of America — Michigan: Limited Liability Company
    case ljh5 = "LJH5"
    /// `LJJW` — Norway: Verdipapirfond
    case ljjw = "LJJW"
    /// `LJL0` — Czechia: Organizační složka státu
    case ljl0 = "LJL0"
    /// `LJTR` — Mexico: Sociedad por acciones simplificada
    case ljtr = "LJTR"
    /// `LJYQ` — Bolivia (Plurinational State of): Sociedad Anónima Mixta
    case ljyq = "LJYQ"
    /// `LKD5` — United States of America — Maryland: Close Corporation
    case lkd5 = "LKD5"
    /// `LKQ2` — United States of America — Connecticut: Limited Partnership
    case lkq2 = "LKQ2"
    /// `LLL8` — Russian Federation: Otdeleniya inostrannykh nekommercheskikh nepravitel'stvennykh organizatsiy
    case lll8 = "LLL8"
    /// `LMIM` — Ireland: Limited company
    case lmim = "LMIM"
    /// `LMSY` — Canada — Saskatchewan: Partnership
    case lmsy = "LMSY"
    /// `LN3N` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les villages miniers
    case ln3n = "LN3N"
    /// `LN9O` — Bolivia (Plurinational State of): Entidad Financiera De Vivienda
    case ln9o = "LN9O"
    /// `LNBY` — Canada — British Columbia: Limited liability partnership
    case lnby = "LNBY"
    /// `LNG8` — Paraguay: Sociedad En Comandita Por Acciones
    case lng8 = "LNG8"
    /// `LNLA` — Oman: sharikat altadamun
    case lnla = "LNLA"
    /// `LNY0` — Hungary: Egyházi szervezetek
    case lny0 = "LNY0"
    /// `LNYR` — Slovenia: Obrtna zadruga
    case lnyr = "LNYR"
    /// `LO9A` — Jersey: Private Limited by Guarantee
    case lo9a = "LO9A"
    /// `LOB9` — Mexico: Sociedad propietaria de tierras agrícolas, ganaderas o forestales
    case lob9 = "LOB9"
    /// `LOJL` — Nigeria: Limited partnership
    case lojl = "LOJL"
    /// `LOL8` — United Arab Emirates: Simple Commandite Company
    case lol8 = "LOL8"
    /// `LPCQ` — Czechia: Mezinárodní odborová organizace
    case lpcq = "LPCQ"
    /// `LPEE` — United States of America — Vermont: Cooperative
    case lpee = "LPEE"
    /// `LPLY` — United States of America — Montana: Limited Partnership
    case lply = "LPLY"
    /// `LQVG` — Costa Rica: Sucesión Indivisa
    case lqvg = "LQVG"
    /// `LQZC` — United States of America — Nebraska: Nebraska Benefit Corporation
    case lqzc = "LQZC"
    /// `LRRN` — Canada — British Columbia: Mutual fire insurance company
    case lrrn = "LRRN"
    /// `LSWY` — Dominican Republic: Sociedad en Nombre Colectivo
    case lswy = "LSWY"
    /// `LT1Y` — Canada — Prince Edward Island: professional corporation
    case lt1y = "LT1Y"
    /// `LT9U` — Poland: związek zawodowy
    case lt9u = "LT9U"
    /// `LTKC` — United States of America — Louisiana: Home Service Contract Provider
    case ltkc = "LTKC"
    /// `LU8S` — France: Associé gérant de Société
    case lu8s = "LU8S"
    /// `LU9O` — United States of America — Kentucky: Unincorporated Non-Profit Assocation
    case lu9o = "LU9O"
    /// `LUGM` — Lithuania: Kooperatinės bendrovės (kooperatyvai)
    case lugm = "LUGM"
    /// `LUIN` — France: SARL immobilière pour le commerce et l'industrie (SICOMI)
    case luin = "LUIN"
    /// `LUMA` — Croatia: Dioničko društvo
    case luma = "LUMA"
    /// `LUOA` — Lithuania: Komanditinės ūkinės bendrijos
    case luoa = "LUOA"
    /// `LURL` — China: qi ta（ shi yong yu wu deng ji ji gou de de qing kuang ）
    case lurl = "LURL"
    /// `LV28` — Canada — Manitoba: Condominium Corporation
    case lv28 = "LV28"
    /// `LVC6` — Tanzania: Company limited by guarantee
    case lvc6 = "LVC6"
    /// `LVEQ` — Estonia: Usaldusühing
    case lveq = "LVEQ"
    /// `LVJZ` — Argentina: Fundacion
    case lvjz = "LVJZ"
    /// `LVRX` — Mexico: Sociedad anónima, almacén general de depósito, organización auxiliar del crédito
    case lvrx = "LVRX"
    /// `LWHF` — Belgium: Coöperatieve vennootschap met onbeperkte aansprakelijkheid
    case lwhf = "LWHF"
    /// `LWOD` — Denmark: Medarbejderinvesteringsselskab
    case lwod = "LWOD"
    /// `LWV6` — Belgium: Gewone commanditaire vennootschap
    case lwv6 = "LWV6"
    /// `LWXI` — Singapore: Company (Local)
    case lwxi = "LWXI"
    /// `LXI4` — United States of America — Montana: Savings Bank
    case lxi4 = "LXI4"
    /// `LYA0` — Türkiye: dernek
    case lya0 = "LYA0"
    /// `LYRX` — United States of America — California: Savings and Loan Association
    case lyrx = "LYRX"
    /// `LYTH` — Russian Federation: Blagotvoritel'nyye fondy
    case lyth = "LYTH"
    /// `LZ3H` — United Arab Emirates — Abu Dhabi: Close Ended Investment Company
    case lz3h = "LZ3H"
    /// `LZFR` — Australia: Public Company limited by guarantee
    case lzfr = "LZFR"
    /// `LZI3` — Tuvalu: partnership
    case lzi3 = "LZI3"
    /// `LZIC` — Ireland: Investment Limited Partnership
    case lzic = "LZIC"
    /// `LZZD` — Italy: Società Consortile Per Azioni
    case lzzd = "LZZD"
    /// `M0ER` — United States of America — New York: Savings Bank
    case m0er = "M0ER"
    /// `M0SL` — Mexico: Municipio
    case m0sl = "M0SL"
    /// `M0X8` — Costa Rica: Condominio
    case m0x8 = "M0X8"
    /// `M0Y0` — Sweden: Försäkringsförening
    case m0y0 = "M0Y0"
    /// `M1BJ` — France: Société civile de moyens
    case m1bj = "M1BJ"
    /// `M1DW` — Hungary: Önkéntes kölcsönös biztosítópénztár
    case m1dw = "M1DW"
    /// `M1FY` — United States of America — Indiana: Non-deposit Trust Company
    case m1fy = "M1FY"
    /// `M1IZ` — Netherlands: Overige Privaatrechtelijke Rechtspersoon
    case m1iz = "M1IZ"
    /// `M27U` — Aruba: Besloten vennootschap
    case m27u = "M27U"
    /// `M2KR` — United States of America — Hawaii: Limited Liablity Partnership
    case m2kr = "M2KR"
    /// `M44Q` — Mexico: Sociedad anónima de capital variable, centro cambiario
    case m44q = "M44Q"
    /// `M44Y` — Isle of Man: Limited by Shares and by Guarantee (2006 Act)
    case m44y = "M44Y"
    /// `M4FO` — United States of America — Arkansas: Limited Liability Company
    case m4fo = "M4FO"
    /// `M4IF` — Canada — Canada: pension fund society
    case m4if = "M4IF"
    /// `M4LU` — Azerbaijan: Qapalı səhmdar cəmiyyəti
    case m4lu = "M4LU"
    /// `M4TI` — Gibraltar: Societe Europeas
    case m4ti = "M4TI"
    /// `M53U` — Canada — New Brunswick: depends on Act of the Legislature
    case m53u = "M53U"
    /// `M5RM` — United States of America — Wisconsin: Limited Liability Company
    case m5rm = "M5RM"
    /// `M64D` — United States of America — Colorado: Limited Liability Partnership
    case m64d = "M64D"
    /// `M673` — France: Société civile d'exploitation agricole
    case m673 = "M673"
    /// `M6YY` — Samoa: Private limited company
    case m6yy = "M6YY"
    /// `M848` — Switzerland: Corpororate public company
    case m848 = "M848"
    /// `M84A` — Slovenia: Sklad
    case m84a = "M84A"
    /// `M886` — United States of America — Alaska: Limited Liability Partnership
    case m886 = "M886"
    /// `M8SS` — Iceland: Einkahlutafélag
    case m8ss = "M8SS"
    /// `M9A1` — United States of America — Maine: Limited Liability Partnership
    case m9a1 = "M9A1"
    /// `M9IQ` — Norway: Kommandittselskap
    case m9iq = "M9IQ"
    /// `MAM6` — Mexico: Institución de asistencia privada
    case mam6 = "MAM6"
    /// `MAVU` — Czechia: Dobrovolný svazek obcí
    case mavu = "MAVU"
    /// `MB35` — Mexico: Ejido
    case mb35 = "MB35"
    /// `MBKN` — United States of America — Kentucky: Savings and Loan Association
    case mbkn = "MBKN"
    /// `MBPY` — Finland: Asumisoikeusyhdistys
    case mbpy = "MBPY"
    /// `MBUU` — Czechia: Příspěvková organizace zřízená územním samosprávným celkem
    case mbuu = "MBUU"
    /// `MBVS` — Bermuda: Exempted Unlimited Company
    case mbvs = "MBVS"
    /// `MCQP` — Guernsey — Guernsey: limited partnership (with separate legal personality)
    case mcqp = "MCQP"
    /// `MCWR` — Greece: Kinopraxia
    case mcwr = "MCWR"
    /// `MCY8` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les sociétés d'agriculture
    case mcy8 = "MCY8"
    /// `MDOL` — Spain: Fundación
    case mdol = "MDOL"
    /// `ME4Y` — Puerto Rico: Public Benefit Corporation
    case me4y = "ME4Y"
    /// `MEHL` — Malaysia — Labuan: Labuan Islamic Recognized Limited Liability Partnership
    case mehl = "MEHL"
    /// `MEJT` — Azerbaijan: Tam ortaqlıq
    case mejt = "MEJT"
    /// `MF7P` — Croatia: Komanditno društvo
    case mf7p = "MF7P"
    /// `MFHR` — Portugal: Sociedade Anónima Europeia
    case mfhr = "MFHR"
    /// `MFYJ` — United States of America — Georgia: Profit Corporation
    case mfyj = "MFYJ"
    /// `MG22` — Russian Federation: Gosudarstvennyye avtonomnyye uchrezhdeniya sub"yektov Rossiyskoy Federatsii
    case mg22 = "MG22"
    /// `MG2O` — France: Institution interdépartementale ou entente
    case mg2o = "MG2O"
    /// `MG8V` — United States of America — Rhode Island: L3C Low Profit LLC
    case mg8v = "MG8V"
    /// `MGCM` — Belgium — Flemish Region: Opdrachthoudende vereniging (Vlaams Gewest)
    case mgcm = "MGCM"
    /// `MGE0` — Canada — Canada: cooperative
    case mge0 = "MGE0"
    /// `MGOU` — Bolivia (Plurinational State of): Empresa Mixta
    case mgou = "MGOU"
    /// `MGUM` — Virgin Islands (U.S.): Domestic Limited Partnership / Limited Liability Limited Partnership
    case mgum = "MGUM"
    /// `MH3L` — Virgin Islands (U.S.): Domestic Trade & Labor Corporation
    case mh3l = "MH3L"
    /// `MI0H` — United States of America — Michigan: for profit and not-for profit co-operatives
    case mi0h = "MI0H"
    /// `MIPY` — United States of America — Delaware: Non-deposit Trust Company
    case mipy = "MIPY"
    /// `MJ9Z` — United States of America — Hawaii: credit union
    case mj9z = "MJ9Z"
    /// `MJJZ` — United States of America — Arkansas: Limited Partnership
    case mjjz = "MJJZ"
    /// `MK1I` — Canada — Quebec: Société par actions constitué par Loi sur les sociétés d'entraide économique
    case mk1i = "MK1I"
    /// `MKAG` — United Arab Emirates: Cooperative Society
    case mkag = "MKAG"
    /// `MM8M` — United States of America — Nevada: Limited Liability Company
    case mm8m = "MM8M"
    /// `MMA4` — France: SA union de sociétés coopératives à directoire
    case mma4 = "MMA4"
    /// `MMBP` — Faroe Islands: Samstarv
    case mmbp = "MMBP"
    /// `MNQ7` — Ireland: Private Company Limited by Shares
    case mnq7 = "MNQ7"
    /// `MOI8` — Pakistan: Public Limited Company (not-for profit association)
    case moi8 = "MOI8"
    /// `MOUL` — France: Assurance mutuelle agricole
    case moul = "MOUL"
    /// `MP7S` — Cayman Islands: segregated portfolio company
    case mp7s = "MP7S"
    /// `MPFG` — United States of America — Nebraska: Foreign Limited Liability Partnership
    case mpfg = "MPFG"
    /// `MPUG` — Cayman Islands: limited liability company
    case mpug = "MPUG"
    /// `MQH3` — Belgium: Commanditaire vennootschap
    case mqh3 = "MQH3"
    /// `MQPZ` — France: Caisse d'épargne et de prévoyance à forme coopérative
    case mqpz = "MQPZ"
    /// `MQT7` — Canada — Quebec: Personne morale sans but lucratif par Loi sur la santé et la sécurité du travail
    case mqt7 = "MQT7"
    /// `MQU4` — United States of America — Louisiana: Domestic Unincorporated Association
    case mqu4 = "MQU4"
    /// `MQU9` — France: Organisme de placement collectif en valeurs mobilières sans personnalité morale
    case mqu9 = "MQU9"
    /// `MR85` — Belarus: Adkrytae akcyyanernae tavarystva
    case mr85 = "MR85"
    /// `MR95` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les décrets de convention collective
    case mr95 = "MR95"
    /// `MRSY` — Switzerland: General partnership
    case mrsy = "MRSY"
    /// `MRW9` — Finland: Muu julkisoikeudellinen oikeushenkilö
    case mrw9 = "MRW9"
    /// `MSGT` — Slovakia: Slobodné povolanie-fyzická osoba podnikajúca na základe iného ako živnostenského zákona zapísaná v obchodnom registri
    case msgt = "MSGT"
    /// `MT3A` — Russian Federation: Otkrytoye aktsionernoye obshchestvo
    case mt3a = "MT3A"
    /// `MT4X` — Nigeria: Limited liability partnership
    case mt4x = "MT4X"
    /// `MTDW` — United States of America — North Dakota: Limited Liability Limited Partnership
    case mtdw = "MTDW"
    /// `MTLX` — Nepal: Private company
    case mtlx = "MTLX"
    /// `MV1C` — Russian Federation: Potrebitel'skiye obshchestva
    case mv1c = "MV1C"
    /// `MV4S` — United Arab Emirates: Sole Proprietor
    case mv4s = "MV4S"
    /// `MVII` — Switzerland: Company limited by shares
    case mvii = "MVII"
    /// `MVSF` — Russian Federation: Ob"yedineniya fermerskikh khozyaystv
    case mvsf = "MVSF"
    /// `MX8J` — France: SA coopérative de commerçants-détaillants à directoire
    case mx8j = "MX8J"
    /// `MXLT` — Canada — Manitoba: Sole Proprietorship
    case mxlt = "MXLT"
    /// `MXMH` — Japan: gaikokugaisyatou
    case mxmh = "MXMH"
    /// `MXWB` — United States of America — Texas: Professional Association
    case mxwb = "MXWB"
    /// `MY1S` — Slovakia: Odštepný závod alebo iná organizačná zložka podniku zapisujúca sa do obchodného registra
    case my1s = "MY1S"
    /// `MY4W` — Canada — New Brunswick: credit union
    case my4w = "MY4W"
    /// `MY61` — United States of America — Kentucky: Limited Liability Company (non-profit)
    case my61 = "MY61"
    /// `MY93` — United States of America — Montana: Professional Limited Liability Company
    case my93 = "MY93"
    /// `MYKG` — Cyprus: Dimosia Etaireia
    case mykg = "MYKG"
    /// `MZB1` — Curaçao: Besloten Vennootschap
    case mzb1 = "MZB1"
    /// `MZT6` — South Africa: Co-operatives (Primary)
    case mzt6 = "MZT6"
    /// `N00R` — Cook Islands: Foundation
    case n00r = "N00R"
    /// `N0JF` — Mexico: Sociedad anónima, bolsa de valores
    case n0jf = "N0JF"
    /// `N0YQ` — United States of America — Indiana: Insurance Corporation
    case n0yq = "N0YQ"
    /// `N10C` — Saudi Arabia: sharikat dhat ras mal qabil liltaghyir
    case n10c = "N10C"
    /// `N10D` — United States of America — South Carolina: Professional Corporation
    case n10d = "N10D"
    /// `N124` — Mexico: Sociedad anónima de capital variable, institución de fondos de pago electrónico
    case n124 = "N124"
    /// `N1TE` — Colombia: Sociedad en comandita por acciones
    case n1te = "N1TE"
    /// `N263` — United States of America — Rhode Island: Workers Cooperative
    case n263 = "N263"
    /// `N28C` — Virgin Islands (British): restricted purposes company segregated portfolio company
    case n28c = "N28C"
    /// `N295` — United States of America — California: Savings Bank
    case n295 = "N295"
    /// `N3JU` — Japan: sonotaseturitutoukihouzin
    case n3ju = "N3JU"
    /// `N3LC` — Finland: Rekisteröity uskonnollinen yhdyskunta
    case n3lc = "N3LC"
    /// `N3VO` — Hong Kong: You gu ben de gong zhong wu xian gong si
    case n3vo = "N3VO"
    /// `N508` — United States of America — New Jersey: Savings and Loan Association
    case n508 = "N508"
    /// `N566` — United States of America — Ohio: Commercial Bank
    case n566 = "N566"
    /// `N5MX` — Slovakia: Samostatne podnikajúca fyzická osoba
    case n5mx = "N5MX"
    /// `N5NT` — Belgium: Besloten vennootschap met beperkte aansprakelijkheid
    case n5nt = "N5NT"
    /// `N5OS` — United States of America — Texas: Savings and Loan Association
    case n5os = "N5OS"
    /// `N66B` — Portugal: Sociedade em Nome Coletivo
    case n66b = "N66B"
    /// `N69M` — United States of America — Arizona: Limited Liability Partnership
    case n69m = "N69M"
    /// `N71W` — United States of America — Louisiana: Cable & Video Franchise
    case n71w = "N71W"
    /// `N745` — Canada — Prince Edward Island: public company
    case n745 = "N745"
    /// `N7I1` — Slovakia: Organizačná zložka príspevkovej organizácie s odvodenou právnou subjektivitou
    case n7i1 = "N7I1"
    /// `N7VF` — United States of America — Delaware: credit union
    case n7vf = "N7VF"
    /// `N8FJ` — Thailand: S̄̀wn rāchkār
    case n8fj = "N8FJ"
    /// `N97C` — Jamaica: company limited by guarantee
    case n97c = "N97C"
    /// `N9QH` — Ecuador: Compañía de Economía Mixta
    case n9qh = "N9QH"
    /// `N9QW` — Slovakia: Pobočka štátneho peňažného ústavu
    case n9qw = "N9QW"
    /// `NA09` — Mexico: Asociación religiosa
    case na09 = "NA09"
    /// `NAQG` — Bermuda: Local Company Limited by Shares
    case naqg = "NAQG"
    /// `NAUO` — United Kingdom of Great Britain and Northern Ireland: Other Company Type
    case nauo = "NAUO"
    /// `NB58` — United States of America — Wyoming: Limited Liability Company
    case nb58 = "NB58"
    /// `NBA8` — France: Autre établissement public national administratif à compétence territoriale limitée
    case nba8 = "NBA8"
    /// `NBCI` — India: Banking Company - Others
    case nbci = "NBCI"
    /// `NBTW` — United Kingdom of Great Britain and Northern Ireland — Scotland: Scottish Partnership
    case nbtw = "NBTW"
    /// `NC88` — Slovakia: Účelová organizačná jednotka ČSD
    case nc88 = "NC88"
    /// `ND7S` — Fiji: Co-operative
    case nd7s = "ND7S"
    /// `ND8M` — Tanzania: Non-Governmental Organisation
    case nd8m = "ND8M"
    /// `ND93` — United States of America — Tennessee: Commercial Bank
    case nd93 = "ND93"
    /// `NDBR` — United States of America — Mississippi: Limited Partnership
    case ndbr = "NDBR"
    /// `NDC3` — Guernsey — Alderney: private company
    case ndc3 = "NDC3"
    /// `NDEW` — Italy: Società Consortile Cooperativa
    case ndew = "NDEW"
    /// `NDID` — Liechtenstein: Kollektivgesellschaft
    case ndid = "NDID"
    /// `NETO` — United States of America — Massachusetts: Employee Cooperative Corporation
    case neto = "NETO"
    /// `NFCV` — France: Association coopérative inscrite (droit local Alsace Moselle)
    case nfcv = "NFCV"
    /// `NFDF` — Singapore: Sole-Proprietorship
    case nfdf = "NFDF"
    /// `NFFH` — Netherlands: coöperatie
    case nffh = "NFFH"
    /// `NFHN` — Spain: Entidades de Previsión Social Voluntaria
    case nfhn = "NFHN"
    /// `NFPC` — India: Non-Banking Finance Company
    case nfpc = "NFPC"
    /// `NFRJ` — Romania: Reprezentant fiscal
    case nfrj = "NFRJ"
    /// `NFYA` — Panama: Consorcio
    case nfya = "NFYA"
    /// `NG11` — Oman: sharikat almusahamat muqfala
    case ng11 = "NG11"
    /// `NGR5` — Guernsey — Guernsey: mixed liability company
    case ngr5 = "NGR5"
    /// `NGZJ` — United States of America — Nebraska: Domesticated Foreign Corporation
    case ngzj = "NGZJ"
    /// `NHBK` — Mexico: Sociedad anónima de capital variable, fondo de inversión de capitales
    case nhbk = "NHBK"
    /// `NHGN` — United States of America — North Dakota: Limited Partnership
    case nhgn = "NHGN"
    /// `NHYA` — United States of America — Washington: Profit Corporation
    case nhya = "NHYA"
    /// `NI3I` — Czechia: Veřejnoprávní instituce
    case ni3i = "NI3I"
    /// `NI44` — United States of America — Louisiana: Domestic Corporation
    case ni44 = "NI44"
    /// `NIJH` — Austria: Erwerbs- und Wirtschaftsgenossenschaft
    case nijh = "NIJH"
    /// `NIQY` — Portugal: Entidade Empresarial Metropolitana
    case niqy = "NIQY"
    /// `NJ57` — United States of America — Kentucky: Commercial Bank
    case nj57 = "NJ57"
    /// `NJ87` — Czechia: Společný podnik (s více zakladateli)
    case nj87 = "NJ87"
    /// `NJA5` — United States of America — North Dakota: Real Estate Investment Trusts
    case nja5 = "NJA5"
    /// `NK3V` — United States of America — Michigan: General Partnership
    case nk3v = "NK3V"
    /// `NL31` — Slovakia: Spoločný podnik (s viacerými zakladateľmi)
    case nl31 = "NL31"
    /// `NLI7` — Slovakia: Sporiteľna
    case nli7 = "NLI7"
    /// `NM07` — France: SA immobilière d'investissement à directoire
    case nm07 = "NM07"
    /// `NNLI` — Austria: stille Gesellschaft
    case nnli = "NNLI"
    /// `NNLM` — Virgin Islands (U.S.): Domestic Profit Corporation
    case nnlm = "NNLM"
    /// `NO20` — Slovakia: Zatiaľ neurčené
    case no20 = "NO20"
    /// `NO8C` — Malaysia — Labuan: Labuan Foreign Company
    case no8c = "NO8C"
    /// `NOBH` — United States of America — Utah: Non-profit Corporation
    case nobh = "NOBH"
    /// `NOI8` — France: Communauté d'agglomération
    case noi8 = "NOI8"
    /// `NONB` — Canada — New Brunswick: corporation
    case nonb = "NONB"
    /// `NPFB` — Bonaire, Sint Eustatius and Saba: Eenmanszaak
    case npfb = "NPFB"
    /// `NPH3` — Czechia: Česká národní banka
    case nph3 = "NPH3"
    /// `NQCT` — France: (Autre) Établissement public administratif local
    case nqct = "NQCT"
    /// `NQHQ` — Czechia: Komoditní burza
    case nqhq = "NQHQ"
    /// `NR96` — United States of America — Michigan: L3C
    case nr96 = "NR96"
    /// `NRK9` — Russian Federation: Obshchestvennyye uchrezhdeniya
    case nrk9 = "NRK9"
    /// `NRTG` — Croatia: Podružnica
    case nrtg = "NRTG"
    /// `NSZI` — Mexico: Unidad agrícola industrial de la mujer
    case nszi = "NSZI"
    /// `NUL8` — Denmark: Kommanditselskab
    case nul8 = "NUL8"
    /// `NUMY` — France: SA coopérative artisanale à directoire
    case numy = "NUMY"
    /// `NUQ2` — United States of America — District of Columbia: credit union
    case nuq2 = "NUQ2"
    /// `NV7C` — Finland: Muu säätiö
    case nv7c = "NV7C"
    /// `NV9X` — United States of America — Louisiana: Domestic Real Estate Investment Trust
    case nv9x = "NV9X"
    /// `NVPY` — Lithuania: Privačių detektyvų bendrijos
    case nvpy = "NVPY"
    /// `NVXN` — Canada — Quebec: Personne morale sans but lucratif par Loi sur l'organisation territoriale municipale
    case nvxn = "NVXN"
    /// `NWJX` — China: qi ta（ si fa xing zheng ）
    case nwjx = "NWJX"
    /// `NWT1` — Sint Maarten: coöperatie
    case nwt1 = "NWT1"
    /// `NXHQ` — Uruguay: Establecimiento Comercial
    case nxhq = "NXHQ"
    /// `NY3P` — Malaysia — Labuan: Labuan Islamic Special Trust
    case ny3p = "NY3P"
    /// `NYUD` — United States of America — Vermont: Profit Corporation
    case nyud = "NYUD"
    /// `NZ85` — Russian Federation: Politicheskiye partii
    case nz85 = "NZ85"
    /// `NZAI` — Hungary: Külföldi székhelyű vállalkozás kereskedelmi képviselete
    case nzai = "NZAI"
    /// `O0EU` — Norway: Borettslag
    case o0eu = "O0EU"
    /// `O0OZ` — Thailand: Bris̄ʹạth mh̄āchn cảkạd
    case o0oz = "O0OZ"
    /// `O0Y2` — Slovakia: Nešpecifikovaná právna forma
    case o0y2 = "O0Y2"
    /// `O13B` — Canada — British Columbia: General partnership
    case o13b = "O13B"
    /// `O15N` — Bulgaria: Chuzhdestranno druzhestvo - yuridichesko litse
    case o15n = "O15N"
    /// `O15R` — Mexico: Sociedad anónima de capital variable, casa de cambio
    case o15r = "O15R"
    /// `O1EZ` — United States of America — West Virginia: Commercial Bank
    case o1ez = "O1EZ"
    /// `O1KO` — Russian Federation: Sel'skokhozyaystvennyye potrebitel'skiye sbytovyye (torgovyye) kooperativy
    case o1ko = "O1KO"
    /// `O1QI` — Sweden: Ömsesidigt försäkringsbolag
    case o1qi = "O1QI"
    /// `O256` — United States of America — Nebraska: Non Profit Foreign Corporation
    case o256 = "O256"
    /// `O2JM` — Puerto Rico: Youth Cooperative
    case o2jm = "O2JM"
    /// `O2M6` — Honduras: Sociedad Colectiva
    case o2m6 = "O2M6"
    /// `O35K` — United States of America — District of Columbia: General Cooperative Association
    case o35k = "O35K"
    /// `O4NK` — United States of America — Mississippi: Nonprofit Corporation
    case o4nk = "O4NK"
    /// `O4QG` — Puerto Rico: Limited Liability Partnership
    case o4qg = "O4QG"
    /// `O4X3` — Costa Rica: Asociación civil, Asociación deportiva, Federación
    case o4x3 = "O4X3"
    /// `O59C` — Belgium: Economisch samenwerkingsverband met een sociaal oogmerk
    case o59c = "O59C"
    /// `O5HQ` — Belgium: Burgerlijke vennootschap onder vorm van coöperatieve vennootschap met beperkte aansprakelijkheid
    case o5hq = "O5HQ"
    /// `O5PH` — United States of America — Kentucky: Public Benefit Corporation (profit)
    case o5ph = "O5PH"
    /// `O65B` — Austria: Europäische Gesellschaft (SE)
    case o65b = "O65B"
    /// `O6AU` — United States of America — California: credit union
    case o6au = "O6AU"
    /// `O6QP` — United States of America — Louisiana: Domestic Partnership
    case o6qp = "O6QP"
    /// `O786` — Mauritius: Société
    case o786 = "O786"
    /// `O7AL` — Argentina: Sociedad de Garantía Reciproca
    case o7al = "O7AL"
    /// `O7LB` — Norway: Europeisk samvirkeforetak
    case o7lb = "O7LB"
    /// `O7TC` — Slovakia: Spoločný podnik
    case o7tc = "O7TC"
    /// `O7XB` — Poland: spółka z ograniczoną odpowiedzialnością
    case o7xb = "O7XB"
    /// `O85W` — United States of America — Arizona: Limited Liability Company
    case o85w = "O85W"
    /// `O8XV` — Puerto Rico: Commercial Bank
    case o8xv = "O8XV"
    /// `O90R` — Canada — Ontario: Business corporations (which includes professional corporations)
    case o90r = "O90R"
    /// `O9MN` — United States of America — West Virginia: Business Trust
    case o9mn = "O9MN"
    /// `O9PW` — Czechia: Samosprávná stavovská organizace (profesní komora)
    case o9pw = "O9PW"
    /// `OA6N` — Chile: Sociedad Anónima
    case oa6n = "OA6N"
    /// `OAGA` — France: Régime vieillesse ne dépendant pas du régime général de la Sécurité Sociale
    case oaga = "OAGA"
    /// `OAPE` — Niger: Société unipersonnelle à responsabilité limitée
    case oape = "OAPE"
    /// `OB5J` — Brazil: Empresa Individual de Responsabilidade Limitada
    case ob5j = "OB5J"
    /// `OBFU` — Switzerland: Representative of an ownership in undivided shares
    case obfu = "OBFU"
    /// `OBTO` — Suriname: Commanditaire vennootschap (op aandelen) met een beherende vennoot
    case obto = "OBTO"
    /// `OCIS` — Russian Federation: Federal'nyye gosudarstvennyye unitarnyye predpriyatiya
    case ocis = "OCIS"
    /// `OCVJ` — United States of America — Maryland: Religious Corporation
    case ocvj = "OCVJ"
    /// `OE6T` — United States of America — Vermont: Limited Liability Company (LLC)
    case oe6t = "OE6T"
    /// `OESH` — Isle of Man: Public Limited by Guarantee and having a Share Capital (1931 Act)
    case oesh = "OESH"
    /// `OF3Q` — United States of America — Virginia: Non-deposit Trust Company
    case of3q = "OF3Q"
    /// `OFGO` — United States of America — Kentucky: Business Trust
    case ofgo = "OFGO"
    /// `OGHV` — United States of America — North Dakota: Professional Corporation
    case oghv = "OGHV"
    /// `OGSS` — United States of America — Texas: Nonprofit Corporation
    case ogss = "OGSS"
    /// `OH9O` — China: ji ceng gong hui
    case oh9o = "OH9O"
    /// `OI5N` — United States of America — New Hampshire: credit union
    case oi5n = "OI5N"
    /// `OII5` — Hungary: Egyéni ügyvéd
    case oii5 = "OII5"
    /// `OIQA` — France: Autre organisme professionnel
    case oiqa = "OIQA"
    /// `OJ9I` — Sweden: Försäkringsaktiebolag
    case oj9i = "OJ9I"
    /// `OJ9K` — United States of America — New Hampshire: Limited Liability Company
    case oj9k = "OJ9K"
    /// `OJBU` — United States of America — West Virginia: Unincorporated Non-Profit Association
    case ojbu = "OJBU"
    /// `OJDX` — United States of America — Oklahoma: Limited Liability Partnership
    case ojdx = "OJDX"
    /// `OK2B` — United States of America — Utah: credit union
    case ok2b = "OK2B"
    /// `OKAZ` — Slovakia: Obecný úrad
    case okaz = "OKAZ"
    /// `OL20` — Germany: Einzelunternehmen, eingetragener Kaufmann, eingetragene Kauffrau
    case ol20 = "OL20"
    /// `OLAI` — Aruba: Vereniging
    case olai = "OLAI"
    /// `OLJ1` — France: Syndicat mixte fermé
    case olj1 = "OLJ1"
    /// `OLTR` — Armenia: Bacʿ bazhnetirakan enkerutʿyun
    case oltr = "OLTR"
    /// `OMP4` — Viet Nam: công ty cổ phần
    case omp4 = "OMP4"
    /// `OMUD` — China: qi ta（ lv you ）
    case omud = "OMUD"
    /// `OMUP` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les clubs de récréation
    case omup = "OMUP"
    /// `OMX0` — Poland: spółka komandytowo-akcyjna
    case omx0 = "OMX0"
    /// `ONF1` — Austria: Kommanditgesellschaft
    case onf1 = "ONF1"
    /// `ONJ1` — United States of America — Louisiana: Domestic Low-Profit Limited Liability Company
    case onj1 = "ONJ1"
    /// `ONVA` — Türkiye: komandit şirket
    case onva = "ONVA"
    /// `OO14` — Malaysia — Labuan: Labuan Islamic Limited Liability Partnership
    case oo14 = "OO14"
    /// `OOX5` — United States of America — Montana: Benefit Corporation
    case oox5 = "OOX5"
    /// `OPDJ` — Slovenia: komanditna družba
    case opdj = "OPDJ"
    /// `OPLQ` — Russian Federation: Predstavitel'stva yuridicheskikh lits
    case oplq = "OPLQ"
    /// `OPRT` — Canada — Manitoba: Limited Partnership
    case oprt = "OPRT"
    /// `OQ8C` — Italy: Fondo Pensione
    case oq8c = "OQ8C"
    /// `OQWO` — Croatia: Društvo s ograničenom odgovornošću (jednostavno društvo s ograničenom odgovornošću)
    case oqwo = "OQWO"
    /// `OR18` — Qatar: Sharikat Altadamun
    case or18 = "OR18"
    /// `OSBR` — Cayman Islands: company limited by shares
    case osbr = "OSBR"
    /// `OSE2` — United Arab Emirates — Abu Dhabi: Private Company Limited by Shares
    case ose2 = "OSE2"
    /// `OSLZ` — France: Société coopérative de banque populaire
    case oslz = "OSLZ"
    /// `OT3Y` — Guernsey — Guernsey: company limited by guarantee
    case ot3y = "OT3Y"
    /// `OTC0` — Tuvalu: co-operative society
    case otc0 = "OTC0"
    /// `OTE3` — Saint Kitts and Nevis — Nevis: exempt limited partnership
    case ote3 = "OTE3"
    /// `OTU7` — Canada — British Columbia: Extraprovincial non-share corporation
    case otu7 = "OTU7"
    /// `OV32` — Italy: Società A Responsabilità Limitata
    case ov32 = "OV32"
    /// `OVBT` — United States of America — Alaska: Professional Corporation
    case ovbt = "OVBT"
    /// `OVCL` — United States of America — North Dakota: Commercial Bank
    case ovcl = "OVCL"
    /// `OVKW` — Czechia: Vysoká škola (veřejná, státní)
    case ovkw = "OVKW"
    /// `OVLN` — Russian Federation: Unitarnyye predpriyatiya, osnovannyye na prave operativnogo upravleniya (kazennyye predpriyatiya)
    case ovln = "OVLN"
    /// `OWR6` — United States of America — Colorado: For-Profit Corporation
    case owr6 = "OWR6"
    /// `OWUN` — France: Communauté de communes
    case owun = "OWUN"
    /// `OXAZ` — United States of America — Minnesota: Insurance Corporations
    case oxaz = "OXAZ"
    /// `OXLO` — Finland: Valtion liikelaitos
    case oxlo = "OXLO"
    /// `OXUC` — Portugal: Sociedade em Comandita
    case oxuc = "OXUC"
    /// `OYDA` — India: Pension Fund
    case oyda = "OYDA"
    /// `OZ3O` — Mexico: Sociedad anónima promotora de inversión bursátil
    case oz3o = "OZ3O"
    /// `OZDY` — Kosovo: Dega e Shoqërisë së Huaj Tregtare në Kosovë
    case ozdy = "OZDY"
    /// `P0LR` — Malaysia — Labuan: Labuan Company (Unlimited)
    case p0lr = "P0LR"
    /// `P0TZ` — Malaysia — Labuan: Labuan Limited Liability Partnerships
    case p0tz = "P0TZ"
    /// `P12B` — Cyprus: Tameia Pronoias/ Syntaxeos
    case p12b = "P12B"
    /// `P1L1` — Poland: główny oddział zagranicznego zakładu ubezpieczeń
    case p1l1 = "P1L1"
    /// `P1VP` — United States of America — Maine: Commercial Bank
    case p1vp = "P1VP"
    /// `P24O` — United States of America — Arizona: Business Trust
    case p24o = "P24O"
    /// `P28E` — Mexico: Sociedad anónima de capital variable, sociedad financiera de objeto múltiple, entidad regulada
    case p28e = "P28E"
    /// `P2B9` — Korea (Republic of): Ilban beobin jaedan
    case p2b9 = "P2B9"
    /// `P2R9` — New Zealand: Limited Liability Company
    case p2r9 = "P2R9"
    /// `P3J5` — France: Centre communal d'action sociale
    case p3j5 = "P3J5"
    /// `P3LZ` — United States of America — New Hampshire: Nonprofit Corporation
    case p3lz = "P3LZ"
    /// `P3YF` — Czechia: Pobočná odborová organizace a organizace zaměstnavatelů
    case p3yf = "P3YF"
    /// `P3YJ` — Seychelles: Unlimited Company
    case p3yj = "P3YJ"
    /// `P418` — Italy: Società Per Azioni
    case p418 = "P418"
    /// `P53M` — Peru: Cooperativas
    case p53m = "P53M"
    /// `P5JT` — Cyprus: Ευρωπαϊκός Όμιλος Οικονομικού Σκοπού
    case p5jt = "P5JT"
    /// `P5S3` — Portugal: Pessoa Coletiva de Direito Público
    case p5s3 = "P5S3"
    /// `P65N` — Aruba: Naamloze vennootschap
    case p65n = "P65N"
    /// `P6XJ` — Slovakia: Podnik alebo hospodárske zariadenie politickej strany
    case p6xj = "P6XJ"
    /// `P714` — France: Association fonciére de remembrement
    case p714 = "P714"
    /// `P7RH` — United States of America — New Jersey: Limited Liability Company
    case p7rh = "P7RH"
    /// `P7VS` — Mexico: Sociedad anónima institución de fianzas
    case p7vs = "P7VS"
    /// `P864` — Costa Rica: Sociedad de Responsabilidad Limitada o Sociedad Limitada
    case p864 = "P864"
    /// `P8D7` — Mexico: Sociedad anónima institución de banca múltiple
    case p8d7 = "P8D7"
    /// `P91Q` — United States of America — Indiana: Commercial Bank
    case p91q = "P91Q"
    /// `P9CF` — Russian Federation: Individual'nyye predprinimateli
    case p9cf = "P9CF"
    /// `P9F2` — Hungary: Korlátolt felelősségű társaság
    case p9f2 = "P9F2"
    /// `PA5X` — Russian Federation: Assotsiatsii (soyuzy) ekonomicheskogo vzaimodeystviya sub"yektov Rossiyskoy Federatsii
    case pa5x = "PA5X"
    /// `PAVK` — Armenia: Hasarakakan Kazmakepʿutʿyun
    case pavk = "PAVK"
    /// `PB3V` — Norway: Konkursbo
    case pb3v = "PB3V"
    /// `PB7W` — Bahamas: Company Limited by Guarantee
    case pb7w = "PB7W"
    /// `PBQH` — Malaysia — Labuan: Labuan Trust
    case pbqh = "PBQH"
    /// `PC5A` — Brazil: Sociedade Cooperativa
    case pc5a = "PC5A"
    /// `PCO0` — Canada — Ontario: Limited Liability Partnership
    case pco0 = "PCO0"
    /// `PCRJ` — Aruba: Cooperatieve vereniging
    case pcrj = "PCRJ"
    /// `PDLV` — United States of America — Colorado: Non-Profit Corporation
    case pdlv = "PDLV"
    /// `PDNU` — Germany: eingetragene Gesellschaft bürgerlichen Rechts
    case pdnu = "PDNU"
    /// `PDQ0` — Sweden: Kooperativ hyresrättsförening
    case pdq0 = "PDQ0"
    /// `PDQC` — Israel: Chevra Pratit Ba'am
    case pdqc = "PDQC"
    /// `PDYW` — Russian Federation: Sel'skokhozyaystvennyye potrebitel'skiye sadovodcheskiye kooperativy
    case pdyw = "PDYW"
    /// `PE9A` — Romania: Federatja
    case pe9a = "PE9A"
    /// `PESN` — France: Indivision avec personne morale
    case pesn = "PESN"
    /// `PFE5` — Czechia: Městská část, městský obvod
    case pfe5 = "PFE5"
    /// `PFPW` — Canada — Prince Edward Island: private limited corporation
    case pfpw = "PFPW"
    /// `PFY0` — Jamaica: partnership
    case pfy0 = "PFY0"
    /// `PG49` — Mexico: Confederación de sindicatos
    case pg49 = "PG49"
    /// `PH5T` — Ghana: Public Unlimited Company
    case ph5t = "PH5T"
    /// `PHMS` — Italy: Cooperativa Sociale
    case phms = "PHMS"
    /// `PICJ` — Bahamas: Non-Profit Company
    case picj = "PICJ"
    /// `PIDC` — Portugal: Empresa Municipal
    case pidc = "PIDC"
    /// `PIDT` — Canada — Northwest Territories: NT corporation
    case pidt = "PIDT"
    /// `PIL2` — Monaco: Société en Commandite par Actions
    case pil2 = "PIL2"
    /// `PIOI` — Denmark: Erhvervsdrivende fond
    case pioi = "PIOI"
    /// `PITR` — Azerbaijan: Hüquqi şəxslərin ittifaqları
    case pitr = "PITR"
    /// `PJ10` — United States of America — New York: Business Corporation
    case pj10 = "PJ10"
    /// `PJ29` — Bolivia (Plurinational State of): Sociedad en Comandita por Acciones.
    case pj29 = "PJ29"
    /// `PJRZ` — Russian Federation: Notarial'nyye palaty
    case pjrz = "PJRZ"
    /// `PKAN` — Belgium: fonds voor bestaanszekerheid
    case pkan = "PKAN"
    /// `PKBG` — Nigeria: Public company limited by shares
    case pkbg = "PKBG"
    /// `PKOR` — Tuvalu: public company
    case pkor = "PKOR"
    /// `PKRY` — Peru: Socieda Anónima Abierta
    case pkry = "PKRY"
    /// `PKZ2` — Virgin Islands (U.S.): Domestic Non-Profit Corporation
    case pkz2 = "PKZ2"
    /// `PL6V` — France: Établissement public local culturel
    case pl6v = "PL6V"
    /// `PLMC` — United States of America — Virginia: Nonstock Corporation
    case plmc = "PLMC"
    /// `PLZ6` — Argentina: Sociedad en Comandita por Acciones
    case plz6 = "PLZ6"
    /// `PM3Y` — United States of America — Washington: Commercial Bank
    case pm3y = "PM3Y"
    /// `PM48` — Bolivia (Plurinational State of): Sociedad de Responsabilidad Limitada.
    case pm48 = "PM48"
    /// `PMJW` — Denmark: Andelsselskab
    case pmjw = "PMJW"
    /// `PMOF` — Estonia: Loomeliit
    case pmof = "PMOF"
    /// `PNF3` — United States of America — Montana: Corporate Credit Union
    case pnf3 = "PNF3"
    /// `PNSZ` — United States of America — South Carolina: Benefit Corporation
    case pnsz = "PNSZ"
    /// `PNX6` — United Arab Emirates — Abu Dhabi: Incorporated Cell Company
    case pnx6 = "PNX6"
    /// `PNZI` — United States of America — Vermont: Non-profit Corporation
    case pnzi = "PNZI"
    /// `POG3` — United States of America — New Mexico: Savings Bank
    case pog3 = "POG3"
    /// `PPMX` — Finland: Avoin yhtiö
    case ppmx = "PPMX"
    /// `PQHL` — Australia: No Liability Company
    case pqhl = "PQHL"
    /// `PQJE` — Czechia: Mezinárodní nevládní organizace
    case pqje = "PQJE"
    /// `PQXK` — United States of America — Oklahoma: Limited Partnership
    case pqxk = "PQXK"
    /// `PRTB` — Estonia: Mittetulundusühing
    case prtb = "PRTB"
    /// `PT6C` — Aruba: Eenmanszaak
    case pt6c = "PT6C"
    /// `PT6M` — Saudi Arabia: sharikat 'amwal
    case pt6m = "PT6M"
    /// `PUJR` — United States of America — Wyoming: Nonprofit Corporation
    case pujr = "PUJR"
    /// `PVT3` — Belgium: Eenpersoons besloten vennootschap met beperkte aansprakelijkheid met een sociaal oogmerk
    case pvt3 = "PVT3"
    /// `PW3Y` — Bulgaria: Aktsionerno druzhestvo sas spetsialna investitsionna tsel
    case pw3y = "PW3Y"
    /// `PWKL` — France: Congrégation
    case pwkl = "PWKL"
    /// `PWX8` — Malaysia — Labuan: Labuan Islamic Foundation
    case pwx8 = "PWX8"
    /// `PX29` — Slovakia: Iná právnicka osoba
    case px29 = "PX29"
    /// `PXGA` — United States of America — West Virginia: Corporation (non-profit)
    case pxga = "PXGA"
    /// `PXNI` — United States of America — South Dakota: Savings Bank
    case pxni = "PXNI"
    /// `PXPK` — Canada — Alberta: private recreation company
    case pxpk = "PXPK"
    /// `PY5Y` — Panama: Sociedad en Comandita por acciones
    case py5y = "PY5Y"
    /// `PZ6Y` — Denmark: Andelsselskab med begrænset ansvar
    case pz6y = "PZ6Y"
    /// `PZCW` — Kuwait: Wasiat alshirakat min qibal sharikat al'ashum
    case pzcw = "PZCW"
    /// `PZLG` — France: Métropole
    case pzlg = "PZLG"
    /// `PZR6` — United States of America — California: For-Profit Corporation Professional
    case pzr6 = "PZR6"
    /// `PZV3` — Liechtenstein: Gemeinderschaft
    case pzv3 = "PZV3"
    /// `Q0M5` — United Kingdom of Great Britain and Northern Ireland: Unregistered Company
    case q0m5 = "Q0M5"
    /// `Q0Q1` — Norway: Selskap med begrenset ansvar
    case q0q1 = "Q0Q1"
    /// `Q17J` — United States of America — Nebraska: Savings Bank
    case q17j = "Q17J"
    /// `Q1J0` — Chile: Sociedad Contractual Minera
    case q1j0 = "Q1J0"
    /// `Q1N4` — United States of America — Utah: Limited Partnership
    case q1n4 = "Q1N4"
    /// `Q22D` — Kosovo: Shoqëri aksionare
    case q22d = "Q22D"
    /// `Q25I` — Czechia: Odborová organizace a organizace zaměstnavatelů
    case q25i = "Q25I"
    /// `Q28E` — United States of America — Virginia: Commercial Bank
    case q28e = "Q28E"
    /// `Q2A1` — France: Société commerciale étrangère immatriculée au RCS
    case q2a1 = "Q2A1"
    /// `Q2EV` — Slovenia: Evropsko gospodarsko interesno združenje
    case q2ev = "Q2EV"
    /// `Q367` — Virgin Islands (U.S.): Foreign Limited Liability Partnership
    case q367 = "Q367"
    /// `Q3NF` — United States of America — Arkansas: credit union
    case q3nf = "Q3NF"
    /// `Q49K` — Guernsey — Guernsey: Limited Liability Partnership
    case q49k = "Q49K"
    /// `Q4A3` — Lithuania: Prekybos, pramonės ir amatų rūmai
    case q4a3 = "Q4A3"
    /// `Q4BE` — New Zealand: government entity
    case q4be = "Q4BE"
    /// `Q4F9` — United States of America — North Carolina: Mutual Association
    case q4f9 = "Q4F9"
    /// `Q4J1` — Costa Rica: Mutual de Ahorro y Préstamo
    case q4j1 = "Q4J1"
    /// `Q62B` — Virgin Islands (British): unlimited company that is authorised to issue shares
    case q62b = "Q62B"
    /// `Q634` — France: Indivision entre personnes physiques
    case q634 = "Q634"
    /// `Q6EM` — United States of America — North Carolina: L3C
    case q6em = "Q6EM"
    /// `Q6K2` — United States of America — Montana: Savings and Loan Association
    case q6k2 = "Q6K2"
    /// `Q7WY` — Mexico: Sociedad anónima de capital variable, almacén general de depósito, organización auxiliar del crédito
    case q7wy = "Q7WY"
    /// `Q82Q` — Australia: Unlimited Proprietary Company
    case q82q = "Q82Q"
    /// `Q89X` — Romania: Sindicatul
    case q89x = "Q89X"
    /// `Q8E2` — France: Société en nom collectif coopérative
    case q8e2 = "Q8E2"
    /// `Q8NY` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les syndicats professionnels
    case q8ny = "Q8NY"
    /// `Q8RV` — United States of America — Louisiana: Foreign Benefit Corporation
    case q8rv = "Q8RV"
    /// `Q8UI` — Lithuania: Nuolatinės arbitražo institucijos
    case q8ui = "Q8UI"
    /// `Q9FA` — Russian Federation: Mezhpravitel'stvennyye mezhdunarodnyye organizatsii
    case q9fa = "Q9FA"
    /// `Q9VK` — Seychelles: Protected Cell Company
    case q9vk = "Q9VK"
    /// `Q9Y1` — Barbados: international business company
    case q9y1 = "Q9Y1"
    /// `QA1T` — United States of America — Arizona: savings bank
    case qa1t = "QA1T"
    /// `QACV` — Slovakia: Spotrebné družstvo
    case qacv = "QACV"
    /// `QAEW` — Malaysia: Society / Association
    case qaew = "QAEW"
    /// `QAUY` — Mexico: Sociedad de producción rural de responsabilidad limitada
    case qauy = "QAUY"
    /// `QB0A` — United States of America — Montana: Business Trust
    case qb0a = "QB0A"
    /// `QB2W` — Canada — Quebec: Coopérative
    case qb2w = "QB2W"
    /// `QCA0` — Greece: Idiotiki kefaleouhiki Eteria
    case qca0 = "QCA0"
    /// `QCJ9` — Slovakia: Spoločnosť komanditná na akcie
    case qcj9 = "QCJ9"
    /// `QCRH` — Russian Federation: Khozyaystvennyye obshchestva
    case qcrh = "QCRH"
    /// `QCSO` — India: Multistate Cooperative Society
    case qcso = "QCSO"
    /// `QCWO` — France: Groupement agricole d'exploitation en commun (GAEC)
    case qcwo = "QCWO"
    /// `QDZK` — United States of America — West Virginia: Cooperative Association
    case qdzk = "QDZK"
    /// `QEEJ` — United States of America — Arizona: Professional Limited Liability Company
    case qeej = "QEEJ"
    /// `QF4W` — United States of America — Delaware: Partnership
    case qf4w = "QF4W"
    /// `QF8K` — New Zealand: Sole Trader
    case qf8k = "QF8K"
    /// `QFGM` — Russian Federation: Potrebitel'skiye kooperativy
    case qfgm = "QFGM"
    /// `QFLH` — Gibraltar: Private Limited by Guarantee
    case qflh = "QFLH"
    /// `QFXD` — Portugal: Pessoa Coletiva Internacional
    case qfxd = "QFXD"
    /// `QFXX` — Thailand: H̄̂āngh̄ûns̄̀wns̄āmạỵ cdthabeīyn
    case qfxx = "QFXX"
    /// `QFYC` — Chile: Empresa Individual de Responsabilidad Limitada
    case qfyc = "QFYC"
    /// `QG9Y` — Lithuania: Sodininkų bendrijos
    case qg9y = "QG9Y"
    /// `QGSA` — Singapore: Unlimited Public Company
    case qgsa = "QGSA"
    /// `QHW1` — Brazil: Sociedade Limitada
    case qhw1 = "QHW1"
    /// `QIEL` — Czechia: Kraj
    case qiel = "QIEL"
    /// `QJ0F` — Czechia: Ústav
    case qj0f = "QJ0F"
    /// `QJ1G` — United States of America — Hawaii: Industrial Bank
    case qj1g = "QJ1G"
    /// `QJ3A` — Canada — New Brunswick: gérant de projet
    case qj3a = "QJ3A"
    /// `QJ9F` — United States of America — Tennessee: For-Profit Corporation
    case qj9f = "QJ9F"
    /// `QJBA` — Guernsey — Guernsey: incorporated cell company
    case qjba = "QJBA"
    /// `QJVN` — United Arab Emirates — Ras Al Khaimah: Company Limited By Shares
    case qjvn = "QJVN"
    /// `QJWK` — Czechia: Rada pro veřejný dohled nad auditem
    case qjwk = "QJWK"
    /// `QK1F` — Botswana: Public Limited Liability Companies
    case qk1f = "QK1F"
    /// `QK2J` — United States of America — Oregon: Limited Liability Company
    case qk2j = "QK2J"
    /// `QKFU` — Russian Federation: Uchrezhdeniya, sozdannyye munitsipal'nym obrazovaniyem (munitsipal'nyye uchrezhdeniya)
    case qkfu = "QKFU"
    /// `QLWR` — United States of America — Idaho: Limited Liability Partnership
    case qlwr = "QLWR"
    /// `QM7Z` — Mexico: Sociedad anónima de capital variable, casa de bolsa
    case qm7z = "QM7Z"
    /// `QMEH` — Russian Federation: Obshchestva vzaimnogo strakhovaniya
    case qmeh = "QMEH"
    /// `QMI2` — United States of America — Rhode Island: Benefit Corporation
    case qmi2 = "QMI2"
    /// `QMUM` — Spain: Fondos de Inversion Inmobiliaria
    case qmum = "QMUM"
    /// `QN8Y` — Canada — Northwest Territories: NT Professional Corporation authorized under the Professional Corporations Act
    case qn8y = "QN8Y"
    /// `QNSC` — Canada — New Brunswick: foreign resident corporation
    case qnsc = "QNSC"
    /// `QNWW` — Greece: Evropaikos Ómilos Oikonomikou Skopou
    case qnww = "QNWW"
    /// `QO9Q` — Uruguay: Cooperativa
    case qo9q = "QO9Q"
    /// `QODJ` — Canada — British Columbia: Extraprovincial limited liability partnership
    case qodj = "QODJ"
    /// `QOO6` — Malaysia — Labuan: Labuan Protected Cell Company
    case qoo6 = "QOO6"
    /// `QP3O` — Fiji: Partnership
    case qp3o = "QP3O"
    /// `QPC9` — Suriname: Vereniging
    case qpc9 = "QPC9"
    /// `QQ49` — Czechia: Zdravotní pojišťovna (mimo VZP)
    case qq49 = "QQ49"
    /// `QQS1` — Russian Federation: Organizatsionno-pravovyye formy mezhdunarodnykh organizatsiy, osushchestvlyayushchikh deyatel'nost' na territorii rossiyskoy federatsii
    case qqs1 = "QQS1"
    /// `QQWG` — Peru: Sociedad Civil
    case qqwg = "QQWG"
    /// `QR25` — Pakistan: Company Limited by Guarantee (without share capital)
    case qr25 = "QR25"
    /// `QR4F` — Canada — Northwest Territories: business name/sole proprietorship
    case qr4f = "QR4F"
    /// `QR4Y` — United States of America — Wyoming: Limited Partnership
    case qr4y = "QR4Y"
    /// `QR5I` — United States of America — Indiana: Savings Bank
    case qr5i = "QR5I"
    /// `QRXD` — Lithuania: Europos teritorinio bendradarbiavimo grupės
    case qrxd = "QRXD"
    /// `QRZJ` — Italy: Società Cooperativa
    case qrzj = "QRZJ"
    /// `QS6A` — Czechia: Nadační fond
    case qs6a = "QS6A"
    /// `QSHG` — United States of America — Missouri: Non-deposit Trust Company
    case qshg = "QSHG"
    /// `QSI2` — Switzerland: Cooperative
    case qsi2 = "QSI2"
    /// `QSJ1` — United States of America — Wisconsin: Savings Bank
    case qsj1 = "QSJ1"
    /// `QSKT` — United States of America — Florida: credit union
    case qskt = "QSKT"
    /// `QSXT` — Russian Federation: Notariusy, zanimayushchiyesya chastnoy praktikoy
    case qsxt = "QSXT"
    /// `QSYQ` — Greece: Somatia - Idrimata
    case qsyq = "QSYQ"
    /// `QU16` — Korea (Republic of): GukGa(JeoungBu)
    case qu16 = "QU16"
    /// `QU3G` — France: SA coopérative de production de HLM à conseil d'administration
    case qu3g = "QU3G"
    /// `QUB4` — France: Organisme consulaire
    case qub4 = "QUB4"
    /// `QUC7` — Myanmar: a hcu aarr hpyint tar 0 n k ant saathtarr saeet a myarrnhaint saatsine saeet kumpane
    case quc7 = "QUC7"
    /// `QUEA` — Slovenia: Tuja pravna oseba po ZZK-1
    case quea = "QUEA"
    /// `QUJ5` — United States of America — Arizona: Benefit Corporation
    case quj5 = "QUJ5"
    /// `QUMQ` — Russian Federation: Unitarnyye predpriyatiya, osnovannyye na prave khozyaystvennogo vedeniya
    case qumq = "QUMQ"
    /// `QUNR` — United States of America — Alabama: Commercial Bank
    case qunr = "QUNR"
    /// `QUX1` — Poland: otwarty fundusz emerytalny
    case qux1 = "QUX1"
    /// `QV2O` — France: Société d'exercice libéral à forme anonyme à directoire
    case qv2o = "QV2O"
    /// `QVPB` — France: Société anonyme
    case qvpb = "QVPB"
    /// `QW8S` — Slovenia: Samostojni podjetnik posameznik
    case qw8s = "QW8S"
    /// `QWFD` — Samoa: Overseas company
    case qwfd = "QWFD"
    /// `QWPR` — United States of America — Kentucky: Corporation (profit)
    case qwpr = "QWPR"
    /// `QWWY` — Suriname: Commanditaire vennootschap (op aandelen) met meer dan een beherende vennoot
    case qwwy = "QWWY"
    /// `QX9N` — United States of America — Massachusetts: Domestic Benefit Corporation (including professional corporations)
    case qx9n = "QX9N"
    /// `QY7A` — United States of America — Illinois: Commercial Bank
    case qy7a = "QY7A"
    /// `QYCU` — Viet Nam: công ty hợp danh
    case qycu = "QYCU"
    /// `QYFI` — United States of America — Rhode Island: credit union
    case qyfi = "QYFI"
    /// `QYL4` — Poland: placówki systemu oświaty
    case qyl4 = "QYL4"
    /// `QYQ5` — Slovenia: Družbeno podjetje
    case qyq5 = "QYQ5"
    /// `QYV5` — Hungary: Költségvetési szerv
    case qyv5 = "QYV5"
    /// `QYZD` — Saint Vincent and the Grenadines: sole proprietorship
    case qyzd = "QYZD"
    /// `QZ3L` — Germany: eingetragener Verein
    case qz3l = "QZ3L"
    /// `QZ84` — Qatar: Sharikat Almusahama Alaamah
    case qz84 = "QZ84"
    /// `QZAU` — Bulgaria: Ednolichno aktsionerno druzhestvo sas spetsialna investitsionna tsel
    case qzau = "QZAU"
    /// `QZB4` — Mexico: Sociedad anónima bursátil de capital variable, bolsa de valores
    case qzb4 = "QZB4"
    /// `QZCG` — Kuwait: Sharika That Almasuliah Almahduda
    case qzcg = "QZCG"
    /// `QZDU` — United States of America: National Trust Bank
    case qzdu = "QZDU"
    /// `QZEN` — Kosovo: Biznes Individual
    case qzen = "QZEN"
    /// `QZIS` — Belgium: Openbare instelling
    case qzis = "QZIS"
    /// `QZMH` — Canada — Prince Edward Island: private unlimited liability corporation
    case qzmh = "QZMH"
    /// `QZP3` — Israel: havra partit lele hagbala
    case qzp3 = "QZP3"
    /// `QZTT` — Isle of Man: Private Limited by shares (1931 Act)
    case qztt = "QZTT"
    /// `R0B6` — France: Groupement d'intérêt économique (GIE)
    case r0b6 = "R0B6"
    /// `R0BI` — United States of America — Indiana: For-Profit Corporation
    case r0bi = "R0BI"
    /// `R0KX` — Canada — Alberta: private act corporation
    case r0kx = "R0KX"
    /// `R155` — South Africa: State Owned Company
    case r155 = "R155"
    /// `R18M` — United States of America — Oregon: District Improvement Company
    case r18m = "R18M"
    /// `R1JO` — France: Communauté urbaine
    case r1jo = "R1JO"
    /// `R22H` — United States of America — Nebraska: Registered Agent Designation
    case r22h = "R22H"
    /// `R27J` — United States of America — West Virginia: Non-deposit Trust Company
    case r27j = "R27J"
    /// `R2L8` — Spain: Sociedad Anonima Laboral
    case r2l8 = "R2L8"
    /// `R2PI` — United States of America — Maryland: General Partnership
    case r2pi = "R2PI"
    /// `R2XE` — Czechia: Organizační jednotka mezinárodní nevládní organizace
    case r2xe = "R2XE"
    /// `R2YL` — United Arab Emirates — Abu Dhabi: Private Company Limited by Guarantee
    case r2yl = "R2YL"
    /// `R39F` — Finland: Kauppakamari
    case r39f = "R39F"
    /// `R3J6` — United States of America — Nebraska: Foreign General Apartnership
    case r3j6 = "R3J6"
    /// `R3O0` — China: qi ta（ gong hui ）
    case r3o0 = "R3O0"
    /// `R4KK` — Australia: Public Company limited by shares
    case r4kk = "R4KK"
    /// `R4LR` — Japan: kuninokikan
    case r4lr = "R4LR"
    /// `R59A` — France: Société en commandite par actions coopérative
    case r59a = "R59A"
    /// `R59V` — South Africa: External Company
    case r59v = "R59V"
    /// `R5UT` — Türkiye: limited şirket
    case r5ut = "R5UT"
    /// `R5ZC` — Finland: Eurooppaosuuskunnan kiinteä toimipaikka
    case r5zc = "R5ZC"
    /// `R6BI` — Suriname: Eenmanszaak
    case r6bi = "R6BI"
    /// `R6UB` — Finland: Verotusyhtymä
    case r6ub = "R6UB"
    /// `R6UT` — Spain: Sociedad Limitada Unipersonal
    case r6ut = "R6UT"
    /// `R6WQ` — France: Groupement de coopération sanitaire à gestion publique
    case r6wq = "R6WQ"
    /// `R71C` — Norway: Sparebank
    case r71c = "R71C"
    /// `R71T` — Russian Federation: Aktsionernyye obshchestva
    case r71t = "R71T"
    /// `R7JP` — United States of America — Nebraska: Non Profit (Dom) Corporation
    case r7jp = "R7JP"
    /// `R7QO` — United States of America — Massachusetts: Non-Profit Corporation
    case r7qo = "R7QO"
    /// `R85P` — Belgium: Naamloze vennootschap
    case r85p = "R85P"
    /// `R8O9` — United States of America — Vermont: Low Profit LLC
    case r8o9 = "R8O9"
    /// `R8PY` — Mexico: Sociedad anónima de capital variable, bolsa de valores
    case r8py = "R8PY"
    /// `R8SH` — United States of America — Missouri: Not For Profit Corporation
    case r8sh = "R8SH"
    /// `R997` — Singapore: Unlimited Exempt Private Company
    case r997 = "R997"
    /// `R9GT` — Slovakia: Samostatná drobná prevádzkareň obecného úradu
    case r9gt = "R9GT"
    /// `R9OY` — United States of America — Pennsylvania: Commercial Bank
    case r9oy = "R9OY"
    /// `R9TC` — Switzerland: Foreign enterprise
    case r9tc = "R9TC"
    /// `RA5B` — Puerto Rico: International Banking Center (LLC)
    case ra5b = "RA5B"
    /// `RAX7` — Slovenia: Zadruga z omejeno odgovornostjo
    case rax7 = "RAX7"
    /// `RBBY` — Canada — Manitoba: Partnership
    case rbby = "RBBY"
    /// `RBGQ` — Czechia: Evropské hospodářské zájmové sdružení
    case rbgq = "RBGQ"
    /// `RBHP` — Poland: fundusz inwestycyjny
    case rbhp = "RBHP"
    /// `RC3D` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les villages nordiques et l’Administration régionale Kativik
    case rc3d = "RC3D"
    /// `RC44` — United States of America — Utah: Industrial Bank
    case rc44 = "RC44"
    /// `RC5L` — United States of America — West Virginia: Limited Liability Company
    case rc5l = "RC5L"
    /// `RCE0` — Mexico: Sociedad anónima de capital variable, fondo de inversión de renta variable
    case rce0 = "RCE0"
    /// `RCGI` — Niger: Société Anonyme Unipersonnelle
    case rcgi = "RCGI"
    /// `RCJS` — Mexico: Corporaciones de carácter público reconocidos por la legislación mexicana
    case rcjs = "RCJS"
    /// `RCNI` — United States of America — New Hampshire: Limited Liability Partnership
    case rcni = "RCNI"
    /// `RCPI` — Cyprus: Idiotiki Etaireia
    case rcpi = "RCPI"
    /// `RD0Z` — France: Fiducie
    case rd0z = "RD0Z"
    /// `RD1T` — United States of America — Tennessee: Nonprofit Corporation
    case rd1t = "RD1T"
    /// `RDD3` — Argentina: Asociacion civil
    case rdd3 = "RDD3"
    /// `RDQZ` — United States of America — Wyoming: Statutory Trust
    case rdqz = "RDQZ"
    /// `RDZR` — Tanzania: Sole proprietorship
    case rdzr = "RDZR"
    /// `REUP` — Aruba: Aruba vrijgestelde vennootschap
    case reup = "REUP"
    /// `REVF` — Saint Vincent and the Grenadines: international business company - company limited by guarantee authorised to issue shares
    case revf = "REVF"
    /// `RF3D` — Slovakia: Združenie (zväz, spolok, spoločnosť, klub ai.)
    case rf3d = "RF3D"
    /// `RF41` — Honduras: Sociedad en Comandita Simple
    case rf41 = "RF41"
    /// `RFJT` — Peru: Sociedad en Comandita Simple
    case rfjt = "RFJT"
    /// `RFWH` — France: Groupement foncier et rural
    case rfwh = "RFWH"
    /// `RG0W` — Nigeria: Unlimited company
    case rg0w = "RG0W"
    /// `RG9Z` — Slovenia: Societas Cooperativa Europaea
    case rg9z = "RG9Z"
    /// `RH6N` — United States of America — Nebraska: Domestic Corporation
    case rh6n = "RH6N"
    /// `RHFQ` — Czechia: Družstevní podnik (s 1 zakladatelem)
    case rhfq = "RHFQ"
    /// `RHVP` — Canada — Alberta: private act non-profit corp
    case rhvp = "RHVP"
    /// `RIYP` — Nigeria: Company limited by guarantee
    case riyp = "RIYP"
    /// `RJUK` — Russian Federation: Sadovodcheskiye, ogorodnicheskiye ili dachnyye nekommercheskiye tovarishchestva
    case rjuk = "RJUK"
    /// `RJYT` — Mauritius: Trade Union
    case rjyt = "RJYT"
    /// `RK88` — Guatemala: Sociedad de Responsabilidad Limitada
    case rk88 = "RK88"
    /// `RKLI` — Mexico: Sociedad anónima, sociedad de información crediticia
    case rkli = "RKLI"
    /// `RKYF` — Pakistan: Public Limited Company (unlisted)
    case rkyf = "RKYF"
    /// `RLB2` — United Arab Emirates: General Partnership
    case rlb2 = "RLB2"
    /// `RLJO` — Sweden: Europeisk ekonomisk intressegruppering
    case rljo = "RLJO"
    /// `RLSQ` — Türkiye: vakif
    case rlsq = "RLSQ"
    /// `RN1W` — Qatar: Sharikat Altawsia Blas'hoom
    case rn1w = "RN1W"
    /// `RN4K` — Canada — Alberta: Alberta limited partnership
    case rn4k = "RN4K"
    /// `RNJZ` — France: Société de Participations Financières de Profession Libérale Société en commandite par actions (SPFPL SCA)
    case rnjz = "RNJZ"
    /// `RNQ0` — Chile: Organización Comunitaria
    case rnq0 = "RNQ0"
    /// `RNSB` — France: Société étrangère non immatriculée au RCS
    case rnsb = "RNSB"
    /// `RP0E` — Czechia: Obecní podnik
    case rp0e = "RP0E"
    /// `RPED` — United States of America — Pennsylvania: Body Politic and Corporate
    case rped = "RPED"
    /// `RPGT` — Canada — Quebec: Société par actions constitué par Loi sur les compagnies de télégraphe et de téléphone
    case rpgt = "RPGT"
    /// `RQDD` — Mexico: Sociedad anónima bursátil, sociedad financiera de objeto múltiple, entidad regulada
    case rqdd = "RQDD"
    /// `RQIC` — Canada — Quebec: Société en commandite
    case rqic = "RQIC"
    /// `RR3L` — Mexico: Sociedad anónima promotora de inversión bursátil de capital variable
    case rr3l = "RR3L"
    /// `RR8G` — United States of America — Washington: Non-profit Corporation
    case rr8g = "RR8G"
    /// `RRXD` — United States of America — Washington: Limited Liability Partnership
    case rrxd = "RRXD"
    /// `RS5D` — Tuvalu: association
    case rs5d = "RS5D"
    /// `RSWJ` — United States of America — Arizona: General Partnership
    case rswj = "RSWJ"
    /// `RT39` — France: Société créée de fait avec personne morale
    case rt39 = "RT39"
    /// `RT6Y` — France: Agent commercial
    case rt6y = "RT6Y"
    /// `RTVE` — Mauritius: Limited Liability Partnership
    case rtve = "RTVE"
    /// `RU6X` — United States of America — Idaho: Limited Liability Company
    case ru6x = "RU6X"
    /// `RUCO` — Poland: oddział przedsiębiorcy zagranicznego
    case ruco = "RUCO"
    /// `RV48` — China: ge ti gong shang hu
    case rv48 = "RV48"
    /// `RVWS` — New Zealand: Friendly society
    case rvws = "RVWS"
    /// `RWMC` — France: Communauté de villes
    case rwmc = "RWMC"
    /// `RWVW` — United Arab Emirates: Limited Liability Company
    case rwvw = "RWVW"
    /// `RWX4` — United Arab Emirates — Dubai: Protected Cell Company
    case rwx4 = "RWX4"
    /// `RWZD` — Italy: Altre Forme
    case rwzd = "RWZD"
    /// `RXJN` — Bolivia (Plurinational State of): Empresa Estatal Mixta
    case rxjn = "RXJN"
    /// `RXTT` — Estonia: Euroopa ühistu
    case rxtt = "RXTT"
    /// `RY5B` — Saint Vincent and the Grenadines: international business company - unlimited company authorised to issue shares
    case ry5b = "RY5B"
    /// `RYDY` — Bulgaria: Evropeysko obedinenie po ikonomicheski interesi
    case rydy = "RYDY"
    /// `RYFP` — Sweden: Europeisk gruppering för territoriellt samarbete
    case ryfp = "RYFP"
    /// `RZ5R` — United States of America — Rhode Island: Professional Service Corporation
    case rz5r = "RZ5R"
    /// `S02Y` — Lesotho: External Company
    case s02y = "S02Y"
    /// `S0BB` — United States of America — Hawaii: Professional Corporation
    case s0bb = "S0BB"
    /// `S0X8` — France: Caisse de crédit agricole mutuel
    case s0x8 = "S0X8"
    /// `S0Z5` — Spain: Fondo de Inversion
    case s0z5 = "S0Z5"
    /// `S1IS` — Korea (Republic of): Ilban beobin hyeophoe
    case s1is = "S1IS"
    /// `S1OK` — Saint Vincent and the Grenadines: non-profit company
    case s1ok = "S1OK"
    /// `S1UI` — Slovenia: Civilna odvetniška družba
    case s1ui = "S1UI"
    /// `S2E3` — Hong Kong: Dan bao you xian gong si
    case s2e3 = "S2E3"
    /// `S2J1` — Mauritius: Others
    case s2j1 = "S2J1"
    /// `S2K8` — United States of America — Minnesota: Business Corporation
    case s2k8 = "S2K8"
    /// `S3DA` — Hungary: Betéti társaság
    case s3da = "S3DA"
    /// `S3K4` — Canada — British Columbia: Registered extraprovincial non-share corporation
    case s3k4 = "S3K4"
    /// `S4U2` — United States of America — Virginia: Savings Bank
    case s4u2 = "S4U2"
    /// `S5E1` — Slovakia: Miestna jednotka bez právnej spôsobilosti
    case s5e1 = "S5E1"
    /// `S68T` — United States of America — Arizona: Electric Cooperative Nonprofit Membership Corporation
    case s68t = "S68T"
    /// `S69C` — Marshall Islands: Limited Partnership
    case s69c = "S69C"
    /// `S6M8` — Mexico: Sociedad nacional de crédito institución de banca de desarrollo
    case s6m8 = "S6M8"
    /// `S6MS` — Spain: Congregación
    case s6ms = "S6MS"
    /// `S6TP` — United States of America — Wyoming: Commercial Bank
    case s6tp = "S6TP"
    /// `S6X7` — Spain: Sociedad Colectiva
    case s6x7 = "S6X7"
    /// `S72N` — Canada — Quebec: Personne morale sans but lucratif par Loi sur la Fédération des scouts catholiques du Québec
    case s72n = "S72N"
    /// `S745` — United States of America — North Dakota: (Business) Corporation
    case s745 = "S745"
    /// `S779` — Lesotho: Private Company
    case s779 = "S779"
    /// `S7R4` — Malaysia — Labuan: Labuan Pre-Incorporated Company
    case s7r4 = "S7R4"
    /// `S7VR` — United States of America — Georgia: Nonprofit Corporation
    case s7vr = "S7VR"
    /// `S82R` — France: Société de Participations Financières de Profession Libérale Société par actions simplifiée (SPFPL SAS)
    case s82r = "S82R"
    /// `S8DM` — Mexico: Sociedad anónima institución de seguros
    case s8dm = "S8DM"
    /// `S8ZK` — Armenia: Lracʿucʿič patasxanatvutʿyan enkerutʿyun
    case s8zk = "S8ZK"
    /// `S94S` — Bulgaria: Komanditno druzhestvo
    case s94s = "S94S"
    /// `S968` — United States of America — Minnesota: Industrial Bank
    case s968 = "S968"
    /// `S97E` — Viet Nam: Hợp tác xã
    case s97e = "S97E"
    /// `S97G` — United States of America — New Hampshire: Investment Trust
    case s97g = "S97G"
    /// `S9UH` — China: si fa jian ding ji gou
    case s9uh = "S9UH"
    /// `SAI8` — Isle of Man: Private Unlimited and having a Share Capital (1931 Act)
    case sai8 = "SAI8"
    /// `SAST` — Jordan: alsharika alty la tahdof litahqiq alribh
    case sast = "SAST"
    /// `SBF3` — United States of America — Hawaii: Sustainable Business Corporation
    case sbf3 = "SBF3"
    /// `SBQF` — Costa Rica: Sociedad colectiva
    case sbqf = "SBQF"
    /// `SBQN` — Italy: Consorzio senza Attività Esterna
    case sbqn = "SBQN"
    /// `SCE1` — Germany: Gemeinnützige Gesellschaft mit beschränkter Haftung
    case sce1 = "SCE1"
    /// `SCX8` — United States of America — Montana: Public Benefit Corporation
    case scx8 = "SCX8"
    /// `SD81` — Slovenia: družba z neomejeno odgovornostjo
    case sd81 = "SD81"
    /// `SDPE` — Finland: Työttömyyskassa
    case sdpe = "SDPE"
    /// `SDVV` — Russian Federation: Ob"yedineniya rabotodateley
    case sdvv = "SDVV"
    /// `SDX0` — United States of America — New York: Limited Liability Company
    case sdx0 = "SDX0"
    /// `SERH` — United States of America — Connecticut: credit union
    case serh = "SERH"
    /// `SFK9` — Lithuania: Bendras valdymo ir pranešimų centras
    case sfk9 = "SFK9"
    /// `SFYA` — Lithuania: Mažosios bendrijos
    case sfya = "SFYA"
    /// `SFZM` — Romania: Persoană juridică de drept public
    case sfzm = "SFZM"
    /// `SGST` — Germany: Europäische Aktiengesellschaft
    case sgst = "SGST"
    /// `SGT8` — United States of America — Minnesota: Savings and Loan Association
    case sgt8 = "SGT8"
    /// `SH05` — China: qi ta（ ji gou bian zhi ）
    case sh05 = "SH05"
    /// `SHCN` — United States of America — Connecticut: Statutory Trust
    case shcn = "SHCN"
    /// `SIPP` — Russian Federation: Organizatsionno-pravovyye formy dlya deyatel'nosti grazhdan, ne otnesennoy k predprinimatel'stvu
    case sipp = "SIPP"
    /// `SIRY` — Slovakia: Záujmové združenie právnických osôb
    case siry = "SIRY"
    /// `SIST` — United States of America — North Carolina: Public Transportation Authority
    case sist = "SIST"
    /// `SJB8` — Colombia: Sociedades Agrarias de Transformación
    case sjb8 = "SJB8"
    /// `SJKV` — United States of America — Louisiana: Foreign Non-Profit Corporation
    case sjkv = "SJKV"
    /// `SJL9` — Finland: Osuuspankki
    case sjl9 = "SJL9"
    /// `SJQO` — United States of America — Kentucky: credit union
    case sjqo = "SJQO"
    /// `SKGX` — Finland: Yhteisetuudet
    case skgx = "SKGX"
    /// `SKO4` — Mexico: Sociedad mutualista
    case sko4 = "SKO4"
    /// `SLXJ` — Azerbaijan: Asılı təsərrüfat cəmiyyəti
    case slxj = "SLXJ"
    /// `SMCI` — Belarus: Ustanova
    case smci = "SMCI"
    /// `SMIS` — Poland: przedsiębiorstwo państwowe
    case smis = "SMIS"
    /// `SMUS` — Slovakia: Záujmové združenie
    case smus = "SMUS"
    /// `SMWM` — Costa Rica: Sindicato y su Federación
    case smwm = "SMWM"
    /// `SMZ6` — France: Société de Participations Financières de Profession Libérale Société anonyme à conseil d'administration (SPFPL SA à conseil d'administration)
    case smz6 = "SMZ6"
    /// `SNRI` — Bonaire, Sint Eustatius and Saba: Vennootschap onder Firma
    case snri = "SNRI"
    /// `SNUK` — Cayman Islands: association
    case snuk = "SNUK"
    /// `SNWJ` — Czechia: Podílový, penzijní fond
    case snwj = "SNWJ"
    /// `SOQ1` — Puerto Rico: Workers Cooperative
    case soq1 = "SOQ1"
    /// `SOX5` — Virgin Islands (U.S.): Foreign Limited Liability Company
    case sox5 = "SOX5"
    /// `SOXQ` — France: Société en libre partenariat
    case soxq = "SOXQ"
    /// `SP0A` — Malaysia — Labuan: Labuan Foundation
    case sp0a = "SP0A"
    /// `SP4S` — Poland: kościoł i związki wyznaniowe
    case sp4s = "SP4S"
    /// `SP51` — Malaysia: Limited Liability Partnership
    case sp51 = "SP51"
    /// `SP9F` — Isle of Man: Limited by Guarantee (2006 Act)
    case sp9f = "SP9F"
    /// `SPIE` — Slovakia: Podnikateľ-fyzická osoba-zapísaný v obchodnom registri
    case spie = "SPIE"
    /// `SPJ7` — Croatia: Vjerska zajednica
    case spj7 = "SPJ7"
    /// `SPX9` — Philippines: close corporation
    case spx9 = "SPX9"
    /// `SQ1A` — Luxembourg: Société civile
    case sq1a = "SQ1A"
    /// `SQ4I` — Slovakia: Podnikateľ-fyzická osoba-nezapís.v OR-podnikajúca súčasne ako osoba so slobodným povolaním
    case sq4i = "SQ4I"
    /// `SQ7B` — United States of America — California: General Partnership
    case sq7b = "SQ7B"
    /// `SQ8U` — Bahamas: Exempted Limited Partnership
    case sq8u = "SQ8U"
    /// `SQFW` — Slovakia: Iné družstvo
    case sqfw = "SQFW"
    /// `SQKS` — Germany: Körperschaft des öffentlichen Rechts
    case sqks = "SQKS"
    /// `SQOE` — United States of America — District of Columbia: Statutory Trust
    case sqoe = "SQOE"
    /// `SQS1` — Finland: Ahvenanmaan maakunta ja sen virastot
    case sqs1 = "SQS1"
    /// `SQXC` — Puerto Rico: Insurance Company
    case sqxc = "SQXC"
    /// `SQXV` — Jersey: Private Limited Company
    case sqxv = "SQXV"
    /// `SRQE` — Bahrain: Sharikat altawsiat albasitat lilshiraka
    case srqe = "SRQE"
    /// `SS0L` — Spain: Cooperativa de Credito
    case ss0l = "SS0L"
    /// `SS1V` — Canada — Manitoba: registration of extra-provincial corporations
    case ss1v = "SS1V"
    /// `SS3A` — Curaçao: Onderlinge waarborgmaatschappij
    case ss3a = "SS3A"
    /// `SSHN` — France: Régime d'assurance chômage
    case sshn = "SSHN"
    /// `SSN4` — United States of America — West Virginia: Savings and Loan Association
    case ssn4 = "SSN4"
    /// `SSOM` — Sweden: Bostadsrättsförening
    case ssom = "SSOM"
    /// `SSP9` — Italy: Azienda Speciale Rea
    case ssp9 = "SSP9"
    /// `ST2Q` — United States of America — Arizona: Cooperative Marketing Association
    case st2q = "ST2Q"
    /// `STBC` — Luxembourg: Société coopérative organisée sous forme de société anonyme
    case stbc = "STBC"
    /// `STUP` — Slovakia: Národná banka Slovenska
    case stup = "STUP"
    /// `STX7` — United Kingdom of Great Britain and Northern Ireland — Scotland: Scottish Charitable Incorporated Organisation
    case stx7 = "STX7"
    /// `SU5T` — United States of America — Missouri: Cooperative Association
    case su5t = "SU5T"
    /// `SUA1` — Germany: Europäische Genossenschaft
    case sua1 = "SUA1"
    /// `SUEQ` — United States of America — Nevada: Business Trust
    case sueq = "SUEQ"
    /// `SUH3` — Slovakia: Záujmová organizácia družstiev
    case suh3 = "SUH3"
    /// `SUHV` — Finland: Muu verotuksen yksikkö
    case suhv = "SUHV"
    /// `SUMS` — United States of America — West Virginia: Limited Partnership
    case sums = "SUMS"
    /// `SV3F` — Malaysia: Sole Proprietorship
    case sv3f = "SV3F"
    /// `SV6U` — Oman: sharikat altawsia
    case sv6u = "SV6U"
    /// `SVA3` — Poland: fundusze inne niż inwestycyjne i inne niż otwarte fundusze emerytalne
    case sva3 = "SVA3"
    /// `SW88` — United States of America — Montana: Commercial Bank
    case sw88 = "SW88"
    /// `SWH1` — Bahrain: Sharikat tadamun
    case swh1 = "SWH1"
    /// `SWMK` — Romania: Societate în comandită pe acţiuni
    case swmk = "SWMK"
    /// `SWO8` — Dominican Republic: Sociedad de Responsaibilidad Limitada
    case swo8 = "SWO8"
    /// `SWPX` — France: SA coopérative de transport à conseil d'administration
    case swpx = "SWPX"
    /// `SXX9` — Sint Maarten: naamloze vennootschap
    case sxx9 = "SXX9"
    /// `SXY3` — Samoa: Incorporated society
    case sxy3 = "SXY3"
    /// `SYPT` — Canada — Newfoundland and Labrador: Limited Liability Partnership
    case sypt = "SYPT"
    /// `SZ63` — France: Service déconcentré de l'État à compétence (inter) régionale
    case sz63 = "SZ63"
    /// `SZW0` — Bulgaria: Evropeysko druzhestvo
    case szw0 = "SZW0"
    /// `T0CV` — Canada — Nova Scotia: limited partnerships formed in NS
    case t0cv = "T0CV"
    /// `T0KK` — China: qi ta（ zong jiao ）
    case t0kk = "T0KK"
    /// `T0KQ` — Slovakia: Svojpomocné poľnohospodárske družstvo
    case t0kq = "T0KQ"
    /// `T0XH` — United States of America — Utah: Benefit Corporation
    case t0xh = "T0XH"
    /// `T0YJ` — Germany: Kommanditgesellschaft auf Aktien
    case t0yj = "T0YJ"
    /// `T172` — United States of America — Nebraska: Insurance Company
    case t172 = "T172"
    /// `T1FT` — Czechia: Evropská družstevní společnost
    case t1ft = "T1FT"
    /// `T1JS` — Cyprus: Ontotites pou diepontai apo to dimosio dikaio
    case t1js = "T1JS"
    /// `T1LR` — Canada — Quebec: Syndicat de copropriété
    case t1lr = "T1LR"
    /// `T25Y` — France: SCP d'avocats
    case t25y = "T25Y"
    /// `T2DF` — United States of America — Oregon: Business Trust
    case t2df = "T2DF"
    /// `T2JS` — Puerto Rico: Close Corporation
    case t2js = "T2JS"
    /// `T2NA` — Saudi Arabia: sharikat altadamun
    case t2na = "T2NA"
    /// `T2X0` — Kosovo: Ortakëri e Përgjithshme
    case t2x0 = "T2X0"
    /// `T2X1` — Italy: Società In Nome Collettivo
    case t2x1 = "T2X1"
    /// `T31U` — Finland: Kuntainliiton liikelaitos
    case t31u = "T31U"
    /// `T362` — United States of America — Kentucky: Limited Liability Partnership
    case t362 = "T362"
    /// `T3FE` — Myanmar: 1 9 5 0 hkunhait aahtuu kumpane aaatupadayaar a hcu aarr hpyint tar 0 n k ant saathtarr saeet a myarrnhaint masaatsine saeet kumpane
    case t3fe = "T3FE"
    /// `T3IW` — Benin: Société par Actions Simplifiées
    case t3iw = "T3IW"
    /// `T3K4` — Finland: Yhteismetsä
    case t3k4 = "T3K4"
    /// `T3NK` — Niger: Société en Nom Collectif
    case t3nk = "T3NK"
    /// `T3Q1` — Czechia: Bytové družstvo
    case t3q1 = "T3Q1"
    /// `T417` — Japan: kabusikigaisya
    case t417 = "T417"
    /// `T4KB` — Barbados: association
    case t4kb = "T4KB"
    /// `T4LC` — Dominican Republic: Sociedad en Comandita por Acciones
    case t4lc = "T4LC"
    /// `T4M6` — United States of America — New Jersey: Nonprofit Corporation
    case t4m6 = "T4M6"
    /// `T4OL` — United States of America — Minnesota: Cemetery associations
    case t4ol = "T4OL"
    /// `T5HS` — Malaysia — Labuan: Labuan Isalmic Trust
    case t5hs = "T5HS"
    /// `T5MB` — Niger: Entreprise individuelle
    case t5mb = "T5MB"
    /// `T5RL` — Aruba: Vennootschap buitenlands recht
    case t5rl = "T5RL"
    /// `T5UM` — Cayman Islands: exempted limited duration company
    case t5um = "T5UM"
    /// `T5X4` — United States of America — Connecticut: Savings and Loan Association
    case t5x4 = "T5X4"
    /// `T5ZE` — United States of America — Oregon: Business Corporation
    case t5ze = "T5ZE"
    /// `T61R` — United Kingdom of Great Britain and Northern Ireland: cyfyngedig
    case t61r = "T61R"
    /// `T635` — Malaysia — Labuan: Labuan Islamic Spendthrift/Protective Trust
    case t635 = "T635"
    /// `T69Z` — Ghana: External Company
    case t69z = "T69Z"
    /// `T7D4` — United States of America — Iowa: Non-deposit Trust Company
    case t7d4 = "T7D4"
    /// `T7PB` — Poland: wspólnoty samorządowe
    case t7pb = "T7PB"
    /// `T80N` — United States of America — Connecticut: Limited Liability Partnership
    case t80n = "T80N"
    /// `T91C` — United States of America — Montana: Professional Close Corporation
    case t91c = "T91C"
    /// `T91T` — United States of America — Delaware: Limited Partnership
    case t91t = "T91T"
    /// `T922` — Belgium: Burgerlijke vennootschap onder vorm van gewone commanditaire vennootschap
    case t922 = "T922"
    /// `TA7J` — Canada — Quebec: Société par actions constitué par Loi sur les compagnies de flottage
    case ta7j = "TA7J"
    /// `TA98` — Canada — Northwest Territories: Limited partnership
    case ta98 = "TA98"
    /// `TA9Z` — Virgin Islands (U.S.): Domestic Limited Liability Partnership
    case ta9z = "TA9Z"
    /// `TAV3` — Slovakia: Iná organizácia verejnej správy
    case tav3 = "TAV3"
    /// `TB2C` — Denmark: Europæisk økonomisk firmagruppe
    case tb2c = "TB2C"
    /// `TBG2` — China: wai guo lv you bu men chang zhu dai biao ji gou
    case tbg2 = "TBG2"
    /// `TBN1` — United States of America — Minnesota: Non-Profit Limited Liability Company
    case tbn1 = "TBN1"
    /// `TCC0` — United States of America — Vermont: Mutual Benefit Enterprise
    case tcc0 = "TCC0"
    /// `TCGV` — Bulgaria: Druzhestvo uchredeno po Zakona za zadalzheniyata i dogovorite
    case tcgv = "TCGV"
    /// `TCLA` — United States of America — Texas: Savings Bank
    case tcla = "TCLA"
    /// `TCVB` — Suriname: Naamloze Vennootschap / Limited Company by Shares
    case tcvb = "TCVB"
    /// `TD56` — Azerbaijan: Komandit ortaqlıq
    case td56 = "TD56"
    /// `TD8P` — Taiwan (Province of China): gǔ fèn yǒu xiàn gōng sī
    case td8p = "TD8P"
    /// `TDBW` — United States of America — Louisiana: Domestic Registered Limited Liability Partnership
    case tdbw = "TDBW"
    /// `TDD5` — Spain: Sociedad Comanditaria Simple
    case tdd5 = "TDD5"
    /// `TE79` — Isle of Man: Limited Partnership - with Legal Personality
    case te79 = "TE79"
    /// `TEGV` — Puerto Rico: Special Corporation for Municipal Development
    case tegv = "TEGV"
    /// `TEPY` — Barbados: public company
    case tepy = "TEPY"
    /// `TF8L` — New Zealand: Charitable Trust
    case tf8l = "TF8L"
    /// `TFNS` — Bahamas: Bahamas Executive Entity
    case tfns = "TFNS"
    /// `TFXK` — Monaco: Société Unipersonelle à Responsabilité Limitée
    case tfxk = "TFXK"
    /// `TG3X` — Slovakia: Podnikateľ-fyzická osoba-nezapís.v OR-podnikajúca súčasne ako sam.hosp.roľník
    case tg3x = "TG3X"
    /// `TGLV` — Canada — British Columbia: Extraprovincial corporation (registered foreign entity)
    case tglv = "TGLV"
    /// `TGMR` — United States of America — Delaware: Limited Liability Limited Partnership
    case tgmr = "TGMR"
    /// `TGRE` — France: Caisse des écoles
    case tgre = "TGRE"
    /// `TGWE` — Malaysia — Labuan: Labuan Islamic Purpose Trust
    case tgwe = "TGWE"
    /// `TH8A` — Romania: Asociatie familiala
    case th8a = "TH8A"
    /// `THVZ` — Israel: Osek Patur
    case thvz = "THVZ"
    /// `TIZ2` — Greece: Omórithmi Etería
    case tiz2 = "TIZ2"
    /// `TJ6V` — United States of America — District of Columbia: Limited Liability Partnership
    case tj6v = "TJ6V"
    /// `TKAB` — Canada — Quebec: Société par actions constitué par Loi sur les sociétés de développement de l'entreprise québécoise
    case tkab = "TKAB"
    /// `TKPE` — Gibraltar: Private Trust Company
    case tkpe = "TKPE"
    /// `TL87` — Switzerland: Limited partnership for collective investments
    case tl87 = "TL87"
    /// `TLCB` — Jamaica: non profit company
    case tlcb = "TLCB"
    /// `TLCJ` — Spain: junta de compensación
    case tlcj = "TLCJ"
    /// `TLDB` — Russian Federation: Soyuzy potrebitel'skikh obshchestv
    case tldb = "TLDB"
    /// `TMHL` — Uruguay: Asociacion
    case tmhl = "TMHL"
    /// `TMIG` — Russian Federation: Federal'nyye gosudarstvennyye kazennyye uchrezhdeniya
    case tmig = "TMIG"
    /// `TMK1` — Guam: Commercial Bank
    case tmk1 = "TMK1"
    /// `TMU1` — Liechtenstein: Anstalt
    case tmu1 = "TMU1"
    /// `TMVE` — Slovenia: Zadruga brez odgovornosti
    case tmve = "TMVE"
    /// `TNBA` — Czechia: Odštěpný závod zahraniční právnické osoby
    case tnba = "TNBA"
    /// `TNHO` — Bolivia (Plurinational State of): Sociedad Colectiva
    case tnho = "TNHO"
    /// `TNPO` — France: Exploitant agricole
    case tnpo = "TNPO"
    /// `TOBE` — United States of America — Colorado: Commercial Bank
    case tobe = "TOBE"
    /// `TOL2` — France: SA nationale à directoire
    case tol2 = "TOL2"
    /// `TOMA` — Samoa: Co-operative society
    case toma = "TOMA"
    /// `TPFL` — Puerto Rico: Bank (Corporation)
    case tpfl = "TPFL"
    /// `TPJZ` — Mexico: Sociedad anónima promotora de inversión
    case tpjz = "TPJZ"
    /// `TPNT` — France: Société européenne
    case tpnt = "TPNT"
    /// `TPO4` — United States of America — Michigan: Savings Bank
    case tpo4 = "TPO4"
    /// `TPTU` — Belgium: Naamloze vennootschap van publiek recht
    case tptu = "TPTU"
    /// `TPZ2` — Canada — Northwest Territories: private act corporation
    case tpz2 = "TPZ2"
    /// `TQ3O` — Hungary: Egyéb, máshova nem sorolt jogi személyiségű vállalkozás
    case tq3o = "TQ3O"
    /// `TQ3Z` — Isle of Man: Limited by Shares (2006 Act)
    case tq3z = "TQ3Z"
    /// `TRI2` — United States of America — Florida: Profit Corporation
    case tri2 = "TRI2"
    /// `TRO6` — Canada — Alberta: agricultural society
    case tro6 = "TRO6"
    /// `TRS2` — United States of America — Alaska: Cooperative Corporation
    case trs2 = "TRS2"
    /// `TRWS` — United Kingdom of Great Britain and Northern Ireland: Unincorporated Association
    case trws = "TRWS"
    /// `TS1K` — United States of America — Minnesota: Savings Bank
    case ts1k = "TS1K"
    /// `TS9O` — Canada — Alberta: religious society
    case ts9o = "TS9O"
    /// `TSA0` — Croatia: Tijelo državne uprave
    case tsa0 = "TSA0"
    /// `TSQ7` — Canada — New Brunswick: agricultural fair association
    case tsq7 = "TSQ7"
    /// `TSVO` — Hungary: Szövetség (kivéve sportszövetség)
    case tsvo = "TSVO"
    /// `TT2H` — United Kingdom of Great Britain and Northern Ireland: Protected Cell Company
    case tt2h = "TT2H"
    /// `TTB3` — United States of America — Maine: Business Corporation
    case ttb3 = "TTB3"
    /// `TTE8` — Saudi Arabia: sharakah dhat maswuwliat mahduda
    case tte8 = "TTE8"
    /// `TTIF` — Mexico: Sociedad anónima bursátil de capital variable, sociedad financiera de objeto múltiple, entidad no regulada
    case ttif = "TTIF"
    /// `TTTV` — United States of America — Hawaii: Corporation Sole
    case tttv = "TTTV"
    /// `TU6A` — Monaco: Société en Nom Collectif
    case tu6a = "TU6A"
    /// `TUE5` — France: Office public d'habitation à loyer modéré (OPHLM)
    case tue5 = "TUE5"
    /// `TUHS` — Spain: Corporación de Derecho Público
    case tuhs = "TUHS"
    /// `TV5P` — Isle of Man: Unlimited without Shares (2006 Act)
    case tv5p = "TV5P"
    /// `TV8Y` — Liechtenstein: Kollektivtreuhänderschaft
    case tv8y = "TV8Y"
    /// `TWLR` — Canada — Quebec: Association
    case twlr = "TWLR"
    /// `TXCW` — Malaysia — Labuan: Labuan Recognized Limited Liability Partnership
    case txcw = "TXCW"
    /// `TXVC` — Australia: Limited Proprietary Company
    case txvc = "TXVC"
    /// `TY0S` — Canada — Nova Scotia: A company formed under the Companies Act may seek designation as a Private Investment Holding Company
    case ty0s = "TY0S"
    /// `TYJK` — United Kingdom of Great Britain and Northern Ireland: Private Limited by Guarantee/No Share Capital (Use of Limited Exemption)
    case tyjk = "TYJK"
    /// `TYW0` — Mexico: Sociedad anónima bursátil de capital variable, sociedad controladora
    case tyw0 = "TYW0"
    /// `TZ1U` — Finland: Kunnallinen liikelaitos
    case tz1u = "TZ1U"
    /// `TZDZ` — United States of America — Louisiana: Commercial Bank
    case tzdz = "TZDZ"
    /// `TZQL` — United States of America — District of Columbia: Savings Bank
    case tzql = "TZQL"
    /// `U0SP` — Azerbaijan: İctimai birliklər
    case u0sp = "U0SP"
    /// `U1EG` — United States of America — Oregon: Commercial Bank
    case u1eg = "U1EG"
    /// `U24X` — Cyprus: Synergatika Pistotika Idrymata
    case u24x = "U24X"
    /// `U2PN` — Belgium: Commanditaire vennootschap op aandelen
    case u2pn = "U2PN"
    /// `U3QQ` — Slovakia: Banka - akciová spoločnosť
    case u3qq = "U3QQ"
    /// `U5AR` — Saint Vincent and the Grenadines: statutory company
    case u5ar = "U5AR"
    /// `U5IM` — Slovakia: Železnice SR
    case u5im = "U5IM"
    /// `U5KF` — Belgium: Burgerlijke vennootschap onder vorm van vennootschap onder firma
    case u5kf = "U5KF"
    /// `U5RF` — Guam: partnership
    case u5rf = "U5RF"
    /// `U5S6` — India: Limited Liability Partnership
    case u5s6 = "U5S6"
    /// `U6R9` — United Kingdom of Great Britain and Northern Ireland: European Economic Interest Grouping
    case u6r9 = "U6R9"
    /// `U77P` — Mexico: Sociedad anónima de capital variable, institución de fianzas
    case u77p = "U77P"
    /// `U7GR` — United States of America — Mississippi: Limited Liability Partnership
    case u7gr = "U7GR"
    /// `U7HC` — United States of America — Michigan: Corporation (For-Profit)
    case u7hc = "U7HC"
    /// `U7OR` — United States of America — Missouri: Savings Bank
    case u7or = "U7OR"
    /// `U7QK` — Slovakia: Nadácia
    case u7qk = "U7QK"
    /// `U82F` — Argentina: Sociedad De Responsalided Limitada
    case u82f = "U82F"
    /// `U87X` — United States of America — North Dakota: Nonprofit Corporation
    case u87x = "U87X"
    /// `U89P` — South Africa: Personal Liability Company
    case u89p = "U89P"
    /// `U8KA` — Luxembourg: Société en commandite spéciale
    case u8ka = "U8KA"
    /// `U8LM` — Bulgaria: Evropeysko kooperativno druzhestvo
    case u8lm = "U8LM"
    /// `U8NM` — India: Mutual Fund
    case u8nm = "U8NM"
    /// `U901` — Mexico: Instituciones de Seguros
    case u901 = "U901"
    /// `U938` — Canada — Alberta: Alberta limited liability partnership
    case u938 = "U938"
    /// `U94O` — United States of America — North Carolina: Captive Insurance Company
    case u94o = "U94O"
    /// `U95A` — Czechia: Odštěpný závod zahraniční fyzické osoby
    case u95a = "U95A"
    /// `U9HL` — United States of America — Idaho: General Business Corporation
    case u9hl = "U9HL"
    /// `UA1O` — Denmark: Europæisk selskab
    case ua1o = "UA1O"
    /// `UAES` — United Arab Emirates — Ras Al Khaimah: RAK Economic Zone Company
    case uaes = "UAES"
    /// `UAV1` — Finland: Eurooppaosuuskunta
    case uav1 = "UAV1"
    /// `UBV0` — Mexico: Sociedad anónima de capital variable, fondo de inversión en instrumentos de deuda
    case ubv0 = "UBV0"
    /// `UBWU` — Jersey: Limited Partnership
    case ubwu = "UBWU"
    /// `UCR1` — Faroe Islands: Alment partafelag
    case ucr1 = "UCR1"
    /// `UCT9` — Belgium: Burgerlijke Vennootschap onder vorm van Landbouwvennootschap (BV LV)
    case uct9 = "UCT9"
    /// `UCTO` — Slovakia: Oblastná organizačná jednotka ČSD
    case ucto = "UCTO"
    /// `UCU5` — Greece: Εterorrythmi kata metoches etaireia
    case ucu5 = "UCU5"
    /// `UD1V` — Indonesia: Perseroan Terbatas Penanaman Modal Dalam Negeri
    case ud1v = "UD1V"
    /// `UD8K` — Hungary: Külföldi székhelyű vállalkozás fióktelepe
    case ud8k = "UD8K"
    /// `UDG6` — Hong Kong: You gu ben de si ren wu xian gong si
    case udg6 = "UDG6"
    /// `UDJG` — Korea (Republic of): YuHanChaekImHoeSa
    case udjg = "UDJG"
    /// `UDLA` — Canada — Canada: business corporation
    case udla = "UDLA"
    /// `UDQJ` — Slovenia: Gospodarsko interesno združenje
    case udqj = "UDQJ"
    /// `UDY2` — Luxembourg: Société d'investissement à capital variable
    case udy2 = "UDY2"
    /// `UE3G` — Cayman Islands: exempt company
    case ue3g = "UE3G"
    /// `UEKV` — United States of America — Utah: Low Profit LLC
    case uekv = "UEKV"
    /// `UESF` — Slovenia: Javni sklad
    case uesf = "UESF"
    /// `UF6Y` — United States of America — Vermont: Limited Partnership
    case uf6y = "UF6Y"
    /// `UFBW` — Spain: Comunidad de Bienes
    case ufbw = "UFBW"
    /// `UFDA` — Czechia: Národní podnik
    case ufda = "UFDA"
    /// `UFG8` — Bulgaria: Fondatsia
    case ufg8 = "UFG8"
    /// `UFIY` — United States of America — North Carolina: Bank
    case ufiy = "UFIY"
    /// `UFM7` — France: SA coopérative de construction à directoire
    case ufm7 = "UFM7"
    /// `UG0E` — Slovenia: Dobrodelna organizacija
    case ug0e = "UG0E"
    /// `UG3Z` — Canada — Quebec: Société par actions par Loi sur les sociétés par actions
    case ug3z = "UG3Z"
    /// `UGE3` — United States of America — Arizona: Nonprofit Electric Generation and Transmission Cooperative Corporation
    case uge3 = "UGE3"
    /// `UGKR` — United States of America — Iowa: credit union
    case ugkr = "UGKR"
    /// `UGVB` — Korea (Republic of): SinTakHyeong fund
    case ugvb = "UGVB"
    /// `UGWE` — Armenia: Vstahutʿyan vra himnvats enkeraktsʿutʿyun
    case ugwe = "UGWE"
    /// `UHKH` — France: Société de caution mutuelle
    case uhkh = "UHKH"
    /// `UHNL` — Lithuania: Žemės ūkio bendrovės
    case uhnl = "UHNL"
    /// `UI81` — Austria: Gesellschaft des bürgerlichen Rechts
    case ui81 = "UI81"
    /// `UJ35` — Spain: Fondo de Inversion Mobiliaria
    case uj35 = "UJ35"
    /// `UJ49` — United States of America — Minnesota: Cooperative (Investor)
    case uj49 = "UJ49"
    /// `UJKE` — United States of America — Missouri: credit union
    case ujke = "UJKE"
    /// `UJZB` — United States of America — Michigan: Ecclesiastical Corporation
    case ujzb = "UJZB"
    /// `UK9P` — United States of America — Idaho: General Partnership
    case uk9p = "UK9P"
    /// `UKOL` — Sweden: enkelt bolag
    case ukol = "UKOL"
    /// `UKX4` — United States of America — North Carolina: State Savings Bank
    case ukx4 = "UKX4"
    /// `UL6C` — Puerto Rico: Savings & Credit Cooperative
    case ul6c = "UL6C"
    /// `ULJ1` — Canada — Nova Scotia: company limited by shares (limited company)
    case ulj1 = "ULJ1"
    /// `UMCR` — China: nong min zhuan ye he zuo she
    case umcr = "UMCR"
    /// `UMF0` — Finland: Konkurssipesä
    case umf0 = "UMF0"
    /// `UNA9` — Switzerland: Swiss branch registered at the registry of commerce
    case una9 = "UNA9"
    /// `UNCO` — Panama: Fundación de Interés Privado
    case unco = "UNCO"
    /// `UNJ2` — Netherlands: rederij
    case unj2 = "UNJ2"
    /// `UO3D` — Guernsey: Limited Partnership
    case uo3d = "UO3D"
    /// `UQRY` — France: Ecole nationale non dotée de la personnalité morale
    case uqry = "UQRY"
    /// `UQWQ` — United States of America — Oregon: Cooperative Corporation
    case uqwq = "UQWQ"
    /// `UR1O` — Canada — Quebec: entreprise individuelle
    case ur1o = "UR1O"
    /// `URQH` — Ireland: Public Unlimited Company
    case urqh = "URQH"
    /// `US8E` — Germany: Genossenschaft
    case us8e = "US8E"
    /// `USJP` — Niger: Société Anonyme à participation publique
    case usjp = "USJP"
    /// `USOG` — Portugal: Sociedade por Quotas
    case usog = "USOG"
    /// `UTBN` — Russian Federation: Kollegii advokatov
    case utbn = "UTBN"
    /// `UTY8` — United Kingdom of Great Britain and Northern Ireland — Northern Ireland: Community Benefit Society (Northern Ireland)
    case uty8 = "UTY8"
    /// `UUT8` — France: SCP de directeurs de laboratoire d'analyse médicale
    case uut8 = "UUT8"
    /// `UUYB` — Gibraltar: Public Limited Company
    case uuyb = "UUYB"
    /// `UV02` — France: Service central d'un ministère
    case uv02 = "UV02"
    /// `UV8T` — Aruba: Maatschap
    case uv8t = "UV8T"
    /// `UVCG` — Canada — Quebec: Société par actions constitué par Loi sur les sociétés de construction
    case uvcg = "UVCG"
    /// `UVH6` — United States of America — North Carolina: Savings and Loan Association
    case uvh6 = "UVH6"
    /// `UW1C` — Marshall Islands: Partnership
    case uw1c = "UW1C"
    /// `UW1Y` — Belgium: Vennootschap onder firma
    case uw1y = "UW1Y"
    /// `UWEE` — Romania: Societate Cooperativă Europeană
    case uwee = "UWEE"
    /// `UWMY` — Canada — Saskatchewan: Business Corporations
    case uwmy = "UWMY"
    /// `UX5E` — United States of America — South Dakota: Limited Liability Limited Partnership
    case ux5e = "UX5E"
    /// `UX9X` — Denmark: Personligt ejet Mindre Virksomhed
    case ux9x = "UX9X"
    /// `UXEW` — Finland: Aatteellinen yhdistys
    case uxew = "UXEW"
    /// `UY49` — Russian Federation: Rayonnyye sudy, gorodskiye sudy, mezhrayonnyye sudy (rayonnyye sudy)
    case uy49 = "UY49"
    /// `UY66` — Guernsey — Alderney: public company
    case uy66 = "UY66"
    /// `UZ83` — United States of America — Oregon: Nonprofit Corporation
    case uz83 = "UZ83"
    /// `UZ9W` — Virgin Islands (U.S.): Foreign Profit Corporation
    case uz9w = "UZ9W"
    /// `UZLR` — Nepal: Institution
    case uzlr = "UZLR"
    /// `UZUP` — Tonga: Local Company
    case uzup = "UZUP"
    /// `UZWE` — Bermuda: Local LLC
    case uzwe = "UZWE"
    /// `UZY3` — France: Établissement d'hospitalisation
    case uzy3 = "UZY3"
    /// `V03J` — Belgium: Internationale vereniging zonder winstoogmerk
    case v03j = "V03J"
    /// `V05A` — Indonesia: Persekutuan Perdata
    case v05a = "V05A"
    /// `V06W` — Norway: Europeisk selskap
    case v06w = "V06W"
    /// `V0FL` — Romania: Societate în comandită simplă
    case v0fl = "V0FL"
    /// `V0TJ` — Finland: Asunto-osakeyhtiö
    case v0tj = "V0TJ"
    /// `V10Q` — United States of America — Oregon: Professional Corporation
    case v10q = "V10Q"
    /// `V19Y` — Luxembourg: Fondation
    case v19y = "V19Y"
    /// `V1Z5` — France: SARL coopérative de production (SCOP)
    case v1z5 = "V1Z5"
    /// `V251` — China: zhong cai wei yuan hui
    case v251 = "V251"
    /// `V2PA` — United Arab Emirates — Dubai: Limited Liability Partnership
    case v2pa = "V2PA"
    /// `V2YH` — Germany: Stiftung des privaten Rechts
    case v2yh = "V2YH"
    /// `V3LT` — Hungary: Erdőbirtokossági Társulat
    case v3lt = "V3LT"
    /// `V42B` — Finland: Ortodoksinen kirkko
    case v42b = "V42B"
    /// `V44D` — Netherlands: stichting
    case v44d = "V44D"
    /// `V4RX` — United States of America — Nebraska: Non Profit Dom Limited Cooperative Association
    case v4rx = "V4RX"
    /// `V5G5` — United States of America — Indiana: Professional Benefit Corporation
    case v5g5 = "V5G5"
    /// `V5IH` — Canada — Quebec: Personne morale sans but lucratif par Loi sur l’aménagement et l’urbanisme
    case v5ih = "V5IH"
    /// `V5OS` — Luxembourg: Société coopérative
    case v5os = "V5OS"
    /// `V5SV` — France: Société civile coopérative d'intérêt maritime
    case v5sv = "V5SV"
    /// `V5VG` — Panama: Sociedad en Comandita simple
    case v5vg = "V5VG"
    /// `V65U` — United States of America — Alabama: Non-Profit Corporation
    case v65u = "V65U"
    /// `V6G1` — France: Régime maladie des non-salariés non agricoles
    case v6g1 = "V6G1"
    /// `V6YH` — Czechia: Společná zájmová organizace družstev
    case v6yh = "V6YH"
    /// `V6YL` — Portugal: Societas Cooperativa Europaea
    case v6yl = "V6YL"
    /// `V7FT` — Belgium: Naamloze vennootschap met een sociaal oogmerk
    case v7ft = "V7FT"
    /// `V7QY` — Luxembourg: Groupement européen d’intérêt économique
    case v7qy = "V7QY"
    /// `V816` — China: zu ji ji ti jing ji zu zhi
    case v816 = "V816"
    /// `V89C` — Malta: Private Limited Liability Company
    case v89c = "V89C"
    /// `V89I` — United States of America — Indiana: Nonprofit Corporation
    case v89i = "V89I"
    /// `V8L7` — Belgium: Burgerlijke vennootschap onder vorm van besloten vennootschap met beperkte aansprakelijkheid
    case v8l7 = "V8L7"
    /// `V905` — Aruba: Vennootschap met beperkte aansprakelijkheid
    case v905 = "V905"
    /// `V9GU` — Canada — Quebec: Personne morale sans but lucratif par Loi sur la société Saint-Jean-Baptiste de Trois-Rivières
    case v9gu = "V9GU"
    /// `V9QP` — France: Société à responsabilité limitée (sans autre indication)
    case v9qp = "V9QP"
    /// `VA0A` — Russian Federation: Rybolovetskiye arteli (kolkhozy)
    case va0a = "VA0A"
    /// `VA1V` — Italy: Società Di Mutuo Soccorso
    case va1v = "VA1V"
    /// `VA1X` — Seychelles: Limited Partnership
    case va1x = "VA1X"
    /// `VAB6` — Russian Federation: Obosoblennyye podrazdeleniya yuridicheskikh lits
    case vab6 = "VAB6"
    /// `VALH` — Portugal: Empresário em Nome Individual
    case valh = "VALH"
    /// `VAPL` — Niger: Société en Participations
    case vapl = "VAPL"
    /// `VAPN` — Canada — Northwest Territories: general partnership
    case vapn = "VAPN"
    /// `VAQS` — United Arab Emirates: Public Corporate
    case vaqs = "VAQS"
    /// `VATN` — Slovakia: Európske zoskupenie územnej spolupráce
    case vatn = "VATN"
    /// `VATV` — Mexico: Sociedad anónima promotora de inversión de capital variable
    case vatv = "VATV"
    /// `VBC7` — France: Institution Banque de France
    case vbc7 = "VBC7"
    /// `VBJW` — Ghana: Public Limited Company
    case vbjw = "VBJW"
    /// `VBQP` — France: Fonds à forme sociétale à directoire
    case vbqp = "VBQP"
    /// `VBVM` — United States of America — Kansas: Savings Bank
    case vbvm = "VBVM"
    /// `VC3E` — Isle of Man: Private Limited by Guarantee and having a Share Capital (1931 Act)
    case vc3e = "VC3E"
    /// `VCQZ` — United States of America — Indiana: Series
    case vcqz = "VCQZ"
    /// `VD7Z` — France: Société en commandite simple
    case vd7z = "VD7Z"
    /// `VDRB` — Italy: Consorzio Municipale
    case vdrb = "VDRB"
    /// `VE1P` — Russian Federation: Organizatsionno-pravovyye formy yuridicheskikh lits, yavlyayushchikhsya nekommercheskimi korporativnymi organizatsiyami
    case ve1p = "VE1P"
    /// `VE28` — United States of America — Kentucky: Limited Partnership
    case ve28 = "VE28"
    /// `VEOU` — Russian Federation: Unitarnyye predpriyatiya
    case veou = "VEOU"
    /// `VEX5` — Russian Federation: Munitsipal'nyye kazennyye uchrezhdeniya
    case vex5 = "VEX5"
    /// `VF4C` — Portugal: Sociedade Unipessoal por Quotas
    case vf4c = "VF4C"
    /// `VFIU` — Spain: Sociedad Comanditaria Simple Profesional
    case vfiu = "VFIU"
    /// `VFXJ` — Bermuda: Mutual Fund Company
    case vfxj = "VFXJ"
    /// `VG3S` — United States of America — New Mexico: Profit Corporation
    case vg3s = "VG3S"
    /// `VGP6` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les fabriques
    case vgp6 = "VGP6"
    /// `VHIY` — Bonaire, Sint Eustatius and Saba: Cooperatie
    case vhiy = "VHIY"
    /// `VHOW` — Brunei Darussalam: Sole-Proprietorship
    case vhow = "VHOW"
    /// `VHXN` — Canada — Alberta: public non-profit company
    case vhxn = "VHXN"
    /// `VIE3` — Czechia: Zájmové sdružení právnických osob
    case vie3 = "VIE3"
    /// `VIGZ` — Russian Federation: Filialy yuridicheskikh lits
    case vigz = "VIGZ"
    /// `VIMA` — Panama: Micro-empresa de Responsabilidad Limitada
    case vima = "VIMA"
    /// `VIOQ` — Mexico: Estado
    case vioq = "VIOQ"
    /// `VJ3G` — Bulgaria: Druzhestvo s ogranichena otgovornost
    case vj3g = "VJ3G"
    /// `VJBO` — Latvia: Akciju sabiedrība
    case vjbo = "VJBO"
    /// `VJRL` — Gibraltar: Private Unlimited Company
    case vjrl = "VJRL"
    /// `VJV5` — France: SARL d'économie mixte
    case vjv5 = "VJV5"
    /// `VJXH` — United States of America — Oklahoma: Not-for-profit Corporation
    case vjxh = "VJXH"
    /// `VKKN` — Finland: Eurooppaosuuspankki
    case vkkn = "VKKN"
    /// `VKPN` — United States of America — Arizona: Close Corporation
    case vkpn = "VKPN"
    /// `VKSR` — Greece: Simplioktisia
    case vksr = "VKSR"
    /// `VKSV` — Puerto Rico: Insurance Company
    case vksv = "VKSV"
    /// `VKZD` — United Arab Emirates — Abu Dhabi: Foundation
    case vkzd = "VKZD"
    /// `VN3F` — Mexico: Sociedad cooperativa de productores de bienes y/o servicios
    case vn3f = "VN3F"
    /// `VNIU` — United States of America — District of Columbia: Limited Liability Company (including professional LLC and series LLC)
    case vniu = "VNIU"
    /// `VO18` — France: Établissement public local à caractére industriel ou commercial
    case vo18 = "VO18"
    /// `VOTI` — Finland: Kuntayhtymä
    case voti = "VOTI"
    /// `VOUU` — Russian Federation: Organizatsionno-pravovyye formy yuridicheskikh lits, yavlyayushchikhsya kommercheskimi unitarnymi organizatsiyami
    case vouu = "VOUU"
    /// `VPBH` — United States of America — Hawaii: Limited Liability Company
    case vpbh = "VPBH"
    /// `VPFY` — North Macedonia: Trgovec poedinec
    case vpfy = "VPFY"
    /// `VPRH` — Switzerland: District public company
    case vprh = "VPRH"
    /// `VQLD` — Japan: sonota
    case vqld = "VQLD"
    /// `VQU7` — Czechia: Organizační složka zahraniční nadace
    case vqu7 = "VQU7"
    /// `VQV6` — Pakistan: Public Limited Company (listed)
    case vqv6 = "VQV6"
    /// `VRJP` — Slovakia: Nezisková organizácia poskytujúca všeobecne prospešné služby
    case vrjp = "VRJP"
    /// `VRSU` — Nepal: Private Firm
    case vrsu = "VRSU"
    /// `VRVJ` — Canada — Quebec: Personne morale sans but lucratif par Code des professions
    case vrvj = "VRVJ"
    /// `VSC1` — Slovakia: Zahraničné kultúrne, informačné stredisko, rozhlasová, tlačová a televízna agentúra
    case vsc1 = "VSC1"
    /// `VSDJ` — United States of America — Minnesota: Non-deposit Trust Company
    case vsdj = "VSDJ"
    /// `VSEV` — Estonia: Tulundusühistu
    case vsev = "VSEV"
    /// `VSTJ` — Thailand: Nitibukhkhl xụ̄̀n thī̀ cạdtậng k̄hụ̂n tām kḍh̄māy phiṣ̄es̄ʹ
    case vstj = "VSTJ"
    /// `VSZS` — Slovakia: Spoločnosť s ručením obmedzeným
    case vszs = "VSZS"
    /// `VTFS` — France: SARL coopérative artisanale
    case vtfs = "VTFS"
    /// `VTH4` — Korea (Republic of): BiYeongRi SaDanBeobIn
    case vth4 = "VTH4"
    /// `VTIP` — United Arab Emirates — Dubai: Close Ended Investment Company
    case vtip = "VTIP"
    /// `VUPE` — Italy: Società Europea
    case vupe = "VUPE"
    /// `VUUU` — United States of America — Washington: Savings and Loan Association
    case vuuu = "VUUU"
    /// `VUXH` — United States of America — Illinois: Limited Liability Partnership
    case vuxh = "VUXH"
    /// `VV0W` — United Kingdom of Great Britain and Northern Ireland: Investment Company with Variable Capital
    case vv0w = "VV0W"
    /// `VVJ3` — United States of America — Virginia: Savings and Loan Association
    case vvj3 = "VVJ3"
    /// `VVOW` — Bahamas: Foundation
    case vvow = "VVOW"
    /// `VVOX` — Singapore: Public Company Limited by Shares
    case vvox = "VVOX"
    /// `VVPD` — United States of America — Iowa: Professional Limited Liability Company
    case vvpd = "VVPD"
    /// `VWC5` — United States of America — New Jersey: Savings Bank
    case vwc5 = "VWC5"
    /// `VWY9` — United States of America — Iowa: Commercial Bank
    case vwy9 = "VWY9"
    /// `VX5J` — India: Mutual Fund-Sub Scheme
    case vx5j = "VX5J"
    /// `VXDE` — United States of America — Alaska: Limited Partnership
    case vxde = "VXDE"
    /// `VYAX` — Ireland: Public Limited Company
    case vyax = "VYAX"
    /// `VYEO` — United States of America — Nebraska: Fraternal Society
    case vyeo = "VYEO"
    /// `VYF8` — United Kingdom of Great Britain and Northern Ireland: United Kingdom Economic Interest Grouping
    case vyf8 = "VYF8"
    /// `VZ3G` — Chile: Sociedad en Comandita Civil
    case vz3g = "VZ3G"
    /// `W0G7` — India: Pension Fund Sub Scheme
    case w0g7 = "W0G7"
    /// `W0U4` — United States of America — New Mexico: Nonprofit Corporation
    case w0u4 = "W0U4"
    /// `W0XQ` — United States of America — New Mexico: credit union
    case w0xq = "W0XQ"
    /// `W126` — Canada — Northwest Territories: private act not-for-profit corporation
    case w126 = "W126"
    /// `W1DV` — United States of America — New Hampshire: Cooperative Bank
    case w1dv = "W1DV"
    /// `W2NK` — Greece: Anónimi Etería
    case w2nk = "W2NK"
    /// `W2PE` — Italy: Società non prevista dalla Legislazione Italiana
    case w2pe = "W2PE"
    /// `W2SQ` — Türkiye: anonim şirket
    case w2sq = "W2SQ"
    /// `W3LD` — France: Groupement agricole foncier
    case w3ld = "W3LD"
    /// `W3WH` — Belgium: Vereniging zonder winstoogmerk
    case w3wh = "W3WH"
    /// `W3YV` — Tuvalu: international company
    case w3yv = "W3YV"
    /// `W4DB` — Canada — Prince Edward Island: private company
    case w4db = "W4DB"
    /// `W4G1` — France: SARL coopérative de transport
    case w4g1 = "W4G1"
    /// `W50Q` — Qatar: Sharikat Almusahama Alkhasa
    case w50q = "W50Q"
    /// `W5H8` — Kosovo: Ndërmarrjet publike sipas ligjit në fuqi për ndërmarrjet publike
    case w5h8 = "W5H8"
    /// `W61J` — Korea (Republic of): Gita beobin
    case w61j = "W61J"
    /// `W6A7` — Switzerland: Patnership limited by shares
    case w6a7 = "W6A7"
    /// `W6JC` — Liechtenstein: Personengesellschaft
    case w6jc = "W6JC"
    /// `W6NI` — Puerto Rico: International Financial Entity (Corporation)
    case w6ni = "W6NI"
    /// `W7HT` — Romania: Autoritatea Administratiei Publice Locale
    case w7ht = "W7HT"
    /// `W7KV` — Kosovo: Ortakëri e Kufizuar
    case w7kv = "W7KV"
    /// `W86L` — Cyprus: Etaireia Periorismenis Efthynis me engyisi, choris metochiko kefalaio
    case w86l = "W86L"
    /// `W8V9` — Türkiye: şahıs şirketi
    case w8v9 = "W8V9"
    /// `W8XG` — Canada — Nova Scotia: sole proprietors
    case w8xg = "W8XG"
    /// `W9FI` — India: Trust
    case w9fi = "W9FI"
    /// `W9K6` — Armenia: Pʿak bazhnetirakan enkerutʿyun
    case w9k6 = "W9K6"
    /// `W9RU` — Kuwait: Alsharikat almuھnay
    case w9ru = "W9RU"
    /// `W9SC` — Italy: Mutua Assicurazione
    case w9sc = "W9SC"
    /// `W9T7` — Guatemala: Sociedad en Comandita Simple
    case w9t7 = "W9T7"
    /// `W9W3` — Portugal: Sociedade Anónima Desportiva
    case w9w3 = "W9W3"
    /// `W9WS` — Mexico: Empresa productiva del estado
    case w9ws = "W9WS"
    /// `W9ZD` — Ghana: Public Limited By Guarantee
    case w9zd = "W9ZD"
    /// `WAK8` — Liechtenstein: Europäische Gesellschaft
    case wak8 = "WAK8"
    /// `WBEC` — Brazil: Sociedade em Comdandita Simples
    case wbec = "WBEC"
    /// `WBKH` — Gibraltar: Private Limited Company
    case wbkh = "WBKH"
    /// `WBQU` — United Kingdom of Great Britain and Northern Ireland: Credit Union
    case wbqu = "WBQU"
    /// `WBWC` — Suriname: Vennootschap onder een firma
    case wbwc = "WBWC"
    /// `WC8Q` — United States of America — Kansas: Business Trust
    case wc8q = "WC8Q"
    /// `WCEP` — Luxembourg: société européenne
    case wcep = "WCEP"
    /// `WDT2` — United States of America — Alabama: Limited Liability Limited Partnership
    case wdt2 = "WDT2"
    /// `WE9D` — United States of America — Colorado: Limited Liability Limited Partnership
    case we9d = "WE9D"
    /// `WEIB` — New Zealand: Partnership
    case weib = "WEIB"
    /// `WEUX` — China: qi ta（ min zheng ）
    case weux = "WEUX"
    /// `WF3Q` — Bermuda: Permit (Overseas) Company
    case wf3q = "WF3Q"
    /// `WFPH` — Canada — British Columbia: Society (includes member-funded society)
    case wfph = "WFPH"
    /// `WFYL` — Saint Kitts and Nevis: private company
    case wfyl = "WFYL"
    /// `WGCY` — France: Groupement d'employeurs
    case wgcy = "WGCY"
    /// `WGEA` — Canada — Quebec: Personne morale sans but lucratif par Loi sur l’organisation municipale de certains territoires
    case wgea = "WGEA"
    /// `WHCI` — Saudi Arabia: sharakah tawsiat basita
    case whci = "WHCI"
    /// `WHCV` — Papua New Guinea: Foreign Enterprise
    case whcv = "WHCV"
    /// `WHGH` — Philippines: stock corporation
    case whgh = "WHGH"
    /// `WI0P` — Canada — New Brunswick: agricultural society
    case wi0p = "WI0P"
    /// `WIU6` — United States of America — North Dakota: Community Development Corporation
    case wiu6 = "WIU6"
    /// `WJ0A` — United Kingdom of Great Britain and Northern Ireland: Partneriaeth Atebolrwydd Cyfyngedig
    case wj0a = "WJ0A"
    /// `WJ30` — Czechia: Družstevní podnik zemědělský
    case wj30 = "WJ30"
    /// `WJXS` — Russian Federation: Zhilishchnyye nakopitel'nyye kooperativy
    case wjxs = "WJXS"
    /// `WKFL` — Sweden: Kommun
    case wkfl = "WKFL"
    /// `WKFR` — Seychelles: International Business Company - Limited Life Company
    case wkfr = "WKFR"
    /// `WL83` — Czechia: Zvláštní organizace pro zastoupení českých zájmů v mezinárodních nevládních organizacích
    case wl83 = "WL83"
    /// `WMJ9` — Vanuatu: Foundation
    case wmj9 = "WMJ9"
    /// `WMTY` — United States of America — Hawaii: Publicity Rights Name Registration
    case wmty = "WMTY"
    /// `WNKG` — United States of America — Alaska: Partnership
    case wnkg = "WNKG"
    /// `WNV6` — United States of America — Wisconsin: Limited Partnership
    case wnv6 = "WNV6"
    /// `WNX1` — Poland: towarzystwo ubezpieczeń wzajemnych
    case wnx1 = "WNX1"
    /// `WO0T` — Czechia: Pobočná mezinárodní odborová organizace
    case wo0t = "WO0T"
    /// `WOK7` — Poland: związki inne niż zawodowe
    case wok7 = "WOK7"
    /// `WP5I` — Ghana: Partnership
    case wp5i = "WP5I"
    /// `WP6R` — United States of America — Louisiana: Co-op
    case wp6r = "WP6R"
    /// `WPCN` — United States of America — Mississippi: Limited Liability Company
    case wpcn = "WPCN"
    /// `WPED` — Italy: Associazione Impresa
    case wped = "WPED"
    /// `WQCR` — Slovakia: Podnikateľ-fyzická osoba-zapís.v OR-podnikajúca súčasne ako osoba so slobodným povolaním
    case wqcr = "WQCR"
    /// `WQLU` — United States of America — Oregon: Limited Liability Partnership
    case wqlu = "WQLU"
    /// `WQRG` — Lithuania: Centrinis bankas
    case wqrg = "WQRG"
    /// `WR09` — United Arab Emirates: Private Joint Stock Company
    case wr09 = "WR09"
    /// `WRF9` — United States of America — Montana: Religious Corporation
    case wrf9 = "WRF9"
    /// `WRU2` — Italy: Società Consortile in Accomandita Semplice
    case wru2 = "WRU2"
    /// `WSE1` — Tunisia: Société à responsabilité limitée
    case wse1 = "WSE1"
    /// `WT0G` — United States of America — Connecticut: Commercial Bank
    case wt0g = "WT0G"
    /// `WTK4` — Bulgaria: Aktsionerno druzhestvo
    case wtk4 = "WTK4"
    /// `WTLP` — Belgium: Burgerlijke vennootschap onder vorm van coöperatieve vennootschap met onbeperkte aansprakelijkheid
    case wtlp = "WTLP"
    /// `WTWK` — United States of America — South Carolina: Limited Liability Partnership
    case wtwk = "WTWK"
    /// `WU7R` — Denmark: Forening med begrænset ansvar
    case wu7r = "WU7R"
    /// `WUAZ` — Argentina: Sociedad Anonima Unipersonal
    case wuaz = "WUAZ"
    /// `WUFK` — Czechia: Odštěpný závod
    case wufk = "WUFK"
    /// `WUJ2` — Poland: uczelnia
    case wuj2 = "WUJ2"
    /// `WUJC` — Korea (Republic of): GongGongDanChe
    case wujc = "WUJC"
    /// `WV3I` — Curaçao: Vereniging
    case wv3i = "WV3I"
    /// `WVIN` — Bulgaria: Ednolichno druzhestvo s ogranichena otgovornost
    case wvin = "WVIN"
    /// `WVQN` — Jamaica: sole trader
    case wvqn = "WVQN"
    /// `WVZF` — Czechia: Účelová zahraničně obchodní organizace
    case wvzf = "WVZF"
    /// `WX45` — Colombia: Sociedad de Responsabilidad Limitada
    case wx45 = "WX45"
    /// `WXNU` — France: SCP d'huissiers
    case wxnu = "WXNU"
    /// `WXPM` — United States of America — Wyoming: credit union
    case wxpm = "WXPM"
    /// `WY1B` — United States of America — North Carolina: Municipal
    case wy1b = "WY1B"
    /// `WYG5` — United States of America — Texas: Limited Liability Company
    case wyg5 = "WYG5"
    /// `WYNO` — Russian Federation: Soyuzy (assotsiatsii) kreditnykh kooperativov
    case wyno = "WYNO"
    /// `WZ78` — Slovenia: komanditna delniška družba
    case wz78 = "WZ78"
    /// `WZDB` — Sweden: Bostadsförening
    case wzdb = "WZDB"
    /// `X088` — Bonaire, Sint Eustatius and Saba: Vereniging zonder rechtsbevoegdheid
    case x088 = "X088"
    /// `X0MP` — United States of America — North Carolina: limited liability partnership
    case x0mp = "X0MP"
    /// `X0SD` — Brazil: Sociedade Anônima
    case x0sd = "X0SD"
    /// `X0SX` — Hungary: Takarék- és hitelszövetkezet
    case x0sx = "X0SX"
    /// `X1EL` — United States of America — North Carolina: Limited Liability Company
    case x1el = "X1EL"
    /// `X2X1` — Barbados: limited partnership
    case x2x1 = "X2X1"
    /// `X2ZT` — Brazil: Sociedade em Comandita por Ações
    case x2zt = "X2ZT"
    /// `X32V` — Italy: Società per Azioni con Socio Unico
    case x32v = "X32V"
    /// `X4EB` — United States of America — Indiana: Benefit Corporation
    case x4eb = "X4EB"
    /// `X4IT` — India: Government Company
    case x4it = "X4IT"
    /// `X4TB` — United States of America — Kansas: Commercial Bank
    case x4tb = "X4TB"
    /// `X62Z` — Italy: Consorzio Di Cui Alla Dlgs 267/2000
    case x62z = "X62Z"
    /// `X6N9` — Canada — Prince Edward Island: co-operative association
    case x6n9 = "X6N9"
    /// `X78I` — France: Fonds à forme sociétale à conseil d'administration
    case x78i = "X78I"
    /// `X7W6` — Monaco: Entreprise en Nom Personnel
    case x7w6 = "X7W6"
    /// `X8J8` — Lithuania: Politinės partijos
    case x8j8 = "X8J8"
    /// `X8ZK` — Belgium: Coöperatieve vennootschap met beperkte aansprakelijkheid van publiek recht
    case x8zk = "X8ZK"
    /// `X94Z` — Slovenia: Republika Slovenija
    case x94z = "X94Z"
    /// `X9J8` — Mexico: Asociación ganadera local especializada
    case x9j8 = "X9J8"
    /// `XAQA` — Cayman Islands: limited partnership
    case xaqa = "XAQA"
    /// `XBK3` — Pakistan: Limited Liability Partnership
    case xbk3 = "XBK3"
    /// `XBKP` — United States of America — Nebraska: Agricultural Association
    case xbkp = "XBKP"
    /// `XBRI` — Russian Federation: Nepravitel'stvennyye mezhdunarodnyye organizatsii
    case xbri = "XBRI"
    /// `XD16` — Portugal: Empresa Metropolitana
    case xd16 = "XD16"
    /// `XDGC` — Mexico: Sociedad cooperativa limitada
    case xdgc = "XDGC"
    /// `XDKS` — Bahamas: Sole Proprietor
    case xdks = "XDKS"
    /// `XDZ7` — Guatemala: Fundacion
    case xdz7 = "XDZ7"
    /// `XE4Z` — South Africa: Public Company
    case xe4z = "XE4Z"
    /// `XE7O` — Honduras: Sociedad de Responsabilidad Limitada
    case xe7o = "XE7O"
    /// `XEN5` — Mexico: Sociedad en comandita simple
    case xen5 = "XEN5"
    /// `XEOV` — Malaysia: Private Limited Company
    case xeov = "XEOV"
    /// `XFHP` — Indonesia: Usaha Dagang
    case xfhp = "XFHP"
    /// `XFUO` — United States of America — Louisiana: Savings and Loan Association
    case xfuo = "XFUO"
    /// `XG70` — Czechia: Právnikcá osoba zřízená zvláštním zákonem zapisovaná do veřejného rejstříku
    case xg70 = "XG70"
    /// `XGKW` — Finland: Ahvenanmaan liikelaitos
    case xgkw = "XGKW"
    /// `XH5R` — Guatemala: Sociedad Anónima
    case xh5r = "XH5R"
    /// `XH7Z` — North Macedonia: Komanditno drustvo
    case xh7z = "XH7Z"
    /// `XH8C` — France: Association déclarée, reconnue d'utilité publique
    case xh8c = "XH8C"
    /// `XHCV` — Australia: Indigenous Corporation
    case xhcv = "XHCV"
    /// `XHN1` — Romania: Societate cu răspundere limitată
    case xhn1 = "XHN1"
    /// `XHT1` — United States of America — Maryland: Sole Proprietorship
    case xht1 = "XHT1"
    /// `XHWP` — Fiji: Non-Profit Organisation
    case xhwp = "XHWP"
    /// `XIGI` — Russian Federation: Munitsipal'nyye kazennyye predpriyatiya
    case xigi = "XIGI"
    /// `XINV` — Russian Federation: Kooperativnyye khozyaystva (koopkhozy)
    case xinv = "XINV"
    /// `XIZI` — United States of America — New York: Limited Liability Partnership
    case xizi = "XIZI"
    /// `XJH3` — Finland: Eurooppayhtiö
    case xjh3 = "XJH3"
    /// `XJHM` — Sweden: Aktiebolag
    case xjhm = "XJHM"
    /// `XJJR` — Russian Federation: Soyuzy (assotsiatsii) obshchin malochislennykh narodov
    case xjjr = "XJJR"
    /// `XJOT` — Switzerland: Investment company with variable capital
    case xjot = "XJOT"
    /// `XK4T` — France: Comité social économique d’entreprise
    case xk4t = "XK4T"
    /// `XK6L` — Puerto Rico: International Financial Entity (Corporation)
    case xk6l = "XK6L"
    /// `XL51` — Bonaire, Sint Eustatius and Saba: Commanditaire vennootschap met één beherend vennoot
    case xl51 = "XL51"
    /// `XLEO` — Belgium: Gewone commanditaire vennootschap met een sociaal oogmerk
    case xleo = "XLEO"
    /// `XLVZ` — Mexico: Sociedad de responsabilidad limitada de capital variable
    case xlvz = "XLVZ"
    /// `XLWA` — Germany: Anstalt des öffentlichen Rechts
    case xlwa = "XLWA"
    /// `XLXU` — Slovakia: Politická strana, politické hnutie
    case xlxu = "XLXU"
    /// `XLZV` — United Kingdom of Great Britain and Northern Ireland: Registered Society
    case xlzv = "XLZV"
    /// `XMXM` — Portugal: Fundo
    case xmxm = "XMXM"
    /// `XNKN` — Russian Federation: Kreditnyye potrebitel'skiye kooperativy grazhdan
    case xnkn = "XNKN"
    /// `XOAD` — Ecuador: Compañía de Responsabilidad Limitada
    case xoad = "XOAD"
    /// `XOYI` — Canada — British Columbia: Credit union
    case xoyi = "XOYI"
    /// `XPE5` — Hong Kong: you xian ze ren he huo
    case xpe5 = "XPE5"
    /// `XPX6` — France: SA coopérative de production (SCOP) à conseil d'administration
    case xpx6 = "XPX6"
    /// `XQBA` — France: Société en participation avec personne morale
    case xqba = "XQBA"
    /// `XQEC` — United States of America — Kansas: Limited Partnership
    case xqec = "XQEC"
    /// `XQLW` — Croatia: Jedinica lokalne ili područne (regionalne) samouprave
    case xqlw = "XQLW"
    /// `XQRI` — Brazil: Sociedade em Conta de Participação
    case xqri = "XQRI"
    /// `XQZX` — Belgium: Burgerlijke vennootschap onder vorm van naamloze vennootschap
    case xqzx = "XQZX"
    /// `XRK7` — Czechia: Politická strana, politické hnutí
    case xrk7 = "XRK7"
    /// `XS49` — Canada — Quebec: Personne morale sans but lucratif par Loi concernant le regroupement et la gestion des commissions scolaires
    case xs49 = "XS49"
    /// `XSNP` — United States of America — New Jersey: Business Corporation
    case xsnp = "XSNP"
    /// `XST3` — United States of America — Mississippi: Business Corporation
    case xst3 = "XST3"
    /// `XSZY` — Mexico: Sociedad anónima financiera popular
    case xszy = "XSZY"
    /// `XTCQ` — Bolivia (Plurinational State of): Sociedad en Comandita Simple.
    case xtcq = "XTCQ"
    /// `XTIQ` — United States of America — Delaware: Corporation
    case xtiq = "XTIQ"
    /// `XTOF` — United States of America — Michigan: Railroad
    case xtof = "XTOF"
    /// `XTZG` — India: Banking Company - Nationalised Bank
    case xtzg = "XTZG"
    /// `XUUL` — United States of America — Arizona: credit union
    case xuul = "XUUL"
    /// `XUVE` — United States of America — Nebraska: Bank
    case xuve = "XUVE"
    /// `XUYT` — Puerto Rico: International Banking Center (LLC)
    case xuyt = "XUYT"
    /// `XVC6` — United States of America — Montana: Series Limited Liability Company
    case xvc6 = "XVC6"
    /// `XW5K` — Canada — Quebec: Personne morale sans but lucratif par Loi sur la Fédération des guides catholiques du Québec
    case xw5k = "XW5K"
    /// `XW5U` — Hungary: Európai részvénytársaság
    case xw5u = "XW5U"
    /// `XWPT` — Ghana: Subsidiary Business Name
    case xwpt = "XWPT"
    /// `XXCZ` — Mauritius: Public company limited by shares
    case xxcz = "XXCZ"
    /// `XXQQ` — Benin: Société en Nom Collectif
    case xxqq = "XXQQ"
    /// `XY6R` — Saint Vincent and the Grenadines: co-operative society
    case xy6r = "XY6R"
    /// `XYGP` — Spain: Fondo de Capital-Riesgo-Pyme
    case xygp = "XYGP"
    /// `Y182` — United States of America — Connecticut: Limited Liability Company
    case y182 = "Y182"
    /// `Y18E` — Czechia: Společný podnik
    case y18e = "Y18E"
    /// `Y1Q4` — Belgium: Private stichting
    case y1q4 = "Y1Q4"
    /// `Y1W1` — France: Section de commune
    case y1w1 = "Y1W1"
    /// `Y1X5` — Slovakia: Štátny podnik
    case y1x5 = "Y1X5"
    /// `Y1ZD` — United States of America — New Mexico: Savings and Loan Association
    case y1zd = "Y1ZD"
    /// `Y21X` — Puerto Rico: Sponsored By Municipal Corporation
    case y21x = "Y21X"
    /// `Y2L3` — Botswana: Companies limited by Guarantee
    case y2l3 = "Y2L3"
    /// `Y33B` — Canada — Prince Edward Island: partnership
    case y33b = "Y33B"
    /// `Y3T2` — Puerto Rico: Special Corporation for Municipal Development
    case y3t2 = "Y3T2"
    /// `Y3ZB` — Netherlands: Societas Cooperativa Europaea
    case y3zb = "Y3ZB"
    /// `Y45C` — Taiwan (Province of China): Yǒuxiàn gōngsī
    case y45c = "Y45C"
    /// `Y45Q` — Slovakia: Podnik zahraničného obchodu
    case y45q = "Y45Q"
    /// `Y485` — Canada — Manitoba: Credit union or Caisse Populaire
    case y485 = "Y485"
    /// `Y4VA` — France: Département
    case y4va = "Y4VA"
    /// `Y5L0` — United States of America — North Carolina: Mutual Burial Association
    case y5l0 = "Y5L0"
    /// `Y64R` — Hungary: Országos betétbiztosítási alap
    case y64r = "Y64R"
    /// `Y7BG` — United States of America — Nebraska: Hospital Authority
    case y7bg = "Y7BG"
    /// `Y7G8` — France: Caisse locale de crédit mutuel
    case y7g8 = "Y7G8"
    /// `Y7LW` — Puerto Rico: Low Profit LLC
    case y7lw = "Y7LW"
    /// `Y7PW` — United States of America — Wisconsin: Savings and Loan Association
    case y7pw = "Y7PW"
    /// `Y80K` — Canada — Nova Scotia: Non-profit Corporations
    case y80k = "Y80K"
    /// `Y8CL` — Gibraltar: Limited Partnerships
    case y8cl = "Y8CL"
    /// `Y8F1` — Chile: Organización Deportiva
    case y8f1 = "Y8F1"
    /// `Y8GA` — United States of America — Michigan: credit union
    case y8ga = "Y8GA"
    /// `Y8LH` — Liechtenstein: Gesellschaft mit beschränkter Haftung
    case y8lh = "Y8LH"
    /// `Y8W9` — Singapore: Exempt Private Company
    case y8w9 = "Y8W9"
    /// `Y8WC` — France: Groupement de coopération sanitaire à gestion privée
    case y8wc = "Y8WC"
    /// `Y9F2` — United States of America — Nevada: Industrial Bank
    case y9f2 = "Y9F2"
    /// `YA01` — Germany: Gemeinnützige Aktiengesellschaft
    case ya01 = "YA01"
    /// `YA7H` — Russian Federation: Chastnyye uchrezhdeniya
    case ya7h = "YA7H"
    /// `YA9S` — Croatia: Zajednica ustanova
    case ya9s = "YA9S"
    /// `YADL` — France: Autorité administrative ou publique indépendante
    case yadl = "YADL"
    /// `YB0U` — Malta: European Economic Interest Grouping
    case yb0u = "YB0U"
    /// `YB1Q` — Guam: limited liability partnership
    case yb1q = "YB1Q"
    /// `YB59` — Slovakia: Podnik so zahraničnou majetkovou účasťou
    case yb59 = "YB59"
    /// `YBHM` — Belgium: Europese Coöperatieve Vennootschap
    case ybhm = "YBHM"
    /// `YBMJ` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les assurances
    case ybmj = "YBMJ"
    /// `YCQM` — Cook Islands: International Trust
    case ycqm = "YCQM"
    /// `YCV2` — Aruba: Commanditaire vennootschap (1+)
    case ycv2 = "YCV2"
    /// `YDNQ` — Chile: Fundación
    case ydnq = "YDNQ"
    /// `YF99` — Slovakia: Verejnoprávna inštitúcia
    case yf99 = "YF99"
    /// `YFZL` — Costa Rica: Fideicomiso de Partidos Políticos
    case yfzl = "YFZL"
    /// `YG5M` — Canada — British Columbia: Company (includes community contribution company and unlimited liability company)
    case yg5m = "YG5M"
    /// `YGHZ` — Russian Federation: Payevyye investitsionnyye fondy
    case yghz = "YGHZ"
    /// `YGN4` — Slovakia: Organizačná zložka podniku
    case ygn4 = "YGN4"
    /// `YHI5` — France: Pôle métropolitain
    case yhi5 = "YHI5"
    /// `YI42` — Norway: Aksjeselskap
    case yi42 = "YI42"
    /// `YIIS` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les corporations religieuses
    case yiis = "YIIS"
    /// `YJ4C` — Germany: Kirchliche Stiftung des öffentlichen Rechts
    case yj4c = "YJ4C"
    /// `YJ6A` — Russian Federation: Obshchestvennyye dvizheniya
    case yj6a = "YJ6A"
    /// `YJM5` — France: Officier public ou ministériel
    case yjm5 = "YJM5"
    /// `YJZ3` — United States of America — North Carolina: Registered Limited Liability Limited Partnership
    case yjz3 = "YJZ3"
    /// `YK5G` — Finland: Säätiö
    case yk5g = "YK5G"
    /// `YLZL` — Poland: spółka cywilna
    case ylzl = "YLZL"
    /// `YMB7` — Guatemala: Sociedad de Emprendimiento
    case ymb7 = "YMB7"
    /// `YMBC` — Peru: Sociedad legal
    case ymbc = "YMBC"
    /// `YMLD` — Portugal: Agrupamento Complementar de Empresas
    case ymld = "YMLD"
    /// `YN9X` — Fiji: Government Owned Trading Entity
    case yn9x = "YN9X"
    /// `YN9Y` — Saint Vincent and the Grenadines: international business company - company limited by shares - segregated cell company
    case yn9y = "YN9Y"
    /// `YNEH` — Guam: Savings and Loan Association
    case yneh = "YNEH"
    /// `YOB3` — United States of America — North Dakota: Electric Cooperative Corporations
    case yob3 = "YOB3"
    /// `YOIW` — Costa Rica: Sociedad Anónima
    case yoiw = "YOIW"
    /// `YOMR` — Hungary: Őstermelők családi gazdasága
    case yomr = "YOMR"
    /// `YOP9` — Virgin Islands (British): segregated portfolio company
    case yop9 = "YOP9"
    /// `YOUG` — United States of America — Hawaii: Commercial Registered Agent
    case youg = "YOUG"
    /// `YP04` — United States of America — Massachusetts: Commercial Bank
    case yp04 = "YP04"
    /// `YP63` — Costa Rica: Sociedad en comandita
    case yp63 = "YP63"
    /// `YPG1` — Tanzania: Partnership
    case ypg1 = "YPG1"
    /// `YQDQ` — United States of America — Nebraska: Domestic Limited Liability Partnership
    case yqdq = "YQDQ"
    /// `YQLO` — United States of America — Utah: Uniform Limited Cooperative Association
    case yqlo = "YQLO"
    /// `YRGM` — Switzerland: District administration
    case yrgm = "YRGM"
    /// `YRI0` — Mexico: Fideicomiso público de fomento económico
    case yri0 = "YRI0"
    /// `YRIU` — Slovakia: Nezisková organizácia
    case yriu = "YRIU"
    /// `YRMK` — Uruguay: Sociedad Anónima
    case yrmk = "YRMK"
    /// `YRUJ` — Canada — Quebec: Société en nom collectif
    case yruj = "YRUJ"
    /// `YRXK` — Lithuania: Savivaldybių įmonės
    case yrxk = "YRXK"
    /// `YS05` — United States of America — South Carolina: Savings and Loan Association
    case ys05 = "YS05"
    /// `YS16` — Puerto Rico: Corporation
    case ys16 = "YS16"
    /// `YSBJ` — Solomon Islands: Overseas Company
    case ysbj = "YSBJ"
    /// `YSP9` — India: Private Limited Company
    case ysp9 = "YSP9"
    /// `YTMC` — Norway: Interkommunalt selskap
    case ytmc = "YTMC"
    /// `YTY3` — United States of America — Illinois: Non-deposit Trust Company
    case yty3 = "YTY3"
    /// `YUCL` — France: Institution de retraite complémentaire
    case yucl = "YUCL"
    /// `YVE8` — Slovakia: Európske zoskupenie hospodárskych záujmov
    case yve8 = "YVE8"
    /// `YVGA` — Saudi Arabia: sharikat muhasa
    case yvga = "YVGA"
    /// `YVPW` — Serbia: Akcionarsko društvo
    case yvpw = "YVPW"
    /// `YVRM` — San Marino: Società anonima
    case yvrm = "YVRM"
    /// `YVSB` — United States of America — New York: Non-deposit Trust Company
    case yvsb = "YVSB"
    /// `YVSL` — Tunisia: Société anonyme
    case yvsl = "YVSL"
    /// `YVWB` — Slovakia: Záujmové združenie fyzických osôb bez právnej spôsobilosti
    case yvwb = "YVWB"
    /// `YVZD` — Guernsey — Guernsey: unlimited liability company
    case yvzd = "YVZD"
    /// `YW6W` — Costa Rica: Empresa Individual de Responsabilidad Limitada
    case yw6w = "YW6W"
    /// `YWK0` — United States of America — Nebraska: Foreign Limited Partnership
    case ywk0 = "YWK0"
    /// `YX4E` — France: Société civile de placement collectif immobilier (SCPI)
    case yx4e = "YX4E"
    /// `YXJ5` — China: zong jiao huo dong chang suo
    case yxj5 = "YXJ5"
    /// `YXX0` — Sint Maarten: commanditaire vennootschap
    case yxx0 = "YXX0"
    /// `YY5A` — United States of America — Texas: Non-deposit Trust Company
    case yy5a = "YY5A"
    /// `YYZO` — Costa Rica: Asociación Cooperativa
    case yyzo = "YYZO"
    /// `Z016` — United States of America — Louisiana: Collection Agency
    case z016 = "Z016"
    /// `Z0EY` — United Kingdom of Great Britain and Northern Ireland: Limited Liability Partnership
    case z0ey = "Z0EY"
    /// `Z0JP` — France: Établissement public national à caractére industriel ou commercial non doté d'un comptable public
    case z0jp = "Z0JP"
    /// `Z0NE` — Portugal: Fundação
    case z0ne = "Z0NE"
    /// `Z2AQ` — Russian Federation: Negosudarstvennyye pensionnyye fondy
    case z2aq = "Z2AQ"
    /// `Z2FQ` — France: Groupement d'intérêt public (GIP)
    case z2fq = "Z2FQ"
    /// `Z2OV` — United Arab Emirates — Abu Dhabi: DLT Foundation
    case z2ov = "Z2OV"
    /// `Z38E` — Finland: Säästöpankki
    case z38e = "Z38E"
    /// `Z3BF` — Czechia: Zemědělské družstvo
    case z3bf = "Z3BF"
    /// `Z3P8` — United Arab Emirates — Ras Al Khaimah: Unlimited Company
    case z3p8 = "Z3P8"
    /// `Z3SH` — Russian Federation: Munitsipal'nyye unitarnyye predpriyatiya
    case z3sh = "Z3SH"
    /// `Z3Y0` — Russian Federation: Sadovodcheskiye, ogorodnicheskiye ili dachnyye nekommercheskiye partnerstva
    case z3y0 = "Z3Y0"
    /// `Z3Y2` — Cook Islands: Foreign Company
    case z3y2 = "Z3Y2"
    /// `Z4YC` — Cambodia: General Partnership
    case z4yc = "Z4YC"
    /// `Z4ZP` — Solomon Islands: Public Company
    case z4zp = "Z4ZP"
    /// `Z54A` — United States of America — Rhode Island: Business Corporation
    case z54a = "Z54A"
    /// `Z5WG` — France: Groupement pastoral
    case z5wg = "Z5WG"
    /// `Z6MF` — Canada — Quebec: Selon la loi par Loi spéciale du Québec à caractère privé
    case z6mf = "Z6MF"
    /// `Z6ZU` — New Zealand: Cooperative Company
    case z6zu = "Z6ZU"
    /// `Z73Z` — United States of America — Massachusetts: Voluntary Association and Business Trusts
    case z73z = "Z73Z"
    /// `Z7ER` — United States of America: Mutual Savings and Loan Holding Company
    case z7er = "Z7ER"
    /// `Z7ZX` — Portugal — Madeira: Sucursal Financeira Exterior
    case z7zx = "Z7ZX"
    /// `Z89H` — Niger: Société en Commandite par actions
    case z89h = "Z89H"
    /// `Z92A` — United States of America — Wisconsin: Limited Liability Partnership
    case z92a = "Z92A"
    /// `Z9C5` — United States of America — Oregon: Non-deposit Trust Company
    case z9c5 = "Z9C5"
    /// `Z9CH` — United States of America — South Dakota: Limited Liability Partnership
    case z9ch = "Z9CH"
    /// `Z9IE` — Saudi Arabia: sharikat 'ajnabia
    case z9ie = "Z9IE"
    /// `Z9K8` — France: Association d'avocats à responsabilité professionnelle individuelle
    case z9k8 = "Z9K8"
    /// `Z9KU` — Oman: sharikat muhasa
    case z9ku = "Z9KU"
    /// `ZACY` — Canada — New Brunswick: trust company
    case zacy = "ZACY"
    /// `ZAIS` — Mexico: Sociedad en nombre colectivo de capital variable
    case zais = "ZAIS"
    /// `ZCFU` — Cambodia: Foreign Company
    case zcfu = "ZCFU"
    /// `ZCHO` — United States of America — Colorado: Cooperative Association
    case zcho = "ZCHO"
    /// `ZD39` — United States of America — Ohio: Limited Partnership
    case zd39 = "ZD39"
    /// `ZD74` — Azerbaijan: Fondlar
    case zd74 = "ZD74"
    /// `ZDW0` — United States of America — Nebraska: credit union
    case zdw0 = "ZDW0"
    /// `ZE1G` — Papua New Guinea: Overseas Company
    case ze1g = "ZE1G"
    /// `ZE81` — South Africa: Co-operatives (Tertiary)
    case ze81 = "ZE81"
    /// `ZECH` — France: Syndicat mixte ouvert
    case zech = "ZECH"
    /// `ZEZ2` — United States of America — Nebraska: Foreign Limited Cooperative Association
    case zez2 = "ZEZ2"
    /// `ZFFA` — Luxembourg: Etablissement public
    case zffa = "ZFFA"
    /// `ZFQS` — Croatia: Ustanova
    case zfqs = "ZFQS"
    /// `ZG2I` — Slovakia: Spoločenstvá vlastníkov pozemkov, bytov a pod.
    case zg2i = "ZG2I"
    /// `ZG6S` — Italy: Ente Pubblico Economico
    case zg6s = "ZG6S"
    /// `ZGEX` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les services correctionnels
    case zgex = "ZGEX"
    /// `ZGPY` — Isle of Man: Public Limited by Shares (1931 Act)
    case zgpy = "ZGPY"
    /// `ZGYA` — Russian Federation: Torgovo-promyshlennyye palaty
    case zgya = "ZGYA"
    /// `ZH3O` — Russian Federation: Khozyaystvennyye partnerstva
    case zh3o = "ZH3O"
    /// `ZHED` — Virgin Islands (British): company limited by guarantee that is authorised to issue shares
    case zhed = "ZHED"
    /// `ZHHH` — Chile: Comunidad o Asociación Indígena
    case zhhh = "ZHHH"
    /// `ZHT0` — Belize: Company Limited by Guarantee
    case zht0 = "ZHT0"
    /// `ZHZP` — United States of America — Rhode Island: Cooperative
    case zhzp = "ZHZP"
    /// `ZILA` — Portugal: Estabelecimento Individual de Responsabilidade Limitada
    case zila = "ZILA"
    /// `ZJEX` — Philippines: religious corporation
    case zjex = "ZJEX"
    /// `ZJPG` — United States of America — District of Columbia: Nonprofit Corporation
    case zjpg = "ZJPG"
    /// `ZJS8` — Ireland: Industrial and Provident Society
    case zjs8 = "ZJS8"
    /// `ZJTK` — United States of America — Massachusetts: Domestic Business  Corporation
    case zjtk = "ZJTK"
    /// `ZJZB` — Saint Kitts and Nevis: exempt private company
    case zjzb = "ZJZB"
    /// `ZKAF` — Russian Federation: Polnyye tovarishchestva
    case zkaf = "ZKAF"
    /// `ZKTC` — Curaçao: Trust
    case zktc = "ZKTC"
    /// `ZLIW` — United States of America — Hawaii: Trademark
    case zliw = "ZLIW"
    /// `ZLTD` — Bermuda: Overseas (Permit) Partnership
    case zltd = "ZLTD"
    /// `ZM5P` — France: SA d'économie mixte à directoire
    case zm5p = "ZM5P"
    /// `ZMTL` — Finland: Kuolinpesä
    case zmtl = "ZMTL"
    /// `ZMY8` — Croatia: Zaklada
    case zmy8 = "ZMY8"
    /// `ZNHF` — Russian Federation: Gosudarstvennyye kazennyye uchrezhdeniya sub"yektov Rossiyskoy Federatsii
    case znhf = "ZNHF"
    /// `ZOK2` — Belgium: Landbouwvennootschap
    case zok2 = "ZOK2"
    /// `ZOSP` — Niger: Société en Commandite simple
    case zosp = "ZOSP"
    /// `ZPEZ` — France: Association syndicale libre
    case zpez = "ZPEZ"
    /// `ZPOY` — Serbia: Ortačko društvo
    case zpoy = "ZPOY"
    /// `ZPRC` — United States of America — Alaska: credit union
    case zprc = "ZPRC"
    /// `ZQ0Q` — Norway: Eierseksjonssameie
    case zq0q = "ZQ0Q"
    /// `ZQ6S` — United Kingdom of Great Britain and Northern Ireland: Old Public Company
    case zq6s = "ZQ6S"
    /// `ZQ9B` — France: Exploitant public
    case zq9b = "ZQ9B"
    /// `ZQAQ` — Hungary: Közjegyzői iroda
    case zqaq = "ZQAQ"
    /// `ZQEN` — Tonga: Overseas Company
    case zqen = "ZQEN"
    /// `ZQIT` — France: SA coopérative de consommation à directoire
    case zqit = "ZQIT"
    /// `ZQO8` — Czechia: Evropská společnost
    case zqo8 = "ZQO8"
    /// `ZQQU` — Canada — Quebec: Personne morale sans but lucratif par Loi sur la société Saint-Jean-Baptiste du Québec
    case zqqu = "ZQQU"
    /// `ZQZW` — United States of America — Louisiana: Foreign Public Benefit
    case zqzw = "ZQZW"
    /// `ZRPO` — Denmark: Aktieselskab
    case zrpo = "ZRPO"
    /// `ZSFX` — Belgium: Naamloze vennootschap met een sociaal oogmerk
    case zsfx = "ZSFX"
    /// `ZSWE` — Portugal: Empresa Regional
    case zswe = "ZSWE"
    /// `ZTUI` — Mauritius: Association
    case ztui = "ZTUI"
    /// `ZU32` — Czechia: Jiné družstvo
    case zu32 = "ZU32"
    /// `ZU9S` — Italy: Piccola Società Cooperativa a Responsabilità Limitata
    case zu9s = "ZU9S"
    /// `ZUDG` — Ecuador: Fundacion
    case zudg = "ZUDG"
    /// `ZUHK` — Belgium: Stichting van openbaar nut
    case zuhk = "ZUHK"
    /// `ZULC` — United States of America — North Dakota: Development Corporation
    case zulc = "ZULC"
    /// `ZVS9` — United States of America — Maryland: Nonstock Corporation
    case zvs9 = "ZVS9"
    /// `ZVVM` — Poland: osoby fizyczne prowadzące działalność gospodarczą
    case zvvm = "ZVVM"
    /// `ZWYK` — Malaysia — Labuan: Labuan Company (Limited By Share)
    case zwyk = "ZWYK"
    /// `ZX1F` — Canada — Quebec: Personne morale sans but lucratif par Loi sur les compagnies de cimetières catholiques romains
    case zx1f = "ZX1F"
    /// `ZXHJ` — France: Société d'exercice libéral à forme anonyme à conseil d'administration
    case zxhj = "ZXHJ"
    /// `ZXVG` — Mexico: Sociedad en comandita por acciones de capital variable
    case zxvg = "ZXVG"
    /// `ZXZ7` — United States of America — Wisconsin: Common Law Trust (Business Trust)
    case zxz7 = "ZXZ7"
    /// `ZY4E` — Canada — New Brunswick: appellation commerciale - propriétaire unique
    case zy4e = "ZY4E"
    /// `ZY9X` — France: Entrepreneur individuel
    case zy9x = "ZY9X"
    /// `ZYQX` — Uruguay: Persona Jurídica de Derecho Público No Estatal
    case zyqx = "ZYQX"
    /// `ZZ0X` — France: Établissement public des cultes d'Alsace-Lorraine
    case zz0x = "ZZ0X"
    /// `ZZGG` — United Kingdom of Great Britain and Northern Ireland: Co-operative Society
    case zzgg = "ZZGG"
    /// `ZZKE` — Poland: stowarzyszenie i związki stowarzyszeń
    case zzke = "ZZKE"
    /// `ZZOG` — Italy: Società Tra Professionisti
    case zzog = "ZZOG"

    /// Fast O(1) case-insensitive initializer from a 4-character ELF code string.
    public init?(code: String) {
        let normalized = code.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        guard let matched = Self.byRawValue[normalized] else { return nil }
        self = matched
    }

    public var description: String { rawValue }
}