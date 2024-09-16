class Fraction {
    var numurator: Int
    var denominator: Int

    init(numurator: Int, denominator: Int) {
        self.numurator = numurator
        self.denominator = denominator
    }

    // Нахождение (НОД)
    func findNod(a: Int, b: Int) -> Int {
        return b == 0 ? a : findNod(a: b, b: a % b)
    }

    // Сокращение дроби
    func simplify() -> Fraction {
        let nod = findNod(a: self.numurator, b: self.denominator)
        return Fraction(numurator: self.numurator / nod, denominator: self.denominator / nod)
    }

    // Сложение двух дробей
    func add(anotherFraction: Fraction) -> Fraction {
        let new_numerator = self.numurator * anotherFraction.denominator + anotherFraction.numurator * self.denominator
        let new_denominator = self.denominator * anotherFraction.denominator

        return Fraction(numurator: new_numerator, denominator: new_denominator).simplify()
    }
}

func first(){
    let fraction_1 = Fraction(numurator: 223, denominator: 4223) // создание первой дроби
    let fraction_2 = Fraction(numurator: 32, denominator: 42) // создание второй дроби

    let result_fraction = fraction_1.add(anotherFraction: fraction_2) // сложение дробей

    print("Результат сложения двух обыкновенных несократимых дробей: \(result_fraction.numurator)/\(result_fraction.denominator)")
}


func second(){
    let count_oddNumbers: ([Int]) -> Int = { (arrayOfNumbers:[Int]) -> Int in
        return arrayOfNumbers.filter { return $0 % 2 != 0 }.count
    }

    let count_words: (String) -> Int = { (yourString: String) -> Int in 
        return yourString.split(separator: " ").count
    }

    print("\(count_oddNumbers([12,53,76,23,21,76,2,6,3])) \(count_words("first second asasa asasa who who whow"))")
}


func main() {
    //first()
    //second()
}

main()
