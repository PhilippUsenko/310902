func isPrime() -> Bool {
        guard number >= 2 else { return false }
        for i in 2...Int(sqrt(number)) {
            if Int(number) % i == 0 {
                return false
            }
        }
        return true
}
protocol PrimeCheckable {
    func isPrime() -> Bool
}