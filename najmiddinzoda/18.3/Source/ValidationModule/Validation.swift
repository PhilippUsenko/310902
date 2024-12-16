import Foundation

public struct Validation {
    public static func validateNonEmptyString(_ input: String) -> String? {
        return input.isEmpty ? nil : input
    }
    
    public static func validateBirthDate(_ date: Date) -> Bool {
        return date <= Date()
    }
}
