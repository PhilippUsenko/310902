import Foundation

func performOperations() {
    print("Выберите тип чисел (1: Int, 2: Double):")
    guard let typeInput = readLine(), let typeChoice = Int(typeInput) else {
        print("Ошибка: Введите корректный номер типа.")
        return
    }
    switch typeChoice {
    case 1:
        let intHandler = IntOperationHandler()
        intHandler.performOperation()
    case 2:
        let doubleHandler = DoubleOperationHandler()
        doubleHandler.performOperation()
    default:
        print("Ошибка: Неверный выбор типа.")
    }
}

performOperations()