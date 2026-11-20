import Foundation

/// Pure-Swift RFC 4180 compliant CSV parser supporting UTF-8 BOMs, quoted fields,
/// escaped double-quotes (`""`), embedded commas, and embedded line breaks.
public enum RFC4180CSVParser {
    /// Parses RFC 4180 CSV text into an array of rows, where each row is an array of field strings.
    public static func parse(_ text: String, delimiter: Character = ",") throws -> [[String]] {
        guard !text.isEmpty else { return [] }

        var rows: [[String]] = []
        var currentRow: [String] = []
        var currentField = ""
        currentField.reserveCapacity(64)

        var inQuotes = false
        var quoteStartLine = 1
        var line = 1
        var atFieldStart = true

        var index = text.startIndex
        if index < text.endIndex, text[index] == "\u{FEFF}" {
            index = text.index(after: index)
        }

        while index < text.endIndex {
            let ch = text[index]

            if inQuotes {
                if ch == "\"" {
                    let next = text.index(after: index)
                    if next < text.endIndex, text[next] == "\"" {
                        currentField.append("\"")
                        index = text.index(after: next)
                        continue
                    } else {
                        inQuotes = false
                        index = next
                        // After a closing quote, the next character (if any) must be delimiter or newline.
                        if index < text.endIndex {
                            let following = text[index]
                            if following != delimiter && following != "\n" && following != "\r" && following != "\r\n" {
                                throw ISO20275Error.unexpectedCharacterAfterQuote(line: line, character: following)
                            }
                        }
                        continue
                    }
                } else {
                    if ch == "\n" || ch == "\r\n" || ch == "\r" {
                        line += 1
                    }
                    currentField.append(ch)
                }
            } else {
                if ch == "\"" && atFieldStart {
                    inQuotes = true
                    quoteStartLine = line
                    atFieldStart = false
                } else if ch == delimiter {
                    currentRow.append(currentField)
                    currentField.removeAll(keepingCapacity: true)
                    atFieldStart = true
                } else if ch == "\r\n" || ch == "\n" || ch == "\r" {
                    // Note: Swift treats "\r\n" as a single extended grapheme cluster `Character`.
                    currentRow.append(currentField)
                    currentField.removeAll(keepingCapacity: true)
                    rows.append(currentRow)
                    currentRow = []
                    currentRow.reserveCapacity(16)
                    atFieldStart = true
                    line += 1
                } else {
                    currentField.append(ch)
                    atFieldStart = false
                }
            }

            index = text.index(after: index)
        }

        if inQuotes {
            throw ISO20275Error.unterminatedQuotedField(line: quoteStartLine)
        }

        if !currentField.isEmpty || !currentRow.isEmpty {
            currentRow.append(currentField)
            rows.append(currentRow)
        }

        return rows
    }
}

/// Fast, allocation-light UTC parser and formatter for ISO 8601 `YYYY-MM-DD` calendar dates.
enum ISO8601CalendarDate {
    private static let utcCalendar: Calendar = {
        var calendar = Calendar(identifier: .gregorian)
        calendar.timeZone = TimeZone(secondsFromGMT: 0)!
        return calendar
    }()

    static func parse(_ string: String) -> Date? {
        let utf8 = Array(string.utf8)
        // Expect exact 10-byte ASCII "YYYY-MM-DD"
        guard utf8.count == 10,
              utf8[4] == UInt8(ascii: "-"),
              utf8[7] == UInt8(ascii: "-"),
              let year = parseDigits(utf8, 0..<4),
              let month = parseDigits(utf8, 5..<7),
              let day = parseDigits(utf8, 8..<10),
              (1...12).contains(month),
              (1...31).contains(day)
        else {
            return nil
        }

        let components = DateComponents(
            calendar: utcCalendar,
            timeZone: utcCalendar.timeZone,
            year: year,
            month: month,
            day: day
        )
        guard let date = components.date,
              utcCalendar.component(.month, from: date) == month,
              utcCalendar.component(.day, from: date) == day
        else {
            return nil
        }
        return date
    }

    static func format(_ date: Date) -> String {
        let comps = utcCalendar.dateComponents([.year, .month, .day], from: date)
        let y = comps.year ?? 0
        let m = comps.month ?? 1
        let d = comps.day ?? 1
        return String(format: "%04d-%02d-%02d", y, m, d)
    }

    private static func parseDigits(_ bytes: [UInt8], _ range: Range<Int>) -> Int? {
        var value = 0
        for i in range {
            let b = bytes[i]
            guard b >= UInt8(ascii: "0") && b <= UInt8(ascii: "9") else { return nil }
            value = value * 10 + Int(b - UInt8(ascii: "0"))
        }
        return value
    }
}
