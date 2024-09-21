package org.example

fun main() {
    val company = Company("Intel", 10, 15000000)
    val director = Director("Joshua", 2000, 1900)
    val a: MutableList<Worker> = mutableListOf()
    a.addFirst(Programmer("Joshua", 12000, 1200))
    a.addFirst(Janitor("Leron", 9000, 900))
    while (true) {

        println("1. Установить задачи ")
        println("2. Нанять программиста")
        println("3. Нанять уборщика")
        println("4. Писать код")
        println("5. Убраться")
        println("6. Попросить увеличить зарплату")
        println("7. Премировать")
        println("8. Получить зарплату")
        println("9. Вывести данные всех сотрудников")
        println("10. Выйти из программы")
        var x: Int = -1
        do {
            try {
                x = readln().toInt()
            } catch (e: NumberFormatException) {
                println("Неверный ввод")
            }
        } while (x < 0 || x > 10)
        when (x) {
            1 -> {
                director.controlCompany(company)
            }
            2 -> {
                a.add(company.hireWorker(true))
            }
            3 -> {
                a.add(company.hireWorker(false))
            }
            4 -> {
                println("Кто из сотрудников (index) будет писать код?")
                for (i in 0..<a.size) {
                    if (a[i] is Programmer)
                        println(i.toString() + "." + a[i].toString())
                }
                var j: Int
                do {
                    try {
                        j = readln().toInt()
                        if(a[j] !is Programmer)
                            continue
                        break
                    } catch (e: NumberFormatException) {
                        println("Неверный ввод")
                    }
                } while (true)
                val prog: Programmer = a[j] as Programmer
                prog.doTask(company)
            }
            5 ->{
                println("Кто из сотрудников (index) будет писать код?")
                for (i in 0..<a.size) {
                    if (a[i] is Janitor)
                        println(i.toString() + "." + a[i].toString())
                }
                var j: Int
                do {
                    try {
                        j = readln().toInt()
                        if(a[j] !is Janitor)
                            continue
                        break
                    } catch (e: NumberFormatException) {
                        println("Неверный ввод")
                    }
                } while (true)

                val jan: Janitor = a[j] as Janitor
                jan.clean()
            }
            6 -> {
                println("Кто из сотрудников (index) попросит увеличить зарплату?")
                for (i in 0..<a.size) {
                    if (a[i] is Programmer)
                        println(i.toString() + "." + a[i].toString())
                }
                var j:Int

                do {
                    try {
                        j = readln().toInt()
                        if(a[j] !is Programmer)
                            continue
                        break
                    } catch (e: NumberFormatException) {
                        println("Неверный ввод")
                    }
                } while (true)
                val prog = a[j] as Programmer
                prog.askForRiseSalary(director)
            }

            7 -> {
                println("Кто из сотрудников (index) получает премию?")
                for (i in 0..<a.size) {
                    if (a[i] is Programmer)
                        println(i.toString() + "." + a[i].toString())
                }
                var j : Int
                do {
                    try {
                        j = readln().toInt()
                        if(a[j] !is Programmer)
                            continue
                        break
                    } catch (e: NumberFormatException) {
                        println("Неверный ввод")
                    }
                } while (true)
                val prog = a[j] as Programmer
                prog.askGiveBonus(director)
            }

            8 -> {
                println("Кто из сотрудников (index) получает зарплату?")
                for (i in 0..<a.size) {
                    println(i.toString() + "." + a[i].toString())
                }
                var j = -1
                do {
                    try {
                        j = readln().toInt()
                    } catch (e: NumberFormatException) {
                        println("Неверный ввод")
                    }
                } while (j < 0 || j > a.size - 1)
                a[j].getPaid(company)
            }

            9 -> {
                for (i in 0..<a.size) {
                    println(i.toString() + "." + a[i].toString())
                }
            }
            10->{
                break
            }
        }
    }
}