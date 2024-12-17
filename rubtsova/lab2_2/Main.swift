import Foundation
import Manipulation

func main() {
    let numbers = getInput() 

    let oddNumbers = removeEvenNumbers(from: numbers)
    print("Чётные элементы удалены: \(oddNumbers)")

    let filteredNumbers = removeElementsBetweenZeros(from: numbers)
    print("Элементы между нулями удалены: \(filteredNumbers)")
}

main()