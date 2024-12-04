print("\n----------------- Start ------------------\n")

let basket = Basket()
basket.addFruit(Apple(color: "red", taste: "sweet"))
basket.addFruit(Banana())
basket.addFruit(Peach(color: "Orange-red", taste: "sweet"))
basket.addFruit(Apple(color: "green", taste: "sour"))

print("Fruits in basket:")
basket.printFruitDescriptions()

print("\n----------------- Finish ------------------\n")