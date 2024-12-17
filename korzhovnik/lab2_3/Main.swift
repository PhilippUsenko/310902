import Foundation

print("Введите числитель обыкновенной дроби:")
if let numeratorInput = readLine(), let numerator = Int(numeratorInput) {
    print("Введите знаменатель обыкновенной дроби:")
    if let denominatorInput = readLine(), let denominator = Int(denominatorInput) {
        if let decimal = FractionConverter.fractionToDecimal(numerator: numerator, denominator: denominator) {
            print("Обыкновенная дробь \(numerator)/\(denominator) в десятичной: \(decimal)")
        }
    } else {
        print("Введите корректное число для знаменателя.")
    }
} else {
    print("Введите корректное число для числителя.")
}