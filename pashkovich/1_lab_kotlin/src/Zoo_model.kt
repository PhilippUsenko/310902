package zoo
import animal.model.Animal_model
import functions.random.FunctionsRandom

class Zoo_model : FunctionsRandom() {
    fun takeTheVisitor(): Animal_model {
        return getRandomAnimal()
    }
}