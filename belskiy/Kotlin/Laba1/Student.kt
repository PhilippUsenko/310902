package Laba1

open class Student {
    open var name: String = ""
    open var isPresence: Boolean = false
    val marks: MutableList<Int> = mutableListOf()

    constructor(_name: String, _isPresence: Boolean){
        name = _name
        isPresence = _isPresence
    }

    constructor()
    open fun comeLesson(less: Lesson, university: University) {
        for (item in university.students) {
            if (item.isPresence) {
                println("Студент ${item.name} посетил лекцию на тему ${less.topic}")
            }
        }
    }


}

internal class Starasta : Student {
    override var name: String = "Староста"
    override var isPresence: Boolean = true
    constructor(_name: String = "Староста", _isPresence: Boolean = true) : super(_name, _isPresence)


    fun absent(less: Lesson, stud: List<Student>, journal: Jornal) {
        println("Староста $name отметил присутствующих")
        stud.forEachIndexed{index, value ->
            if(index % 2 ==0) journal.markStudent(stud[index], true)
            else journal.markStudent(stud[index], false)
        }
    }
}