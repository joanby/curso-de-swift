protocol SomeProtocol {
    //aquí iría la definición del protocolo...
}

protocol AnotherProtocol {
    
}

struct SomeStruct : SomeProtocol, AnotherProtocol {
    
}

enum SomeEnum : SomeProtocol {
    
}


class SuperClass{
    //Aquí va la declaración de la super clase
}

class SubClass : SuperClass, SomeProtocol, AnotherProtocol {
    //Aquí va la declaración de la subclase
}

class SomeClass : SomeProtocol {
    
}
