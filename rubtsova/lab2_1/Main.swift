import Foundation
import Fraction

func main() {
    print("Введите первую дробь (n/m): ")
    let firstInput = readLine()!.split(separator: "/").map { Int($0)! }
    let firstFraction = Fraction(numerator: firstInput[0], denominator: firstInput[1])

    print("Введите вторую дробь (q/p): ")
    let secondInput = readLine()!.split(separator: "/").map { Int($0)! }
    let secondFraction = Fraction(numerator: secondInput[0], denominator: secondInput[1])

    let result = Fraction.divide(firstFraction, secondFraction)

    print("Результат деления: \(result.numerator)/\(result.denominator)")
}

main()