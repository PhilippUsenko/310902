import java.util.Scanner

// Класс для собачьего корма
class DogFood(val quantity: Int)

// Абстрактный класс для питомцев
abstract class AbstractPet(val name: String, val age: Int)

// Абстрактный класс для собак
abstract class AbstractDog(name: String, age: Int) : AbstractPet(name, age) {
    abstract fun executeCommand(command: String): String
    abstract fun askForFood(): String
    abstract fun acceptCommand(command: String): String
}

// Конкретный класс для породы Пудель
class Poodle(name: String, age: Int) : AbstractDog(name, age) {
    override fun executeCommand(command: String) = "$name исполняет команду."
    override fun askForFood() = "$name просит еду!"
    override fun acceptCommand(command: String) = "$name принял команду: $command"
}

// Конкретный класс для породы Овчарка
class Shepherd(name: String, age: Int) : AbstractDog(name, age) {
    override fun executeCommand(command: String) = "$name исполняет команду."
    override fun askForFood() = "$name просит еду!"
    override fun acceptCommand(command: String) = "$name принял команду: $command"
}

// Конкретный класс для породы Терьер
class Terrier(name: String, age: Int) : AbstractDog(name, age) {
    override fun executeCommand(command: String) = "$name исполняет команду."
    override fun askForFood() = "$name просит еду!"
    override fun acceptCommand(command: String) = "$name принял команду: $command"
}

// Класс для кошек
class Cat(name: String, age: Int) : AbstractPet(name, age) {
    fun sleep() = "$name легла спать."
}

// Класс Хозяин
class Owner {
    val pets: MutableList<AbstractPet> = mutableListOf()

    // Метод для заведения собаки
    fun adoptDog(breed: String, name: String, age: Int): AbstractDog {
        val dog = when (breed) {
            "Пудель" -> Poodle(name, age)
            "Овчарка" -> Shepherd(name, age)
            "Терьер" -> Terrier(name, age)
            else -> throw IllegalArgumentException("Неизвестная порода")
        }
        pets.add(dog)
        return dog
    }

    // Метод для заведения кошки
    fun adoptCat(name: String, age: Int): Cat {
        val cat = Cat(name, age)
        pets.add(cat)
        println("Кошка ${cat.name} успешно заведена!") // Сообщение о том, что кошка успешно заведена
        println("${cat.name} легла спать.") // Сообщение о том, что кошка легла спать
        return cat
    }

    // Метод для выгула собаки
    fun walkDog(dog: AbstractDog) {
        println("${dog.name} идет на прогулку!")
    }

    // Метод для кормления собаки
    fun feedDog(dog: AbstractDog, food: DogFood) {
        println("${dog.name} наелся! Количество корма: ${food.quantity}г")
    }

    // Метод для дачи команды
    fun giveCommand(dog: AbstractDog, command: String) {
        println(dog.acceptCommand(command))
        println(dog.executeCommand(command))
    }

    // Метод для запроса на кормление
    fun askForFood(dog: AbstractDog) {
        println(dog.askForFood())
    }

    // Метод для кормления собаки с учетом процесса
    fun processFeeding(dog: AbstractDog, foodQuantity: Int) {
        feedDog(dog, DogFood(foodQuantity))
    }

    // Метод для возврата корма
    fun returnFood() {
        println("Корм возвращен.")
    }

    // Метод для вывода всех питомцев
    fun showPets() {
        pets.forEach { pet ->
            println("Кличка: ${pet.name}, возраст: ${pet.age}")
        }
    }

    // Метод, чтобы откликнуться на просьбу собаки покормить её
    fun respondToDogFeedingRequest(dog: AbstractDog) {
        askForFood(dog)
        println("Выберите действие: 1. Взять корм")
        var a:Int = readLine()!!.toInt()
        when (a) {
            1 -> {
                println("Выберите действие: 1. Вернуть корм 2. Накормить")
                var b:Int = readLine()!!.toInt()
                when (b) {
                    1 -> returnFood()
                    2 -> {
                        println("Введите количество корма (в граммах):")
                        val foodQuantity = Scanner(System.`in`).nextLine().toInt()
                        processFeeding(dog, foodQuantity)
                    }
                }
            }
        }
    }
}

// Функция для выбора действия
fun main() {
    val owner = Owner()


    while (true) {
        println("Выберите действие:")
        println("1. Завести собаку")
        println("2. Завести кошку")
        println("3. Выгулять собаку")
        println("4. Дать команду собаке")
        println("5. Откликнуться на просьбу собаки покормить её")
        println("6. Вывести всех питомцев")
        println("7. Выйти")
        var choose :Int = readLine()!!.toInt()

        when (choose) {
            1 -> {
                println("Выберите породу собаки (Пудель, Овчарка, Терьер):")
                val breed :String= readLine().toString()
                println("Введите имя собаки:")
                val dogName :String = readLine().toString()
                println("Введите возраст собаки:")
                val dogAge :Int = readLine()!!.toInt()
                owner.adoptDog(breed, dogName, dogAge)
                println("Собака $dogName успешно заведена!")
            }
            2 -> {
                println("Введите имя кошки:")
                val catName :String = readLine().toString()
                println("Введите возраст кошки:")
                val catAge :Int = readLine()!!.toInt()
                owner.adoptCat(catName, catAge)
            }
            3 -> {
                println("Введите имя собаки для выгула:")
                val dogName :String = readLine().toString()
                val dog = owner.pets.find { it is AbstractDog && it.name == dogName } as? AbstractDog
                if (dog != null) {
                    owner.walkDog(dog)
                } else {
                    println("Собака с именем $dogName не найдена.")
                }
            }
            4 -> {
                println("Введите имя собаки, чтобы дать команду:")
                val dogName :String = readLine().toString()
                val dog = owner.pets.find { it is AbstractDog && it.name == dogName } as? AbstractDog
                if (dog != null) {
                    println("Введите команду для $dogName:")
                    val command :String = readLine().toString()
                    owner.giveCommand(dog, command)
                } else {
                    println("Собака с именем $dogName не найдена.")
                }
            }
            5 -> {
                println("Введите имя собаки, чтобы откликнуться на просьбу покормить:")
                val dogName :String = readLine().toString()
                val dog = owner.pets.find { it is AbstractDog && it.name == dogName } as? AbstractDog
                if (dog != null) {
                    owner.respondToDogFeedingRequest(dog)
                } else {
                    println("Собака с именем $dogName не найдена.")
                }
            }
            6 -> {
                owner.showPets()
            }
            7 -> {
                println("Выход из программы.")
                return
            }
            else -> {
                println("Неверный ввод. Пожалуйста, попробуйте снова.")
            }
        }
    }
}