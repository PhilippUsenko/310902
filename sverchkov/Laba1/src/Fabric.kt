class Fabric(
    private val material: String = "",
    private val colour: String = "",
    private var amount: Double = 0.0
) {
    fun getMaterial() = material;
    fun getColour() = colour;
    fun getAmount() = amount;

    override fun toString() =
        "Материал - ${material.toString()}\tЦвет - ${colour.toString()}\tКол-во (m^2) - ${amount.toString()}\n"

    fun reduceFabric(amount: Double) {
        this.amount -= amount
    }
}

