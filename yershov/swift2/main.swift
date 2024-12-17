class Car {
    var color: String
    var type: String
    var year: Int
    init(color: String = "Не указан", type: String = "Не указан", year: Int = 0) {
        self.color = color
        self.type = type
        self.year = year}
    func start() {
        print("Автомобиль заведен")}
    func stop() {
        print("Автомобиль заглушен")}
    func setYear(_ year: Int) {
        self.year = year
        print("Год выпуска установлен: \(year)")}
    func setType(_ type: String) {
        self.type = type
        print("Тип автомобиля установлен: \(type)")}
    func setColor(_ color: String) {
        self.color = color
        print("Цвет автомобиля установлен: \(color)")
    }}
let myCar = Car()
myCar.start()
myCar.stop()
myCar.setYear(2022)
myCar.setType("Седан")
myCar.setColor("Красный")
print("Автомобиль: \(myCar.color), \(myCar.type), \(myCar.year) года выпуска.")
