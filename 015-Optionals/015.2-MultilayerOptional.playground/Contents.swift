class Person{
    var residence : Residence?
}

class Residence {
    var rooms = [Room]()
    
    var numberOfRooms : Int {
        return rooms.count
    }
    
    subscript(i: Int) -> Room {
        get{
            return rooms[i]
        }
        set(newRoom) {
            rooms[i] = newRoom
        }
    }
    
    func printNumberOfRooms() -> Void {
        print("El número de habitaciones de la residencia es de \(numberOfRooms)")
    }
    
    var address: Address?
}

class Room {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

class Address {
    var street : String?
    var buildingName: String?
    var buildingNumber : String?
    
    func buildingIdentifier() -> String? {
        if let buildingNumber = self.buildingNumber,
            let street = self.street {
            return "Calle \(street), nº\(buildingNumber)"
        } else if buildingName != nil {
            return buildingName
        } else {
            return nil
        }
    }
}



//Properties
let juangabriel = Person()
if let roomCount = juangabriel.residence?.numberOfRooms {
    print("La residencia de Juan Gabriel tiene \(roomCount) habitacion(es).")
} else {
    print("No podemos determinar el número de habitaciones =(")
}


let someAddress = Address()
someAddress.buildingNumber = "5"
someAddress.street = "Los Álamos"
juangabriel.residence?.address = someAddress


func createAdress() -> Address {
    print("La función create address ha sido llamada")
    
    let someAddress = Address()
    someAddress.buildingNumber = "5"
    someAddress.street = "Los Álamos"
    
    return someAddress
}

juangabriel.residence?.address = createAdress()


//Métodos
if juangabriel.residence?.printNumberOfRooms() != nil {
    print("Ha sido posible imprimir el número de habitaciones de la residencia de JB")
} else {
    print("No ha sido posible imprimir el número de habitaciones de la residencia de JB")
}

if (juangabriel.residence?.address = someAddress) != nil{
    print("Ha sido posible configurar la residencia de JB")
} else {
    print("No ha sido posible hacer la configuración de la dirección")
}

//Subíndices

if let firstRoomName = juangabriel.residence?[0].name {
    print("La primera habitación es de \(firstRoomName).")
}else{
    print("Es imposible recuperar el nombre de la primera habitación.")
}


juangabriel.residence?[0] = Room(name: "Cocina")

let jbResidence = Residence()
jbResidence.rooms.append(Room(name: "Cocina"))
jbResidence.rooms.append(Room(name: "Salón de juegos"))
jbResidence.rooms.append(Room(name: "Baño"))
juangabriel.residence = jbResidence

if let firstRoomName = juangabriel.residence?[0].name {
    print("La primera habitación de Juan Gabriel (tras asignar su residencia) es la \(firstRoomName)")
}



var examScores = ["Maria": [9.5, 9.2, 8.5],
                  "Pedro": [7.9, 3.2, 6.5]
]

examScores["Maria"]?[0] = 9.8
examScores["Pedro"]?[0] += 1.0
examScores["Ana"]?[0] = 5.5

print(examScores)



//Múltiples niveles de opcionalidad
if let jbStreet = juangabriel.residence?.address?.street { //String?
    print("JB vive en la calle \(jbStreet)")
} else {
    print("No hemos podido recuperar el nombre de la calle")
}


let jbAddress = Address()
jbAddress.street = "Sésamo"
jbAddress.buildingNumber = "28"
juangabriel.residence?.address = jbAddress


if let jbStreet = juangabriel.residence?.address?.street {
    print("JB vive en la calle \(jbStreet)")
} else {
    print("No hemos podido recuperar el nombre de la calle")
}

if let buildingId = juangabriel.residence?.address?.buildingIdentifier() { //String?
    print("El ID de la calle de JB es \(buildingId)")
} else {
    print("No podemos obtener el ID...")
}


if let beginsWith = juangabriel.residence?.address?.buildingIdentifier()?.hasPrefix("Calle") {
    print("La casa de JB empieza por la palabra \"Calle\"")
} else {
    print("La casa de JB no empieza por la palabra \"Calle\"")
}



