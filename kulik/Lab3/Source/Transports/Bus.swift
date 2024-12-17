import Foundation

public class Bus: Car {
    public var passengers: Int
    public var money: Double
    
    public init(x: Double, y: Double, angle: Double, passengers: Int = 0, money: Double = 0.0) {
        self.passengers = passengers
        self.money = money
        super.init(x: x, y: y, angle: angle)
    }
    
    public func enter(passengerCount: Int) {
        guard passengerCount > 0 else {
            print("Passenger count must be positive")
            return
        }
        passengers += passengerCount
    }
    
    public func exit(passengerCount: Int) {
        guard passengerCount > 0 else {
            print("Passenger count must be positive")
            return
        }
        guard passengerCount <= passengers else {
            print("Not enough passengers to exit")
            return
        }
        passengers -= passengerCount
    }
    
    public override func move(distance: Double) {
        guard distance >= 0 else {
            print("Distance must be non-negative")
            return
        }
        super.move(distance: distance)
        money += Double(passengers) * distance
    }
    
    public override func randomMove() {
        let distance = Double.random(in: 1...10)
        move(distance: distance)
    }
    
    public override func randomTurn() {
        let newAngle = Double.random(in: 0...(2 * .pi))
        turn(newAngle: newAngle)
    }
    
    public func randomEnterExit() {
        let action = Bool.random()
        let passengerCount = Int.random(in: 1...5)
        if action {
            enter(passengerCount: passengerCount)
        } else {
            exit(passengerCount: passengerCount)
        }
    }
}
