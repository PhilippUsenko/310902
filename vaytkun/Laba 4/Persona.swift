import Foundation

// Базовый класс Persona
class Persona {
    var surname: String
    var birthDate: Date

    init(surname: String, birthDate: Date) {
        self.surname = surname
        self.birthDate = birthDate
    }

    func displayInfo() {
        print("Фамилия: \(surname)")
        print("Возраст: \(calculateAge())")
    }

    func calculateAge() -> Int {
        let calendar = Calendar.current
        let ageComponents = calendar.dateComponents([.year], from: birthDate, to: Date())
        return ageComponents.year ?? 0
    }
}

// Подкласс Abiturient
class Abiturient: Persona {
    var faculty: String

    init(surname: String, birthDate: Date, faculty: String) {
        self.faculty = faculty
        super.init(surname: surname, birthDate: birthDate)
    }

    override func displayInfo() {
        super.displayInfo()
        print("Факультет: \(faculty)")
    }
}

// Подкласс Student
class Student: Abiturient {
    var course: Int

    init(surname: String, birthDate: Date, faculty: String, course: Int) {
        self.course = course
        super.init(surname: surname, birthDate: birthDate, faculty: faculty)
    }

    override func displayInfo() {
        super.displayInfo()
        print("Курс: \(course)")
    }
}

// Подкласс Teacher
class Teacher: Abiturient {
    var position: String
    var experience: Int

    init(surname: String, birthDate: Date, faculty: String, position: String, experience: Int) {
        self.position = position
        self.experience = experience
        super.init(surname: surname, birthDate: birthDate, faculty: faculty)
    }

    override func displayInfo() {
        super.displayInfo()
        print("Должность: \(position)")
        print("Стаж: \(experience) лет")
    }
}
