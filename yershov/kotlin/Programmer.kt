package kotlin

// Класс Программист, наследующий AbstractHuman
class Programmer(name: String) : AbstractHuman(name) {
    internal fun writeCode() {
        println("$name пишет код.")
    }

    override fun eat(food: Food) {
        println("$name ест еду с вкусом ${food.getTaste()} для восстановления энергии.")
    }
}