//: Playground - noun: a place where people can play

import UIKit

//Funciones 3
/*
 func nombreDeLaFuncion(lista de argumentos) -> valor de retorno {
     //Aquí va la lista de sentencias que queramos ejecutar
 }
*/



// (Int, Int) -> Int

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}

// () -> Void
func sayHello() {
    print("Hello World")
}


var mathFunction : (Int, Int) -> Int = addTwoInts

print("El resultado es \(mathFunction(3,5))")

mathFunction = multiplyTwoInts

print("El resultado es \(mathFunction(3,5))")

let aNewFunction = addTwoInts


func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print(mathFunction(a,b))
}

printMathResult(addTwoInts, 2, 8)

printMathResult({ (int1, int2) -> Int in
        return int1*int1 + int2*int2
    }, 3, 4)



func stepForward(_ int: Int) -> Int {
    return int + 1
}

func stepBackward(_ int: Int) -> Int {
    return int - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}


var currentValue = 3
let moveToZero = chooseStepFunction(backward: currentValue > 0)


print("Vamos con la cuenta atrás!")

while currentValue != 0 {
    print("\(currentValue)...")
    currentValue = moveToZero(currentValue)
}
print("Cerooooo!!!!!")




func chooseStepFunction2(backward: Bool) -> (Int) -> Int {
    func newStepForward(input: Int) -> Int { return input + 1 }
    func newStepBackward(input: Int) -> Int { return input - 1 }
    return backward ? newStepBackward : newStepForward
}



var currentValue2 = -5
let moveToZero2 = chooseStepFunction2(backward: currentValue2 > 0)

while currentValue2 != 0 {
    print("\(currentValue2)...")
    currentValue2 = moveToZero2(currentValue2)
}
print("Cero!!!!!")

