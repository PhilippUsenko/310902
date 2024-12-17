import Foundation

func dateFromString(_ prompt: String) -> Date {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"

    while true {
        print("\(prompt) (формат yyyy-MM-dd):", terminator: " ")
        if let input = readLine(), let date = formatter.date(from: input) {
            return date
        }
        print("Некорректный ввод даты. Попробуйте снова.")
    }
}

func inputInteger(prompt: String) -> Int {
    while true {
        print(prompt, terminator: ": ")
        if let input = readLine(), let number = Int(input) {
            return number
        }
        print("Некорректный ввод. Попробуйте снова.")
    }
}
