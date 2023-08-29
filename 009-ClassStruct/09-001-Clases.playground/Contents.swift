//: Playground - noun: a place where people can play

import UIKit

//Clases y Estructuras
/*
 - propiedades
 - métodos
 - inicializadores
 - expandir
 - protocolos
 */

//Clase
/*
 - herencia
 - type casting
 - deinicializador
 - reference counting
 */

class SomeClass {
    //definición de la clase aquí mismo
}

//Estructura

struct SomeStruct {
    //definición de la estructura aquí mismo
}

var frameRate : Int
func incrementCount() { }

struct Resolution {
    var width  = 0
    var height = 0
}

class VideoMode {
    var name : String?
    var resolution = Resolution()
    var frameRate  = 0.0
    var interlaced = false
}

let someResolution = Resolution()

let someVideoMode = VideoMode()


print("\(someResolution.width) x \(someResolution.height)")

print("Antes: \(someVideoMode.resolution.height)")

someVideoMode.resolution.width = 1920
someVideoMode.resolution.height = 1080

print("Despues: \(someVideoMode.resolution.height)")

let vga = Resolution(width: 640, height: 480)

print("\(vga.width)x\(vga.height)")

let hd = Resolution(width: 1920, height: 1080)

var cinema = hd
cinema.width = 2048

print("Cinema es \(cinema.width) y hd es \(hd.width)")

enum CompassPoints { case north, south, east, west }

var currentDirection = CompassPoints.north
let oldDirection = currentDirection
currentDirection = .east
if oldDirection == .north {
    print("La dirección guardada no ha cambiado")
} else {
    print("La dirección guardada ha cambiado!!!!")
}

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0


let newTenEighty = tenEighty
newTenEighty.frameRate
newTenEighty.frameRate = 30.0
newTenEighty.frameRate

print("El frame rate del ten eighty original vale \(tenEighty.frameRate)")

if tenEighty === newTenEighty {
    print("Las dos variables se refieren a la misma instancia de video mode")
}

/*
 - Encapsulación de datos simples
 - Datos que serán modificados al pasarse de un lado a otro
 - Propiedades de una estructura son tipos de valor (pasados por copia)
 - No necesita heredar nada de otra estructura
 */
/*
 - Tamaño de figuras geométricas GeometricShape(width, height)
 - Rango de valores Range(start, length)
 - Puntos 2D o 3D Point2D(x,y) Point3D(x,y,z)
 */


