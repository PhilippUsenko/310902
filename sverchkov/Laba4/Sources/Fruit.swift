protocol Fruit {
    var name: String { get }
    var color: String { get }
    var taste: String { get }
    func getDescription() -> String
}

extension Fruit {
    func getDescription() -> String {
        return "\(name), color: \(color), taste: \(taste)"
    }
}