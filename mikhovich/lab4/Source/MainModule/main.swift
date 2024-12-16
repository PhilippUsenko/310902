import Foundation
import FractionsModule

do {
    let fraction1: Fraction = try RationalFraction(numerator: 1, denominator: 2)
    let fraction2: Fraction = try RationalFraction(numerator: 3, denominator: 4)

    let product = FractionOperations.multiply(fraction1: fraction1, fraction2: fraction2)
    let quotient = FractionOperations.divide(fraction1: fraction1, fraction2: fraction2)

    print("Результат умножения: \(product.numerator)/\(product.denominator)")
    print("Результат деления: \(quotient.numerator)/\(quotient.denominator)")

    let randomGenerator1: RandomFractionGenerator = RandomPositiveFractionGenerator(range: 1...10)
    let randomFraction1 = randomGenerator1.generateFraction()
    print("Случайная положительная дробь: \(randomFraction1.numerator)/\(randomFraction1.denominator)")

    let randomGenerator2: RandomFractionGenerator = RandomNegativeFractionGenerator(range: 1...10)
    let randomFraction2 = randomGenerator2.generateFraction()
    print("Случайная отрицательная дробь: \(randomFraction2.numerator)/\(randomFraction2.denominator)")
} catch {
    print("Ошибка: \(error)")
}
