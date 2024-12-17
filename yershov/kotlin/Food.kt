package kotlin

// Класс для еды, наследующий AbstractItem
class Food(name: String, quantity: Int, private val taste: String) : AbstractItem(name, quantity) {
    fun getTaste(): String = taste
}
