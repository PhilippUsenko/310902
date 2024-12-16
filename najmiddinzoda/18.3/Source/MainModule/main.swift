import Foundation
import PersonModule
import ValidationModule
import SearchModule

func test() {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    let person1 = Abiturient(surname: "Иванов", birthDate: dateFormatter.date(from: "2000-05-10")!, faculty: "ФКСиС")
    let person2 = Student(surname: "Петров", birthDate: dateFormatter.date(from: "1999-04-12")!, faculty: "ФКП", course: 3)
    let person3 = Teacher(surname: "Сидоров", birthDate: dateFormatter.date(from: "1980-07-30")!, faculty: "ФИТУ", position: "Доцент", experience: 10)
    
    let persons: [Person] = [person1, person2, person3]
    for person in persons {
        person.printInfo()
    }
    
    print("\nПоиск людей в возрасте от 20 до 25 лет:")
    let foundPersons = Search.searchByAgeRange(persons: persons, minAge: 20, maxAge: 25)
    for person in foundPersons {
        person.printInfo()
    }
}

test()
