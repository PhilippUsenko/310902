import Foundation

public struct InputValidation {
    /// Проверяет, что строка содержит только числа, разделённые пробелами
    public static let validateIntegerSequence: (String) -> [Int]? = { input in
        let numbers = input.split(separator: " ").compactMap { Int($0) }
        return numbers.isEmpty ? nil : numbers
    }

    /// Проверяет, что строка непустая
    public static let validateNonEmptyString: (String) -> String? = { input in
        let trimmedInput = input.components(separatedBy: .whitespacesAndNewlines).joined()
        return trimmedInput.isEmpty ? nil : input
    }
}
