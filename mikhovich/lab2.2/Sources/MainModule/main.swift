import CoreModule
import UtilitiesModule

print("Введите количество часов:")
if let hoursInput = readLine(), let hours = Int(hoursInput) {
    print("Введите количество минут:")
    if let minutesInput = readLine(), let minutes = Int(minutesInput) {
        if Validation.validateMinutes(minutes) {
            let totalMinutes = TimeConverter.hoursAndMinutesToMinutes(hours, minutes)
            print("\(hours) часов \(minutes) минут - \(totalMinutes) минут")
        } else {
            print("Минуты должны быть от 0 до 59.")
        }
    } else {
        print("Ошибка: Введите корректное количество минут.")
    }
} else {
    print("Ошибка: Введите корректное количество часов.")
}

print("\nВведите общее количество минут для преобразования в часы и минуты:")
if let totalMinutesInput = readLine(), let totalMinutes = Int(totalMinutesInput) {
    let (h, m) = TimeConverter.minutesToHoursAndMinutes(totalMinutes)
    print("\(totalMinutes) минут - \(h) часов \(m) минут")
} else {
    print("Ошибка: Введите корректное количество минут.")
}