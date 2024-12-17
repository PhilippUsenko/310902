import Foundation

class ArrayManipulator {
    private var elements: [Int]
    
    init() {
        self.elements = []
    }
    
    init(elements: [Int]) {
        self.elements = elements
    }
    
    init(copying other: ArrayManipulator) {
        self.elements = other.elements
    }
    
    func inputElements() {
        print("Введите количество элементов:")
        guard let count = Int(readLine() ?? ""), count > 0 else {
            print("Некорректное количество элементов.")
            return
        }
        
        elements = []
        var i = 0
        while i < count {
            print("Введите элемент \(i + 1):")
            if let input = readLine(), let number = Int(input) {
                elements.append(number)
                i += 1
            } else {
                print("Некорректный ввод, попробуйте еще раз.")
            }
        }
    }
    
    func outputElements() {
        print("Элементы массива: \(elements)")
    }
    
    func findMax() -> Int? {
        return elements.max()
    }
    
    func findMin() -> Int? {
        return elements.min()
    }
    
    func sortArray() {
        elements.sort()
    }
    
    func sumOfElements() -> Int {
        return elements.reduce(0, +)
    }
    
    func multiplyElements(by number: Int) {
        elements = elements.map { $0 * number }
    }
}