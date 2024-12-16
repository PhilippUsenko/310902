import Foundation

public struct Validation {
    public static func validateDenominator(_ denominator: Int) throws {
        guard denominator != 0 else {
            throw ValidationError.invalidDenominator
        }
    }
}

public enum ValidationError: Error, CustomStringConvertible {
    case invalidDenominator

    public var description: String {
        switch self {
        case .invalidDenominator:
            return "Знаменатель не может быть равен 0."
        }
    }
}
