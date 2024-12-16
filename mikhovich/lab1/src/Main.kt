package files

fun main() {
    val writer = Writer("Василий")
    val reader = Reader("Петр")
    val critic = Critic("Николай")

    writer.writeBook(writer.story)
    reader.readBook(writer.story)

    reader.publicGiveFeedback(writer)
    writer.returnThanks(reader)

    critic.writeReview(critic.review)
    writer.readBook(critic.review)
}