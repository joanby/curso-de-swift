class Vehicle {
    
    var currentSpeed = 0.0
    
    var description: String{
        return "viajando a \(currentSpeed) km/h"
    }
    
    func makeNoise()  {
        //Añadir la lógica, para hacer un sonidito si hace falta
        //o incluso, no hacer ningún sonido!
        print("Hacer ruido...")
    }
}


let someVehicle = Vehicle()
print("Vehicle: \(someVehicle.description)")


/*
 class SomeSubClass : SomeSuperClass{
    //Definición de la clase como siempre
 }
 */
class Bicycle : Vehicle {
    final var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0
print("Bicicleta: \(bicycle.description)")

class Car : Vehicle{
    var manufacturer = ""
    var model = ""
    
    var gear = 1
    
    override var description: String {
        return super.description + " en la marcha \(gear)"
    }
}

let car = Car()
car.manufacturer = "Ferrari"
car.model = "F50"
car.currentSpeed = 220.0
car.gear = 5
print("Ferrari: \(car.description)")


final class Tandem : Bicycle {
    var currentNumberOfPassengers = 0
}


let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 12.0
print("Tandem: \(tandem.description)")


class Train : Vehicle{
    override func makeNoise() {
        super.makeNoise()
        print("Chooo Choooo...")
    }
}

tandem.makeNoise()

let train = Train()
train.makeNoise()



class AutomaticCar : Car{
    override var currentSpeed: Double {
        didSet{
            gear = Int(currentSpeed / 25.0) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 60.0
print("Coche Automático : \(automatic.description)")


