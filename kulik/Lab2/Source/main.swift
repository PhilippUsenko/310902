import Foundation
import Tasks

// Проверка кратности числа 11
let number = 121
if DivisibilityChecker.isDivisibleBy11(number) {
    print("\(number) кратно 11")
} else {
    print("\(number) не кратно 11")
}

// Возведение целых чисел в степень
let base = 2
let exponent = 3
let powerResult = MathOperations.power(base: base, exponent: exponent)
print("\(base) в степени \(exponent) равно \(powerResult)")

// Извлечение корня степени n из десятичных чисел
let decimalNumber = 27.0
let degree = 3.0
let rootResult = MathOperations.root(number: decimalNumber, degree: degree)
print("Корень степени \(degree) из \(decimalNumber) равен \(rootResult)")
