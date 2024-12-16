import Foundation

public struct Validation {
    public static func validateNonEmptyString(_ value: String, fieldName: String) throws {
        guard !value.trimmingCharacters(in: .whitespaces).isEmpty else {
            throw ValidationError.emptyField(fieldName: fieldName)
        }
    }
    public static func validateBirthYear(_ year: Int) throws {
        let currentYear = Calendar.current.component(.year, from: Date())
        guard (1900...currentYear).contains(year) else {
            throw ValidationError.invalidYear(year: year)
        }
    }
}

public enum ValidationError: Error, CustomStringConvertible {
    case emptyField(fieldName: String)
    case invalidYear(year: Int)
    
    public var description: String {
        switch self {
        case .emptyField(let fieldName):
            return "Поле '\(fieldName)' не должно быть пустым."
        case .invalidYear(let year):
            return "Год '\(year)' некорректен."
        }
    }
}
