//: Playground - noun: a place where people can play

import UIKit

//Dictionaries
//Dictionary<Key, Value>  [Key : Value]
var integerNames = [Int : String]()
integerNames[32] = "trenta y dos"
print(integerNames)
integerNames = [:]

var airports : [String:String] = ["PMI": "Palma de Mallorca", "BCN": "Barcelona", "MAD": "Madrid"]
print(airports)

var pass = ["Ingles": true, "Matemáticas":false, "Ciencias":true]

print("La lista de aeropuertos asciende a \(airports.count)")

if airports.isEmpty {
    print("No hay aeropuertos para volar")
} else {
    print("Tenemos algunos aeropuertos en mente")
}

airports["LHR"] = "Londres"
print(airports)

airports["LHR"] = "Londres Heathrow"
print(airports)

if let oldValue = airports.updateValue("Barcelona El Prat", forKey: "BCN"){
    print("El valor antiguo de ese aeropuerto era \(oldValue)")
}
print(airports)


if let airportName = airports["LHR"] {
    print("Tengo un aeropuerto llamado \(airportName)")
} else {
    print("No tengo constancia de ese aeropuerto.")
}

airports["MAD"] = nil
print(airports)


if let removedValue = airports.removeValue(forKey: "PMI"){
    print("Acabamos de cerrar el aeropuerto \(removedValue)")
} else {
    print("Ese aeropuerto no existe en nuestra lista")
}

print(airports)

for (airportKey, airportName) in airports {
    print("\(airportKey): \(airportName)")
}

for (_, airportName) in airports {
    print("\(airportName)")
}

for airporKey in airports.keys {
    print("Código del aeropuerto: \(airporKey)")
}

for airportName in airports.values {
    print("El nombre del aeropuerto es: \(airportName)")
}

let airportKeys = [String](airports.keys).sorted()
let airportNames = [String](airports.values).sorted()

