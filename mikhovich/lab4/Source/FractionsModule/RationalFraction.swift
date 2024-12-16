import Foundation
import ValidationModule

public protocol Fraction {
    var numerator: Int { get }
    var denominator: Int { get }

    func toDouble() -> Double
}

public struct RationalFraction: Fraction {
    public let numerator: Int
    public let denominator: Int

    public init(numerator: Int, denominator: Int) throws {
        try Validation.validateDenominator(denominator)
        self.numerator = numerator
        self.denominator = denominator
    }

    public func toDouble() -> Double {
        return Double(numerator) / Double(denominator)
    }
}
