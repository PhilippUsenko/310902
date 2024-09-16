package worker
import animal.model.Animal_model
import animals.Animals_models.*
import functions.random.FunctionsRandom

class Worker_model : FunctionsRandom(){
    fun removeCell(){
        val animal:Animal_model = getRandomAnimal()

        println("\n\nYou removed the cage, you didn’t immediately recognize who it was, but then you noticed that it was...$animal")
    }

    fun feedTheAnimal(){
        val animal:Animal_model = getRandomAnimal()

        println("\n\nYou fed the animal, and after that you heard a quiet " + animal.eat())
    }
}