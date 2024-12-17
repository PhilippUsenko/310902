public struct InputValidation {
    public static let validateNaturalNumber: (String) -> Int? = { input in
        guard let number = Int(input), number > 0 else {
            return nil
        }
        return number
    }
}
