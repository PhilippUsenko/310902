public class Student {
    
    public var name: String
    public var age: Int
    public var groupNumber: String

    
    public init(name: String = "Ivan", age: Int = 18, groupNumber: String = "10A") {
        self.name = name
        self.age = age
        self.groupNumber = groupNumber
    }

    
    public func getName() -> String {
        return name
    }

    
    public func getAge() -> Int {
        return age
    }

    
    public func getGroupNumber() -> String {
        return groupNumber
    }

    
    public func setNameAge(newName: String, newAge: Int) {
        self.name = newName
        self.age = newAge
    }

    
    public func setGroupNumber(newGroupNumber: String) {
        self.groupNumber = newGroupNumber
    }
}

