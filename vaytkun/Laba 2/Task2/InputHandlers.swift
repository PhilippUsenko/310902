import Foundation

// Функция для ввода целых чисел
func inputInteger(prompt: String) -> Int {
    print(prompt, terminator: ": ")
    while let input = readLine(), let number = Int(input) {
        return number
    }
    print("Некорректный ввод. Попробуйте снова.")
    return inputInteger(prompt: prompt)
}

// Функция для ввода комплексного числа
func inputComplexNumber(prompt: String) -> ComplexNumber {
    print("\(prompt) (введите действительную часть): ", terminator: "")
    let real = Double(readLine() ?? "") ?? 0.0

    print("\(prompt) (введите мнимую часть): ", terminator: "")
    let imaginary = Double(readLine() ?? "") ?? 0.0

    return ComplexNumber(real: real, imaginary: imaginary)
}
