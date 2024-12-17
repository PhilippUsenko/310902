interface Passenger {
    val seatNumber: Any
    var hungry: Int
    fun gotoPlain()
    fun goOutPlain()
    fun hungry()
    fun hungryUp()
    fun chooseFreedomSeatNumber()
}
 interface Plane {
    val name: String
    val weight: Double
    val engine: Int
    var height: Int
    var numberOfPassenger: Int
    fun heightUp()
    fun heightLost()
    fun pass(): Int
}
 interface MemberOfPlane {
   val jobTitle: String
    val rang: Int
}


fun main() {
    val plane = AbstractPlane("Kotlinich", 4.0, 0, 0)
    println("Саммолет прибыл к месту приема пассажиров")
    val pilot = Pilot("Пилот", 1)
    println("${pilot.jobTitle} взошел на борт")
    val stewardess = Stewardess("Стюардесса", 2)

    val p1 = FirstClassPassenger(plane.pass(), 0)
    p1.gotoPlain()
    p1.chooseFreedomSeatNumber()
    p1.hungryUp()
    val p2 = FirstClassPassenger(plane.pass(), 0)
    p2.gotoPlain()
    p2.chooseFreedomSeatNumber()
    p2.hungryUp()
    val p3 = FirstClassPassenger(plane.pass(), 0)
    p3.gotoPlain()
    p3.chooseFreedomSeatNumber()
    p3.hungryUp()
    val p4 = FirstClassPassenger(plane.pass(), 0)
    p4.gotoPlain()
    p4.chooseFreedomSeatNumber()
    p4.hungryUp()
    val p5 = passengereconommy(plane.pass(),0)
    p5.gotoPlain()
    p5.chooseFreedomSeatNumber()
    p5.hungryUp()
    pilot.managePlane(plane,2)
    pilot.open()
    stewardess.giveCoffee()
    stewardess.giveFood(p1)
    stewardess.giveFood(p2)
    stewardess.giveFood(p3)
    stewardess.giveFood(p4)
    p1.hungryUp()
    p2.hungryUp()
    p3.hungryUp()
    p4.hungryUp()
    p5.hungryUp()
    pilot.managePlane(plane,1)
    pilot.open()
    p1.goOutPlain()
    p2.goOutPlain()
    p3.goOutPlain()
    p4.goOutPlain()
    p5.goOutPlain()
    println("${pilot.jobTitle} перестал управлять самолетом и сошел с борта")
}