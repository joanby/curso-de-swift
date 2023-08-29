//: Playground - noun: a place where people can play

import UIKit

//Asignación
let b = 12
var a = 4
print(a)
a = b
print(a)



let (x,y) = (1, 5)
print("x = \(x), y = \(y)")

/*
if x = y {
    //Esto no es válido, ya que x = y no devuelve un valor, solamente asigna
}
*/


//Aritmética básica: +, -, *, /, %
2+5
3-2
3*4
10.0/2.5

34&+52

"hola, " + "mundo"


5/2
5.0/2.0
5%2
//9 = 4*q + r, q = 9/4, r = 9%4 r = 0,1,2,3
9%4
//9 = (4*2) + 1
-9%4
//-9 = (4*-2) -1        (r = -3,-2,-1,0)
9 % -4
//a%b == a%-b


//Operador unario
let two = 2
let minusTwo = -two
let plusTwo = -minusTwo

let minusSix = -6
let alsoMinusSix = +minusSix //= minusSix, = +minusSix
 

//Operador compuesto: asignar y operar
var a1 = 3
a1 += 2 //a1 = a1 + 2 = 3 + 2 = 5
a1 -= 3
a1 *= 4
a1 /= 2
a1 %= 3

var step = 0
step += 2
step += 2
step += 2

