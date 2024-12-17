class Bread(override val name: String = "Хлеб", override val quantity: Int = 1) : Product() {
    private val taste: String = "Пшеничный"

    override val productName: String get() = name
    val productQuantity: Int get() = quantity
}