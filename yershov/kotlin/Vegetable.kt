package kotlin

// Класс для овощей, наследующий AbstractItem
class Vegetable(name: String, quantity: Int, private val color: String) :
    AbstractItem(name, quantity) {
    fun getColor(): String = color
    fun getVegetableName(): String = name // Альтернативный метод для доступа к имени
    fun getVegetableQuantity(): Int = quantity
}
