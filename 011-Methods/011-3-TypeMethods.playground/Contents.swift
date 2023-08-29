class SomeClass{
    
    static var value: Int = 0
    class func sumeFunc(){
        //Implementación del método de clase
        value = 5
    }
    
    static func anotherFunc(){
        
    }
}

SomeClass.sumeFunc()

SomeClass.anotherFunc()




struct LevelTracker{
    static var highestUnlockedLevel = 1
    
    var currentLevel = 1
    
    static func unlock(_ level:Int){
        if level > highestUnlockedLevel {
            highestUnlockedLevel = level
        }
    }
    
    static func isUnlocked(_ level: Int) -> Bool{
        return level <= highestUnlockedLevel
    }
    
    
    @discardableResult
    mutating func advance(to level:Int) ->Bool{
        if LevelTracker.isUnlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}





class Player {
    var tracker = LevelTracker()
    
    let playerName : String
    
    init(name: String){
        self.playerName = name
    }
    
    func complete(level: Int){
        LevelTracker.unlock(level + 1)
        tracker.advance(to: level + 1)
    }
    
}


var player = Player(name: "Juan Gabriel")
player.complete(level: 8)
print("El nivel más alto desbloqueado es el \(LevelTracker.highestUnlockedLevel)")


player = Player(name:"María")
if player.tracker.advance(to: 6){
    print("El jugador está ahora en el nivel 6")
} else{
    print("El jugador no puede ir todavía al nivel 6...")
}


