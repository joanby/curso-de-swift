let wholeNumber : Double = 123456.0
let pi = 3.14159265


if let valueConverted = Int(exactly: wholeNumber){
    print("\(wholeNumber) se ha convertido en tipo de datos entero en \(valueConverted)")
}

let valueConverted = Int(exactly: pi)

if valueConverted == nil {
    print("\(pi) es un número cuya conversión a entero no mantiene los decimales...")
}



struct Animal{
    let species : String
    
    init?(species : String){
        
        if species.isEmpty { return nil }
        
        self.species = species
        
    }
    
}

let someAnimal = Animal(species: "Oso Panda")

/*if someAnimal != nil {
    print("Hay un animal aquí!!")
}*/

if let panda = someAnimal {
    print("El animal se ha inicializado correctamente con el valor de \(panda)")
}


let ahotherAnimal = Animal(species: "")

if ahotherAnimal == nil {
    print("No tengo ni idea de qué animal querías tu inicializar...")
}


enum TemperatureUnit {
    
    case kelvin, celsius, farenheit
    
    init?(symbol: Character){
        
        switch symbol {
        case "K":
            self = .kelvin
        case "C":
            self = .celsius
        case "F":
            self = .farenheit
        default:
            return nil
        }
 
    }

}


let celsiusUnity = TemperatureUnit(symbol: "C")
if celsiusUnity != nil{
    print("Vamos a medir la temperatura en grados centígrados.")
}

let unknownUnity = TemperatureUnit(symbol: "P")

if unknownUnity == nil {
    print("Cómo narices esperas que mida la temperatura así!!!!")
}




enum NewTemperatureUnit : Character {
    case kelvin = "K", celsius = "C", farenheit = "F"
}

let kelvinUnity = NewTemperatureUnit(rawValue: "K")
if kelvinUnity != nil {
    print("Vamos a medir la temperatura en grados kelvin correctamente")
}

let anotherUnknownUnity = NewTemperatureUnit(rawValue: "Q")
if anotherUnknownUnity == nil {
    print("Cómo narices esperas que mida la temperatura así!!!!")
}



class Product {
    
    let name : String
    
    init?(name: String){
        if name.isEmpty {
            return nil
        }
        self.name = name
    }
    
}

class CartItem : Product {
    let quantity : Int
    
    init?(name: String, quantity: Int){
        if quantity < 1 {
            return nil
        }
        self.quantity = quantity
        
        super.init(name: name)
    }
}


if let twoBananas = CartItem(name: "Plátano", quantity: 2){
    print("Item: \(twoBananas.name) x \(twoBananas.quantity)")
}

if let nonOrange = CartItem(name: "Naranja", quantity: 0){
    print("Item: \(nonOrange.name) x \(nonOrange.quantity)")
} else {
    print("No se ha podido inicializar el objeto...")
}

if let noName = CartItem(name: "", quantity: 8){
    print("Item: \(noName.name) x \(noName.quantity)")
} else {
    print("No se ha podido inicializar el objeto...")
}




class Document {
    var name: String?
    
    init(){}
    
    init?(name: String){
        if name.isEmpty {
            return nil
        }
        self.name = name
    }
}


class AutomaticallyNamedDocument: Document{
    
    override init(){
        super.init()
        
        self.name = "[Desconocido]"
    }
    
    override init(name:String){
        super.init()
        
        if name.isEmpty {
            self.name = "[Desconocido]"
        }else {
            self.name = name
        }
    }
    
}


class UntitledDocument : Document {
    override init(){
        super.init(name: "[Sin título]")!
    }
}


class ForcedUnwrapping{
    init!(){
        
    }
}



