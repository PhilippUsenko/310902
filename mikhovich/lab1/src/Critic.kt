package files

class Critic(override val name: String) : Reader(name) {
    class Review(override val pages: Int)  : AbstractBook()
    val review = Review(35)

    fun writeReview(review: Review) {
        println("$name написал рецензию на ${review.findPages()} страниц.")
    }
}