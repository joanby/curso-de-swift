//: Playground - noun: a place where people can play

import UIKit

//Funciones 2
/*
 func nombreDeLaFuncion(lista de argumentos) -> valor de retorno {
     //Aquí va la lista de sentencias que queramos ejecutar
 }
*/

func myFunction(firstParameterName: Int, secondParameterName: Int){
    /*Aquí iria el cuerpo de la función, donde
     firstParameterName y secondParameterName
     son dos nombres para justificar los valores del primer
     y segundo argumento de la función
     */
}

myFunction(firstParameterName: 2, secondParameterName: 5)

func myNewFunction(etiqueta parametro:Int){
    //En la función, parametro se refiere al valor del argumento llamado etiqueta
}

myNewFunction(etiqueta: 5)

func sayHello(person:String, from hometown: String) -> String {
    return "Hola \(person), me alegro de conocer a alguien de \(hometown)"
}

sayHello(person: "Juan Gabriel", from: "Palma de Mallorca")

func myNewestFunction(_ fistParameterName: Int, secondParameterName: Int){
    //En el cuerpo de la función, tenemos tanto firstParameterName como
    //secondParameterName como argumentos haciendo referencia al primer y segundo
    //valor cuando llamamos a la función
}

myNewestFunction(3, secondParameterName: 8)

func anotherFunction(parameterWithoutDefault: Int,
                     parameterWithDefault: Int = 5){
    //Si la función al ser llamada, omite el segundo parámetro,
    //ese segundo parámetro tomará el valor 5, si no, si lo indicamos
    //pasará a valer el valor que se le haya indicado
}


anotherFunction(parameterWithoutDefault: 3, parameterWithDefault: 7) //primer parámetro = 3, segundo parámetro = 7
anotherFunction(parameterWithoutDefault: 3) //primer parámetro = 3, segundo parámetro = 5


//Variadic Parameter
func arithmeticMean(_ numbers: Double...) -> Double {
    var total : Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}

arithmeticMean(1,2,3,4,5,6)

arithmeticMean(2.8, 5.7, 4.9, 8.7)


/*func myTest(s:String){
    s = "Hola"
}*/


func swapInts(_ a: inout Int,_ b: inout Int) {
    let temp = a
    a = b
    b = temp
}


var int1 = 5, int2 = 8

swapInts(&int1, &int2)

print("El primer entero vale \(int1), y el segundo entero vale \(int2)")

