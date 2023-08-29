//Esto es una operación de escritura en memoria
var five = 5
//Esta operación es de lectura desde la memoria
print("Tenemos el número \(five)")

//Al menos uno es de escritura
//Ambos tienen acceso a la misma posición de memoria
//La duración de ambos se superpone


func addOne(number: Int ) -> Int {
    return number + 1
}

var myNumber = 1
myNumber = addOne(number: myNumber)
print(myNumber)




var stepSize = 1
func increment(_ number: inout Int) {
    number += stepSize
}

var copyOfStepSize = stepSize //aquí la copia vale 1
increment(&copyOfStepSize) //lectura y ecritura en diferentes posiciones de memoria
stepSize = copyOfStepSize


func balance (_ x: inout Int, _ y : inout Int) {
    let sum = x+y
    x = sum / 2
    y = sum - x
}


var scoreOne = 42
var scoreTwo = 30
balance(&scoreOne, &scoreTwo) //OK
//balance(&scoreOne, &scoreOne)
var copyOfScoreOne = scoreOne
balance(&scoreOne, &copyOfScoreOne)

