class Person{
    let name : String
    var apartment : Apartment?
    init(name: String) {
        self.name = name
    }
    
    deinit {
        print("\(name) ha sido desinicializado")
    }
    
}

class Apartment {
    let unit : String
    weak var tenant: Person?
    init(unit : String) {
        self.unit = unit
    }
    
    deinit {
        print("El apartamento \(unit) ha sido desinicializado")
    }
}

var jb : Person?
var apartment : Apartment?

jb = Person(name: "Juan Gabriel")
apartment = Apartment(unit: "4A")

jb!.apartment = apartment
apartment!.tenant = jb

jb = nil
apartment = nil
