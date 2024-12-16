import Foundation

public struct PersonService {
    public static func countByGender(people: [Person], gender: Gender) -> Int {
        people.filter { $0.gender == gender }.count
    }

    public static func countByBirthYear(people: [Person], year: Int) -> Int {
        people.filter { $0.birthYear == year }.count
    }
}
