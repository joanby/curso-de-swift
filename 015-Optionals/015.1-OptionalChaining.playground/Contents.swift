class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}


let juangabriel = Person()
print(juangabriel.residence)
//No se puede consultar el valor de una variable opcional
//haciendo unwrapping si no estamos seguros de que ha sido configurada
//print(juangabriel.residence!.numberOfRooms)

juangabriel.residence = Residence()

if let roomCount = juangabriel.residence?.numberOfRooms {
    //roomCount es de tipo Int?
    print("La casa de Juan Gabriel tiene \(roomCount) habitacion(es).")
} else {
    print("No tenemos ni idea de las habitaciones de la casa de JB")
}
