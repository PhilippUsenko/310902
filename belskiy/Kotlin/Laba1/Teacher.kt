package Laba1
import kotlin.random.Random
class Teacher {
     var name: String = ""

    fun readLesson(less: Lesson) {
        println("Преподаватель $name прочитал лекцию на тему ${less.topic}")
    }

    fun markAbsent(less: Lesson, stud: List<Student>, journal: Jornal) {
        println("Преподаватель $name отметил отсутствующих на лекции ${less.topic}")
        stud.forEachIndexed{index, value ->
            if(index % 2 == 0 ) journal.markStudent(stud[index], true)
            else journal.markStudent(stud[index], false)
        }
    }

    private fun generateOddNumber(stud: List<Student>): Int {
        val maxIndex = stud.size - 1
        return 2 * Random.nextInt(0, maxIndex / 2) + 1
    }
    fun markUp(less: Lesson, stud: List<Student>, journal: Jornal){
        println("Преподаватель $name доотметил отсутствующих на лекции ${less.topic}")
        for(i in 0..5){
            journal.markStudent(stud[generateOddNumber(stud)], true)
        }
    }
}
