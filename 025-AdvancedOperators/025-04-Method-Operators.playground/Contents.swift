struct Vector2 {
    var x = 0.0, y = 0.0
}

extension Vector2 {
    static func + (left: Vector2, right : Vector2) -> Vector2 {
        return Vector2(x: left.x + right.x, y: left.y + right.y)
    }
}

let vector = Vector2(x: 3.0, y: 1.0)
let anotherVector = Vector2(x: 2.0, y: 4.0)
let combinedVector = vector + anotherVector


extension Vector2 {
    static prefix func - (vector: Vector2) -> Vector2 {
        return Vector2(x: -vector.x, y: -vector.y)
    }
}


let positive = Vector2(x: 3.0, y: 4.0)
let negative = -positive
let alsoPositive = -negative


extension Vector2 {
    static func += (left: inout Vector2, right: Vector2){
        left = left + right
    }
}

var originalVector = Vector2(x: 3.0, y: 1.0)
let vectorToAdd = Vector2(x: 2.0, y:4.0)
originalVector += vectorToAdd

extension Vector2 {
    static func == (left: Vector2, right: Vector2) -> Bool {
        return (left.x == right.x) && (left.y == right.y)
    }
    static func != (left: Vector2, right: Vector2) -> Bool {
        return !(left == right)
    }
}

if originalVector == Vector2(x:5.0, y: 5.0) {
    print("Son iguales")
} else {
    print("Son diferentes")
}

prefix operator +++

extension Vector2 {
    static prefix func +++ (vector: inout Vector2) -> Vector2 {
        vector += vector
        return vector
    }
}

var someVector = Vector2(x: 2.0, y: 5.0)
let afterDoubling = +++someVector


infix operator +-: AdditionPrecedence
extension Vector2 {
    static func +- (left: Vector2, right: Vector2) -> Vector2 {
        return Vector2(x: left.x + right.x, y: left.x - right.y)
    }
}


