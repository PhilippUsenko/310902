import java.util.Scanner

fun main() {
    val store = Store("Магазин 1")
    val bread = Bread()
    val milk = Milk()
    val customer = Customer(500)

    while (true) {
        println("\nВыберите действие:")
        println("1. Выбрать товар")
        println("2. Посмотреть содержимое тележки")
        println("3. Купить товары из тележки")
        println("4. Переложить товары из тележки в пакет")
        println("5. Выйти")
        var choose :Int = readLine()!!.toInt()
        when (choose) {
            1 -> {
                println("Выберите товар (1 - Хлеб, 2 - Молоко):")
                var x :Int = readLine()!!.toInt()
                when (x) {
                    1 -> customer.takeProduct(bread)
                    2 -> customer.takeProduct(milk)
                    else -> println("Некорректный выбор товара.")
                }
            }
            2 -> {
                customer.showCartContents()
            }
            3 -> {
                if (customer.buyProduct(store)) {
                    println("Покупка успешна.")
                }
            }
            4 -> {
                customer.transferToBag()
            }
            5 -> {
                println("Выход из программы.")
                return
            }
            else -> println("Некорректный выбор действия.")
        }
    }
}




