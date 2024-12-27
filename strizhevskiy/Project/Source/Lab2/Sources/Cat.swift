class Cat {
    
    var number = 0
    
    func toAnswer() -> String {
        number += 1
        return number & 1 == 0 ? "meow-meow" : "moore-moore"
    }
    
    func numberYes() -> Int {
        return number/2 + number&1
    }
    
    func numberNo() -> Int {
        return number/2
    }
}