import task1Lib
import task2Lib

print("Введите целое число в шестнадцатеричном формате:")
if let hexNumber = readLine() {
    let binaryRepresentation = hexStringToBinary(hexString: hexNumber)
    print("Шестнадцатеричное число \(hexNumber) в двоичной системе: \(binaryRepresentation)")
} 
else {
    print("Не удалось прочитать ввод.")
}

let decimal1: Double = 3.5
let decimal2: Double = 2.2
let result = multiplyDecimals(decimal1, decimal2)
print("\(decimal1) * \(decimal2) = \(result)")

let fraction1 = Fraction(numerator: 1, denominator: 2) 
let fraction2 = Fraction(numerator: 3, denominator: 4) 
let product = multiplyFractions(fraction1, fraction2)
print("\(fraction1.numerator)/\(fraction1.denominator) * \(fraction2.numerator)/\(fraction2.denominator) = \(product.numerator)/\(product.denominator)")