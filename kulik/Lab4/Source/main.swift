import Foundation
import Protocols
import Generators

func main() {
    let randomGenerator = RandomNumberGenerator()
    let stepGenerator = StepNumberGenerator(start: 1, step: 5)
    let timeBasedGenerator = TimeBasedNumberGenerator()
    
    let generatorClass = UniqueNumberGeneratorClass(generators: [randomGenerator, stepGenerator, timeBasedGenerator])
    
    let uniqueNumbers = generatorClass.generateUniqueNumbers(count: 10)
    print("Unique Numbers: \(uniqueNumbers)")
}

main()