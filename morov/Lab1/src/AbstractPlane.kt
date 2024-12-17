class AbstractPlane(private val name: String, private val weight: Double, private val engine: Int, private var height: Int, private var numberOfPassenger: Int = 0)  {
   fun heightUp() {
        height += 100
        println("Самолет поднялся на высоту $height метров от уровня моря")
    }

     fun heightLost() {
        height -= 100
        println("Самолет опустился на высоту $height метров от уровня моря")
    }

     fun pass(): Int {
        numberOfPassenger++
        return numberOfPassenger
    }
}