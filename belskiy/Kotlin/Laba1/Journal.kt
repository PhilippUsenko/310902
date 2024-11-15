package Laba1

open class StringJournal {
    var nameOfStudent: String = ""
    val presence: MutableList<Boolean> = mutableListOf()

    fun markPresence() {
        presence.add(true)
    }

    fun markAbsent() {
        presence.add(false)
    }
}

class Jornal : StringJournal() {
    val journalEntries: MutableList<StringJournal> = mutableListOf()

    fun markStudent(student: Student, isPresent: Boolean) {
        val entry = StringJournal().apply {
            nameOfStudent = student.name
        }
        if (isPresent) {
            entry.markPresence()
        } else {
            entry.markAbsent()
        }
        journalEntries.add(entry)
    }

    fun getListStudents() {
        for (entry in journalEntries) {
            println("Студент: ${entry.nameOfStudent}")
        }
    }
}
