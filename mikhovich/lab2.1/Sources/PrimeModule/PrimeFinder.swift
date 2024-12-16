public struct PrimeFinder {
    public static func findPrimes(upTo p: Int) -> [Int] {
        guard p >= 2 else { return [] }

        var isPrime = [Bool](repeating: true, count: p + 1)
        isPrime[0] = false
        isPrime[1] = false

        for i in 2...Int(Double(p).squareRoot()) {
            if isPrime[i] {
                for multiple in stride(from: i * i, through: p, by: i) {
                    isPrime[multiple] = false
                }
            }
        }

        return (2...p).compactMap { isPrime[$0] ? $0 : nil }
    }
}
