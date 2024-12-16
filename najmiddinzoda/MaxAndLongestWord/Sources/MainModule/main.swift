import CoreModule
import UtilitiesModule

let numbers = [10, 25, 30, 8, 42, 17]
if let maxNumber = ArrayUtilities.findMax(numbers) {
    print("Максимальный элемент в последовательности \(numbers) равен \(maxNumber)")
} else {
    print("Ошибка: Введите корректные данные.")
}


let sentence = "aaa bbbb cc d"
if let longestWordLength = StringUtilities.findLengthOfLongestWord(sentence) {
    print("Длина самого длинного слова в строке '\(sentence)' равна \(longestWordLength)")
} else {
    print("Ошибка: Введите корректную строку.")
}
