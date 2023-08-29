class SomeClass{
    required init() {
        //Aquí se inicializarían los parámeteos de la clase
    }
}



class SomeSubclass: SomeClass{
    required init() {
        //Aquí va la implementación de la subclase con el init requerido
    }
}



class SomeProperyWithClosure{
    
    let someString : String = "Hola"
    
    
    let someProperty : Int = {
        //Creamos un valor por defecto para la variable some property dentro de este closure
        let someTempValue = 5
        //some temp value debe ser del mismo tipo que la variable que estamos declarando
        return someTempValue
        //Devolvemos el valor final de la variable inicializada dentro del closure
    }()
}



struct ChessBoard{
    
    let boardColors : [Bool] = {
       
        var tempBoard = [Bool]()
        
        var isBlack = false
        
        for i in 1...8 {
            for j in 1...8 {
                tempBoard.append(isBlack)
                isBlack = !isBlack
            }
        }
        
        return tempBoard
        
    }()
    
    
    func squareIsBlackAt(row: Int, col: Int) -> Bool {
        return boardColors[8 * row + col]
    }
}

let board = ChessBoard()
print(board.squareIsBlackAt(row: 2, col: 4))

print(board.squareIsBlackAt(row: 0, col: 0))

print(board.squareIsBlackAt(row: 7, col: 7))


print(board.boardColors.count)

