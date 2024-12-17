public struct NumberOperations {
    public static let findDivisors: (Int) -> [Int] = { number in
        guard number > 0 else { return [] }
        return (1...number).filter { number % $0 == 0 }
    }
}
