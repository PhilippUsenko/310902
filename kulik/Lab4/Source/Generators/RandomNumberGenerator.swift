import Foundation
import Protocols

public class RandomNumberGenerator: UniqueNumberGenerator {
    public func generateUniqueNumber() -> Int {
        return Int.random(in: 1...1000)
    }
}
