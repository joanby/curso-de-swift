//: Playground - noun: a place where people can play

import UIKit

//Strings
let myString = "Hola, esto es un String"

let frase = """

    En un lugar de \"""La Mancha\"\"\",
    de cuyo nombre no quiero acordarme,

    no ha mucho tiempo que vivía
    un hidalgo de los de lanza en astillero...

    """

print(frase)

let singleLineString = "Esto es un string de una línea"
let multilineString = """
Esto también es un string de una línea
"""

var emptyString = ""
var otherEmptyString = String()

if emptyString.isEmpty {
    print("String vacío")
}

var title = "Harry Potter"
title += " y la piedra filosofal"
print(title)

/*let newTitle = "Harry Potter"
newTitle += " y la cámara de los secretos"
*/

let newTitle = title

title = "El señor de los anillos"

newTitle



//Caracteres
for character in "Perrito 🐶" {
    print(character)
}

let questionMark : Character = "?"

let dogArray: [Character] = ["P", "e", "r", "r", "o", "🐶"]
let dogString = String(dogArray)
print(dogString)

let s1 = "Hola"
let s2 = " Mundo"
var welcome = s1 + s2
welcome += " soy JB"
welcome.append(questionMark)
print(welcome)

let multiplo = 3
let message = "\(multiplo) x 2.5 = \(Double(multiplo) * 2.5)"






