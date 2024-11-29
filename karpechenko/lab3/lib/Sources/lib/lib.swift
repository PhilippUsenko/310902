import Swift
import Foundation

public class vector {
	private var x: Double, y: Double, z: Double
	
	public init(_ x: Double, _ y: Double, _ z: Double) {
		self.x = x
		self.y = y
		self.z = z
	}
  
	public func toString() -> String {
		var a: String = "["
		a += String(x)
		a += ", "
		a += String(y) 
		a += ", "
		a += String(z)
		a += "]"
		return a 
	}

	public func plus(_ v: vector) -> vector {
		return vector(x + v.x, y + v.y, z + v.z)
	}

	public func minus(_ v: vector) -> vector {
		return vector(x - v.x, y - v.y, z - v.z)
	}

	public func mulS(_ v: vector) -> Double {
		return x * v.x + y * v.y + z * v.z
	}

	public func mulC(_ c: Double) -> vector {
		return vector(x * c, y * c, z * c)
	}

	public func div(_ c: Double) -> vector {
		if (c != 0){
			return vector(x / c, y / c, z / c)		
		}		
		else {
			return self
		}
	}

	public func mulV(_ v: vector) -> vector {
		return vector(y * v.z - z * v.y, z * v.x - x * v.z, x * v.y - y * v.x)
	}

	public func length() -> Double {
		return sqrt(x * x + y * y + z * z)
	}
}
