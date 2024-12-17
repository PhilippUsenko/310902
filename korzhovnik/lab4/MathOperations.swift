import Foundation

protocol MathOperation {
    associatedtype NumberType: Numeric
    func add(_ a: NumberType, _ b: NumberType) -> NumberType
    func subtract(_ a: NumberType, _ b: NumberType) -> NumberType
    func multiply(_ a: NumberType, _ b: NumberType) -> NumberType
    func divide(_ a: NumberType, _ b: NumberType) -> NumberType?
    func power(_ base: NumberType, _ exponent: Int) -> NumberType
}

struct IntOperations: MathOperation {
    func add(_ a: Int, _ b: Int) -> Int { a + b }
    func subtract(_ a: Int, _ b: Int) -> Int { a - b }
    func multiply(_ a: Int, _ b: Int) -> Int { a * b }
    func divide(_ a: Int, _ b: Int) -> Int? {
        guard b != 0 else { return nil } // Деление на ноль
        return a / b
    }
    func power(_ base: Int, _ exponent: Int) -> Int {
        return Int(pow(Double(base), Double(exponent)))
    }
}

struct DoubleOperations: MathOperation {
    func add(_ a: Double, _ b: Double) -> Double { a + b }
    func subtract(_ a: Double, _ b: Double) -> Double { a - b }
    func multiply(_ a: Double, _ b: Double) -> Double { a * b }
    func divide(_ a: Double, _ b: Double) -> Double? {
        guard b != 0 else { return nil } // Деление на ноль
        return a / b
    }
    func power(_ base: Double, _ exponent: Int) -> Double {
        return pow(base, Double(exponent))
    }
}

protocol OperationHandler {
    associatedtype Operations: MathOperation
    func performOperation()
}

struct IntOperationHandler: OperationHandler {
    typealias Operations = IntOperations
    var operations = Operations()

    func performOperation() {
        print("Введите первое целое число:")
        guard let input1 = readLine(), let a = Int(input1) else {
            print("Ошибка: Введите корректное первое целое число.")
            return
        }
        print("Введите второе целое число:")
        guard let input2 = readLine(), let b = Int(input2) else {
            print("Ошибка: Введите корректное второе целое число.")
            return
        }
        print("Выберите операцию: 1 - Сложение, 2 - Вычитание, 3 - Умножение, 4 - Деление, 5 - Возведение в степень")
        guard let operationChoice = readLine(), let operation = Int(operationChoice) else {
            print("Ошибка: Введите корректный номер операции.")
            return
        }
        switch operation {
        case 1:
            print("Результат: \(operations.add(a, b))")
        case 2:
            print("Результат: \(operations.subtract(a, b))")
        case 3:
            print("Результат: \(operations.multiply(a, b))")
        case 4:
            if let result = operations.divide(a, b) {
                print("Результат: \(result)")
            } else {
                print("Ошибка: Деление на ноль.")
            }
        case 5:
            print("Введите степень:")
            guard let exponentInput = readLine(), let exponent = Int(exponentInput) else {
                print("Ошибка: Введите корректное число для степени.")
                return
            }
            print("Результат первого числа: \(operations.power(a, exponent))")
            print("Результат второго числа: \(operations.power(b, exponent))")
        default:
            print("Ошибка: Неверный выбор операции.")
        }
    }
}

struct DoubleOperationHandler: OperationHandler {
    typealias Operations = DoubleOperations
    var operations = Operations()

    func performOperation() {
        print("Введите первое дробное число:")
        guard let input1 = readLine(), let a = Double(input1) else {
            print("Ошибка: Введите корректное первое дробное число.")
            return
        }
        print("Введите второе дробное число:")
        guard let input2 = readLine(), let b = Double(input2) else {
            print("Ошибка: Введите корректное второе дробное число.")
            return
        }
        print("Выберите операцию: 1 - Сложение, 2 - Вычитание, 3 - Умножение, 4 - Деление, 5 - Возведение в степень")
        guard let operationChoice = readLine(), let operation = Int(operationChoice) else {
            print("Ошибка: Введите корректный номер операции.")
            return
        }
        
        switch operation {
        case 1:
            print("Результат: \(operations.add(a, b))")
        case 2:
            print("Результат: \(operations.subtract(a, b))")
        case 3:
            print("Результат: \(operations.multiply(a, b))")
        case 4:
            if let result = operations.divide(a, b) {
                print("Результат: \(result)")
            } else {
                print("Ошибка: Деление на ноль.")
            }
        case 5:
            print("Введите степень:")
            guard let exponentInput = readLine(), let exponent = Int(exponentInput) else {
                print("Ошибка: Введите корректное число для степени.")
                return
            }
            print("Результат первого числа: \(operations.power(a, exponent))")
            print("Результат второго числа: \(operations.power(b, exponent))")
        default:
            print("Ошибка: Неверный выбор операции.")
        }
    }
}