    import Foundation

    // Функция для проверки, содержит ли номер ровно три одинаковые цифры
    func hasThreeIdenticalDigits(_ number: String) -> Bool {
        var digitCount = [Character: Int]()

        for digit in number {
            digitCount[digit, default: 0] += 1
        }

        return digitCount.values.contains(3) && digitCount.values.contains(1)
    }
