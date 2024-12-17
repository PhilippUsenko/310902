import ProcessingModule
import ValidationModule

public struct Application {
    /// Замыкание для запуска программы
    public static let run: () -> Void = {
        print("Введите натуральное число P:")
        if let input = readLine(),
           let number = InputValidation.validateNaturalNumber(input) {
            let divisors = NumberOperations.findDivisors(number)
            print("Делители числа \(number): \(divisors)")
        } else {
            print("Ошибка: Введите корректное натуральное число!")
        }
    }
}
Application.run()