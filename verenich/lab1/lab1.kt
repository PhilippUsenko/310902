//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.

package main

import lib.*

fun main() {
    var choose: Int = 0;
    var brain: Brain = Brain();
    var time: Boolean = true;
    while (time) {
        println("--------------------------------")
        println("Каким органом хотите управлять?");
        println("1. Ухо");
        println("2. Нос");
        println("3. Рот");
        println("4. Выход")
        println("--------------------------------")
        choose = readln().toInt();
        if (choose == 1) {
            brain.controlOrgan("hear");
        } else if (choose == 2) {
            brain.controlOrgan("nose");
        } else if (choose == 3) {
            brain.controlOrgan("mouth");
        } else if (choose == 4) {
            time = false;
            break;
        } else {
            println("Некорректный ввод")
        }
    }
}
