import Foundation
import ValidationModule
import StringComparisonModule

let input = "Apple"

if let validatedInput = InputValidation.validateNonEmptyString(input) {
    let str1 = RealString("Apple")
    let str2 = RealString("Яблоко")
    let str3 = "Hello"
    let str4 = "World"

    print("Сравниваем объекты RealString:")
    print("str1 < str2: \(str1 < str2)")
    print("str1 == str2: \(str1 == str2)")
    
    print("\nСравниваем RealString с обычными строками:")
    print("str1 < str3: \(str1 < str3)") 
    print("str4 == str3: \(str4 == str3)")
    
    print("\nСравниваем обычные строки с RealString:")
    print("str3 < str2: \(str3 < str2)") // true
    print("str3 == str1: \(str3 == str1)") // true
}
