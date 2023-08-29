//: Playground - noun: a place where people can play

import UIKit

//Closures
/*
 - Funciones globales que tienen un nombre y no capturan ningún valor
 - Funciones anidadas con un nombre que pueden capturar valores de la función englobante
 - Funciones sin nombre escrita en un contexto dentro de otra función que puede capturar valores del contexto que la rodea.
 
 
 - Inferir un parámetro y devolver un valor de retorno en un contexto
 - Hacer un retorno implícito de una expresión simple
 - Nomenclatura simplificada (shorthand)
 - Sintaxis de closure para funciones específicas
 */

var completionHandlers : [() -> Void] = []

func someFunctionWithEscapingClosures(completionHandler: @escaping () -> Void){
    completionHandlers.append(completionHandler)
}

func someFunctionWithNonEscapingClosure(closure : () -> Void) {
    closure()
}


class SomeClass {
    
    var x = 10
    
    func doSomething(){
        
        someFunctionWithEscapingClosures { self.x = 100 }
        
        someFunctionWithNonEscapingClosure { x = 200 }
        
    }
    
}




let theElement = SomeClass()
theElement.doSomething()

print(theElement.x)


completionHandlers.first?()
print(theElement.x)





var customers = ["Cristina", "Alejandro", "Víctor", "Eva", "Daniela"]

print(customers.count)


let customerProvider = { customers.remove(at: 0) }

print(customers.count)

print("El siguiente de la lista es \(customerProvider())")

print(customers.count)


func serve(customer customerProvider: () -> String) {
    print("El siguiente de la lista es \(customerProvider())")
}

serve(customer: { customers.remove(at: 0)})


func serve(customer customerProvider: @autoclosure () -> String){
    print("El siguiente de la lista es \(customerProvider())")
}

serve(customer: customers.remove(at: 0))


print(customers)

var customersProviders : [() -> String] = []

func collectCustomersProvider(_ customerProvider: @autoclosure @escaping () -> String){
    customersProviders.append(customerProvider)
}

collectCustomersProvider(customers.remove(at: 0))
collectCustomersProvider(customers.remove(at: 0))

print("Hemos preparado a \(customersProviders.count)")

for customerProvider in customersProviders {
    print("Ahora estamos atendiendo a \(customerProvider())")
}
