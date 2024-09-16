package Laba1

abstract class Lesson{
    internal var topic: String? = null;
    constructor(_topic:String){
        topic = _topic
    }
}

internal class Lecture(topic: String) : Lesson(topic) {
    val presentStudents: MutableList<Student> = mutableListOf()
    constructor() : this("")

    fun markPresence(university: University) {
        for (student in university.students) {
            if (student.isPresence) {
                presentStudents.add(student)
            }
        }
    }

    fun getPresentStudents() {
        for (student in presentStudents) {
            println("Присутствующий студент: ${student.name}")
        }
    }
}
