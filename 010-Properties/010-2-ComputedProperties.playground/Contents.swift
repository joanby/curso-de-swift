struct  Point{
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect{
    var origin = Point()
    var size = Size()
    
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            let theCenter = Point(x: centerX, y: centerY)
            return theCenter
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}


var square = Rect(origin: Point(x:0.0, y:0.0),
                  size: Size(width: 10.0, height: 10.0))

print(square.center)

square.center = Point(x: 25.0, y: 25.0)
print("El origen del cuadrado está ahora en \(square.origin)")
print("El centro del cuadrado está ahora en \(square.center)")


struct AlternativeRect{
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            return Point(x: origin.x + (size.width/2), y: origin.y + (size.height/2))
        }
        set {
            origin.x = newValue.x - (size.width/2)
            origin.y = newValue.y - (size.height/2)
        }
    }
}


struct Cuboid{
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double{
        return width * height * depth
    }
}

let myCuboid = Cuboid(width: 3.0, height: 4.0, depth: 5.0)

print("El volumen de mi paralelepípedo es de \(myCuboid.volume)")


