class SomeClass{
    subscript(index:Int) -> Int{
        get{
            //Operación de consulta con el índice recibido
            return 5
        }
        set (newValue){
            //Operación de escritura con el índice guardado
        }
    }

    
    subscript(index1:Int, index2:Int)-> Int {
        return 5
    }
}

let someInstance = SomeClass()
print(someInstance[37])



struct TimesTable {
    let multiplier : Int
    subscript(index:Int) -> Int {
        return multiplier * index
    }
}

for j in 1...10 {

let timesTable = TimesTable(multiplier: j)
    print("La tabla de multiplicar de \(j)")
    for i in 0...10 {
        print("\(i)x3 = \(timesTable[i])")//timesTable[i] = multiplier * i
    }
}


let collection = [4,6,8,19,43]
collection[2]

let numberOfLegs = ["pulpo": 8, "perro": 4, "pajaro": 2, "araña": 8]
numberOfLegs["perro"]
