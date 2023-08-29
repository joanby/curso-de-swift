enum VendingMachineError: Error {
    case invalidSelection
    case insuficientFunds(coinsNeeded: Int)
    case outOfStock
}

//throw VendingMachineError.insuficientFunds(coinsNeeded: 10)


//throws
/*func thisCannotThrowErrors() -> String{
    return "hola"
}

func thisCanThrowErrors() throws -> String {
    return "hola"
}*/

struct Item {
    var name: String
    var price: Int
    var count: Int
}

class VendingMachine {
    var inventory = [
        Item(name: "Patatillas", price: 5, count: 4),
        Item(name: "Coca Cola", price: 3, count: 7),
        Item(name: "Golosinas", price: 8, count: 12)
    ]
    
    var coinsDeposited = 0
    
    func vend(itemNamed name:String) throws {
        
        var currentItem : Item?
        var pos = 0
        for tempItem in inventory {
            if tempItem.name == name {
                currentItem = tempItem
                break
            }
            pos += 1
        }
        
        if currentItem == nil {
            throw VendingMachineError.invalidSelection
        }
        
        //Si llegamos aquí, tenemos un ítem de la máquina expendedora seleccionado
        guard currentItem!.count>0 else { throw VendingMachineError.outOfStock }
        
        //Si llegamos aquí, tenemos un ítem en stock
        
        guard currentItem!.price <= coinsDeposited else {
            throw VendingMachineError.insuficientFunds(coinsNeeded: currentItem!.price - coinsDeposited)
        }
        
        //Si llegamos aquí, tenemos un ítem en stock y dinero para pagarlo
        
        coinsDeposited -= currentItem!.price
        
        var newItem = currentItem!
        newItem.count -= 1
        inventory[pos] = newItem
        
        print("Entregando el objeto \(currentItem!.name)")
    }
}


let favouriteFood = [
    "Juan Gabriel": "Patatillas",
    "María"       : "Pizza",
    "Eva"         : "Golosinas"
]

func purchaseFavouriteFood(person: String, vendingMachine:VendingMachine) throws {
    let snackName = favouriteFood[person] ?? "Coca Cola"
    try vendingMachine.vend(itemNamed: snackName)
}


/*struct PurchasedSnack{
    let name: String
    init(name: String, vendingMachine: VendingMachine) throws {
        try vendingMachine.vend(itemNamed: name)
        self.name = name
    }
}*/


//Do/Catch
/*
 do{
    try //posible fragmento de código que de error
 } catch posible error 1{
    //posible solucion 1
 } catch posible error 2 where condicion{
    //posible solucion 2...
 }
 */

var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 7
do{
    try purchaseFavouriteFood(person: "Eva", vendingMachine: vendingMachine)
} catch VendingMachineError.invalidSelection{
    print("Selección del ítem no válida...")
} catch VendingMachineError.outOfStock {
    print("No tenemos en stock...")
} catch VendingMachineError.insuficientFunds(let coinsNeeded){
    print("No tienes dinero suficiente. Introduce ahora \(coinsNeeded) moneda(s) adicional(es)")
}

func someThrowingFunction() throws -> Int{
    throw VendingMachineError.invalidSelection
    return -1
}

let x = try? someThrowingFunction()

let y: Int?
do{
    y = try someThrowingFunction()
} catch {
    y = nil
}


struct Data{
    var dataInfo:String = ""
}

func fetchDataFromDisk() throws -> Data {
    throw VendingMachineError.invalidSelection
    return Data()
}

func fetchDataFromServer() throws -> Data {
    throw VendingMachineError.invalidSelection
    return Data()
}

func fetchData() -> Data?{
    if let data = try? fetchDataFromDisk() {
        return data
    }
    if let data = try? fetchDataFromServer(){
        return data
    }
    return nil
}


func loadImage(atPath: String) throws{
    //cargaríamos la imagen pertiente del path indicado
    throw VendingMachineError.invalidSelection
}

//let photo = try! loadImage(atPath: "./Resources/Juan Gabriel.png")

func exists(_ filename:String) -> Bool {
    return true
}

func open(_ file:String) -> String {
    return "Hola, soy un fichero"
}
func close(_ file:String){
    print("Cerrando el fichero")
}

func processFile(filename: String) throws {
    if exists(filename) {
        let file = open(filename)
        defer { //Como no viene nada más después del defer, nos dice que podría ser un do, pero es un ejemplo para explicar la gestión de errores
            close(file)
        }
        
        /*
         while let line = try file.readLine() {
            //Iriamos leyendo líneas del fichero...
            //Si por lo que sea hay un error en el try, se llamará al defer y cerrará el fichero!
        }
         */
        
        //Si llego aquí, hemos acabado satisfactoriamente!!!
        //Aquí llamaríamos al defer, el cual cerraría el fichero...
    }
}
