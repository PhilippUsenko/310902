import Swift
import Foundation

public protocol QuadraticEquationSolver {
    func solve(a: Double, b: Double, c: Double) throws -> [Double]
}


public class QuadraticSolver: QuadraticEquationSolver {
	
	public init(){
	 
	}

    public func solve(a: Double, b: Double, c: Double) throws -> [Double] {
        // Проверка: уравнение должно быть квадратным
        guard a != 0 else {
            throw EquationError.notQuadratic
        }

        // Вычисление дискриминанта
        let discriminant = b * b - 4 * a * c

        // Обработка вариантов
        if discriminant > 0 {
            let root1 = (-b + sqrt(discriminant)) / (2 * a)
            let root2 = (-b - sqrt(discriminant)) / (2 * a)
            return [root1, root2]
        } else if discriminant == 0 {
            let root = -b / (2 * a)
            return [root]
        } else {
            throw EquationError.noRealRoots
        }
    }
}

public enum EquationError: Error {
    case invalidInput(String) // Некорректный ввод
    case notQuadratic         // Уравнение не является квадратным
    case noRealRoots          // Нет вещественных корней
}

public class InputValidator {
    public static func validate(input: String) throws -> Double {
        guard let value = Double(input) else {
            throw EquationError.invalidInput("Ошибка: Введите числовое значение вместо '\(input)'.")
        }
        return value
    }
}
