import Foundation

class FractionConverter {
    static func gcd(_ a: Int, _ b: Int) -> Int {
        return b == 0 ? a : gcd(b, a % b)
    }

    static func decimalToFraction(decimal: Double) -> (numerator: Int, denominator: Int) {
        let precision = 1000000 // Определяем точность
        let numerator = Int(decimal * Double(precision))
        let denominator = precision
        let divisor = gcd(numerator, denominator)
        return (numerator: numerator / divisor, denominator: denominator / divisor)
    }
}