protocol ComplexCheckable {
    func isComplex() -> Bool
}

func isComplex() -> Bool {
    return number.isNaN
}