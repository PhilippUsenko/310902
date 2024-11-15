import MySwiftPackage

//1 задание

print("Введите положительное целое число: ", terminator: "")
if let inputString = readLine() {
    if let number = Int(inputString) {
        if number <= 0 {
            print("Некорректные данные")
        } else {
            print("Результат: \(isMultipleOfThree(number))")
        }
    } else {
        print("Ошибка ввода")
    }
} else {
    print("Ошибка ввода")
}

//2 задание

let sumFunction: (Int, Int) -> Int = { a, b in
    return a + b
}

let complex1 = Complex(real: 2, imaginary: 5)
let complex2 = Complex(real: 3, imaginary: 6)
let complexResult = complex1.add(complex2) // Вызов метода экземпляра

print("5 + 6 = \(sumFunction(5, 6))")
print("Сумма двух комплексных чисел 2+5i и 3+6i = \(complexResult.real) + \(complexResult.imaginary)i")
