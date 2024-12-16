public struct SumCalculator {
    public static let calculateSumOfDigits: (Int) -> Int = { number in
        return String(number).compactMap { $0.wholeNumberValue }.reduce(0, +)
    }
}
