struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
}



let defaultRect = Rect()
let randomRect = Rect(origin: Point(x:2.0, y:-5.0), size: Size(width: 10.0, height: 12.0))



extension Rect {
    init(center: Point, size: Size) {
        let originX = center.x - size.width / 2.0
        let originY = center.y - size.height / 2.0
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

let centeredRect = Rect(center: Point(), size: Size(width: 2.0, height: 2.0))
let anotherCeteredRect = Rect(center: Point(x: 3.0, y: 5.0), size: Size(width: 4.0, height: 3.0))
