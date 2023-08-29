extension Int {
    func repetitions(task: () -> Void)  {
        for _ in 0..<self {
            task()
        }
    }
}

5.repetitions {
    print("Hola que tal!")
}


extension Int {
    mutating func square(){
        self = self * self
    }
}

var someInt = 5
someInt.square()
print(someInt)
