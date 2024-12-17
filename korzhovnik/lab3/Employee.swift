import Foundation

class Employee {
    var name: String
    var position: String
    var experience: Int

    init(name: String, position: String, experience: Int) {
        self.name = name
        self.position = position
        self.experience = experience
    }

    func printInfo() {
        let yearsString: String
        switch experience {
        case 1:
            yearsString = "год"
        case 2, 3, 4:
            yearsString = "года"
        default:
            yearsString = "лет"
        }
        print("Имя: \(name) Должность: \(position) Стаж: \(experience) \(yearsString)")
    }
}

func containsDigits(_ string: String) -> Bool {
    let characterSet = CharacterSet.decimalDigits
    return string.rangeOfCharacter(from: characterSet) != nil
}