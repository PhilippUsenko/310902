package factory

class Director(private val factory: Factory) {
    fun changeProductionType(type: String) {
        factory.changeProductType(type)
    }
}
