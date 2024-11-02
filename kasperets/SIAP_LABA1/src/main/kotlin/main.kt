import student.*
fun main(){
    val our_student = Student()
    while (true) {
        println("1 Сделать чай")
        println("2 Сделать кофе")
        println("3 Сделать кофе с молоком")
        println("4 Выйти")
        var choice: Int;
        try {
            choice = readln().toInt()
        } catch (e: Exception) {
            println("Неверный ввод")
            continue;
        }
        when (choice) {
            1 -> {
                our_student.create_tea()
            }

            2 -> {
                our_student.create_coffee()
            }
            3 ->{
                our_student.create_coffee_with_milk()
            }
            4 -> {
                break;
            }
        }

    }
}