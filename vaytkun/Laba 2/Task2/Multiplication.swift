typealias Multiplication<T> = (T, T) -> T

// Реализация умножения для целых чисел
let integerMultiplication: Multiplication<Int> = { a, b in
    return a * b
}

// Реализация умножения для комплексных чисел
let complexMultiplication: Multiplication<ComplexNumber> = { a, b in
    return ComplexNumber(
        real: a.real * b.real - a.imaginary * b.imaginary,
        imaginary: a.real * b.imaginary + a.imaginary * b.real
    )
}
