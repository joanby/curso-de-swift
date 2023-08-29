//: Playground - noun: a place where people can play

import UIKit

//Errores
func canThrowError() throws{
    
}



do{
    try canThrowError()
    //Si no ha lanzado error, el código sigue por aquí
} catch{
    //Si hay un error, entraremos en la zona del catch
}




func makeASandwich() throws {
    
}

func eatASandwich(){
    
}

func washTheDishes(){
    
}

func buyIngredients(){
    
}


do{
    try makeASandwich()
    eatASandwich()
} catch  {
    //No tenemos platos limpios
    washTheDishes()
} catch {
    //NO tengo ingredientes para el sandwich
    buyIngredients()
}


//Aserciones y precondiciones
let age = -8
//assert(age>=0, "Una persona no puede tener edad negativa")
//assert(age>=0)

/*if age > 10 {
    print("Puedes subir a la montaña rusa")
} else if age > 0 {
    print("Eres muy pequeño para la montaña rusa, mejor súbete a los caballitos")
} else {
    assertionFailure("Una persona no puede tener edad negativa")
}*/

let index = -5
precondition(index>=0, "Los índices deben ser mayores o iguales a cero!")
//preconditionFailure("")


