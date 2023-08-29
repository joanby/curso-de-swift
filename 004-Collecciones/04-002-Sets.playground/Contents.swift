//: Playground - noun: a place where people can play

import UIKit

//Sets
//Set<Element>
var letters = Set<Character>()
print("El conjunto de letras tiene \(letters.count)")

letters.insert("a")
letters = []

var favouriteFood : Set<String> = ["Pizza", "Macarrones", "Ensalada"]
var moreFood : Set = ["Pescado", "Carne"]

print("La comida favorita de JB tiene \(favouriteFood.count) platos")

if favouriteFood.isEmpty {
    print("No tienes comidas favoritas")
} else {
    print("Tus comidas favoritas molan mucho!")
}

favouriteFood.insert("Lasagna")

if let removedFood = favouriteFood.remove("Patatas") {
    print("\(removedFood) ha sido eliminado")
} else {
    print("El objeto deseado no puede eliminarse")
}


if favouriteFood.contains("Patatas"){
    print("El conjunto contiene el elemento buscado")
    favouriteFood.remove("Patatas")
} else {
    print("El conjunto no contiene ese elemento")
}

for food in favouriteFood.sorted() {
    print("\(food)")
}


//Operaciones con conjuntos

let pares : Set = [0,2,4,6,8]
let impares : Set = [1,3,5,7,9]
let primos : Set = [2,3,5,7]


print(pares.union(impares).sorted())

print(pares.intersection(impares).sorted())

print(impares.subtracting(primos).sorted())

print(pares.symmetricDifference(primos).sorted())


let houseAnimals: Set = ["🐶", "😺"]
let farmAnimals: Set = ["🐮", "🐷", "🐔", "🐑", "😺", "🐶"]
let cityAnimals: Set = ["🐭", "🐦"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isStrictSuperset(of: houseAnimals)
farmAnimals.isDisjoint(with: cityAnimals)
