protocol FibonacciCheckable {
    func isFibonacci() -> Bool
}

    func isFibonacci() -> Bool {
        let n = number
        let x1 = 5 * n * n
        let x2 = x1 + 4
        let x3 = x1 - 4

        return isPerfectSquare(x: x2) || isPerfectSquare(x: x3)
    }

    private func isPerfectSquare(x: Double) -> Bool {
        let s = Int(sqrt(x))
        return s * s == Int(x)
    }