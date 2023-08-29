//: Playground - noun: a place where people can play

import UIKit

//Arrays
//Array<Element>,  [Element]
var someInts : [Int] = []
var moreInts = [Int]()
print("El array contiene \(someInts.count)")

someInts.append(3)
print("El array contiene \(someInts.count)")
someInts = []

var threeDoubles = Array(repeating: 0.0, count: 3)
var fourDoubles = Array(repeating: 3.1415, count: 4)
var sevenDoubles = threeDoubles + fourDoubles


var shoppingList : [String] = ["Pimientos", "Cebolla", "Pollo", "Tortitas", "Guacamole", "Especias"]
print("La lista de la compra tiene \(shoppingList.count) ítems")

if shoppingList.isEmpty {
    print("No hay nada que comprar")
} else {
    print("Hay que ir al mercado")
}

shoppingList.append("Cerveza")

shoppingList += ["Lima"]
shoppingList += ["Nachos", "Queso"]

let firstItem = shoppingList[0]
shoppingList[0] = "Tres pimientos"
print(shoppingList)

//shoppingList[shoppingList.count] = "Sal"

shoppingList[4...6] = ["Lechuga", "Tomates"]
print(shoppingList)

shoppingList.insert("Mostaza", at: 3)
print(shoppingList)

let boughtItem = shoppingList.remove(at: 2)
print(shoppingList)

let lastObject = shoppingList.removeLast()
print(shoppingList)


for item in shoppingList {
    print(item)
}

for (index, item) in shoppingList.enumerated() {
    if index%2 == 1{
        print("Item número \(index+1) : \(item)")
    }
}




