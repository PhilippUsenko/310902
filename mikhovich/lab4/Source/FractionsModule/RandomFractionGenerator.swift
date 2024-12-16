import Foundation

public protocol RandomFractionGenerator {
    func generateFraction() -> Fraction
}

public struct RandomPositiveFractionGenerator: RandomFractionGenerator {
    private let range: ClosedRange<Int>

    public init(range: ClosedRange<Int>) {
        self.range = range
    }

    public func generateFraction() -> Fraction {
        let numerator = Int.random(in: range)
        var denominator: Int

        repeat {
            denominator = Int.random(in: range)
        } while denominator == 0

        return try! RationalFraction(numerator: numerator, denominator: denominator)
    }
}

public struct RandomNegativeFractionGenerator: RandomFractionGenerator {
    private let range: ClosedRange<Int>

    public init(range: ClosedRange<Int>) {
        self.range = range
    }

    public func generateFraction() -> Fraction {
        let numerator = -Int.random(in: range)
        var denominator: Int

        repeat {
            denominator = Int.random(in: range)
        } while denominator == 0

        return try! RationalFraction(numerator: numerator, denominator: denominator)
    }
}
