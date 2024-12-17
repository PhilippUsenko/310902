import ValidationModule
import ProcessingModule

public struct Application {
    public static let run: () -> Void = {
        print("Выберите операцию:")
        print("1. Найти среднее арифметическое последовательности чисел.")
        print("2. Найти количество букв в строке.")

        if let choice = readLine(), let option = Int(choice) {
            switch option {
            case 1:
                handleAverageCalculation()
            case 2:
                handleLetterCounting()
            default:
                print("Ошибка: Неверный выбор. Завершение программы.")
            }
        } else {
            print("Ошибка: Введите корректный номер операции.")
        }
    }
    
    private static func handleAverageCalculation() {
        print("Введите последовательность целых чисел, разделённых пробелами:")
        if let input = readLine(),
           let numbers = InputValidation.validateIntegerSequence(input) {
            let average = Calculations.calculateAverage(numbers)
            print("Среднее арифметическое: \(average)")
        } else {
            print("Ошибка: Введите корректную последовательность чисел.")
        }
    }
    
    private static func handleLetterCounting() {
        print("Введите строку:")
        if let input = readLine(),
           let validString = InputValidation.validateNonEmptyString(input) {
            let letterCount = Calculations.countLetters(validString)
            print("Количество букв в строке: \(letterCount)")
        } else {
            print("Ошибка: Введите непустую строку.")
        }
    }
}

Application.run()
