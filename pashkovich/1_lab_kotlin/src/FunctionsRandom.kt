package functions.random
import animal.model.Animal_model
import animals.Animals_models.*
import kotlin.random.Random

abstract class FunctionsRandom { // использую этот класс, для вынесения функции выдачи случайного животного
    protected fun getRandomAnimal(): Animal_model {
        val mapOfAnimals = mapOf(1 to Ostrich(), 2 to Flamingo(), 3 to Tiger(), 4 to Elephant())
        val numberOfAnimal = (1..4).random()

        return mapOfAnimals[numberOfAnimal]!!
    }

    companion object {
        fun getRandomNumber(min: Int, max: Int): Int {
            return Random.nextInt(min, max + 1)
        }
    }
}