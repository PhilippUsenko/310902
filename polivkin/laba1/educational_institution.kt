package laba1.laba1
abstract open class Educational_institutions(name:String="Undefined"){
internal var name:String=name

public fun enroll(pupil:Pupil,){//зачислить

    println("${pupil.javaClass.simpleName} зачислен в $name.")
}

    public fun expel(pupil:Pupil){//отчислить
        println("${pupil.javaClass.simpleName} отчислен из $name.")
    }

   open public fun set_ratings(pupil: Pupil) {
        if(pupil.knowledge>20)
            pupil.marks.add(10)
            else if(pupil.knowledge==0&&pupil.knowledge==1)
        pupil.marks.add(1)
        else
            pupil.marks.add(pupil.knowledge/2)
        println("Оценки ${pupil.javaClass.simpleName} выставлены")
    }
}



class University(name: String):Educational_institutions(name){
    override fun set_ratings(pupil: Pupil) {
        println("Где вы хотите выставить оценки?")
        println("1.На лекции")
        println("2.На семинаре")
        println("3.На лабораторной")
        var a:Boolean=true
        while(a) {
            var ch = readln().toInt()
            when (ch) {
                1 -> {give_lecture(pupil)
                    a= false}
                2 -> {
                    give_seminar(pupil)
                    a=false
                }
                3 -> {give_laba(pupil)
               a= false
                }
                else -> println("невверные значения")
            }
        }
        super.set_ratings(pupil)
    }

    private fun give_lecture(pupil:Pupil){
        pupil.knowledge += 2
        println("Лекция проведена в $name. Знания студента увеличены.")

    }

    private fun give_seminar (pupil:Pupil){
        pupil.knowledge += 1
        println("Семинар проведен в $name. Знания студента увеличены.")

    }

    private fun give_laba (pupil:Pupil){
        pupil.knowledge += 2
        println("Лабораторная проведена в $name. Знания студента увеличены.")

    }

}



class School(name: String):Educational_institutions(name){

    override fun set_ratings(pupil: Pupil) {
        println("Где вы хотите выставить оценки?")
        println("1.На уроке")
        println("2.На линейке")
        var a:Boolean=true
        while(a) {
            var ch = readln().toInt()
            when (ch) {
                1 -> {give_lesson(pupil)
                    a=false}
                2 -> {
                    give_meeting(pupil)
                   a= false
                }
                else -> println("невверные значения")
            }
        }
        super.set_ratings(pupil)
    }


private fun give_lesson (pupil:Pupil){
    pupil.knowledge += 2
    println("Урок проведен в $name. Знания Школьника увеличены.")

}

    private fun give_meeting (pupil:Pupil){
        println("Линейка проведена в $name")
    }

}



class Kindergarten(name: String):Educational_institutions(name){
    override fun set_ratings(pupil: Pupil) {
        println("В саду нет оценок,можите провести завтрак")
        println("1.Провести завтрак")
        println("2.Нет")
        var a:Boolean=true
        while(a) {
            var ch = readln().toInt()
            when (ch) {
                1 -> {give_breakfast()
                   a= false}
                2 -> {

                    a=false
                }
                else -> println("невверные значения")
            }
        }

    }
private fun give_breakfast(){
    println("Завтрак проведен в $name.")
}

}