import worker.Worker_model
import visitor.Visitor_model

fun main() {
    val worker = Worker_model()
    val visitor  = Visitor_model()

    visitor.lookAtTheAnimal()
    visitor.lookAtTheAnimal()
    visitor.lookAtTheAnimal()

    worker.feedTheAnimal()
    worker.feedTheAnimal()
    worker.feedTheAnimal()

}