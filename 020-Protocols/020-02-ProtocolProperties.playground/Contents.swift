protocol SomeProtocol{
    var mustBeSettable : Int { get set }
    var doesntNeedToBeSettable : Int { get }
    static var someTypeProperty : Int { get set }
}

protocol FullyNamed {
    var fullName : String { get }
}

struct Person : FullyNamed {
    var fullName:String
}

let jb = Person(fullName: "Juan Gabriel")


class Starship : FullyNamed {
    var prefix : String?
    var name: String
    
    init(name: String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    
    var fullName: String {
        return (prefix != nil ? prefix!+" " : "") + name
    }
    
}

var firstSpaceship = Starship(name: "Enterprise", prefix: "USS")
firstSpaceship.fullName

var secondSpaceship = Starship(name: "Halcón Milenario")
secondSpaceship.fullName
