//123456789[0] = 9
//123456789[1] = 8
//123456789[2] = 7

extension Int {
    subscript(digitIndex: Int) -> Int {
        var decimalBase = 1
        for _ in 0..<digitIndex {
            decimalBase *= 10
        }
        return (self / decimalBase) % 10
    }
}

let x = 00002398172364
x[0]
x[1]
x[2]
x[5]
x[9]
x[16]

