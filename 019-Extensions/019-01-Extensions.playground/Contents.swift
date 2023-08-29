/*struct SomeStructure{
    let x:Int
    
}

extension SomeStructure {
    //Incorporar aquí funcionalidades a SomeStructure que no tuviera originalmente...
}

extension SomeStructure: SomeProtocol, AnotherProtocol {
    
}*/

extension Double{
    
    var km:Double { return self * 1_000.0}
    var m:Double { return self }
    var cm: Double { return self / 100.0}
    var mm : Double { return self / 1_000.0}
    
    var ft : Double { return self / 3.28084}
    
}

let halfKm = 0.5.km
let threeFeet = 3.ft
let oneInch = 25.4.mm

print("\(halfKm) m ")

let marathon = 42.km + 195.m

print("Una maratón son \(marathon) m")
