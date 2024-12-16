package files

open class Reader(override val name: String) : AbstractHuman() {
    override fun readBook(book: AbstractBook) {
        println("$name прочитал книгу на ${book.findPages()} страниц.")
    }

    var isThanks = "Нет благодарности"
    protected fun giveFeedback(writer: Writer) {
        println("$name поблагодарил писателя ${writer.findName()} за книгу.")
    }
    fun publicGiveFeedback(writer: Writer) {giveFeedback(writer)}
}