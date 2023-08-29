//: Playground - noun: a place where people can play

import UIKit

//Modificar Strings
//String.Index = Clase especial para posiciones de string basado en su codificación unicode
var welcome = "Hola mundo!"
welcome[welcome.startIndex]
welcome[welcome.index(before: welcome.endIndex)]
let index = welcome.index(welcome.startIndex, offsetBy: 7)
welcome[index]

//LO siguiente da error
//welcome[welcome.endIndex]
//welcome.index(after: welcome.endIndex)

for index in welcome.indices {
    print("\(welcome[index]) ")
}

welcome.insert("!", at: welcome.endIndex)
welcome.insert("!", at: welcome.endIndex)

welcome.insert(contentsOf: "😃", at: welcome.index(welcome.endIndex, offsetBy: -3))


welcome.remove(at: welcome.index(before: welcome.endIndex))
print(welcome)

let range = welcome.index(welcome.endIndex, offsetBy: -3)..<welcome.endIndex
welcome.removeSubrange(range)
print(welcome)


//substring
//welcome = Hola mundo
let blankIndex = welcome.index(of: " ") ?? welcome.endIndex
let firstPart = welcome[..<blankIndex]//Es un substring
let secondPart = welcome[blankIndex...]//Es un substring
let newString = String(firstPart) //Es un string



//Comparación de Strings
//Comparación de igualdad de caracteres == / !=
let name = "Juan Gabriel"
let alias = "Juan Gabriel"

if name == alias{
    print("Estos dos strings son el mismo")
} else {
    print("Estos dos strings son diferentes")
}


let firstCoffee = "café"
let secondCoffee = "caf\u{65}\u{301}"

if firstCoffee == secondCoffee {
    print("Los dos cafés son iguales")
}



let latinA : Character = "\u{41}"
let cyrillicA : Character = "\u{0410}"

if latinA != cyrillicA {
    print("Estas dos A no se parecen en nada")
}

//Prefijos y sufijos con Strings

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, a public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]


var numberOfScenes = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1"){
        numberOfScenes += 1
    }
}
print("Hay \(numberOfScenes) escenas en el primer acto de Romeo y Julieta")


var mansionsCount = 0, cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion"){
        mansionsCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell"){
        cellCount += 1
    }
}

print("Hay \(mansionsCount) escenas en la mansión, y \(cellCount) escenas en la celda")



