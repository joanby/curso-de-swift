//: Playground - noun: a place where people can play

import UIKit

//Enumerados
enum NombreDelEnumerado {
    //Aquí decalaríamos los posibles valores del enumerado
}

enum ASCIIControlCharacters : Character {
    case tab        = "\t"
    case intro      = "\n"
    case carriage   = "\r"
    case point      = "."
}


enum Planet : Int {
    case mercurio = 1, venus, tierra, marte, jupiter, saturno, urano, neptuno
}

enum CompassPoint: String{
    case north, south, east, west
}


let earth = Planet.tierra.rawValue
print(earth) //Deberíamos ver un 3


let sunsetDirection = CompassPoint.west.rawValue
print(sunsetDirection)


let possiblePlanet = Planet(rawValue: 6) // es un Planet?

if let somePlanet = Planet(rawValue: 20) {
    switch somePlanet {
    case .tierra:
        print("Se vive bien en la tierra")
    default:
        print("No se sabe nada de humanos en este planeta")
    }
} else {
    print("Esto que me has pasado no es un planeta...")
}


indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}



// (2+5) * 3 = 21

let two = ArithmeticExpression.number(2)
let three = ArithmeticExpression.number(3)
let five = ArithmeticExpression.number(5)
let sum = ArithmeticExpression.addition(two, five)
let product = ArithmeticExpression.multiplication(sum, three)

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
    case let .number(value):
        return value
    case let .addition(left, right):
        return evaluate(left) + evaluate(right)
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
    }
}

print(evaluate(product))



