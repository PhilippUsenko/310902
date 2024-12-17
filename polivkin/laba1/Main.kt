package laba1.laba1.laba1
import laba1.laba1.*

fun main(args:Array<String>) {
// Создание одного экземпляра каждого типа ученика и учебного заведения
    val student = Student()
    val schoolchild = Schoolchild()
    val kindergartener = Kindergartener()
    val school = School("Школа")
    val university = University("Университет")
    val kindergarten = Kindergarten("Детский сад")
    var flag = true
    while (flag) {
        println("Выберите действие:")
        println("1. Студент")
        println("2. Школьник")
        println("3. Детсадовец")
        println("4. Универ")
        println("5. Школа")
        println("6. Детский сад")
        println("7. Выход")

        val choice = readLine()!!.toInt()

        when (choice) {
            1 -> studentMenu(student)
            2 -> schoolchildMenu(schoolchild,student,university,school)
            3 -> kindergartenerMenu(kindergartener)
            4 -> universityMenu(university,student)
            5 -> schoolMenu(school,schoolchild)
            6 -> kindergartenMenu(kindergarten,kindergartener)
            7 -> flag = false
            else -> println("Неверный выбор")
        }
    }
}

fun studentMenu(student: Student) {
    println("Меню студента:")
    println("1. Учиться")
    println("2. Посмотреть оценки")
    println("3. Выход")

    val choice = readLine()!!.toInt()

    when (choice) {
        1 -> student.study()
        2 -> viewMarks(student)
        3 -> println("Выход из меню студента")
        else -> println("Неверный выбор")
    }
}

fun schoolchildMenu(schoolchild: Schoolchild, student: Student, university: University, scholl: School) {
    println("Меню школьника:")
    println("1. Учиться")
    println("2. Сдать экзамен")
    println("3. Посмотреть оценки")
    println("4. Выход")

    val choice = readLine()!!.toInt()

    when (choice) {
        1 -> schoolchild.study()
        2 -> { if(schoolchild.take_exam()){
            scholl.expel(schoolchild);
            university.expel(student);
            student.marks=schoolchild.get_mark();
            student.knowledge=schoolchild.knowledge;
            schoolchild.knowledge=0;
             schoolchild.marks= mutableListOf();
            
        }

        }
        3 -> viewMarks(schoolchild)
        4 -> println("Выход из меню школьника")
        else -> println("Неверный выбор")
    }
}

fun kindergartenerMenu(kindergartener: Kindergartener) {
    println("Меню детсадовца:")
    println("1. Учиться")
    println("2. Посмотреть оценки")
    println("3. Выход")

    val choice = readLine()!!.toInt()

    when (choice) {    1 -> kindergartener.study()
        2 -> viewMarks(kindergartener)
        3 -> println("Выход из меню детсадовца")
        else -> println("Неверный выбор")
    }
}

fun universityMenu(university: University, student: Student) {
    println("Меню университета:")
    println("1. Зачислить студента")
    println("2. Отчислить студента")
    println("3. Выставить оценки студенту")
    println("4. Посмотреть оценки студента")
    println("5. Выход")

    val choice = readLine()!!.toInt()

    when (choice) {
        1 -> university.enroll(student)
        2 -> university.expel(student)
        3 -> university.set_ratings(student)
        4 -> viewMarks(student)
        5 -> println("Выход из меню университета")
        else -> println("Неверный выбор")
    }
}

fun schoolMenu(school: School, schoolchild: Schoolchild) {
    println("Меню школы:")
    println("1. Зачислить школьника")
    println("2. Отчислить школьника")
    println("3. Выставить оценки школьнику")
    println("4. Посмотреть оценки школьника")
    println("5. Выход")

    val choice = readLine()!!.toInt()

    when (choice) {
        1 -> school.enroll(schoolchild)
        2 -> school.expel(schoolchild)
        3 -> school.set_ratings(schoolchild)
        4 -> viewMarks(schoolchild)
        5 -> println("Выход из меню школы")
        else -> println("Неверный выбор")
    }
}

fun kindergartenMenu(kindergarten: Kindergarten, kindergartener: Kindergartener) {
    println("Меню детского сада:")
    println("1. Зачислить детсадовца")
    println("2. Отчислить детсадовца")
    println("3. Выставить оценки детсадовцу")
    println("4. Выход")

    val choice = readLine()!!.toInt()

    when (choice) {
        1 -> kindergarten.enroll(kindergartener)
        2 -> kindergarten.expel(kindergartener)
        3 -> kindergarten.set_ratings(kindergartener)
        4-> println("Выход из меню детского сада")
        else -> println("Неверный выбор")
    }
}

fun viewMarks( pupil: Pupil) {
        println("Оценки ${pupil.javaClass.simpleName}: ${pupil.get_mark()}")
}

