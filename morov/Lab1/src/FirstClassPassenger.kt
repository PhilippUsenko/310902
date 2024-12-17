open class FirstClassPassenger(seatNumber: Any, hungry: Int) : AbstractPassenger(seatNumber, hungry) {
    private fun toEat() {
        hungry -= 30
    }
    public fun open(){
        println("Пассажир $seatNumber кушает")
        toEat()
    }
}