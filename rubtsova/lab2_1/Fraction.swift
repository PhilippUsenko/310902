import Foundation

struct Fraction {
    var numerator: Int
    var denominator: Int
    
    // Инициализатор
    init(numerator: Int, denominator: Int) {
    
        guard denominator != 0 else {
            fatalError("Знаменатель не может быть равен нулю.")
        }
        self.numerator = numerator
        self.denominator = denominator
        self.simplify() 
    }
    
    private mutating func simplify() {
        let gcdValue = gcd(numerator, denominator)
        numerator /= gcdValue
        denominator /= gcdValue
    }
    
    // НОД
    private func gcd(_ a: Int, _ b: Int) -> Int {
        var a = a
        var b = b
        while b != 0 {
            let temp = b
            b = a % b
            a = temp
        }
        return abs(a)
    }
    
    static func divide(_ first: Fraction, _ second: Fraction) -> Fraction {
        let newNumerator = first.numerator * second.denominator
        let newDenominator = first.denominator * second.numerator
        return Fraction(numerator: newNumerator, denominator: newDenominator)
    }
}