package kotlin

// Класс Фермер, наследующий AbstractHuman
class Farmer(name: String) : AbstractHuman(name) {
    fun growVegetable(name: String, quantity: Int, color: String): Vegetable {
        println("$name выращивает $quantity овощей типа $name цвета $color.")
        return Vegetable(name, quantity, color)
    }

    private fun plantVegetable() {
        println("$name сажает овощ.")
    }

    private fun waterVegetable() {
        println("$name поливает овощ.")
    }

    override fun eat(food: Food) {
        println("$name ест еду с вкусом ${food.getTaste()}.")
    }

    fun performFarmingTasks(name: String, quantity: Int, color: String): Vegetable {
        plantVegetable()
        waterVegetable()
        return growVegetable(name, quantity, color)
    }
}
