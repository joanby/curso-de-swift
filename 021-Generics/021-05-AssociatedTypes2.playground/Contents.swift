protocol Container {
    associatedtype Item
    mutating func append(_ item : Item)
    var count : Int { get }
    subscript(i: Int) -> Item { get }
    
    associatedtype Iterator : IteratorProtocol where Iterator.Element == Item
    func makeIterator() -> Iterator
}

protocol ComparableContainer : Container where Item: Comparable {

}


extension Container{
    subscript<Indices : Sequence>(indices : Indices) -> [Item]
        where Indices.Iterator.Element == Int {
            var result = [Item]()
            for index in indices {
                result.append(self[index])
            }
            return result
    }
}

//objects[2...5]
