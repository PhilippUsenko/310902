import Fruits 
public class Basket {
    private var fruits: [Fruit] = []
    func addFruit(_ fruit: Fruit) {
        fruits.append(fruit)
    }

    func showFruits() {
        for fruit in fruits {
            print(fruit.description())
        }
    }
}
let redApple = Apple(color: "Красный", taste: "Кисло-сладкий")
let banana = Banana()

let myBasket = Basket()
myBasket.addFruit(redApple)
myBasket.addFruit(banana)

print("Фрукты в корзине:")
myBasket.showFruits()
