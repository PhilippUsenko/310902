import Foundation

func countCarNumbersWithDuplicateDigits() -> Int {
    var count = 0

    for number in 1000...9999 {
        let digits = Array(String(number))
        let uniqueDigits = Set(digits)

        // Если количество уникальных цифр меньше, чем общее количество цифр (4),
        // значит, есть дублирующиеся цифры.
        if uniqueDigits.count <= 3 {
            count += 1
        }
    }
    return count}

let result = countCarNumbersWithDuplicateDigits()
print("Количество номеров с двумя или более одинаковыми цифрами: \(result)")

