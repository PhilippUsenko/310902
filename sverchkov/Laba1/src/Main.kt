fun main() {
    app(:: readln)
}

fun app(read: () -> String?) {
    val student = Student("Evgeniy", 179.0, 96.0, 85.0)
    val tailor = Tailor()

    println(student.toString())

    while (true) {
        println("Выберете действие\n1 - Просмотр данных\n2 - Заказать одежду\n0 - Выход")
        var i = -1
        do {

            try {
                i = read()?.toInt() ?: 0
            } catch (e: NumberFormatException) {
                println("Неверный ввод")
            }
        } while (i < 0 || i > 2)

        when (i) {
            1 -> println(student.toString())
            2 -> {
                tailor.getOrger(student.makeOrder(), read)
            }
            0 -> return
        }
    }
}

