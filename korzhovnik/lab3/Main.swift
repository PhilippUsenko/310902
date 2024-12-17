import Foundation

print("Введите имя сотрудника:")
if let name = readLine(), !name.isEmpty {
    if containsDigits(name) {
        print("Ошибка: Имя не может содержать цифры.")
    } else {
        print("Введите должность сотрудника:")
        if let position = readLine(), !position.isEmpty {
            if containsDigits(position) {
                print("Ошибка: Должность не может содержать цифры.")
            } else {
                print("Введите стаж работы сотрудника (в годах):")
                if let experienceInput = readLine(), let experience = Int(experienceInput) {
                    let employee = Employee(name: name, position: position, experience: experience)
                    employee.printInfo()
                } else {
                    print("Ошибка: Введите корректное число для стажа работы.")
                }
            }
        } else {
            print("Ошибка: Должность не может быть пустой.")
        }
    }
} else {
    print("Ошибка: Имя сотрудника не может быть пустым.")
}