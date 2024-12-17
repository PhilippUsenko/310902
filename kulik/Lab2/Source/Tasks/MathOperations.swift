import Foundation

class MathOperations {
    static func power(base: Int, exponent: Int) -> Int {
        return Int(pow(Double(base), Double(exponent)))
    }
    
    static func root(number: Double, degree: Double) -> Double {
        return pow(number, 1.0 / degree)
    }
}
