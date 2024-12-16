import Foundation

public struct InputValidation {
    public static func validateNonEmptyString(_ input: String) -> String? {
        let trimmedInput = input.trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmedInput.isEmpty ? nil : trimmedInput
    }
}
