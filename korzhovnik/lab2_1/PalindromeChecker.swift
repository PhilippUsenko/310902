import Foundation

class PalindromeChecker {
    static func isPalindrome(_ number: String) -> Bool {
        guard let _ = Int(number), !number.isEmpty else {
            print("Вводите натуральное число.")
            return false
        }
        let reversedNumber = String(number.reversed())
        return number == reversedNumber
    }
}