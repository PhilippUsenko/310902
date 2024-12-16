package files
fun main() {
    val bank = Bank()
    val atm = ATM(bank)
    val student = Student("Иван Иванов", "1234", "Университет")

    atm.withdraw(student, 500.0, "1234")
    atm.withdraw(student, 500.0, "wrong_pass")
    atm.withdraw(student, 1500.0, "1234")
}
