

public class SomePublicClass { //explícitamente publica
   
    public var somePublicProperty = 0 //explícitamente publica
    
    var someInternalProperty = 0 //immplícitamente interna
    
    fileprivate func someFilePrivateMethod(){} //explícitamente file private
    
    private func somePrivateMethod(){} //explícitamente privada
}

class SomeInternalClass{ //implícitamente interna
    
    var someInternalProperty = 0 // implícitamente interna
    
    fileprivate func someFilePrivateMethod(){} // explícitamente file private
    
    private func somePrivateMethod(){} //explícitamente privada
}


fileprivate class SomeFilePrivateClass{ //explícitamente file private
    
    func someFilePrivateMethod(){} //implícitamente file private
    
    private func somePrivateMethod(){} //explícitamente privada
    
}

private class SomePrivateClass{ //explícitamente privada
    func somePrivateMethod() {} //implícitamente privada
}





private func someFunction() ->(SomeInternalClass, SomePrivateClass){
    //Implementación aquí
    return (SomeInternalClass(), SomePrivateClass())
}


public enum CompassPoint : Character{
    case north = "N"
    case south = "S"
    case east = "E"
    case west = "W"
}








public class A {
    private var privateInstance = SomePrivateClass()
    fileprivate func someMethod(){}
}


internal class B : A {
    override internal func someMethod() {
        super.someMethod()
    }
}



public struct TrackedString { //struct implícitamente interna
    
    public private(set) var numberOfEdits = 0 //implicitamente interna

    public var value : String = "" { //implicitamente interna
        didSet{
            numberOfEdits += 1
        }
    }
    
    public init(){}
    
}

var stringToEdit = TrackedString()
stringToEdit.value = "En un lugar de la Mancha "
stringToEdit.value += "de cuyo nombre no quiero acordarme "
stringToEdit.value += " y no se como sigue..."
print("El número de ediciones que hemos hecho es de \(stringToEdit.numberOfEdits)")



protocol SomeProtocol{
    func doSomething()
}

struct SomeStruct {
    private var privateVar = 29
}

extension SomeStruct : SomeProtocol{
    func doSomething() {
        print(privateVar)
    }
}



