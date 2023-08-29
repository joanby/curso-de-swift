//: Playground - noun: a place where people can play

import UIKit

//Bucle While
/*
 while condicion {
     código a ejecutar
 }
 */

let goal = 25
var board = [Int](repeating:0, count: goal+1)

board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08

var square = 0
var dice = 0
while square < goal {
    //Lanzar dado
    dice += 1
    if dice == 7 {
        dice = 1
    }
    
    square += dice
    
    if square < board.count {
        square += board[square]
    }
}


print("Game Over")


/*
 repeat {
     código a ejecutar
 } while condicion
 */

square = 0
dice = 0

repeat {
    square += board[square]
    
    dice += 1
    
    if dice == 7 { dice = 1 }
    
    square += dice
    
} while square < goal

print("Game Over")
