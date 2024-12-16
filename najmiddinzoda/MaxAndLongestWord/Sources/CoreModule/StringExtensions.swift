import UtilitiesModule

public struct StringUtilities {
    public static let findLengthOfLongestWord: (String) -> Int? = { text in
        guard ValidationUtilities.validateString(text) else {
            print("Ошибка: Строка не должна быть пустой!")
            return nil
        }
        let words = text.split(separator: " ")
        return words.map { $0.count }.max()
    }
}
