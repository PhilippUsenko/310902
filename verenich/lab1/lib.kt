
package lib

abstract class Head {
    private var organsOfHead: List<String> = listOf("Nose, Ears, Mouth");

}

abstract class AbstractOrgan {
    protected var massa: Int = 0;
}

abstract class Body {
    private var organsOfBody: List<String> = listOf("Stomach, Foot, Hand");
}

abstract class OrganOfHead : AbstractOrgan() {
}

abstract class OrganOfBody : AbstractOrgan() {

}

class Ear : OrganOfHead() {
    public var earring: String = "Earring:";
    public fun hear(): String {
        println("Вы послушали")
        println("Введите то, что вы услышали")
        var sound = readln();
        sound = "Звук: " + sound;
        return sound
    }
}

class Nose : OrganOfHead() {
    private var form: String = "Form:";
    public fun sniff(): String {
        println("Вы нюхнули");
        println("Введите запах: ");
        var smell: String = readln();
        smell = "Запах: " + smell;
        return smell;
    }

    public fun itch(): String {
        return "Почесать нос"
    }
}

class Brain : OrganOfHead() {
    private var kpd: Int = 100;
    public fun controlOrgan(whichOrgan: String) {
        if (whichOrgan == "nose") {
            println("Введите форму носа");
            val formNose: String = readln();
            var nose: Nose = Nose();
            var chooseNose: Int = 0;
            println("Выберите действие: ")
            println("1. Понюхать что-нибудь");
            println("2. Почесать нос");
            chooseNose = readln().toInt();
            if (chooseNose == 1) {
                val smell: String = nose.sniff()
                acceptDate(smell);
            } else if (chooseNose == 2) {
                val move: String = nose.itch();
                acceptDate("Почесать нос")
            }
        } else if (whichOrgan == "mouth") {
            println("Выберите:")
            println("1. Есть")
            println("2. Говорить")
            var choose4: Int = readln().toInt()
            if (choose4 == 1) {
                var mouth: Mouth = Mouth()
                var taste = mouth.eat()
                acceptDate(taste)
            } else if (choose4 == 2) {
                var mouth: Mouth = Mouth()
                val speech: String = mouth.speak()
                acceptDate(speech)
            }
        } else if (whichOrgan == "hear") {
            var ear: Ear = Ear()
            println("Выберите действие:");
            println("1. Задать сережку");
            println("2. Услышать");
            var choose3: Int = readln().toInt()
            if (choose3 == 1) {
                println("Задайте сережку");
                val earring: String = readln();
                ear.earring = earring
            }
            if (choose3 == 2) {
                val sound = ear.hear();
                acceptDate(sound);
            }
        }
    }

    public fun acceptDate(date: String) {
        if (date.contains("Запах")) {
            println("Мозг принял информацию о запахе: ");
            print(date);
            println("")
            Thread.sleep(1000)
        }
        if (date.contains("Почесать нос")) {
            println("Мозг принял информацию о том, что нос чешется");
            println("")
            Thread.sleep(1000)
        }
        if (date.contains("Звук:")) {
            println("Мозг принял информацию: ")
            print(date)
            println("")
            Thread.sleep(1000)
        }
        if (date.contains("Фраза")) {
            println("Мозг принял информацию о том, что сказать:")
            print(date)
            println("")
            Thread.sleep(1000)

        }
        if (date.contains("Вкус")) {
            println("Мозг принял информацию о вкусе: ")
            print(date)
            println("")
            Thread.sleep(1000)
        }
    }
}

class Stomach : OrganOfBody() {
    private var volume: Int = 100;
    public fun getFood(food: String) {
        digest(food)
    }

    private fun digest(food: String) {
        println("Вы переварили:")
        print(food)
        println("")
    }
}

class Mouth : OrganOfHead() {
    private var size: Int = 100;
    public fun eat(): String {
        println("Введите информацию о вкусе еды")
        val eat = readln()
        var taste = getDateOfTaste(eat)
        taste = "Вкус: " + taste
        return taste

    }

    public fun speak(): String {
        println("Введите то, что вы хотите сказать")
        var speech: String = readln()
        speech = "Фраза: " + speech
        return speech
    }

    private fun getDateOfTaste(taste: String): String {
        passFood()
        return taste
    }

    private fun passFood() {
        println("Введите что вы съели: ")
        var food = readln()
        var stomach: Stomach = Stomach()
        stomach.getFood(food)
    }
}
