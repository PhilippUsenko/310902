public struct Validation {
    public static func validateMinutes(_ minutes: Int) -> Bool {
        return minutes >= 0 && minutes < 60
    }
}
