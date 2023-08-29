/*
 init(parameters) {
    //Código pertinente de la inicialización...
 }
 
 convenience init(parameters) {
    //Código pertinente de la inicialización...
 }
 */



class Vehicle {
    var numberOfWheels = 0
    
    var description : String {
        return "\(numberOfWheels) ruedas en el vehículo"
    }
    
}

let vehicle = Vehicle()
print("Vehículo: \(vehicle.description)")



class Bicycle : Vehicle {
    override init() {
        super.init()
        numberOfWheels = 2
    }
}

let bicycle = Bicycle()
print("Bicicleta: \(bicycle.description)")
