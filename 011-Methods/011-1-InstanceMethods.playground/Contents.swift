class Counter{
    
    var counter = 0
    
    func increment() {
        self.counter += 1
    }
    
    func increment(by amount: Int){
       
        for i in 0..<amount {
            self.increment()
        }
        
    }
    
    func reset(){
        self.counter = 0
    }
    
}


let mycounter = Counter()
print(mycounter.counter)

mycounter.increment()
print(mycounter.counter)

mycounter.increment(by: 8)
print(mycounter.counter)

mycounter.reset()
print(mycounter.counter)




struct Point{
    var x = 0.0, y = 0.0
    
    func isToTheRightOf(x: Double)-> Bool{
        return self.x > x
    }
}

let point = Point(x: 4.0, y: -2.0)

if point.isToTheRightOf(x: 1.5) {
    print("El punto está a la derecha de la recta que pasa por 1.5")
}







