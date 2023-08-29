struct Matrix{
    
    let rows: Int, columns: Int
    
    var grid: [Double]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    func indexIsValid(row: Int, column : Int) -> Bool {
        return row>=0 && row < rows && column >= 0 && column < columns
    }
    
    subscript(row: Int, column:Int) -> Double {
        get{
            assert(indexIsValid(row: row, column: column), "Indice no disponible en la matriz")
            return grid[row*columns + column]
        }
        set{
            assert(indexIsValid(row: row, column: column), "Indice no disponible en la matriz")
            grid[row * columns + column] = newValue
        }
    }
    
    
    func matrixForm(){
        for i in 0..<rows {
            var line = ""
            for j in 0..<columns{
                line += ("\(self[i,j]) \t")
            }
            print(line)
        }
    }
    
}



var matrix = Matrix(rows: 3, columns: 4)
print(matrix.grid)
matrix.indexIsValid(row: 5, column: 2)

matrix[1,0] = 2.5
matrix[0,1] = -5.3
matrix[2,3] = -1.2

//El script dará un error si accedemos o consultamos una posición dentro de la matriz que no existe gracias a assert!
//matrix[3,8]

print(matrix.grid)
print(matrix.matrixForm())

