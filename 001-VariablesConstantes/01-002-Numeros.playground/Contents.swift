//: Playground - noun: a place where people can play

import UIKit

//Números enteros
//UInt8: entero sin signo de 8 bits
//Int32: entero de 32 bits

let minValue = UInt8.min //El valor mínimo de un UInt8 es 0
let maxValue = UInt8.max //El valor máximo de un UInt8 es 255

var miEntero = 6
var miEnteroPositivo: UInt = 32

print("Valores de 32 bits: (\(Int32.min), \(Int32.max))")
print("Valores de 64 bits: (\(Int64.min), \(Int64.max))")

//Números decimales
let pi = 3.14169265 //Pi en este caso es un número Double
let minT = -273.15 //minT También es un Double

let meaningOfLife = 42 // El sentido de la vida, es un número entero y vale 42

let anotherPi = 3 + 0.14159265 //Another Pi también es un Double

//Literales numéricos
//Decimal
let decimalNumber = 17
//Binario 0-1
let decimalBinario = 0b10001 //16*1 + 8*0 + 4*0 + 2*2 + 1*1 = 17 en binario
//Octal 0-7
let decimalOctal = 0o21 // 8*2 + 1*1 = 17 en octal
//Hexadecimal 0-9ABCDEF
let decimalHexa = 0x11 // 16*1+1 = 17 en hexadecimal


let number = 1.25e2 //1.25 * 10^2
let number2 = 1.25e-2 // 0.0125

let number3 = 0xFp2 //60 = 15 * 2^2
let number4 = 0xFp-2 //15 * 2^-2 = 3.75

//12.1875
let n1 = 12.1875
let n2 = 1.21875e1
let n3 = 0xC.3p0

let paddedDouble = 00000123.456
let oneMillion = 1_000_000
let overOneMillion = 1_000_000.000_000_1

//Errores típicos
//Int8: -128 a 127
//UInt8: 0 a 255
//let myUint : UInt8 = -1
//let tooBigUint: Int8  = Int8.max + 1

//Casting
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3
let piFloat = Float(3.14159265)
let intPi = Int(3.14159265)
let doublePi = Double(three) + 0.14159265

let newN = Int(-5.85)

typealias AudioSample = UInt16
var maxAmplitude = AudioSample.max
var mySample : [AudioSample] = [0,6,32,76,87]
