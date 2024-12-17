class Customer(var money: Int) {
    private val cart = Cart()
    private val bag = Bag()

    fun takeProduct(product: Product) {
        println("Покупатель взял товар: ${product.productName}")
        putInCart(product)
    }

    private fun putInCart(product: Product) {
        cart.receiveProduct(product)
    }



    fun transferToBag() {
        val count = cart.getProductCount()
        if (count == 0) {
            println("Тележка пуста. Нет товаров для переложения.")
            return
        }
        println("Перекладываем товары из тележки в пакет.")
        for (i in 0 until count) {
            cart.issueProduct()?.let { bag.receiveProduct(it) }
        }
        println("Все товары из тележки переложены в пакет.")
    }

    fun buyProduct(store: Store): Boolean {
        println("Покупатель хочет купить товары.")
        val count = cart.getProductCount()
        if (count == 0) {
            println("Тележка пуста. Нет товаров для покупки.")
            return false
        }
        val totalCost = 100 * count
        return if (store.requestMoney(this, totalCost)) {
            println("Покупка успешна.")
            store.sellProduct()
        } else {
            println("Недостаточно денег для покупки.")
            false
        }
    }

    fun showBagContents() {
        bag.showProducts()
    }

    fun showCartContents() {
        cart.showContents()
    }
}
