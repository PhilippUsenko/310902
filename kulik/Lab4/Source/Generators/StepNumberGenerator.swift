import Foundation
import Protocols

public class StepNumberGenerator: UniqueNumberGenerator {
    private var currentNumber: Int
    private let step: Int
    
    public init(start: Int, step: Int) {
        self.currentNumber = start
        self.step = step
    }
    
    public func generateUniqueNumber() -> Int {
        let uniqueNumber = currentNumber
        currentNumber += step
        return uniqueNumber
    }
}
