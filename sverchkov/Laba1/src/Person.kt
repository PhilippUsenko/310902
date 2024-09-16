abstract class Person(
    var Name: String = "Undefined",
    var Height: Double = 0.0,
    var Chest: Double = 0.0,
    var Waist: Double = 0.0
) {
}

class Student(
    Name: String = "Undefined",
    Height: Double = 0.0,
    Chest: Double = 0.0,
    Waist: Double = 0.0
) : Person(Name, Height, Chest, Waist) {
    var clothes: MutableList<Clothes> = mutableListOf()
    fun makeOrder() = this
    fun orderPants(read: () -> String?): Double {
        println("Введите длину штанов сантиметрах")
        var length = 0.0
        while(true) {
            try {
                length = read()?.toDouble() ?: 0.0
                if (length > 0) break;
            } catch (e: Exception) {
                continue;
            }
        }
        return length
    }

    fun orderShirt(read: () -> String?): Double {
        println("Введите обхват плеч в сантиметрах")
        var shoulderGirth = 0.0
        while(true) {
            try {
                shoulderGirth = read()?.toDouble() ?: 0.0
                if (shoulderGirth > 0) break;
            } catch (e: Exception) {
                continue;
            }
        }

        return shoulderGirth
    }

    fun reseiveClothes(clothes: Clothes) {
        this.clothes.add(clothes)
        println("Одежда получена")
    }

    override fun toString() =
        "Имя: $Name\nРост: $Height\nТалия $Waist\nОбхват груди $Chest\nНабор одежды ${clothes.toString()}"
}

class Tailor : Person() {
    lateinit var client: Student
    lateinit var order: Order
    var measurements: Double = 0.0
    var fabrics: MutableSet<Fabric> = mutableSetOf(
        Fabric("Хлопок", "Серый", 15.0),
        Fabric("Хлопок", "Белый", 25.0),
        Fabric("Джинса", "Джинса", 10.0),
        Fabric("Лён", "Жёлтый", 45.0),
        Fabric("Кожа", "Чёрный", 10.0)
    )

    fun getOrger(student: Student, read: () -> String?): Int {
        client = student
        println("Что шьём?\n1 - Штаны\n2 - Рубашка")
        var i = 0
        do {
            try {
                i = read()?.toInt() ?: 0
            } catch (_: Exception) {
                println("Неверный ввод")
            }
        } while (i != 1 && i != 2)

        if (i == 1) takePantsMeasurements(read)
        else takeShirtMeasurements(read)

        return i
    }

    private fun takeShirtMeasurements(read: () -> String?) {
        this.measurements = client.orderShirt(read)
    }

    private fun takePantsMeasurements(read: () -> String?) {
        this.measurements = client.orderPants(read)
    }

    fun orderPants(read: () -> String?): Boolean {
        val length = measurements
        val amountOfFabric = length * client.Waist / 10000

        val potentialFabrics = fabrics.filter { amountOfFabric <= it.amount }
        if (potentialFabrics.isEmpty()) {
            println("Недостаточно материала")
            return false
        }
        println("Выберете материал из списка")
        for (item in potentialFabrics) {
            print(item)
        }
        var i: Int = 0
        do {
            try {
                i = read()?.toInt() ?: 0
            } catch (e: Exception) {
                println("Неверный ввод")
                continue
            }
        } while (i <= 0 || i > potentialFabrics.size)
        this.order = Order(potentialFabrics.get(i - 1), amountOfFabric, length)
        potentialFabrics.get(i - 1).reduceFabric(amountOfFabric)
        return true
    }

    fun orderShirt(read: () -> String?): Boolean {
        val shoulderGirth = measurements
        val amountOfFabric =
            ((client.Chest + client.Waist) * client.Height / 4 + shoulderGirth * client.Height / 10) / 10000
        val potentialFabrics = fabrics.filter { amountOfFabric <= it.amount }

        if (potentialFabrics.isEmpty()) {
            println("Недостаточно материала")
            return false
        }

        println("Выберете материал из списка")
        for (item in potentialFabrics) {
            print(item)
        }
        var i: Int = 0
        do {
            try {
                i = read()?.toInt() ?: 0
            } catch (e: Exception) {
                println("Неверный ввод")
                continue
            }
        } while (i <= 0 || i > potentialFabrics.size)
        this.order = Order(potentialFabrics.get(i - 1), amountOfFabric, shoulderGirth)
        potentialFabrics.get(i - 1).reduceFabric(amountOfFabric)
        return true
    }

    fun suePants() = Pants(order.parameter, client.Waist, order.fabric)
    fun sueShirt() = Shirt(order.parameter, client.Chest, client.Waist, order.fabric)
}
