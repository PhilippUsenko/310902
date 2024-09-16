package Laba1

import kotlin.random.Random

object StateMenu {
    var value: Int = 0
}


fun main(args: Array<String>) {
    val university = University()
    val teacher = Teacher()
    val journal = Jornal()
    val lecture = Lecture()
    val student = Student()
    var Ispresence = false
    menu()
    while (true) {
        when (StateMenu.value) {
            0 -> {
                return
            }
            1 -> {
                university.addLessons()
                println("Нажмите Enter для продолжения")
                readLine()
                menu()
            }
            2 -> {
                teacher.name = "Иванов И.И."
                university.addTeachers(teacher)
                println("Нажмите Enter для продолжения")
                readLine()
                menu()
            }
            3 -> {
                university.addStudent()
                println("Нажмите Enter для продолжения")
                readLine()
                menu()
            }
            4 -> {
                student.comeLesson(lecture, university)
                println("Нажмите Enter для продолжения")
                readLine()
                menu()
            }
            5 -> {
                lecture.topic = university.lessons[Random.nextInt(university.lessons.size)].topic;
                teacher.readLesson(lecture)
                println("Нажмите Enter для продолжения")
                readLine()
                menu()
            }
            6 -> {
                println("Преподаватель делится знаниями на лекции...")
                println("Нажмите Enter для продолжения")
                readLine()
                menu()
            }
            7 -> {
                if(!Ispresence){
                    teacher.markAbsent(lecture, university.students, journal)
                    println("Нажмите Enter для продолжения")
                    Ispresence = true;
                    readLine()
                    menu(true)
                }
                else{
                    teacher.markUp(lecture,university.students,journal)
                    println("Нажмите Enter для продолжения")
                    readLine()
                    menu(true)
                }

            }
            8 -> {
                journal.getListStudents()
                println("Нажмите Enter для продолжения")
                readLine()
                menu(true)
            }
            9 -> {
                university.getListLessons()
                readLine()
                menu(true)
            }
            10 -> {
                val presentStudents = journal.journalEntries.filter { it.presence.any { p -> p } }
                println("Сравнение списков студентов:")
                println("Всего студентов: ${university.students.size}, Присутствующих: ${presentStudents.size}")
                println("Нажмите Enter для продолжения")
                readLine()
                menu(true)
            }
            11 -> {
                lecture.markPresence(university)
                lecture.getPresentStudents()
                println("Нажмите Enter для продолжения")
                readLine()
                menu(true)
            }
            12 -> {
                val starosta =Starasta()
                starosta.absent(lecture, university.students, journal)
                println("Нажмите Enter для продолжения")
                readLine()
                menu(true)
            }
            else -> {
                println("Неверный вариант")
                println("Нажмите Enter для продолжения")
                readLine()
                menu()
            }
        }
    }
}


fun menu(isPres: Boolean = false) {
    println("Меню:")
    println("0. Выйти")
    println("1. Добавить лекции")
    println("2. Добавить преподавателей")
    println("3. Добавить студентов")
    println("4. Студент пришел на лекцию")
    println("5. Преподаватель читает лекцию")
    println("6. Преподаватель делится знаниями")
    if(isPres) println("7. Доотметить присутствующих")
    else println("7. Отметить студентов как отсутствующих")
    println("8. Получить список студентов")
    println("9. Получить список предметов")
    println("10. Сравнить списки студентов")
    println("11. Список отсутствующих")
    println("12. Староста отмечает отсутствующих")
    print("Выберите действие: ")
    StateMenu.value = readLine()?.toIntOrNull() ?: 0
}
