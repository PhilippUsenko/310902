import Foundation

// Протокол Movement, который определяет метод для движения поезда
protocol Movement {
    func move() -> String
}

// Расширяем протокол Movement, чтобы включить общие свойства, необходимые для методов
protocol TrainProtocol: Movement {
    var destination: String { get }
    var trainNumber: Int { get }
    var departureTime: Date { get }
    var availableSeatsGeneral: Int { get }
    var availableSeatsPlatzkart: Int { get }
    var availableSeatsCoupe: Int { get }
}

// Класс Train, который реализует протокол TrainProtocol
class Train: TrainProtocol {
    let destination: String
    let trainNumber: Int
    let departureTime: Date
    let seatsGeneral: Int
    let seatsPlatzkart: Int
    let seatsCoupe: Int
    var availableSeatsGeneral: Int
    var availableSeatsPlatzkart: Int
    var availableSeatsCoupe: Int

    init(destination: String, trainNumber: Int, departureTime: Date, seatsGeneral: Int, seatsPlatzkart: Int, seatsCoupe: Int) {
        self.destination = destination
        self.trainNumber = trainNumber
        self.departureTime = departureTime
        self.seatsGeneral = seatsGeneral
        self.seatsPlatzkart = seatsPlatzkart
        self.seatsCoupe = seatsCoupe
        self.availableSeatsGeneral = seatsGeneral
        self.availableSeatsPlatzkart = seatsPlatzkart
        self.availableSeatsCoupe = seatsCoupe
    }

    func move() -> String {
        return "Поезд №\(trainNumber) отправляется в путь к пункту назначения \(destination)."
    }
}

// Список поездов (как массив Movement, а не конкретных поездов)
var trainList: [Movement] = []

// Метод для вывода поездов по заданному пункту назначения и количеству свободных мест по категориям
func getTrains(to destination: String) {
    print("Список поездов до пункта назначения \(destination):")
    for train in trainList {
        if let train = train as? TrainProtocol, train.destination == destination {
            print("Поезд №\(train.trainNumber), Время отправления: \(formatDate(train.departureTime)), Свободные места - Общие: \(train.availableSeatsGeneral), Плацкарт: \(train.availableSeatsPlatzkart), Купе: \(train.availableSeatsCoupe)")
        }
    }
}

// Метод для вывода поездов до заданного пункта назначения и отправляющихся после заданного времени
func getTrains(to destination: String, after time: Date) {
    print("Список поездов до пункта назначения \(destination), отправляющихся после \(formatDate(time)):")
    for train in trainList {
        if let train = train as? TrainProtocol, train.destination == destination && train.departureTime > time {
            print("Поезд №\(train.trainNumber), Время отправления: \(formatDate(train.departureTime)), Свободные места - Общие: \(train.availableSeatsGeneral), Плацкарт: \(train.availableSeatsPlatzkart), Купе: \(train.availableSeatsCoupe)")
        }
    }
}

// Утилита для форматирования даты
func formatDate(_ date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm"
    return dateFormatter.string(from: date)
}

// Пример добавления поездов в список
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd HH:mm"

if let date1 = dateFormatter.date(from: "2024-12-14 09:30"),
   let date2 = dateFormatter.date(from: "2024-12-14 18:00"),
   let date3 = dateFormatter.date(from: "2024-12-15 07:45") {
    trainList.append(Train(destination: "Москва", trainNumber: 101, departureTime: date1, seatsGeneral: 50, seatsPlatzkart: 30, seatsCoupe: 20))
    trainList.append(Train(destination: "Санкт-Петербург", trainNumber: 202, departureTime: date2, seatsGeneral: 60, seatsPlatzkart: 40, seatsCoupe: 25))
    trainList.append(Train(destination: "Москва", trainNumber: 303, departureTime: date3, seatsGeneral: 70, seatsPlatzkart: 50, seatsCoupe: 30))
}

// Пример вызова методов
getTrains(to: "Москва")
getTrains(to: "Москва", after: dateFormatter.date(from: "2024-12-14 12:00")!)
