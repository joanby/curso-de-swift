//: Playground - noun: a place where people can play

import UIKit

//If Else
/*
 if condicion {
     código a ejecutar si la condición es cierta
 } else {
     código a ejecutar si la condición es falsa
 }
 */
var isRaining = true
if isRaining {
    print("Coge un paraguas que llueve!")
}

var temperature = 25
if temperature < 12 {
    print("Abrígate que hace frío")
} else {
    print("No hace falta que cojas abrigo, pilla mejor una camiseta")
}


if temperature < 12 {
    print("Coge el abrigo")
} else if temperature >= 30 {
    print("Coge el bañador")
} else {
    print("Se está bien, podemos ir en camiseta")
}


if temperature < 12 {
    print("Coge el abrigo")
} else if temperature >= 30 {
    print("Coge el bañador")
}

//Switch - case
