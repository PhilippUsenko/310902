package libs

abstract class Flower(protected var height: Int) {
    var leaf: Leaf? = null
    var bud: Bud? = null
    var petal: Petal? = null

    fun increaseHeight() {height+=3}
    protected abstract fun createLeaf(): Leaf
    protected abstract fun createBud(): Bud
    protected abstract fun createPetal(): Petal
    fun toDryUp() {
        bud = null
        petal = null
        leaf = null
        println("The flower has dried up.")
    }
    abstract fun getType(): String

    fun hasBudAndPetal(): Boolean {
        return bud != null && petal != null
    }

    fun pour() {
        if (leaf == null) leaf = createLeaf()
        if (bud == null) bud = createBud()
        if (petal == null) petal = createPetal()
        increaseHeight()
    }
}

class Violet(height: Int) : Flower(height) {
    override fun getType(): String {
        return "Violet"
    }

    override fun createLeaf(): Leaf {
        return Leaf(10)
    }

    override fun createBud(): Bud {
        return Bud("Sweet")
    }

    override fun createPetal(): Petal {
        return Petal("Purple")
    }
}

class Gladiolus(height: Int) : Flower(height) {
    override fun getType(): String {
        return "Gladiolus"
    }

    override fun createLeaf(): Leaf {
        return Leaf(15)
    }

    override fun createBud(): Bud {
        return Bud("Fresh")
    }

    override fun createPetal(): Petal {
        return Petal("Yellow")
    }
}

class Rose(height: Int) : Flower(height) {
    override fun getType(): String {
        return "Rose"
    }

    override fun createLeaf(): Leaf {
        return Leaf(12)
    }

    override fun createBud(): Bud {
        return Bud("Fragrant")
    }

    override fun createPetal(): Petal {
        return Petal("Red")
    }
}

class Bud(var smell: String)
class Petal(private var color: String)
class Leaf(var length: Int)