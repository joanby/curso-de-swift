//: Playground - noun: a place where people can play

import UIKit

//Lógica

//NOT !a

let allowedEntry = false

if !allowedEntry {
    print("Acceso denegado")
} else {
    print("Puedes pasar")
}

//AND a && b

let hasDoorKey = false

let knowsPassword = true

let passRetinaScan = false

let isAdmin = true

if hasDoorKey && knowsPassword {
    print("Bienvenido a la sede de Frogames")
} else {
    print("Cuidado, un intruso! Acceso Denegado!")
}

//OR a || b

if hasDoorKey || knowsPassword {
    print("Enhorabuena, has entrado")
} else {
    print("Ni contraseña ni llave? Estás despedido!!")
}


if (knowsPassword && passRetinaScan) || ((hasDoorKey) || (isAdmin)) {
    print("Bienvenido")
} else {
    print("Acceso denegado")
}








