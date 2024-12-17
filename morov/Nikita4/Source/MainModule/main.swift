import Foundation
import NumberAnalyzerModule
import ValidationModule

do {
    let analyzer: NumberAnalyzerProtocol = NumberAnalyzer()

    let inputNumber = 13
    try Validation.validateNumber(inputNumber)

    print("Анализ числа \(inputNumber):")
    print("Простое число: \(analyzer.isPrime(inputNumber))")
    print("Число Фибоначчи: \(analyzer.isFibonacci(inputNumber))")

    let realPart = 4.5
    let imaginaryPart = 1.2
    print("Анализ числа \(realPart) + \(imaginaryPart)i")
    print("Комплексное число: \(analyzer.isComplex(realPart, imaginaryPart))")
    print("Целое число: \(analyzer.isInteger(realPart))")
    print("Вещественное число: \(analyzer.isReal(realPart))")

} catch let error as ValidationError {
    print("Ошибка валидации: \(error.description)")
} catch {
    print("Неизвестная ошибка: \(error)")
}
