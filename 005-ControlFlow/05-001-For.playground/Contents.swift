//: Playground - noun: a place where people can play

import UIKit

//Bucle For-in
let dishes = ["Pizza", "Hamburguesa", "Ensalada", "Patatas Fritas"]
for dish in dishes {
    print("Hoy de menú tenemos \(dish)")
}


let animals = ["araña": 8, "perro": 4, "hormiga": 6, "canguro":2]
for (animalName, numberOfLegs) in animals {
    print("El animal \(animalName) tiene \(numberOfLegs) patas")
}



for i in 1...10{ // let i = 10
    print("3x\(i)=\(3*i)")
}

//2*2*2...*2 10 veces

let base = 2
let power = 10
var answer = 1
for _ in 1...10 {
    answer *= 2
}

print("\(base) elevado a \(power) es igual a \(answer)")

let seconds = 60

for tick in 0..<seconds{
    print("Tick: \(tick)")
}

let secondInterval = 5

for tick in stride(from: 0, to: seconds, by: secondInterval){
    print("Vamos por \(tick)")
}

for tick in stride(from: 0, through: seconds, by: secondInterval){
    print("Y ahora vamos por el \(tick)")
}

