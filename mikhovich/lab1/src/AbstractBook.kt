package files

abstract class AbstractBook {
    protected abstract val pages: Int
    fun findPages() : Int {return pages}
}