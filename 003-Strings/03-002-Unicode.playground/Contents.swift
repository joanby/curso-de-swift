//: Playground - noun: a place where people can play

import UIKit

//Unicode

let a = "a" // U+0061
let pollito = "🐥" //U+1F425

//La barra de escape \
let null = "\0"
let backslash = "\\"
let tab = "\t"
let intro = "\n"
let carro = "\r"
let comilla = "\""
print(intro)

print("\u{24}")
print("\u{2665}")
print("\u{1F496}")


let char = "é"
print("\u{00e9}")
print("\u{0065}")
print("\u{0301}")
let newChar: Character = "\u{65}\u{301}"

let koreanExample: Character = "\u{D55C}"
let decomposedExample: Character = "\u{1112}\u{1161}\u{11AB}"

print("\u{65}\u{301}\u{20DD}")

let patriots : Character = "\u{1F1FA}\u{1F1F8}"
print(patriots)

let animals = "Perro 🐶, Gato 🐱, Cerdo 🐷, Pollito 🐥"

print("La granja de pepito tiene \(animals.count) caracteres")

var coffee = "cafe"
coffee += "\u{301}"
print("\(coffee) tiene \(coffee.count) caracteres")


