import Foundation

public class RealString: Comparable {
    private let value: String
    
    public init(_ value: String) {
        self.value = value
    }
    
    public var length: Int {
        return value.count
    }
    
    public static func < (lhs: RealString, rhs: RealString) -> Bool {
        return lhs.length < rhs.length
    }
    
    public static func == (lhs: RealString, rhs: RealString) -> Bool {
        return lhs.length == rhs.length
    }
    
    public static func < (lhs: RealString, rhs: String) -> Bool {
        return lhs.length < rhs.count
    }
    
    public static func == (lhs: RealString, rhs: String) -> Bool {
        return lhs.length == rhs.count
    }
    
    public static func < (lhs: String, rhs: RealString) -> Bool {
        return lhs.count < rhs.length
    }
    
    public static func == (lhs: String, rhs: RealString) -> Bool {
        return lhs.count == rhs.length
    }
}
