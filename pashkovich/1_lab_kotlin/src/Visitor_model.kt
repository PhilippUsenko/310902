package visitor
import zoo.Zoo_model
class Visitor_model {
    val zoo = Zoo_model()

    fun lookAtTheAnimal(){
        println("\n\nWelcome visitor, in our random zoo you will see a random animal and it will be..." + zoo.takeTheVisitor().string_info())
    }
}