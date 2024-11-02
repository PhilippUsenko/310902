package student
import predmet.*;
abstract class student_actions:loose_predmet() {
    abstract fun create_tea();
    abstract fun create_coffee();
    abstract fun create_coffee_with_milk();
}
val myTeapot = teapot()
val myPot = pot()
class Student:student_actions(){
    override var mass: Int = 0;
    override fun create_coffee(){
        println("Сахар:")
        super.sprinkle()
        println("Выберите кофе")
        println("1 Арабика")
        println("2 Робуста")
        println("3 Либерика")
        val myCoffee = coffee()
        var chosen: Int? = null
        try {
            chosen = readln().toIntOrNull()
            if (chosen != null && (chosen < 0 || chosen > myCoffee.flavors.size)) {
                throw Exception("Индекс вне допустимого диапазона.")
            }
        } catch (e: Exception) {
            println("Неверный ввод:")
            create_coffee()
        }
        if (chosen != null) {
            myPot.accept(myCoffee.flavors[chosen-1])
        } else {
            create_coffee()
        }
        println("Кофе:")
        super.sprinkle()
        myTeapot.temperature_up()
        myTeapot.put_water()
        myPot.accept("Вода")
        println("Ваш кофе готов")
    }
    override fun create_tea(){
        println("Сахар:")
        super.sprinkle()
        println("Выберите чай")
        println("1 Черный")
        println("2 Зеленый")
        println("3 Улун")
        val myTea = tea()
        var chosen: Int? = null
        try {
            chosen = readln().toIntOrNull()
            if (chosen != null && (chosen < 0 || chosen > myTea.sorts.size)) {
                throw Exception("Индекс вне допустимого диапазона.")
            }
        } catch (e: Exception) {
            println("Неверный ввод:")
            create_tea()
        }
        if (chosen != null) {
            myPot.accept(myTea.sorts[chosen-1])
        } else {
            create_tea()
        }
        println("Чай:")
        super.sprinkle()
        myTeapot.temperature_up()
        myTeapot.put_water()
        myPot.accept("Вода")
        println("Ваш чай готов")
    }
    override fun create_coffee_with_milk(){
        println("Сахар:")
        super.sprinkle()
        println("Выберите кофе")
        println("1 Арабика")
        println("2 Робуста")
        println("3 Либерика")
        val myCoffee = coffee()
        var chosen: Int? = null
        try {
            chosen = readln().toIntOrNull()
            if (chosen != null && (chosen < 0 || chosen > myCoffee.flavors.size)) {
                throw Exception("Индекс вне допустимого диапазона.")
            }
        } catch (e: Exception) {
            println("Неверный ввод:")
            create_coffee_with_milk()
        }
        if (chosen != null) {
            myPot.accept(myCoffee.flavors[chosen-1])
        } else {
            create_coffee_with_milk()
        }
        println("Кофе:")
        super.sprinkle()
        myTeapot.temperature_up()
        myTeapot.put_water()
        myPot.accept("Вода")
        println("Молоко:")
        super.sprinkle()
        myPot.accept("Молоко")
        println("Ваш кофе с молоком готов")
    }
}