package laba1.laba1
abstract class  Pupil(){
public var marks:MutableList<Int> = mutableListOf()
 internal var knowledge:Int=0;

 public fun study(){
  println("${this.javaClass.simpleName} учится.")
  improve_knoledge();
 }

 public fun get_mark():MutableList<Int>{
  return this.marks
 }

 private fun improve_knoledge(){
  knowledge += 2
 }

}

 class Student:Pupil(){

 }

class Schoolchild:Pupil(){

public fun take_exam():Boolean{
 if (knowledge > 0) {
  println("Школьник сдал экзамен.")
  return true
 }
 println("Школьник не сдал экзамен.")
 return false
}

}

class Kindergartener:Pupil(){

}