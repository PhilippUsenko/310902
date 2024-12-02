public func subtractIntegers(_ a:Int,_ b:Int) -> Int{
    return a - b
}

public func subtractComplexNumbers (_ a:Complex,_ b:Complex) -> Complex{
    return Complex(real: a.real - b.real, imaginary: a.imaginary - b.imaginary)
}

public struct Complex {

	public init(){
		real = 0
		imaginary = 0
	}
	
	public init(real r:Double, imaginary i:Double){
		real = r
		imaginary = i
	}
	
    public var real: Double
    public var imaginary: Double
}



public func hasThreeOrMoreSameDigits(_ number: Int) -> Bool {
    let digits = Array(String(number))
    var digitCount = [Character: Int]()
    
    for digit in digits {
        digitCount[digit, default: 0] += 1
    }
    
    return digitCount.values.contains { $0 >= 3 }
}
