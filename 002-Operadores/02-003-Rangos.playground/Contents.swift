//: Playground - noun: a place where people can play

import UIKit

//Rangos
//Rangos cerrados (a...b) -> a <= x <= b

for index in 1...10 {
    print("\(index) x 5 = \(index*5)")
}

//Rangos semiabiertos (a..<b) -> a <= x < b
let names = ["Juan Gabriel", "Mar", "María", "Juanjo", "Antonia", "Carmen"]
let count = names.count
for i in 0..<count {
    print("La persona \(i) se llama \(names[i])")
}


//Rango unilateral (a...) o (...a)
for name in names[2...]{
    print(name)
}

print("=============")
for name in names[..<2]{
    print(name)
}


let range = ...5 //Número desde - infinito hasta 5 incluido
range.contains(7)
range.contains(4)
range.contains(-8)


for i in 5... {
    print(i)
    if i > 100{
        break
    }
}

