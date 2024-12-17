import Foundation
import ArrayManipulator

let arrayManipulator = ArrayManipulator()
arrayManipulator.inputElements()
arrayManipulator.outputElements()

if let max = arrayManipulator.findMax() {
    print("Максимальный элемент: \(max)")
}

if let min = arrayManipulator.findMin() {
    print("Минимальный элемент: \(min)")
}

arrayManipulator.sortArray()
arrayManipulator.outputElements()

let sum = arrayManipulator.sumOfElements()
print("Сумма элементов: \(sum)")

print("Введите число для умножения элементов:")
if let input = readLine(), let number = Int(input) {
    arrayManipulator.multiplyElements(by: number)
    arrayManipulator.outputElements()
} else {
    print("Некорректный ввод.")
}