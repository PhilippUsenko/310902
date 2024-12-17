package libs

class Person(private var name: String) {
    fun toPour(flower: Flower) {
        println("You poured ${flower.getType()}")
        flower.pour()
    }

    fun toSmell(bud: Bud) {
        println("You smelled ${bud.smell} smell")
    }

    fun plantFlower(): Flower {
        println("Choose the flower to plant")
        println("____________________")
        println("1. Violet")
        println("2. Gladiolus")
        println("3. Rose")
        val numberFlower = try {
            readLine()!!.toInt()
        } catch (e: Exception) {
            println("Invalid input")
            return plantFlower()
        }
        println("Enter the height")
        val height = try {
            readLine()!!.toInt()
        } catch (e: Exception) {
            println("Invalid input")
            return plantFlower()
        }
        return when (numberFlower) {
            1 -> Violet(height)
            2 -> Gladiolus(height)
            3 -> Rose(height)
            else -> {
                println("Invalid input")
                plantFlower()
            }
        }
    }
}



