public func isMultipleOfThree(_ num: Int) -> Bool {
	for i in 1...num {
		let multiply = i * (i + 1) * (i + 2)
		if multiply == num {
			return true
		}
		if multiply > num {
			return false
		}
	}
	return false
}
public class Complex {
	public var real: Int
	public var imaginary: Int

	public init(real: Int, imaginary: Int) {
		self.real = real
		self.imaginary = imaginary
	}

	// Метод для суммирования двух комплексных чисел
	public func add(_ other: Complex) -> Complex {
		return Complex(real: self.real + other.real, imaginary: self.imaginary + other.imaginary)
	}
}
