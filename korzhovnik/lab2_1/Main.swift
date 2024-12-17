import Foundation

func main() {
    print("Введите натуральное n-значное число:")
    if let input = readLine() {
        if PalindromeChecker.isPalindrome(input) {
            print("\(input) является палиндромом.")
        } else {
            print("\(input) не является палиндромом.")
        }
    }
}

main()