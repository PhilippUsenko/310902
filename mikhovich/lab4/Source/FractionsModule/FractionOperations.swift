import Foundation

public struct FractionOperations {
    public static func multiply(fraction1: Fraction, fraction2: Fraction) -> Fraction {
        return try! RationalFraction(
            numerator: fraction1.numerator * fraction2.numerator,
            denominator: fraction1.denominator * fraction2.denominator
        )
    }

    public static func divide(fraction1: Fraction, fraction2: Fraction) -> Fraction {
        return try! RationalFraction(
            numerator: fraction1.numerator * fraction2.denominator,
            denominator: fraction1.denominator * fraction2.numerator
        )
    }

    public static func multiplyByInteger(fraction: Fraction, integer: Int) -> Fraction {
        return try! RationalFraction(
            numerator: fraction.numerator * integer,
            denominator: fraction.denominator
        )
    }

    public static func divideByInteger(fraction: Fraction, integer: Int) -> Fraction {
        return try! RationalFraction(
            numerator: fraction.numerator,
            denominator: fraction.denominator * integer
        )
    }
}
