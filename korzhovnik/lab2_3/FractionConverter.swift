import Foundation

class FractionConverter {
    static func fractionToDecimal(numerator: Int, denominator: Int) -> Double? {
        guard denominator != 0 else {
            print("Знаменатель не должен быть равен нулю.")
            return nil
        }
        return Double(numerator) / Double(denominator)
    }
}