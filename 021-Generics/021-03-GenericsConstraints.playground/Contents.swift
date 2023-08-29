class SomeClass{
    
}
protocol SomeProtocol {
    
}

func someGenericFunctionWithConstraints<T: SomeClass, U: SomeProtocol>(someT: T, someU: U){
    
}

func findIndex(ofString valueToFind : String, in array:[String]) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

let strings = ["perro", "gato", "araña", "buho", "león", "conejo"]

if let foundIndex = findIndex(ofString: "buho", in: strings){
    print("La posición del buho es la \(foundIndex)")
}


func findIndex<T : Equatable>(of valueToFind: T, in array : [T]) -> Int? {
    for (index, value) in array.enumerated() {
        if value == valueToFind {
            return index
        }
    }
    return nil
}


let doubleIndex = findIndex(of: 4.5, in: [3.141592, 0.125,0.32, 5.3])

let stringIndex = findIndex(of: "león", in: strings)
