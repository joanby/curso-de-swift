//: Playground - noun: a place where people can play

import UIKit

//Sentencias nominales
/*
 labelName : while condicion {
     Código
 }
 */


let goal = 25
var board = [Int](repeating:0, count: goal+1)

board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08

var square = 0
var dice = 0

gameLoop: while square != goal {
    dice += 1
    if dice == 7 {
        dice = 1
    }
    
    switch square + dice {
    case goal:
        print("Esto me lleva a la casilla final y ganamos")
        break gameLoop
    case let newSquare where newSquare > goal:
        print("El dado te lleva fuera del tablero, tira otra vez")
        continue gameLoop
    default:
        square += dice
        square += board[square]
    }
}

print("Game Over")


//Guard
func greet(person: [String : String])
{
    guard let name = person["name"] else {
        return
    }
    //name tiene un valor
    print("¡¡Hola \(name)!!!")
    
    guard let location = person["location"] else {
        print("¡¡Espero que haga buen tiempo por ahí!!")
        return
    }
    print("¿Qué tal se está por \(location)?")
}

greet(person: [:])

greet(person:["name": "Juan Gabriel"])

greet(person: ["name" : "María", "location":"Palma de Mallorca"])


if #available(iOS 10.2, macOS 10.12, *){//watchOS, tvOS
    //Usa APIS de iOS 10 en iOS y usa APIs de MacOS 10.12 en OSX
} else {
    //USa apis anteriores
}




