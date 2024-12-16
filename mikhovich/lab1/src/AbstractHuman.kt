package files

abstract class AbstractHuman {
    protected abstract val name: String
    fun findName() : String {return name}

    abstract fun readBook(book: AbstractBook)
}