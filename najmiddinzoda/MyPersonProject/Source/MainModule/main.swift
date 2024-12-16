import Foundation
import PersonModule

do {
    let people: [Person] = [
        try Human(firstName: "John", lastName: "Doe", gender: .male, birthYear: 1990),
        try Human(firstName: "Jane", lastName: "Smith", gender: .female, birthYear: 1990),
        try Human(firstName: "Alice", lastName: "Johnson", gender: .female, birthYear: 1985),
        try Human(firstName: "Bob", lastName: "Brown", gender: .male, birthYear: 2000),
        try Human(firstName: "Charlie", lastName: "Davis", gender: .male, birthYear: 1990),
        try Human(firstName: "Emily", lastName: "Clark", gender: .female, birthYear: 1995),
        try Human(firstName: "Frank", lastName: "Miller", gender: .male, birthYear: 1990),
        try Human(firstName: "Grace", lastName: "Wilson", gender: .female, birthYear: 1990),
        try Human(firstName: "Hank", lastName: "Lee", gender: .male, birthYear: 1995),
        try Human(firstName: "Ivy", lastName: "Taylor", gender: .female, birthYear: 1980)
    ]

    let maleCount = PersonService.countByGender(people: people, gender: .male)
    let femaleCount = PersonService.countByGender(people: people, gender: .female)
    let bornIn1990 = PersonService.countByBirthYear(people: people, year: 1990)
    
    print("Количество мужчин: \(maleCount)")
    print("Количество женщин: \(femaleCount)")
    print("Количество людей, родившихся в 1990 году: \(bornIn1990)")
    
} catch {
    print("Ошибка: \(error)")
}
