package Laba1

class University {
    val teachers: MutableList<Teacher> = mutableListOf();
    val students: MutableList<Student> = mutableListOf();
    val lessons: MutableList<Lesson> = mutableListOf();

    fun addStudent() {
        for (i in 0..32) {
            if (i == 0) {
                students.add(Starasta())
                continue
            }
            if (i % 2 == 0) {
                students.add(Student("Студент ${i+1}", true))
            } else {
                students.add(Student("Студент ${i+1}", false))
            }
        }
        println("Студенты зачислены")
    }

    fun getListLessons() {
        println("Список предметов")
        for (el in lessons) {
            println(el.topic)
        }
    }
    fun addLessons() {
        lessons.add(Lecture("Современные языки программирования"))
        lessons.add(Lecture("Алгоритмы и структура данных"))
        lessons.add(Lecture("Математический анализ"))
        lessons.add(Lecture("Конструирование программного обеспечения"))
        lessons.add(Lecture("Политэкономия"))
        println("Уроки добавлены")
    }

    fun addTeachers(tech: Teacher) {
        teachers.add(tech)
        println("Учитель нанят")
    }

}