protocol HasArea{
    var area: Double { get }
}

class Circle: HasArea {
    let pi = 3.15159265
    var radius: Double
    var area: Double {
        return pi * radius * radius
    }
    init(radius : Double) {
        self.radius = radius
    }
}


class Country : HasArea{
    var area : Double
    init(area:Double) {
        self.area = area
    }
}

class Animal {
    var legs : Int
    init(legs: Int) {
        self.legs = legs
    }
}

let objects:[AnyObject] = [
    Circle(radius: 3.0),
    Country(area: 123_456),
    Animal(legs: 4)
]


for object in objects {
    if let objectWithArea = object as? HasArea {
        print("El area es \(objectWithArea.area)")
    }else {
        print("Este objeto no tiene área conocida...")
    }
}



