package files

class Writer(override val name: String) : AbstractHuman() {
    override fun readBook(book: AbstractBook) {
        println("$name прочитал рецензию на на ${book.findPages()} страниц.")
    }

    val story = ShortStory(100)

    fun writeBook(story : ShortStory) {
        println("$name написал книгу на ${story.findPages()} страниц.")
    }

    fun returnThanks(reader: Reader) : () -> Unit {
        println("$name вернул благодарность читателю ${reader.findName()}.")
        return {reader.isThanks = "Благодарность есть"}
    }
}