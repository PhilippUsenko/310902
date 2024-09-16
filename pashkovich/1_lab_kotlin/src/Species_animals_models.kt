package Species.animals.models
import animal.model.Animal_model

class Species_animals_models {
    abstract class Mammals() : Animal_model("mammals"){
        protected abstract val countOfPaws:Int
    }

    abstract class Bird() : Animal_model("birds"){
        protected abstract val countOfWings:Int
    }
}