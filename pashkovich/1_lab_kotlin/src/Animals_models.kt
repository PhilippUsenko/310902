package animals
import functions.random.FunctionsRandom
import Species.animals.models.Species_animals_models

class Animals_models {
    class Ostrich(): Species_animals_models.Bird(){
        override val countOfWings: Int = FunctionsRandom.getRandomNumber(1,2)

        override fun string_info(): String {
            return "\n This is ostrich, he belongs to ${this.body}, and he has wings -> ${this.countOfWings}\n"
        }
    }

    class Flamingo(): Species_animals_models.Bird(){
        override val countOfWings: Int = FunctionsRandom.getRandomNumber(1,4)

        override fun string_info(): String {
            return "\n This is flamingo, he belongs to ${this.body}, and he has wings ->${this.countOfWings}, also he can fly, look -> ${this.fly()}\n"
        }

        fun fly(): String{
            return "\n The flamingo flew away!"
        }
    }

    class Tiger(): Species_animals_models.Mammals(){
        val stripes:Int = FunctionsRandom.getRandomNumber(5,10)
        override val countOfPaws: Int = FunctionsRandom.getRandomNumber(1,4)

        override fun string_info(): String {
            return "\n This is tiger, he belong to ${this.body}, and he has stripes -> ${this.stripes} and paws ${this.countOfPaws}\n"
        }
    }

    class Elephant(): Species_animals_models.Mammals(){
        private val trunk: Boolean = true
        override val countOfPaws: Int = FunctionsRandom.getRandomNumber(2,4)

        override fun string_info(): String {
            return "\n This is elepant, he belong to ${this.body}, he has paws ${this.countOfPaws},and he " + if(this.trunk) "has trunk" else "doesn't have trunk\n"
        }
    }
}