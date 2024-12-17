class Milk(override val name: String = "Молоко", override val quantity: Int = 1) : Product() {
    override val productName: String get() = name
    val productQuantity: Int get() = quantity
}