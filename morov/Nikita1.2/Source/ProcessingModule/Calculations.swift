import Foundation

public struct Calculations {
    /// Вычисляет среднее арифметическое чисел
    public static let calculateAverage: ([Int]) -> Double = { numbers in
        guard !numbers.isEmpty else { return 0 }
        let sum = numbers.reduce(0, +)
        return Double(sum) / Double(numbers.count)
    }

    /// Подсчитывает количество букв в строке
    public static let countLetters: (String) -> Int = { input in
        input.filter { $0.isLetter }.count
    }
}
