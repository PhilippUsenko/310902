import Foundation

// Запрашиваем у пользователя количество номеров
print("Введите количество номеров:")
guard let inputCount = readLine(), let count = Int(inputCount), count > 0 else {
    print("Неверное количество. Попробуйте снова.")
    exit(1)
}

var validNumbers = [String]()

// Запрашиваем номера машин
print("Введите \(count) четырехзначных номера машин:")
for _ in 1...count {
    if let number = readLine(), number.count == 4, Int(number) != nil {
        if hasThreeIdenticalDigits(number) {
            validNumbers.append(number)
        }
    } else {
        print("Неверный номер. Введите четырехзначное число.")
    }
}

// Выводим результат
print("Количество номеров с тремя одинаковыми цифрами: \(validNumbers.count)")
if !validNumbers.isEmpty {
    print("Эти номера:")
    for number in validNumbers {
        print(number)
    }
}
