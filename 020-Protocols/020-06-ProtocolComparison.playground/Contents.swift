protocol Named {
    var name: String { get }
}

protocol Aged {
    var age: Int { get }
}

struct Person : Named, Aged {
    var name:String
    var age: Int
}

func wishHappyBirthay(to celebrator: Named & Aged){
    print("Feliz cumpleaños \(celebrator.name), ahora tienes \(celebrator.age) años!")
}

wishHappyBirthay(to: Person(name: "Juan Gabriel", age: 29))





class Location {
    var latitude: Double
    var longitude: Double
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
}


class City : Location, Named {
    var name: String
    init(name: String, latitude: Double, longitude: Double) {
        self.name = name
        super.init(latitude: latitude, longitude: longitude)
    }
}


func beginTravel(to location: Location & Named){
    print("Bienvenido a \(location.name)!!!")
}

let seattle = City(name: "Seattle", latitude: 47.6, longitude: -122.3)
beginTravel(to: seattle)


//Da error de commpilación
//beginTravel(to: Person(name: "JB", age: 29))
