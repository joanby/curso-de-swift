/*
 
 init(){
    //Hacer aquí mismo la inicialización de las variables oportunas...
 }
 
 */

//Inicialización por defecto
struct Farenheit{
    
    var temperature: Double
    
    init(){
        temperature = 32.0
    }
    
    
}

var f = Farenheit()

print("La temperatura actual es de \(f.temperature)ºF")



//Inicialización personalizada

struct Celsius {
    
    var temperature:Double
    
    init(){
        temperature = 25.0
    }
    
    init(fromFarenheit farenheit: Double){
        temperature = (farenheit - 32.0) / 1.8
    }
    
    init(fromKelvin kelvin:Double){
        temperature = kelvin - 273.15
    }
    
    init(_ celsius: Double){
        temperature = celsius
    }
}


let currentTemperature = Celsius()
print("La temperatura actual es de \(currentTemperature.temperature)ºC")

let bolinigPointOfWater = Celsius(fromFarenheit: 212.0)
print("La temperatura de ebullición del agua es de \(bolinigPointOfWater.temperature) ºC")

let freezingPointOfWater = Celsius(fromKelvin: 273.15)
print("La temperatura de congelación del agua es de \(freezingPointOfWater.temperature) ºC")

let customTemperature = Celsius(37.0)
print("La temperatura del cuerpo de las pesonas ronda los \(customTemperature.temperature)ºC")


struct Color{
    let red, green, blue:Double
    
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    init(white: Double) {
        red = white
        green = white
        blue = white
    }
}

let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)

let midGrey = Color(white: 0.5)

//No podemos omitir las etiquetas de los argumentos pues da error de compilación...
//let superGreen = Color(0.0, 1.0, 0.0)


class SurveyQuestion {
    
    let question : String
    var response : String?
    
    init(question:String) {
        self.question = question
    }
    
    func ask() {
        print(question)
    }
    
}

let pizzaQuestion = SurveyQuestion(question: "¿Te gusta la pizza con piña?")
pizzaQuestion.ask()

print(pizzaQuestion.response) // El compilador nos dará una advertencia de valor opcional, en este caso lo dejamos porque es nil

pizzaQuestion.response = "Si, me gusta la pizza que lleva piña"
print(pizzaQuestion.response) // El compilador nos dará una advertencia de valor opcional, en este caso podemos poner una ! al final




