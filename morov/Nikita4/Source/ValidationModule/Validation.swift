
import Foundation

public enum ValidationError: Error, CustomStringConvertible {
    case invalidNumber

    public var description: String {
        switch self {
        case .invalidNumber:
            return "Некорректное число. Пожалуйста, введите число."
        }
    }
}

public class Validation {
    public static func validateNumber<T>(_ input: T) throws -> T where T: LosslessStringConvertible {
        guard let _ = Double(String(describing: input)) else {
            throw ValidationError.invalidNumber
        }
        return input
    }
}
