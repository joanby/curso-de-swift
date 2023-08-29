//: Playground - noun: a place where people can play

import UIKit

//Closures
/*
 - Funciones globales que tienen un nombre y no capturan ningún valor
 - Funciones anidadas con un nombre que pueden capturar valores de la función englobante
 - Funciones sin nombre escrita en un contexto dentro de otra función que puede capturar valores del contexto que la rodea.
 
 
 - Inferir un parámetro y devolver un valor de retorno en un contexto
 - Hacer un retorno implícito de una expresión simple
 - Nomenclatura simplificada (shorthand)
 - Sintaxis de closure para funciones específicas
 */

let people = ["Juan Gabriel", "María", "Antonia", "Margarita", "Juan José", "Carmen", "Ricardo"]


func functionThatTakesAClosure(closure: () -> Void) {
    //Aquí va el código de la propia función
}

functionThatTakesAClosure(closure: {
    //Esto es el cuerpo del closure
})


functionThatTakesAClosure() {
    //Trailing closure con el cuerpo del método a ejecutar
}

people.sorted() { $0 > $1 }

people.sorted { $0 > $1 }

let digitNames = [
    0 : "Cero",  1 : "Uno",  2 : "Dos",   3 : "Tres", 4 : "Cuatro",
    5 : "Cinco", 6 : "Seis", 7 : "Siete", 8 : "Ocho", 9 : "Nueve"
]

let numbers = [18, 29, 325, 1008]

let stringNumbers = numbers.map { (number) -> String in
    var number = number
    
    var output = ""
    
    repeat {
        output = digitNames[number % 10]! + output
        number /= 10
    } while number > 0
    
    return output
}

print(stringNumbers)



func makeIncrement(forIncrement amout: Int) -> () -> Int {
    
    var runningTotal = 0
    
    func incrementer() -> Int {
        runningTotal += amout
        return runningTotal
    }
    
    return incrementer
}


let incrementByFive = makeIncrement(forIncrement: 5)

incrementByFive()
//running total vale 5
incrementByFive()
//running total vale 10
incrementByFive()
//running total vale 15


let incrementByNine = makeIncrement(forIncrement: 9)
incrementByNine()
//running total vale 9

incrementByFive()
//running total vale 20

let incrementByFiveAgain = incrementByFive
incrementByFiveAgain()
//running total vale


