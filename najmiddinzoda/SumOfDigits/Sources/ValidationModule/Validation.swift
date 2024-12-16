public enum ValidationError: String, Error {
    case notNaturalNumber = "Число должно быть натуральным (целым и больше нуля)."
}

public struct Validation {
    public static func validateNaturalNumber(_ number: Int) throws {
        guard number > 0 else {
            throw ValidationError.notNaturalNumber
        }
    }
}
