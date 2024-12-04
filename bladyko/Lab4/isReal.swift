protocol RealCheckable {
    func isReal() -> Bool
}

    func isReal() -> Bool {
        return !number.isInfinite && !number.isNaN
    }