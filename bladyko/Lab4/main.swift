import Foundation

class NumberChecker: PrimeCheckable, FibonacciCheckable, ComplexCheckable, IntegerCheckable, RealCheckable {
    var number: Double

    init(number: Double) {
        self.number = number
    }
}

func main() {
    print("Введите число:")
    if let input = readLine(), let number = Double(input) {
        let checker = NumberChecker(number: number)

        print("Простое число: \(checker.isPrime())")
        print("Число Фибоначчи: \(checker.isFibonacci())")
        print("Комплексное число: \(checker.isComplex())")
        print("Целое число: \(checker.isInteger())")
        print("Вещественное число: \(checker.isReal())")
    } else {
        print("Некорректный ввод.")
    }
}

main()