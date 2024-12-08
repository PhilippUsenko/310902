import lib

let student1 = Student(name: "Groom", age: 19, groupNumber: "569")
let student2 = Student(name: "Anna", age: 20, groupNumber: "12B")
let student3 = Student(name: "Alex", age: 19, groupNumber: "11C")
let student4 = Student(name: "Maria", age: 21, groupNumber: "14D")
let student5 = Student(name: "John", age: 18, groupNumber: "13A")


student1.setNameAge(newName: "Dmitry", newAge: 22)
student1.setGroupNumber(newGroupNumber: "15E")


let students = [student1, student2, student3, student4, student5]

for student in students {
    print("Name: \(student.getName()), Age: \(student.getAge()), Group: \(student.getGroupNumber())")
}
