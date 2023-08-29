//Primer ejemplo
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


extension RandomNumberGenerator {
    func randomBool() -> Bool {
        return random() < 0.5
    }
}


let generator = LinearCongruentialGenerator()
print("Un número aleatorio del generador es \(generator.random())")
print("Un valor booleano aleatorio seria: \(generator.randomBool())")

for _ in 1...10 {
    print(generator.randomBool())
}

//Segundo ejemplo

protocol TextRepresentable {
    var textRepresentation : String { get }
}

protocol PrettyTextRepresentable : TextRepresentable{
    var prettyTextualDescription: String { get }
}

extension PrettyTextRepresentable{
    var prettyTextualDescription: String{
        return textRepresentation
    }
}

extension Collection where Iterator.Element : TextRepresentable {
    var textualDescription : String {
        let itemsAsText = self.map {
            $0.textRepresentation
        }
        return "[" + itemsAsText.joined(separator: ", ") + "]"
    }
}


class Animal : TextRepresentable{
    var textRepresentation: String
    init(name: String) {
        self.textRepresentation = name
    }
}

let animals = [
    Animal(name: "León"),
    Animal(name: "Gacela"),
    Animal(name: "Leopardo")
]

print(animals.textualDescription)

