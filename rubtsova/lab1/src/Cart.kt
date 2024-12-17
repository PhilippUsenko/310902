import java.util.Scanner
public class Cart {
    private val products = mutableListOf<Product>()

    fun receiveProduct(product: Product) {
        products.add(product)
        println("Товар добавлен в тележку: ${product.productName}")
    }

    fun issueProduct(): Product? {
        return if (products.isNotEmpty()) {
            val product = products.removeAt(products.size - 1)
            println("Товар выдан: ${product.productName}")
            product
        } else {
            println("Тележка пуста!")
            null
        }
    }

    fun showContents() {
        println("Содержимое тележки:")
        if (products.isEmpty()) {
            println("Тележка пуста.")
        } else {
            products.forEach { println(it.productName) }
        }
    }

    fun getProductCount(): Int {
        return products.size
    }
}