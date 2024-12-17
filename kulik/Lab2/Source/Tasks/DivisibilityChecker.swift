import Foundation

class DivisibilityChecker {
    static func isDivisibleBy11(_ number: Int) -> Bool {
        var sum = 0
        var isOdd = true
        var tempNumber = number
        
        while tempNumber > 0 {
            let digit = tempNumber % 10
            sum += isOdd ? digit : -digit
            isOdd.toggle()
            tempNumber /= 10
        }
        
        return sum % 11 == 0
    }
}
