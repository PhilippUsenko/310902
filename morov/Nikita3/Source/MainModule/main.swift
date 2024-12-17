
import Foundation
import NikolaModule
import ValidationModule

do {
  
    let nikolay1 = try Nikola(name: "Николай", age: 30)
    let nikolay2 = try Nikola(name: "Максим", age: 25)
    let nikolay3 = try Nikola(name: "Александр", age: 89) 

    
    let nikolaPeople = [nikolay1, nikolay2, nikolay3]
    for person in nikolaPeople {
        print(person.description())
    }
} catch let error as ValidationError {
    print("Ошибка валидации: \(error.description)")
} catch {
    print("Неизвестная ошибка: \(error)")
}
