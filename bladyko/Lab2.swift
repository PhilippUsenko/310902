import Foundation

func findTriples(for m: Int) {
    var found = false

    for x in 1...Int(pow(Double(m), 1.0/3.0)) {
        for y in x...Int(pow(Double(m), 1.0/3.0)) {
            for z in y...Int(pow(Double(m), 1.0/3.0)) {
                if x * x * x + y * y * y + z * z * z == m {
                    print("Тройка: (x: \(x), y: \(y), z: \(z))")
                    found = true
                }
            }
        }
    }

    if !found {
        print("Нет подходящих троек для m = \(m).")
    }
}

func main() {
    print("Введите натуральное число m:")
    if let input = readLine(), let m = Int(input), m > 0 {
        findTriples(for: m)
    } else {
        print("Некорректный ввод. Пожалуйста, введите натуральное число.")
    }
}

main()