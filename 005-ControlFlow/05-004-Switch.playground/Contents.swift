//: Playground - noun: a place where people can play

import UIKit

//Switch - case
/*
 switch valor a evaluar {
 case v1:
     código a ejecutar si toma valor 1
 case v2, v3:
     código a ejecutar si se toman los valores 2 o 3
 default:
     código por defecto si no se cumple ninguna de las condiciones anteriores
 }
 */

let character : Character = "g"
switch character {
case "a":
    print("ancla")
case "e":
    print("estufa")
case "i":
    print("iglú")
case "o":
    print("oso")
case "u":
    print("uña")
default:
    print("No hemos detectado una vocal...")
}

let possibleVowel : Character = "k"
switch possibleVowel {
case "a", "e", "i", "o", "u",
     "A", "E", "I", "O", "U":
    print("es una vocal")
default:
    print("no es una vocal")
}


let moons = 62
let planet = "lunas en Saturno"
let readableCount : String
switch moons {
case 0:
    readableCount = "ninguna"
case 1..<5:
    readableCount = "alguna"
case 5..<12:
    readableCount = "unas cuantas"
case 12..<100:
    readableCount = "varias docenas"
case 100..<1000:
    readableCount = "varios centenares"
default:
    readableCount = "la ooooostiaaaa"
}

print("Hay \(readableCount) de \(planet)")


let point = (2,-2)

switch point {
case (0,0):
    print("\(point) es el origen de coordenadas")
case (_,0):
    print("\(point) se halla sobre el eje X")
case(0,_):
    print("\(point) se halla sobre el eje Y")
case (-2...2, -2...2):
    print("\(point) se halla dentro de la caja")
default:
    print("El punto está fuera de la caja...")
}

switch point {
case (let x, 0):
    print("Se halla sobre el eje X con la coordenada \(x)")
case (0, let y):
    print("Se halla sobre el eje Y con la coordenada \(y)")
case let (x,y):
    print("Este punto no está sobre el eje (\(x), \(y))")
}


switch point {
case let (x, y) where x == y:
    print("El punto (\(x), \(y)) está sobre la recta x = y")
case let (x, y) where x == -y:
    print("El punto (\(x), \(y)) está sobre la recta x = -y")
case let (x, y):
    print("(\(x), \(y)) Esto es un punto cualquiera")
}

let aCharacter : Character = "e"
switch aCharacter {
case "a", "e", "i", "o", "u":
    print("\(aCharacter) es una vocal")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(aCharacter) es una consonante")
default:
    print("\(aCharacter) no es ni vocal ni consonante")
}


let otherPoint = (7,0)
switch otherPoint {
case (let distance, 0), (0, let distance):
    print("Sobre el eje, y a distancia \(distance) del orígen de coordenadas")
default:
    print("No está sobre el eje")
}


