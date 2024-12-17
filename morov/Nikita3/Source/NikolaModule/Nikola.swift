
import Foundation
import ValidationModule

public class Nikola {
    public let name: String
    public let age: Int

    public init(name: String, age: Int) throws {
        
        try Validation.validateAge(age)

        
        try Validation.validateName(name)

        self.age = age
        if name.contains("Николай") {
            self.name = name
        } else {
            self.name = "Я не \(name), а Николай"
        }
    }

    public func description() -> String {
        return "Имя: \(name), Возраст: \(age)"
    }
}
