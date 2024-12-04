import java.rmi.ConnectIOException
import kotlin.math.atan2
import kotlin.math.cos
import kotlin.math.sin
import kotlin.math.sqrt

class Human (private val name: String) {
    fun solve(result: ComplexNumberInPok) {
        println("$name решил пример и получил ответ: ${result.getModule()}*e^(i*${result.getFaza()}*pi)")
    }
    fun solve(result: ComplexNumberInAlg) {
        println("$name решил пример и получил ответ: ${result.getMnim()}*i + ( ${result.getDeis()} )")
    }
}

class ComplexNumberInAlg (private val mnim: Float, private val deis: Float) {
    private fun changeToPok(mnim: Float, deis: Float) : ComplexNumberInPok{
        val module = sqrt(mnim*mnim + deis*deis)
        val faza = atan2(deis, mnim)
        println("Комплексное число $mnim*i + ($deis) переведено в показательный вид: $module*e^(i*pi*($faza))")
        return ComplexNumberInPok(module,faza)
    }
    fun changeToP(mnim: Float,deis: Float) : ComplexNumberInPok { return changeToPok(mnim,deis)}

    fun getMnim() : Float {return mnim}
    fun getDeis() : Float {return deis}

    fun sum(z1: ComplexNumberInAlg, z2: ComplexNumberInAlg) : ComplexNumberInAlg {
        val newMnim = z1.getMnim() + z2.getMnim()
        val newDeis = z1.getDeis() + z2.getDeis()
        return ComplexNumberInAlg(newMnim, newDeis)
    }
    fun diff(z1: ComplexNumberInAlg, z2: ComplexNumberInAlg) : ComplexNumberInAlg {
        val newMnim = z1.getMnim() - z2.getMnim()
        val newDeis = z1.getDeis() - z2.getDeis()
        return ComplexNumberInAlg(newMnim,newDeis)
    }
}

class ComplexNumberInPok(private val module: Float, private val faza: Float) {
    private fun changeToAlg(module: Float, faza: Float) : ComplexNumberInAlg {
        val mnim = module*cos(faza)
        val deis = module*sin(faza)
        println("Комплексное число $module*e^(i*pi*$faza) переведено в алгебраический вид: $mnim*i + ( $deis )")
        return ComplexNumberInAlg(mnim, deis)
    }
    fun changeToA(module: Float,faza: Float) : ComplexNumberInAlg { return changeToAlg(module,faza)}

    fun getModule() : Float { return module}
    fun getFaza() : Float { return faza}
}

class Expression(val numbers: MutableList<Double>, val operation: Int) {
    fun getResult(module1: Float, module2: Float, faza1: Float, faza2: Float, operation: Int): ComplexNumberInPok {
        when (operation) {
            3 -> {
                val complexNumberInPokModule3 = module1 * module2
                val complexNumberInPokFaza3 = faza1 + faza2
                return ComplexNumberInPok(complexNumberInPokModule3, complexNumberInPokFaza3)
            }
            4 -> {
                val complexNumberInPokModule3 = module1 / module2
                val complexNumberInPokFaza3 = faza1 - faza2
                return ComplexNumberInPok(complexNumberInPokModule3, complexNumberInPokFaza3)
            }
            else -> {
                println("Некорректная операция.")
                return ComplexNumberInPok(0f,0f)
            }
        }
    }
}

fun main() {
    val human = Human("Иван")
    val numbersList = mutableListOf<Double>()
    var expression: Expression?

    while (true) {
        println("Выберите функцию: ")
        println("1. Вычислить выражение(два комплексных числа в показательном виде).")
        println("2. Вычислить выражение(два комплексных числа разных видов).")
        println("3. Выйти из программы.")
        val choice: Int = readLine()!!.toInt()
        when (choice) {
            1 -> {
                println("Для начала создадим выражение.")
                println("Введите модуль и фазу первого комплексного числа в показательном виде:")
                val complexNumberInPokModule1 = readLine()!!.toFloat()
                val complexNumberInPokFaza1 = readLine()!!.toFloat()
                val complexPokNumber1 = ComplexNumberInPok(complexNumberInPokModule1, complexNumberInPokFaza1)
                println("Вы создали число: $complexNumberInPokModule1*e^(i*pi*$complexNumberInPokFaza1)")
                numbersList.add(complexNumberInPokModule1.toDouble())
                numbersList.add(complexNumberInPokFaza1.toDouble())

                println("Введите модуль и фазу второго комплексного числа в показательном виде:")
                val complexNumberInPokModule2 = readLine()!!.toFloat()
                val complexNumberInPokFaza2 = readLine()!!.toFloat()
                val complexPokNumber2 = ComplexNumberInPok(complexNumberInPokModule2, complexNumberInPokFaza2)
                println("Вы создали число: $complexNumberInPokModule2*e^(i*pi*$complexNumberInPokFaza2)")
                numbersList.add(complexNumberInPokModule2.toDouble())
                numbersList.add(complexNumberInPokFaza2.toDouble())

                println("Выберите операцию которую хотите сделать над числами: ")
                println("1. Сложить.")
                println("2. Вычесть.")
                println("3. Умножить.")
                println("4. Делить.")
                val choice2: Int = readLine()!!.toInt()
                expression = Expression(numbersList, choice2)
                when (choice2) {
                    1 -> {
                        val z1 = complexPokNumber1.changeToA(complexNumberInPokModule1, complexNumberInPokFaza1)
                        val z2 = complexPokNumber2.changeToA(complexNumberInPokModule2, complexNumberInPokFaza2)
                        val newAlgComplex = z1.sum(z1, z2)
                        val newPokComplex = newAlgComplex.changeToP(newAlgComplex.getMnim(), newAlgComplex.getDeis())
                        println("Результатом суммы двух комплекснных чисел в показательном виде будет: ${newPokComplex.getModule()}*e^(i*pi*${newPokComplex.getFaza()})")
                        human.solve(newPokComplex)
                    }

                    2 -> {
                        val z1 = complexPokNumber1.changeToA(complexNumberInPokModule1, complexNumberInPokFaza1)
                        val z2 = complexPokNumber2.changeToA(complexNumberInPokModule2, complexNumberInPokFaza2)
                        val newAlgComplex = z1.diff(z1, z2)
                        val newPokComplex = newAlgComplex.changeToP(newAlgComplex.getMnim(), newAlgComplex.getDeis())
                        println("Результатом разности двух комплекснных чисел в показательном виде будет: ${newPokComplex.getModule()}*e^(i*pi*${newPokComplex.getFaza()})")
                        human.solve(newPokComplex)
                    }

                    3 -> {
                        val operation = choice2
                        val newComplexPokNumber = expression.getResult(
                            complexNumberInPokModule1,
                            complexNumberInPokModule2,
                            complexNumberInPokFaza1,
                            complexNumberInPokFaza2,
                            operation
                        )
                        println("Результатом умножения первого комплексного числа в показательном виде на второе будет: ${newComplexPokNumber.getModule()}*e^(i*${newComplexPokNumber.getFaza()}*pi)")

                        numbersList.add(newComplexPokNumber.getModule().toDouble())
                        numbersList.add(newComplexPokNumber.getFaza().toDouble())
                        human.solve(newComplexPokNumber)
                    }

                    4 -> {
                        val operation = choice2
                        val newComplexPokNumber = expression.getResult(
                            complexNumberInPokModule1,
                            complexNumberInPokModule2,
                            complexNumberInPokFaza1,
                            complexNumberInPokFaza2,
                            operation
                        )
                        println("Результатом умножения первого комплексного числа в показательном виде на второе будет: ${newComplexPokNumber.getModule()}*e^(i*${newComplexPokNumber.getFaza()}*pi)")

                        numbersList.add(newComplexPokNumber.getModule().toDouble())
                        numbersList.add(newComplexPokNumber.getFaza().toDouble())
                        human.solve(newComplexPokNumber)
                    }

                    else -> println("Некорректный выбор функции.")
                }
            }
            2-> {
                println("Для начала создадим выражение.")
                println("Введите мнимое и действительное значение первого комплексного числа в алгебраическом виде:")
                val complexNumberInAlgMnim1 = readLine()!!.toFloat()
                val complexNumberInAlgDeis1 = readLine()!!.toFloat()
                val complexAlgNumber1 = ComplexNumberInAlg(complexNumberInAlgMnim1, complexNumberInAlgDeis1)
                println("Вы создали число: $complexNumberInAlgMnim1*i + ( $complexNumberInAlgDeis1 )")
                numbersList.add(complexNumberInAlgMnim1.toDouble())
                numbersList.add(complexNumberInAlgDeis1.toDouble())

                println("Введите модуль и фазу второго комплексного числа в показательном виде:")
                val complexNumberInPokModule1 = readLine()!!.toFloat()
                val complexNumberInPokFaza1 = readLine()!!.toFloat()
                val complexPokNumber1 = ComplexNumberInPok(complexNumberInPokModule1, complexNumberInPokFaza1)
                println("Вы создали число: $complexNumberInPokModule1*e^(i*pi*$complexNumberInPokFaza1)")
                numbersList.add(complexNumberInPokModule1.toDouble())
                numbersList.add(complexNumberInPokFaza1.toDouble())

                println("Выберите операцию которую хотите сделать над числами: ")
                println("1. Сложить.")
                println("2. Вычесть.")
                println("3. Умножить.")
                println("4. Делить.")
                val choice2: Int = readLine()!!.toInt()
                when (choice2) {
                    1 -> {
                        val z1 = complexPokNumber1.changeToA(complexNumberInPokModule1, complexNumberInPokFaza1)
                        val newAlgComplex = z1.sum(z1,complexAlgNumber1)
                        println("Результатом суммы двух комплексных чисел разного вида будет: ${newAlgComplex.getMnim()}*i + ( ${newAlgComplex.getDeis()} )")
                        numbersList.add(newAlgComplex.getMnim().toDouble())
                        numbersList.add(newAlgComplex.getDeis().toDouble())
                        human.solve(newAlgComplex)
                    }
                    2 -> {
                        val z1 = complexPokNumber1.changeToA(complexNumberInPokModule1, complexNumberInPokFaza1)
                        val newAlgComplex = z1.diff(z1, complexAlgNumber1)
                        println("Результатом разности двух комплекснных чисел разного вида будет: ${newAlgComplex.getMnim()}*i + ( ${newAlgComplex.getDeis()} )")
                        numbersList.add(newAlgComplex.getMnim().toDouble())
                        numbersList.add(newAlgComplex.getDeis().toDouble())
                        human.solve(newAlgComplex)
                    }

                    3 -> {
                        val z1 = complexPokNumber1.changeToA(complexNumberInPokModule1, complexNumberInPokFaza1)
                        val newAlgComplex = ComplexNumberInAlg(z1.getMnim()*complexNumberInAlgMnim1,z1.getDeis()*complexNumberInAlgDeis1)
                        println("Результатом умножения двух комплексных чисел разного вида будет: ${newAlgComplex.getMnim()}*i + ( ${newAlgComplex.getDeis()} )")
                        numbersList.add(newAlgComplex.getMnim().toDouble())
                        numbersList.add(newAlgComplex.getDeis().toDouble())
                        human.solve(newAlgComplex)
                    }

                    4 -> {
                        val z1 = complexPokNumber1.changeToA(complexNumberInPokModule1, complexNumberInPokFaza1)
                        val newAlgComplex = ComplexNumberInAlg(z1.getMnim()/complexNumberInAlgMnim1,z1.getDeis()/complexNumberInAlgDeis1)
                        println("Результатом умножения двух комплексных чисел разного вида будет: ${newAlgComplex.getMnim()}*i + ( ${newAlgComplex.getDeis()} )")
                        numbersList.add(newAlgComplex.getMnim().toDouble())
                        numbersList.add(newAlgComplex.getDeis().toDouble())
                        human.solve(newAlgComplex)
                    }

                    else -> println("Некорректный выбор функции.")
                }
            }

            3 -> {
                break
            }
            else -> println("Некорректный выбор функции.")
        }

    }
}