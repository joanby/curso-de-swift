struct IntStack {
    var items = [Int]()
    
    mutating func push(_ item: Int){
        items.append(item)
    }
    
    mutating func pop() -> Int {
        return items.removeLast()
    }
}

struct Stack<Element> {
    var items = [Element]()
    
    mutating func push(_ item: Element){
        items.append(item)
    }
    
    mutating func pop() -> Element{
        return items.removeLast()
    }
}


extension Stack {
    var topItem : Element? {
        if items.isEmpty {
            return nil
        }else {
            return items[items.count-1]
        }
    }
}


var stackOfString = Stack<String>()
stackOfString.push("uno")
stackOfString.push("dos")
stackOfString.push("tres")
stackOfString.push("cuatro")


let lastElement = stackOfString.pop()

if let topItem = stackOfString.topItem {
    print("El último ítem de la pila es \(topItem)")
}
