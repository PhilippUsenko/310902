import factory.Director
import factory.Factory
import models.Car
import models.Match
import models.Worker

fun main() {
    val factory = Factory()
    val director = Director(factory)
    val worker = Worker("Кирюха", 100.0)
    val match = Match("первая спичка", 12.0, false)

    factory.hireWorker(worker)

    worker.work()
    worker.smoke()
    worker.lightAMatch(match)
    val car = Car("Porsche")
    factory.releaseProduct(car)
    match.light()

    director.changeProductionType("электронику")
}
