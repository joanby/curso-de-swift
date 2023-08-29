//: Playground - noun: a place where people can play

import UIKit

//Comparación
/*
 Igual (a == b)
 No igual (a != b)
 Mayor que (a > b)
 Menor que (a < b)
 Mayor o igual que (a >= b)
 Menor o igual que (a <= b)
 */

1 == 1
1 != 2
2 > 1
1 < 2
1 >= 1
2 <= 1


let name = "JB"

if name == "JB" {
    print("Hola, JB! Hacia tiempo que no nos veíamos")
} else {
    print("Lo siento \(name), pero no se quien eres")
}


(1, "Juan Gabriel")<(2,"Mar")
(3, "Juan Gabriel")<(3,"Mar")
(4, "JB") == (4, "JB")

//Operador ternario
//pregunta ? si cierto : si falsa
/* if pregunta {
     si cierto
 } else {
     si falsa
 }
 */

let myWallet = 20
let isPayday = true
//let newWallet = myWallet + (isPayday ? 50 : 0)
let newWallet: Int

if isPayday{
    newWallet = myWallet + 50
} else {
    newWallet = myWallet
}

newWallet


//nil (a ?? b)
// a != nil ? a! : b

let defaultColor = "green"

var userSelectedColor: String?

var colorToUse = userSelectedColor ?? defaultColor

print(colorToUse)
