import Foundation

public class Person {
    public var surname: String
    public var birthDate: Date
    
    public init(surname: String, birthDate: Date) {
        self.surname = surname
        self.birthDate = birthDate
    }
    
    public func calculateAge() -> Int {
        let calendar = Calendar.current
        let currentDate = Date()
        let ageComponents = calendar.dateComponents([.year], from: birthDate, to: currentDate)
        return ageComponents.year ?? 0
    }
    
    public func printInfo() {
        print("Фамилия: \(surname), Дата рождения: \(birthDate), Возраст: \(calculateAge())")
    }
}

public class Abiturient: Person {
    public var faculty: String
    
    public init(surname: String, birthDate: Date, faculty: String) {
        self.faculty = faculty
        super.init(surname: surname, birthDate: birthDate)
    }
    
    override public func printInfo() {
        super.printInfo()
        print("Факультет: \(faculty)")
    }
}

public class Student: Abiturient {
    public var course: Int
    
    public init(surname: String, birthDate: Date, faculty: String, course: Int) {
        self.course = course
        super.init(surname: surname, birthDate: birthDate, faculty: faculty)
    }
    
    override public func printInfo() {
        super.printInfo()
        print("Курс: \(course)")
    }
}


public class Teacher: Person {
    public var faculty: String
    public var position: String
    public var experience: Int
    
    public init(surname: String, birthDate: Date, faculty: String, position: String, experience: Int) {
        self.faculty = faculty
        self.position = position
        self.experience = experience
        super.init(surname: surname, birthDate: birthDate)
    }
    
    override public func printInfo() {
        super.printInfo()
        print("Факультет: \(faculty), Должность: \(position), Стаж: \(experience) лет")
    }
}
