public func hexToBinary(hexDigit: Character) -> String? {
    let hexToBinMap: [Character: String] = [
        "0": "0000", "1": "0001", "2": "0010", "3": "0011",
        "4": "0100", "5": "0101", "6": "0110", "7": "0111",
        "8": "1000", "9": "1001", "A": "1010", "B": "1011",
        "C": "1100", "D": "1101", "E": "1110", "F": "1111"
    ]
    return hexToBinMap[hexDigit]
}

public func hexStringToBinary(hexString: String) -> String {
    var binaryResult = ""
    for hexDigit in hexString {
        if let binary  = hexToBinary(hexDigit: hexDigit) {
            binaryResult += binary
        } 
        else {
            return "Ошибка: недопустимый символ в шестнадцатеричной строке."
        }
    }
    return binaryResult
}