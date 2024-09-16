abstract class Clothes {}

class Pants(
    val length: Double,
    val waist: Double,
    val fabric: Fabric
) : Clothes() {
    override fun toString() = "\nШтаны\nДлинна: ${length.toString()}\nТалия: ${waist.toString()}\nТкань: ${fabric.toString()}"
}

class Shirt(
    val shoulderGirth: Double,
    val chest: Double,
    val waist: Double,
    val fabric: Fabric
) : Clothes() {
    override fun toString() =
        "\nРубашка\nОбхват плеч: ${shoulderGirth.toString()}\nТалия: ${waist.toString()}\nОбхват груди:${chest.toString()}\nТкань: ${fabric.toString()}"
}

