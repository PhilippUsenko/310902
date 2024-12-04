import Foundation

class Nikola {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        if name == "Николай" {
            self.name = name
        } else {
            self.name = "Я не \(name), а Николай"
        }
        self.age = age
    }

    func description() -> String {
        return "Имя: \(name), Возраст: \(age)"
    }
}

func main() {
    print("Введите имя:")
    let inputName = readLine() ?? "Николай"
    print("Введите возраст:")
    let inputAge = readLine().flatMap { Int($0) } ?? 0

    let nikola = Nikola(name: inputName, age: inputAge)
    print(nikola.description())
}

main()