// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

import lib

let intResult = subtractIntegers(10, 3)
print("Substraction integers result: \(intResult)")

let complex1 = Complex(real: 5.0, imaginary: 3.0)
let complex2 = Complex(real: 2.0, imaginary: 1.0)
let complexResult = subtractComplexNumbers(complex1, complex2)

print("Substraction complex numbers result: \(complexResult.real) + \(complexResult.imaginary)i")

if let input = readLine(), let number = Int(input), input.count == 4 {
    if hasThreeOrMoreSameDigits(number) {
        print("Number \(number) contains 3 & more equal digits.")
    } else {
        print("Number \(number) doesn't contains 3 & more equal digits.")
    }
} else {
    print("Error: input a correct 4-digit number")
}