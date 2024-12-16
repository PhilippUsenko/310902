import CoreModule
import ValidationModule

print("Введите натуральное число P:")

if let input = readLine(), let p = Int(input) {
    do {
        try Validation.validateNaturalNumber(p) 
        let sumOfDigits = SumCalculator.calculateSumOfDigits(p)
        print("Сумма цифр числа \(p): \(sumOfDigits)")
    } catch let error as ValidationError {
        print("Ошибка: \(error.rawValue)")
    } catch {
        print("Неизвестная ошибка.")
    }
} else {
    print("Ошибка: Введите корректное натуральное число.")
}
