    protocol IntegerCheckable {
        func isInteger() -> Bool
    }

    func isInteger() -> Bool {
        return number.truncatingRemainder(dividingBy: 1) == 0
    }