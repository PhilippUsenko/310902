import Foundation
import Protocols

public class UniqueNumberGeneratorClass {
    private var generators: [UniqueNumberGenerator]
    
    public init(generators: [UniqueNumberGenerator]) {
        self.generators = generators
    }
    
    public func generateUniqueNumbers(count: Int) -> [Int] {
        var uniqueNumbers = Set<Int>()
        while uniqueNumbers.count < count {
            for generator in generators {
                uniqueNumbers.insert(generator.generateUniqueNumber())
                if uniqueNumbers.count >= count {
                    break
                }
            }
        }
        return Array(uniqueNumbers)
    }
}
