package kotlin

// Пример использования
fun main() {
    val farmer = Farmer("Иван")
    val vegetable = farmer.performFarmingTasks("Морковь", 10, "Оранжевый")

    val cook = Cook("Анна")
    val food = cook.cook(vegetable)

    val programmer = Programmer("Дмитрий")
    programmer.writeCode()
    programmer.eat(food)

    cook.eat(food)
    farmer.eat(food)
}
