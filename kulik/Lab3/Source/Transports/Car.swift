import Foundation

public class Car {
    public var x: Double
    public var y: Double
    public var angle: Double
    
    public init(x: Double, y: Double, angle: Double) {
        self.x = x
        self.y = y
        self.angle = angle
    }
    
    public func move(distance: Double) {
        guard distance >= 0 else {
            print("Distance must be non-negative")
            return 
        }
        x += distance * cos(angle)
        y += distance * sin(angle)
    }
    
    public func turn(newAngle: Double) {
        angle = newAngle
    }
    
    public func randomMove() {
        let distance = Double.random(in: 1...10)
        move(distance: distance)
    }
    
    public func randomTurn() {
        let newAngle = Double.random(in: 0...(2 * .pi))
        turn(newAngle: newAngle)
    }
}
