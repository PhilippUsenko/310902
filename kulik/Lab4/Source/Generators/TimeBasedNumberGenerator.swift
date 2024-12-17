import Foundation
import Protocols


public class TimeBasedNumberGenerator: UniqueNumberGenerator {
    public func generateUniqueNumber() -> Int {
        return Int(Date().timeIntervalSince1970 * 1000)
    }
}
