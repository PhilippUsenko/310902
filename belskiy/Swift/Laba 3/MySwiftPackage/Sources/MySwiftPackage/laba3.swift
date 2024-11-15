public protocol RandomFraction {
    func getRandomFraction(minNum: Int, maxNum: Int, minDen: Int, maxDen: Int) -> Fraction
}

public class Fraction {
    // Объявляем свойства как public
    public var num: Int
    public var den: Int

    // Объявляем инициализатор как public
    public init(num: Int, den: Int) {
        self.num = num
        self.den = den
    }

    public func multiply(_ other: Fraction) -> Fraction {
        return Fraction(num: self.num * other.num, den: self.den * other.den)
    }

    public func divide(_ other: Fraction) -> Fraction {
        return Fraction(num: self.num * other.den, den: self.den * other.num)
    }

    public func multiply(_ other: Int) -> Fraction {
        return Fraction(num: self.num * other, den: self.den)
    }

    public func divide(_ other: Int) -> Fraction {
        return Fraction(num: self.num, den: self.den * other)
    }
}

public class FirstGenerateRandomFraction: RandomFraction {
    private let random = Int.random(in: 0...Int.max)

    // Объявляем инициализатор как public
    public init() {}

    public func getRandomFraction(minNum: Int, maxNum: Int, minDen: Int, maxDen: Int) -> Fraction {
        let num = Int.random(in: minNum...maxNum)
        let den = Int.random(in: minDen...maxDen)
        return Fraction(num: num, den: den)
    }
}

public class SecondGenerateRandomFraction: RandomFraction {
    // Объявляем инициализатор как public
    public init() {}

    public func getRandomFraction(minNum: Int, maxNum: Int, minDen: Int, maxDen: Int) -> Fraction {
        let num = Int.random(in: minNum...maxNum)
        let den = Int.random(in: minDen...maxDen)

        let nod = gcd(a: num, b: den)
        let reducedNum = num / nod
        let reducedDen = den / nod

        return Fraction(num: reducedNum, den: reducedDen)
    }

    private func gcd(a: Int, b: Int) -> Int {
        var a = a
        var b = b
        while b != 0 {
            let temp = b
            b = a % b
            a = temp
        }
        return a
    }
}
