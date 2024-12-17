typealias Subtraction<T> = (T, T) -> T

// a) Функция для вычитания вещественных чисел
let subtractReal: Subtraction<Double> = { a, b in
    return a - b
}

// b) Функция для вычитания комплексных чисел
struct Complex {
    var real: Double
    var imaginary: Double
}

// Функция для вычитания комплексных чисел
let subtractComplex: Subtraction<Complex> = { a, b in
    return Complex(real: a.real - b.real, imaginary: a.imaginary - b.imaginary)
}

// Примеры использования
let realResult = subtractReal(5.3, 2.1)
print("Результат вычитания вещественных чисел: \(realResult)")

let complex1 = Complex(real: 3.0, imaginary: 4.0)
let complex2 = Complex(real: 1.5, imaginary: 2.5)
let complexResult = subtractComplex(complex1, complex2)
print("Результат вычитания комплексных чисел: \(complexResult.real) + \(complexResult.imaginary)i")
