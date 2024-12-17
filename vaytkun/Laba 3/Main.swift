import Foundation

func mainMenu() {
    var people: [Persona] = []

    while true {
        print("\nМеню:")
        print("1. Добавить персону")
        print("2. Вывести список персон")
        print("3. Поиск персон по возрасту")
        print("4. Выход")

        let choice = inputInteger(prompt: "Ваш выбор")

        switch choice {
        case 1:
            let newPersona = addPersona()
            people.append(newPersona)
            print("Персона успешно добавлена!")
        case 2:
            print("\nСписок персон:")
            for (index, person) in people.enumerated() {
                print("---- Персона \(index + 1) ----")
                person.displayInfo()
            }
        case 3:
            let minAge = inputInteger(prompt: "Введите минимальный возраст")
            let maxAge = inputInteger(prompt: "Введите максимальный возраст")
            let foundPeople = findPeopleByAgeRange(people, minAge: minAge, maxAge: maxAge)
            print("\nПерсоны в возрасте от \(minAge) до \(maxAge):")
            for person in foundPeople {
                print("----")
                person.displayInfo()
            }
        case 4:
            print("Выход из программы.")
            return
        default:
            print("Некорректный выбор. Попробуйте снова.")
        }
    }
}

mainMenu()
