import Foundation
import Transport

// Создание и использование объектов Car и Bus
let car = Car(x: 0, y: 0, angle: 0)
car.move(distance: 10)
car.turn(newAngle: .pi / 4)
car.randomMove()
car.randomTurn()
print("Car position: (\(car.x), \(car.y)), angle: \(car.angle)")

let bus = Bus(x: 0, y: 0, angle: 0)
bus.enter(passengerCount: 10)
bus.move(distance: 5)
bus.randomEnterExit()
bus.randomMove()
bus.randomTurn()
print("Bus position: (\(bus.x), \(bus.y)), angle: \(bus.angle), passengers: \(bus.passengers), money: \(bus.money)")
