struct Player {
    var name: String
    var health : Int
    var energy : Int
    
    static let maxHealth = 10
    
    mutating func restoreHealth(){
        self.health = Player.maxHealth
    }
}

func balance (_ x: inout Int, _ y : inout Int) {
    let sum = x+y
    x = sum / 2
    y = sum - x
}


extension Player {
    mutating func shareHealth(with teammate : inout Player){
        balance(&teammate.health, &self.health)
    }
}



var jb = Player(name: "JB", health: 10, energy: 10)
var maria = Player(name: "María", health: 5, energy: 5)
jb.shareHealth(with: &maria)
print("\(jb.name) tiene \(jb.health) de vida")
print("\(maria.name) tiene \(maria.health) de vida")

//Conflicto de variables accediendo a través de self
//jb.shareHealth(with: &jb)


//MODIFICACIÓN: No podemos modificar a la vez en parámetro inout dos propiedades de un mismo objeto.
//Solución 1: Crear dos variables para sendas propiedades, modificarlas, y añadirlas de vuelta al objeto una vez modificadas
//Solución 2: Pasar todo el objeto al método para que modifique todas las variables que necesite
//En el ejemplo hemos implementado la solución 1:

var playerInfo = (health: 10, energy :20)
var health = playerInfo.health
var energy = playerInfo.energy
balance(&health, &energy)
playerInfo = (health: health, energy: energy)

func someFunction(){
    var antonio = Player(name: "Antonio Banderas", health: 10, energy: 10)
    balance(&antonio.health, &antonio.energy)
}





