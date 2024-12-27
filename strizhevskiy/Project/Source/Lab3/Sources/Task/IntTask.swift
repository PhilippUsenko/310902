class IntTask : Task {
    var state = 0

    func getInfo() -> String { return "IntTask \(state)" }
    func changeState() { state += 1 }
}