import libs.*

fun main() {
    val persons: MutableList<Person> = mutableListOf()
    val flowers: MutableList<Flower> = mutableListOf()

    println("Enter the name")
    val name = readln()
    val person = Person(name)
    persons.add(person)
    val flower = person.plantFlower()
    flowers.add(flower)

    while (true) {
        println("Choose the operation")
        println("1. Pour the flower")
        println("2. Smell the flower")
        println("3. Dry up the flower")
        println("4. Exit")
        when (readln().toInt()) {
            1 -> {
                person.toPour(flower)
                println("Bud, leaf and petal created for ${flower.getType()}")
            }
            2 -> {
                if (flower.hasBudAndPetal()) {
                    person.toSmell(flower.bud!!)
                } else {
                    println("The flower doesn't have a bud yet. Pour it first!")
                }
            }
            3 -> {
                flower.toDryUp()
                println("${flower.getType()} has dried up and lost all its parts.")
            }
            4 -> break
            else -> println("Invalid operation")
        }
    }
}







