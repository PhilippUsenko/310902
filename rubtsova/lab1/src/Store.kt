import java.util.Scanner
public class Store(val name: String) {
    private var productAvailable = true

    fun sellProduct(): Boolean {
        return if (productAvailable) {
            println("Магазин: Товар продан.")
            true
        } else {
            println("Магазин: Товар отсутствует.")
            false
        }
    }

    private fun askForMoney(customer: Customer, totalCost: Int): Boolean {
        if (customer.money >= totalCost) {
            customer.money -= totalCost
            println("Магазин: Получено $totalCost от покупателя.")
            return true
        } else {
            println("Магазин: Недостаточно денег у покупателя.")
            return false
        }
    }

    fun requestMoney(customer: Customer, totalCost: Int): Boolean {
        return askForMoney(customer, totalCost)
    }
}
