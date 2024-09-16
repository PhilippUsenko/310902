package animal.model

abstract class Animal_model(protected val body:String = "no peculiarity", open val eat: () -> String = { "thanks from animal" }){
    abstract fun string_info():String
}
