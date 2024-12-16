import Foundation
import ValidationModule

public protocol Person {
    var firstName: String { get }
    var lastName: String { get }
    var gender: Gender { get }
    var birthYear: Int { get }
}

public enum Gender: String {
    case male = "Male"
    case female = "Female"
}

public struct Human: Person {
    public let firstName: String
    public let lastName: String
    public let gender: Gender
    public let birthYear: Int

    public init(firstName: String, lastName: String, gender: Gender, birthYear: Int) throws {
        try Validation.validateNonEmptyString(firstName, fieldName: "Имя")
        try Validation.validateNonEmptyString(lastName, fieldName: "Фамилия")
        try Validation.validateBirthYear(birthYear)
        
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.birthYear = birthYear
    }
}
