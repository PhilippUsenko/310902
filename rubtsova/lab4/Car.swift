import Swift
import Engine

module Car {
    public class Car {
        private var engine: Engine.Engine

        public init(engine: Engine.Engine) {
            self.engine = engine
        }

        public func startCar() {
            engine.startEngine()
        }
    }
}