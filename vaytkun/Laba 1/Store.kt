package store

import models.Product

class Store(private val products: List<Product>) {
    private val inventory = mutableListOf<Product>()

    fun addProducts(products: List<Product>) {
        inventory.addAll(products)
        println("Добавлены продукты в магазин: ${products.joinToString { it.name }}")
    }
}
