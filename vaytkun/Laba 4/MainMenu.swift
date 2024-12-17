import Foundation

func mainMenu() {
    var people: [Persona] = []

    while true {
        printMenu()
        let choice = inputInteger(prompt: "Ваш выбор")

        switch choice {
        case 1:
            addNewPersona(to: &people)
        case 2:
            displayPeopleList(people)
        case 3:
            searchPeopleByAge(people)
        case 4:
            print("Выход из программы.")
            return
        default:
            print("Некорректный выбор. Попробуйте снова.")
        }
    }
}

// Вывод основного меню
func printMenu() {
    print("\nМеню:")
    print("1. Добавить персону")
    print("2. Вывести список персон")
    print("3. Поиск персон по возрасту")
    print("4. Выход")
}

// Добавление новой персоны
func addNewPersona(to people: inout [Persona]) {
    let newPersona = addPersona()
    people.append(newPersona)
    print("Персона успешно добавлена!")
}

// Вывод списка персон
func displayPeopleList(_ people: [Persona]) {
    print("\nСписок персон:")
    if people.isEmpty {
        print("Список пуст.")
        return
    }

    for (index, person) in people.enumerated() {
        print("---- Персона \(index + 1) ----")
        person.displayInfo()
    }
}

// Поиск персон по возрасту
func searchPeopleByAge(_ people: [Persona]) {
    let minAge = inputInteger(prompt: "Введите минимальный возраст")
    let maxAge = inputInteger(prompt: "Введите максимальный возраст")
    let foundPeople = findPeopleByAgeRange(people, minAge: minAge, maxAge: maxAge)

    print("\nПерсоны в возрасте от \(minAge) до \(maxAge):")
    if foundPeople.isEmpty {
        print("Персоны в указанном возрастном диапазоне не найдены.")
    } else {
        for person in foundPeople {
            print("----")
            person.displayInfo()
        }
    }
}

// Запуск программы
mainMenu()
