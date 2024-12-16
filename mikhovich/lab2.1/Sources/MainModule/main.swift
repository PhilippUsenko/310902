import PrimeModule
import ValidationModule

print("Введите натуральное число P:")

if let input = readLine(), let p = Int(input) {
    if Validation.validateInput(p) {
        let primes = PrimeFinder.findPrimes(upTo: p)
        print("Простые числа до \(p): \(primes)")
    } else {
        print("Введенное значение должно быть целым числом не меньше 2.")
    }
} else {
    print("Ошибка: Введите корректное натуральное число.")
}
