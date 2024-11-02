import Foundation


protocol IFruit {
    func description() -> String
}

public class Fruit : IFruit{

    public init(name: String, color: String, taste: String) {
        self.name = name
        self.color = color
        self.taste = taste
    }

    public var name: String 
    public var color: String 
    public var taste: String 

    public func description() -> String {
        return "\(name), цвет: \(color), вкус: \(taste)"
    }
}

public class Apple: Fruit {
    public init(color: String, taste: String) {
        super.init(name:"Apple", color:color, taste:taste)

    }
}

public class Banana: Fruit {
    
    public init(){
        super.init(name:"Банан", color:"Желтый", taste:"Сладкий")
    }
}