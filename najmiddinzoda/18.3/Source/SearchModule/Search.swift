import Foundation
import PersonModule

public struct Search {
    public static func searchByAgeRange(persons: [Person], minAge: Int, maxAge: Int) -> [Person] {
        return persons.filter { person in
            let age = person.calculateAge()
            return age >= minAge && age <= maxAge
        }
    }
}
