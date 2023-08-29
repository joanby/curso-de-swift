struct Point{
    
    var x = 0.0, y = 0.0
    
    mutating func moveBy(x deltaX:Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}

var somePoint = Point(x: 1.0, y: 2.0)
somePoint.moveBy(x: 3.0, y: 5.0)
print("El punto se encuentra en (\(somePoint.x), \(somePoint.y))")

//Las constantes no pueden llamar a métodos mutating
//let fixedPoint = Point(x: 2.0, y: 5.0)
//fixedPoint.moveBy(x: 1.0, y: 1.0)


struct Point2{
    var x = 0.0, y = 0.0
    
    mutating func moveBy(x deltaX: Double, y deltaY: Double){
        self = Point2(x: x + deltaX, y: y + deltaY)
    }
    
}

var newPoint = Point2(x: 2.0, y: 5.0)
newPoint.moveBy(x: 1.0, y: 3.0)

enum CharacterState{
    
    case mage, warrior, archer
    
    mutating func nextCharacter(){
        switch self {
        case .mage:
            self = .warrior
        case .warrior:
            self = .archer
        case .archer:
            self = .mage
        }
    }
}



var myCharacter = CharacterState.warrior
myCharacter.nextCharacter()
myCharacter.nextCharacter()
myCharacter.nextCharacter()
