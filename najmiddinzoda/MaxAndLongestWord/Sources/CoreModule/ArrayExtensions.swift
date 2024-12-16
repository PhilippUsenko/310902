import UtilitiesModule

public struct ArrayUtilities {
    public static let findMax: ([Int]) -> Int? = { numbers in
        guard ValidationUtilities.validateIntArray(numbers) else {
            print("Ошибка: Массив не должен быть пустым!")
            return nil
        }
        return numbers.max()
    }
}
