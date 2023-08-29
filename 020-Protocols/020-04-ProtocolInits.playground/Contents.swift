protocol SomeProtocol{
    init(someParameter: Int)
}

class SomeClass : SomeProtocol {
    required init(someParameter: Int) {
        //cuerpo del inicializador...
    }
}

protocol SingleProtocol {
    init()
}

class SingleSuperClass{
    init(){
        //aquí va la implementación del init de la superclase
    }
}

class SingleSubclass: SingleSuperClass, SingleProtocol {
    //required: por ser un init conformado de un protocolo y la clase no ser final
    //override: por ser una subclase de una clase madre con dicho init
    required override init(){
        //aquí va la implementación del init de la subclase
    }
}
