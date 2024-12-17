 open class AbstractPassenger(protected val seatNumber: Any, public var hungry: Int = 0) {
     fun gotoPlain() {
        println("Пассажир вошел на борт")
    }

     fun goOutPlain() {
        println("Пассажир покинул место $seatNumber и сошел с борта")
    }

     fun hungry() {
        if (hungry >= 30 && hungry < 60) {println("Пассажир $seatNumber голодает")}
        else if (hungry >= 60) {println("Пассажир $seatNumber сходит с ума от голода")}
    }

     fun hungryUp() {
        hungry += 10
    }

    fun chooseFreedomSeatNumber() {
        println("Пассажир занял место $seatNumber")
    }
}