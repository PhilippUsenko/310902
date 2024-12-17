package models

abstract class Product(protected val name: String)

class Car(name: String) : Product(name) {
    fun drive() {
        println("$name едет")
    }
}

class Pot(name: String, protected val volume: Double) : Product(name)

class Match(name: String, protected val length: Double, protected val canBeLighted: Boolean) : Product(name) {
    fun light() {
        if (canBeLighted) {
            println("$name зажжена")
        } else {
            println("$name не загорелась")
        }
    }
}
