class Basket {
    private var fruits: [Fruit] = []

    func addFruit(_ fruit: Fruit) {
        fruits.append(fruit)
    }

    func printFruitDescriptions() {
        for fruit in fruits {
            print(fruit.getDescription())
        }
    }
}