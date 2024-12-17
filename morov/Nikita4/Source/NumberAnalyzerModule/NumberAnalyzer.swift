import Foundation
import ValidationModule

public class NumberAnalyzer: NumberAnalyzerProtocol {
    public init() {}

    public func isPrime(_ number: Int) -> Bool {
        guard number > 1 else { return false }
        for i in 2..<Int(sqrt(Double(number))) + 1 {
            if number % i == 0 { return false }
        }
        return true
    }

    public func isFibonacci(_ number: Int) -> Bool {
        func isPerfectSquare(_ x: Int) -> Bool {
            let s = Int(sqrt(Double(x)))
            return s * s == x
        }
        return isPerfectSquare(5 * number * number + 4) || isPerfectSquare(5 * number * number - 4)
    }

    public func isComplex(_ real: Double, _ imaginary: Double) -> Bool {
        return imaginary != 0
    }

    public func isInteger(_ number: Double) -> Bool {
        return floor(number) == number
    }

    public func isReal(_ number: Any) -> Bool {
        return number is Double || number is Float
    }
}
