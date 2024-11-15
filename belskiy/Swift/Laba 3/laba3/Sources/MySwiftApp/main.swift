import MySwiftPackage

// Пример использования
let generator1 : RandomFraction = FirstGenerateRandomFraction()
let f1 = generator1.getRandomFraction(minNum: 1, maxNum: 10, minDen: 2, maxDen: 12)
print("\(f1.num)/\(f1.den)")

let generator2: RandomFraction = SecondGenerateRandomFraction()
let f2 = generator2.getRandomFraction(minNum: 1, maxNum: 10, minDen: 2, maxDen: 12)
let resultMult = f1.multiply(f2)
let resultDiv = f1.divide(f2)

print("\(f2.num)/\(f2.den)")
print("\(f1.num)/\(f1.den) * \(f2.num)/\(f2.den) = \(resultMult.num)/\(resultMult.den)")
print("\(f1.num)/\(f1.den) / \(f2.num)/\(f2.den) = \(resultDiv.num)/\(resultDiv.den)")