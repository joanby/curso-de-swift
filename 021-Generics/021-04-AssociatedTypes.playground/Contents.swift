protocol Container {
    associatedtype Item //: Equatable
    
    mutating func append(_ item: Item)
    var count : Int { get }
    subscript(i: Int) -> Item { get }
}

extension Array : Container {}



struct IntStack : Container{
    var items = [Int]()
    mutating func push(_ item: Int){
        items.append(item)
    }
    
    mutating func pop() -> Int {
        return items.removeLast()
    }
    
    //Empieza la conformación al protocolo
    //typealias Item = Int
    mutating func append(_ item: Int) {
        self.push(item)
    }
    var count: Int {
        return self.items.count
    }
    subscript(i:Int) -> Int {
        return items[i]
    }
}


struct Stack<Element> : Container {
    var items = [Element]()
    mutating func push(_ item: Element){
        items.append(item)
    }
    mutating func pop() -> Element{
        return items.removeLast()
    }
    //Conformar al protocolo Container
    mutating func append(_ item: Element) {
        self.push(item)
    }
    var count: Int{
        return items.count
    }
    subscript(i:Int) -> Element {
        return items[i]
    }
}


func allItemsMatch<C1: Container, C2: Container>
    (_ someContainer:C1, _ anotherContainer: C2) -> Bool
    where C1.Item == C2.Item, C1.Item : Equatable
{
    
    if someContainer.count != anotherContainer.count {
        return false
    }
    
    for i in 0..<someContainer.count {
        if someContainer[i] != anotherContainer[i] {
            return false
        }
    }
    
    return true
    
}



var stack = Stack<String>()
stack.push("uno")
stack.push("dos")
stack.push("tres")

var array = ["uno", "dos", "tres"]

if allItemsMatch(stack, array) {
    print("Los items coinciden")
} else {
    print("Los items no coinciden...")
}



extension Stack where Element : Equatable {
    func isTop(_ item: Element) -> Bool {
        guard let topItem = items.last else {
            return false
        }
        return topItem == item
    }
}


if stack.isTop("tres") {
    print("El ítem superior es el tres")
} else {
    print("El ítem superior es otra cosa....")
}


struct NotEquatable {
    
}

var notEquatableStack = Stack<NotEquatable>()
let notEquatableValue = NotEquatable()
notEquatableStack.push(notEquatableValue)
//notEquatableStack.isTop(notEquatableValue) //ERROR


extension Container where Item : Equatable {
    func startsWith(_ item : Item) -> Bool {
        return count >= 1 && self[0] == item
    }
}


if [9,5,32].startsWith(9) {
    print("Empieza por 9")
} else{
    print("No empieza por 9...")
}


extension Container where Item == Double {
    func average() -> Double {
        var sum = 0.0
        for index in 0..<count {
            sum += self[index]
        }
        return sum / Double(count)
    }
}

print([9.5, 8.3, 7.5, 10.0, 6.5].average())


