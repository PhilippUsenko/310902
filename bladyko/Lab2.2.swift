import Foundation

let addRealNumbers: (Double, Double) -> Double = { (a, b) in
    return a + b
}

struct ComplexNumber {
    var real: Double
    var imaginary: Double
}

let addComplexNumbers: (ComplexNumber, ComplexNumber) -> ComplexNumber = { (c1, c2) in
    return ComplexNumber(real: c1.real + c2.real, imaginary: c1.imaginary + c2.imaginary)
}

func main() {
    print("Введите два вещественных числа:")
    guard let input1 = readLine(), let num1 = Double(input1),
          let input2 = readLine(), let num2 = Double(input2) else {
        print("Некорректный ввод.")
        return
    }
    let realSum = addRealNumbers(num1, num2)
    print("Сумма вещественных чисел: \(realSum)")

    print("Введите действительную и мнимую часть первого комплексного числа:")
    guard let inputReal1 = readLine(), let real1 = Double(inputReal1),
          let inputImaginary1 = readLine(), let imaginary1 = Double(inputImaginary1) else {
        print("Некорректный ввод.")
        return
    }

    print("Введите действительную и мнимую часть второго комплексного числа:")
    guard let inputReal2 = readLine(), let real2 = Double(inputReal2),
          let inputImaginary2 = readLine(), let imaginary2 = Double(inputImaginary2) else {
        print("Некорректный ввод.")
        return
    }

    let complex1 = ComplexNumber(real: real1, imaginary: imaginary1)
    let complex2 = ComplexNumber(real: real2, imaginary: imaginary2)
    let complexSum = addComplexNumbers(complex1, complex2)

    print("Сумма комплексных чисел: \(complexSum.real) + \(complexSum.imaginary)i")
}

main()