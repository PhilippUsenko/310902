class Bag {
    private val products = mutableListOf<Product>()

    fun receiveProduct(product: Product) {
        products.add(product)
        println("Принят товар: ${product.productName}")
    }

    fun showProducts() {
        println("Содержимое пакета:")
        products.forEach { println(it.productName) }
    }
}