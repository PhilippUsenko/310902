package kotlin

// Класс Повар, наследующий AbstractHuman
class Cook(name: String) : AbstractHuman(name) {
    fun cook(vegetable: Vegetable): Food {
        println("$name готовит еду из ${vegetable.getVegetableQuantity()} " +
                "овощей типа ${vegetable.getVegetableName()} цвета ${vegetable.getColor()}.")
        return Food("Блюдо из ${vegetable.getVegetableName()}", vegetable.getVegetableQuantity(), "вкусный")
    }

    override fun eat(food: Food) {
        println("$name ест приготовленную еду с вкусом ${food.getTaste()}.")
    }
}
