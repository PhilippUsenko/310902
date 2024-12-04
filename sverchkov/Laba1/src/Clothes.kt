abstract class Clothes {}

class Pants(
    private val length: Double,
    val waist: Double,
    val fabric: Fabric
) : Clothes() {
    fun getLenght() = length;
    override fun toString() = "\nШтаны\nДлинна: ${length.toString()}\nТалия: ${waist.toString()}\nТкань: ${fabric.toString()}"
}

class Shirt(
    private val shoulderGirth: Double,
    val chest: Double,
    val waist: Double,
    val fabric: Fabric
) : Clothes() {
    fun getShoulderGirth() = this.shoulderGirth;

    override fun toString() =
        "\nРубашка\nОбхват плеч: ${shoulderGirth.toString()}\nТалия: ${waist.toString()}\nОбхват груди:${chest.toString()}\nТкань: ${fabric.toString()}"
}

