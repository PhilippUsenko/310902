import Foundation

// Умножение целых чисел
let int1 = inputInteger(prompt: "Введите первое целое число")
let int2 = inputInteger(prompt: "Введите второе целое число")
let intResult = integerMultiplication(int1, int2)
print("Результат умножения целых чисел: \(intResult)")

// Умножение комплексных чисел
let complex1 = inputComplexNumber(prompt: "Введите первое комплексное число")
let complex2 = inputComplexNumber(prompt: "Введите второе комплексное число")
let complexResult = complexMultiplication(complex1, complex2)
print("Результат умножения комплексных чисел: \(complexResult.real) + \(complexResult.imaginary)i")
