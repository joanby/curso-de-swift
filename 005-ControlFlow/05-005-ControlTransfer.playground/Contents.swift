//: Playground - noun: a place where people can play

import UIKit

//Control Transfer
//Return -> Funciones

//Throw  -> Errores

//Continue
let input = "el perro de san roque no tiene rabo"
var output = ""
let charactersToRemove : [Character] = ["a", "e", "i", "o", "u", " "]

for character in input {
    if charactersToRemove.contains(character){
        continue
    } else {
        output.append(character)
    }
}
print(output)

//Break
var int = 1
while int < 100 {
    int += 1
    if int >= 10 {
        break
    }
}
print(int)

let number : Character = "三"
var possibleValue : Int?
switch number {
case "1", "一":
    possibleValue = 1
case "2", "二":
    possibleValue = 2
case "3", "三":
    possibleValue = 3
case "4", "四":
    possibleValue = 4
default:
    break
}

if let integerValue = possibleValue {
    print("El valor entero de \(number) es \(integerValue)")
} else {
    print("No se qué número corresponde a \(number)")
}

//Fallthrough

let integerToDescribe = 7
var description = "El número \(integerToDescribe) es"
switch integerToDescribe {
case 2,3,5,7,11,13,14,19,23:
    description += " primo, y además"
    fallthrough
default:
    description += " entero"
}

print(description)

