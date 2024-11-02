public func multiplyDecimals(_ a: Double, _ b: Double) -> Double {
    return a * b
}

public struct Fraction {
    var numerator: Int
    var denominator: Int
    init(numerator: Int, denominator: Int) {
        precondition(denominator != 0, "Знаменатель не может быть равен нулю.")
        self.numerator = numerator
        self.denominator = denominator
    }
    func reduced() -> Fraction {
        let gcdValue = gcd(abs(numerator), abs(denominator))
        let sign = (denominator < 0) ? -1 : 1
        return Fraction(numerator: (numerator / gcdValue) * sign,
                       denominator: abs(denominator) / gcdValue)
    }
}

public func gcd(_ a: Int, _ b: Int) -> Int {
    var a = a
    var b = b
    while b != 0 {
        let temp = b
        b = a % b
        a = temp
    }
    return a
}

public func multiplyFractions(_ f1: Fraction, _ f2: Fraction) -> Fraction {
    let num = f1.numerator * f2.numerator
    let den = f1.denominator * f2.denominator
    return Fraction(numerator: num, denominator: den).reduced()
}