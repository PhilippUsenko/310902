abstract class AbstractMemberOfPlane( val jobTitle: String,  val rang: Int = 0)

class Pilot(jobTitle: String, rang: Int) : AbstractMemberOfPlane(jobTitle, rang) {
    fun managePlane(plane: AbstractPlane,number:Int) {
        println("Пилот управляет самолетом")
        if(number == 1){
            plane.heightLost()
        }
        else if(  number == 2){
            plane.heightUp()
        }
        else{
            println("команда пилота не распознана")
        }
    }
    public fun open():Int{
        val number = 0
        switchLever()
        return number
    }
    private fun switchLever(): Int {
        val number = 0
        println("Пилот двигает рычаги управления")
        return number
    }
}

