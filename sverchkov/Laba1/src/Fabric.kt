class Fabric(
    val material: String = "",
    val colour: String = "",
    var amount: Double = 0.0
) {
    override fun toString() =
        "Материал - ${material.toString()}\tЦвет - ${colour.toString()}\tКол-во (m^2) - ${amount.toString()}\n"

    fun reduceFabric(amount: Double) {
        this.amount -= amount
    }
}

