//: Playground - noun: a place where people can play

import UIKit

//Funciones
/*
 func nombreDeLaFuncion(lista de argumentos) -> valor de retorno {
     //Aquí va la lista de sentencias que queramos ejecutar
 }
*/

func sayHello(person: String) -> String {
    let greeting = "Hola \(person)!"
    return greeting
}

func sayHelloAgain(person: String) -> String {
    return "Hola otra vez, \(person)!"
}

func sayHello(animal:String) -> String? {
    return nil
}

func sayHello() -> String {
    return "Hola"
}

print(sayHello(person: "Juan Gabriel"))

let greeting = sayHello(person: "María")
print(greeting)

print(sayHelloAgain(person: "Juan Gabriel"))



//Funciones sin parámetros
func sayHelloWorld() -> String {
    return "Hello World"
}

print(sayHelloWorld())

//Parámetros múltiples
func sayHello(person:String, alreadyGreeted: Bool) -> String {
    
    if alreadyGreeted {
        return sayHelloAgain(person: person)
    } else {
        return sayHello(person: person)
    }
    
}

print(sayHello(person: "Juan Gabriel", alreadyGreeted: true))


//Parámetros de retorno


//Funciones sin valor de retorno
func sayHello2(person: String) {
    print("Hola \(person)")
}

sayHello2(person: "Juan Gabriel")


func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}

func printWithoutCounting(string: String) {
    let _ = printAndCount(string: string)
}

print(printAndCount(string: "Hola, que tal?"))

printWithoutCounting(string: "Hola que tal?")


//Funciones con múltiples valores de retorno

func minMax(array : [Int]) -> (min: Int, max: Int)?{
    
    if array.isEmpty {
        return nil
    }
    
    var currentMin = array[0]
    var currentMax = array[0]
    
    for value in array[1..<array.count]{
        if value < currentMin {
            currentMin = value
        }
        
        if value > currentMax {
            currentMax = value
        }
    }
    
    return (currentMin, currentMax)
    
}


if let limits = minMax(array: [3,-5,8,12,87,-23,99,89]){
    print("El valor más pequeño es \(limits.min) y el valor más grande es \(limits.max)")
} else {
    print("No hemos podido hallar el min max...")
}

if let newlimits = minMax(array: []) {
    print("El valor más pequeño es \(newlimits.min) y el valor más grande es \(newlimits.max)")
} else {
    print("No hemos podido hallar el min max...")
}
