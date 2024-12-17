package kotlin

// Абстрактный класс для человека
abstract class AbstractHuman(protected val name: String) {
    abstract fun eat(food: Food)
}