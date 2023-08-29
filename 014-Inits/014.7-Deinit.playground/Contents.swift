class SomeClass{
    
    init(){
        
    }
    
    deinit {
        //Este fragmento de código ejecutaría la desinicialización del objeto de la clase
    }
}




class Bank {
    
    static var coinsInTheBank = 10_000
    
    static func receive(coins: Int){
        coinsInTheBank += coins
    }
    
    
    static func distribute(coins numberOfCoinsRequested: Int) -> Int {
        let numberOfCoinsToGive = min(numberOfCoinsRequested, coinsInTheBank)
        coinsInTheBank -= numberOfCoinsToGive
        return numberOfCoinsToGive
    }
    
}


class Player {
    
    var coinsInThePurse : Int
    
    init(coins: Int) {
        self.coinsInThePurse = Bank.distribute(coins: coins)
    }
    
    func win(coins: Int){
        self.coinsInThePurse += Bank.distribute(coins: coins)
    }
    
    deinit {
        Bank.receive(coins: coinsInThePurse)
    }
}


var playerOne : Player? = Player(coins: 100)
print("El jugador 1 se ha unido con \(playerOne!.coinsInThePurse) monedas")
print("En el banco quedan ahora \(Bank.coinsInTheBank) monedas")

playerOne!.win(coins: 2_500)
print("El jugador 1 acaba de ganar 2.500 monedas y ahora tiene \(playerOne!.coinsInThePurse) monedas")
print("En el banco quedan ahora \(Bank.coinsInTheBank) monedas")

playerOne = nil
print("El jugador 1 abandona el juego....")
print("En el banco quedan ahora \(Bank.coinsInTheBank) monedas")




