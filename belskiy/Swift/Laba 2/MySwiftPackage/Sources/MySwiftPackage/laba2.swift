public class RealString: CustomStringConvertible {
	var value: String

	public init(_ value: String) {
		self.value = value
	}

	public var description: String {
		return value
	}

	// Сравнения
	public static func < (l: RealString, r: RealString) -> Bool {
		return l.value.count < r.value.count
	}

	public static func < (l: RealString, r: String) -> Bool {
		return l.value.count < r.count
	}

	public static func < (l: String, r: RealString) -> Bool {
		return l.count < r.value.count
	}

	public static func > (l: RealString, r: RealString) -> Bool {
		return l.value.count > r.value.count
	}

	public static func > (l: RealString, r: String) -> Bool {
		return l.value.count > r.count
	}

	public static func > (l: String, r: RealString) -> Bool {
		return l.count > r.value.count
	}

	public static func == (l: RealString, r: RealString) -> Bool {
		return l.value.count == r.value.count
	}

	public static func == (l: RealString, r: String) -> Bool {
		return l.value.count == r.count
	}

	public static func == (l: String, r: RealString) -> Bool {
		return l.count == r.value.count
	}
}
