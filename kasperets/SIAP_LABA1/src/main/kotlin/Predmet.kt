package predmet

abstract class Predmet{
    abstract var mass:Int
}
abstract class loose_predmet:Predmet(){
    fun sprinkle(){
        println("Введите количество ложек")
        var mass = readLine()
    }
}
class tea:loose_predmet(){
    override var mass = 100
    val sorts = arrayOf("Черный", "Зеленый", "Улун")
}
class coffee:loose_predmet(){
    override var mass = 100
    val flavors = arrayOf("Арабика", "Робуста", "Либерика ")
}
abstract class sugar:loose_predmet()
abstract class milk:Predmet()
class teapot:Predmet(){
    override var mass = 1000
    val volume = 1000;
    var temp:Int = 20;
    fun temperature_up(){
        println("Чайник включен")
        change_temperature()
        temp = 100
        if(temp == 100){
            println("Вода закипела")
        }
        temp = 20;
    }
    fun put_water(){
        println("Введите количество воды");
        var count_of_water:Int
        try {
            count_of_water = readln().toInt()
        } catch (e: Exception) {
            println("Неверный ввод")
            put_water()
        }
    }
    fun get_water(){
        println("Чайник вскипел, налейте воду")
    }
    fun change_temperature(){
        println("Введите желаемую температуру")
        var temperature:Int
        try {
            temperature = readln().toInt()
        } catch (e: Exception) {
            println("Неверный ввод")
            change_temperature()
        }
    }
}
class pot:Predmet(){
    override var mass = 200
    val volume = 200
    var content = "Вода"
    fun accept(index:String){
        var order = mutableListOf<String>()
        order.add(index)
        println("Чашка приняла")
    }
}