//ARC
class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) esta siendo inicializado")
    }
    deinit {
        print("\(name) está siendo desinicializado")
    }
}

var person1: Person?
var person2: Person?
var person3: Person?

person1 = Person(name: "Juan Gabriel")
person2 = person1
person3 = person1

person1 = nil
person2 = nil

person3 = nil
