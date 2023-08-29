/*func swapTwoInts(_ a: inout Int, _ b: inout Int){
    let temp = a
    a = b
    b = temp
}

var someInt = 5
var anotherInt = 29
swapTwoInts(&someInt, &anotherInt)
print("Some Int ahora vale \(someInt) mientras que Another Int ahora vale \(anotherInt)")

func swapTwoString(_ a: inout String, _ b: inout String){
    let temp = a
    a = b
    b = temp
}

func swapTwoDoubles(_ a: inout Double, _ b: inout Double){
    let temp = a
    a = b
    b = temp
}
*/
func swapTwoValues<T>(_ a: inout T, _ b: inout T){
    let temp = a
    a = b
    b = temp
}

var someInt = 5
var anotherInt = 29
swapTwoValues(&someInt, &anotherInt)
print("Some Int ahora vale \(someInt) mientras que Another Int ahora vale \(anotherInt)")


var someString = "Juan"
var anotherString = "Gabriel"
swapTwoValues(&someString, &anotherString)
print("\(someString) \(anotherString) ")


//Array<Element>
//Dictionary<Key, Value>
