
import Foundation

public enum ValidationError: Error, CustomStringConvertible {
    case invalidAge
    case invalidName

    public var description: String {
        switch self {
        case .invalidAge:
            return "Возраст должен быть положительным числом."
        case .invalidName:
            return "Имя не может быть пустым."
        }
    }
}

public class Validation {
    public static func validateAge(_ age: Int) throws {
        if age <= 0 {
            throw ValidationError.invalidAge
        }
    }

    public static func validateName(_ name: String) throws {
        if name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
            throw ValidationError.invalidName
        }
    }
}
