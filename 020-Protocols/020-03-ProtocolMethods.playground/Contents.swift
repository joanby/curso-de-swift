protocol SomeProtocol {
    func someFunc()
    static func someTypeMethod()
}


protocol RandomNumberGenerator {
    func random() -> Double
}


class LinearCongruentialGenerator : RandomNumberGenerator {
    var lastRandom = 29.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    
    func random() -> Double {
        lastRandom = (lastRandom * a + c).truncatingRemainder(dividingBy: m)
        return lastRandom / m
    }
    
}

let generator = LinearCongruentialGenerator()

for _ in 1...10 {
    print(generator.random())
}



protocol Togglable {
    mutating func toggle()
}

enum OnOffSwitch : Togglable {
    case on, off
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}


var bedroomLight = OnOffSwitch.on
bedroomLight.toggle()
bedroomLight.toggle()

