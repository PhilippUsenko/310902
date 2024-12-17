package factory

import models.Product
import models.Worker
import store.Store

class Factory {
    protected val workers = mutableListOf<Worker>()
    protected val products = mutableListOf<Product>()
    protected var productType: String = ""

    fun hireWorker(worker: Worker) {
        workers.add(worker)
    }

    fun releaseProduct(product: Product) {
        products.add(product)
    }

    fun changeProductType(type: String) {
        productType = type
        println("Тип продукции фабрики сменён на $productType")
    }

    fun sendToStore(products: List<Product>, store: Store) {
        store.addProducts(products)
    }
}
