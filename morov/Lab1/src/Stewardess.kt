 open class Stewardess(jobTitle: String, rang: Int) : AbstractMemberOfPlane(jobTitle, rang) {
     fun giveFood(firstClassPassenger: FirstClassPassenger) {
         println("$jobTitle разносит еду")
         firstClassPassenger.open()
        }
     fun giveCoffee() {
         println("$jobTitle выпила кофе")

        }

    }