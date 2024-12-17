import Fondation 

func removeEvenNumbers(from array: [Int]) -> [Int] {
    return array.filter { $0 % 2 != 0 }
}

func removeElementsBetweenZeros(from array: [Int]) -> [Int] {
    var result = [Int]()
    var skip = false

    for number in array {
        if number == 0 {
            skip.toggle()
            if !skip { 
                result.append(0)
            }
        } else if !skip {
            result.append(number)
        }
    }

    return result
}

func getInput() -> [Int] {
    print("Введите числа, разделённые пробелами:")
    let input = readLine() ?? "" 
    let numbers = input.split(separator: " ").compactMap { Int($0) }
    return numbers
}