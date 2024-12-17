import Foundation

print("Введите десятичную дробь:")
if let decimalInput = readLine(), let decimalNumber = Double(decimalInput) {
    let fraction = FractionConverter.decimalToFraction(decimal: decimalNumber)
    print("Десятичная дробь \(decimalNumber) в обыкновенной: \(fraction.numerator)/\(fraction.denominator)")
} else {
    print("Введите корректное число.")
}