class ShoppingListItem{
    
    var name : String? //valor por defecto = nil
    
    var quantity = 1
    
    var purchased = false
    
    /*
     init(){
        name = nil
        quantity = 1
        purchased = false
     }
     */
    
}

var item = ShoppingListItem()
item.name
item.quantity
item.purchased

struct Size{
    var width = 0.0, height = 0.0
}

let threeByThree = Size(width: 3.0, height: 3.0)

let zeroSize = Size()


struct Point{
    var x = 0.0, y = 0.0
}


struct Rect{
    
    var origin = Point()
    
    var size = Size()
    
    init(){}
    
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    
    init(center: Point, size: Size) {
        
        let originX = center.x - size.width / 2
        let originY = center.y - size.height / 2
        let newOrigin = Point(x: originX, y: originY)
        
        self.init(origin: newOrigin, size: size)
        
    }
    
}

let basicRect = Rect()
basicRect.origin
basicRect.size


let originRect = Rect(origin: Point(x: 3.0, y: 2.0),
                      size: Size(width: 6.0, height: 6.0))
originRect.origin
originRect.size


let centerRect = Rect(center: Point(x:5.0, y:5.0), size: Size(width: 3.0, height: 3.0))
centerRect.origin
centerRect.size
