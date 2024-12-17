import Foundation

// Добавление новой персоны
func addPersona() -> Persona {
    print("Выберите тип персоны:")
    print("1. Абитуриент")
    print("2. Студент")
    print("3. Преподаватель")

    let choice = inputInteger(prompt: "Ваш выбор")

    print("Введите фамилию:", terminator: " ")
    let surname = readLine() ?? ""
    let birthDate = dateFromString("Введите дату рождения")

    switch choice {
    case 1:
        print("Введите факультет:", terminator: " ")
        let faculty = readLine() ?? ""
        return Abiturient(surname: surname, birthDate: birthDate, faculty: faculty)
    case 2:
        print("Введите факультет:", terminator: " ")
        let faculty = readLine() ?? ""
        let course = inputInteger(prompt: "Введите курс")
        return Student(surname: surname, birthDate: birthDate, faculty: faculty, course: course)
    case 3:
        print("Введите факультет:", terminator: " ")
        let faculty = readLine() ?? ""
        print("Введите должность:", terminator: " ")
        let position = readLine() ?? ""
        let experience = inputInteger(prompt: "Введите стаж (лет)")
        return Teacher(surname: surname, birthDate: birthDate, faculty: faculty, position: position, experience: experience)
    default:
        print("Некорректный выбор. Повторите ввод.")
        return addPersona()
    }
}

// Фильтрация персон по возрастному диапазону
func findPeopleByAgeRange(_ people: [Persona], minAge: Int, maxAge: Int) -> [Persona] {
    return people.filter { (minAge...maxAge).contains($0.calculateAge()) }
}
