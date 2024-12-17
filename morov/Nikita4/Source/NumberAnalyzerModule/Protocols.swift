import Foundation

public protocol PrimeChecker {
    func isPrime(_ number: Int) -> Bool
}

public protocol FibonacciChecker {
    func isFibonacci(_ number: Int) -> Bool
}

public protocol ComplexNumberChecker {
    func isComplex(_ real: Double, _ imaginary: Double) -> Bool
}

public protocol NumberTypeChecker {
    func isInteger(_ number: Double) -> Bool
    func isReal(_ number: Any) -> Bool
}

public protocol NumberAnalyzerProtocol: PrimeChecker, FibonacciChecker, ComplexNumberChecker, NumberTypeChecker {}
