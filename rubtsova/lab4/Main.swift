import Foundation
import Car

let v6Engine: Engine = V6Engine()
let v8Engine: Engine = V8Engine()
let electricEngine: Engine = ElectricEngine()

let engines: [Engine] = [v6Engine, v8Engine, electricEngine]

let cars: [Car] = engines.map { engine in
    return Car(engine: engine)
}

for car in cars {
    car.startCar()
}