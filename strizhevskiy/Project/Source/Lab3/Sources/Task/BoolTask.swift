class BoolTask : Task {
    var state = true

    func getInfo() -> String { return "BoolTask \(state)" }
    func changeState() { state = !state }
}