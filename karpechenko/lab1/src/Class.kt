package org.example

class Company(private val title: String, private var goals: Int, private var budget: Long) {
    val taskCost = 2000
    fun getTitle(): String {
        return title
    }
    fun getGoals(): Int {
        return goals
    }
    fun setGoals(a: Int){
        goals+=a
    }
    fun setBudget(a: Int){
        budget+=a
    }
    fun hireWorker(x: Boolean): Worker {

        println("Введите имя сотрудника: ")
        val name: String = readln()
        println("Введите кол-во денег сотрудника (0..15000): ")
        var money = 0
        do {
            try {
                money = readln().toInt()
            } catch (e: NumberFormatException) {
                println("Неверный ввод")
            }
        } while (money <= 0 || money > 15000)
        println("Введите зарплату сотрудника(900..1500): ")
        var workerSalary = 0
        do {
            try {
                workerSalary = readln().toInt()
            } catch (e: NumberFormatException) {
                println("Неверный ввод")
            }
        } while (workerSalary <= 900 || workerSalary > 1500)

        return when (x) {
            true -> {
                Programmer(name, money, workerSalary)
            }

            else -> {
                Janitor(name, money, workerSalary)
            }
        }
    }
    fun askingForSalary(w:Worker){
        w.money += payMoney(w.mySalary)
    }
    private fun payMoney(salary: Int): Int {
        println("Заработал ли сотрудник деньги?(true/false)")
        var b: Boolean
        do {
            try {
                b = readln().toBoolean()
                break
            } catch (e: NumberFormatException) {
                println("Неверный ввод")
            }
        } while (true)
        when (b) {
            true -> {
                budget -= salary; return salary
            }

            else -> {
                return 0
            }
        }
    }
}

abstract class Worker(val name: String, var money: Int, var mySalary: Int) {
    abstract fun getPaid(c: Company)
    override fun toString(): String {
        return "Имя: $name, деньги: $money, зарплата: $mySalary"
    }
}

class Programmer(name: String, money: Int, mySalary: Int) : Worker(name, money, mySalary) {
    override fun getPaid(c: Company) {
        c.askingForSalary(this)
    }

    fun doTask(c: Company) {
        if (c.getGoals() > 0) {
            c.setGoals(-1)
            println("Код пишется...")
            c.setBudget(c.taskCost)// константная прибыль за 1 выполненную задачу
            println("Задача выполнена")
        } else {
            println("Нет задач")
        }
    }

    fun askGiveBonus(d: Director) {
        d.giveBonus(this)
    }

    fun askForRiseSalary(d: Director) {
        d.riseSalary(this)
    }
}

class Director(name: String, money: Int, mySalary: Int) : Worker(name, money, mySalary) {
    override fun getPaid(c: Company) {
        c.askingForSalary(this)
    }

    fun controlCompany(c: Company) {
        var a = 0
        println("Введите кол-во новых задач(1..100)")
        do {
            try {
                a = readln().toInt()
            } catch (e: NumberFormatException) {
                println("Неверный ввод")
            }
        } while (a <= 0 || a > 100)
        c.setGoals(a)
    }

    fun giveBonus(a: Programmer) {
        println("Введите кол-во денег в премии(0..200)")
        var amount = 0
        do {
            try {
                amount = readln().toInt()
            } catch (e: NumberFormatException) {
                println("Неверный ввод")
            }
        } while (amount <= 0 || amount > 200)
        a.money += amount
    }

    fun riseSalary(
        p: Programmer
    ) {
        println("Увеличить зарплату для " + p.name + "? (true/false)")
        var b: Boolean
        do {
            try {
                b = readln().toBoolean()
                break
            } catch (e: NumberFormatException) {
                println("Неверный ввод")
            }
        } while (true)
        if (b) {
            println("Насколько увеличить зарплату для " + p.name + "? (50..300)")

            var addSalary = 0
            do {
                try {
                    addSalary = readln().toInt()
                } catch (e: NumberFormatException) {
                    println("Неверный ввод")
                }
            } while (addSalary < 50 || addSalary > 300)
            p.mySalary += addSalary
            println("Зарплата увеличена")
        } else {
            println("Просьба не одобрена")
        }
    }
}

class Janitor(name: String, money: Int, mySalary: Int) : Worker(name, money, mySalary) {
    override fun getPaid(c: Company) {
        c.askingForSalary(this)
    }

    fun clean() {
        println("Уборка помещений...")
        println("Уборка завершена")
    }
}
