//: Playground - noun: a place where people can play

import UIKit

//Closures
/*
 - Funciones globales que tienen un nombre y no capturan ningún valor
 - Funciones anidadas con un nombre que pueden capturar valores de la función englobante
 - Funciones sin nombre escrita en un contexto dentro de otra función que puede capturar valores del contexto que la rodea.
 
 
 - Inferir un parámetro y devolver un valor de retorno en un contexto
 - Hacer un retorno impícito de una expresión simple
 - Nomenclatura simplificada (shorthand)
 - Sintaxis de closure para funciones específicas
 */

let people = ["Juan Gabriel", "María", "Antonia", "Margarita", "Juan José", "Carmen", "Ricardo"]

func sortBackward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}

var reversedPeople = people.sorted(by: sortBackward)
print(reversedPeople)

/* Sintaxis de Closures
 { (parametros) -> valor de retorno in
     //código del closure
 }
 */

reversedPeople = people.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 })

reversedPeople = people.sorted(by: { s1, s2 in return s1 > s2 } )

reversedPeople = people.sorted(by: { s1, s2 in s1 > s2 })

reversedPeople = people.sorted(by: { $0 > $1 })

reversedPeople = people.sorted(by: >)
