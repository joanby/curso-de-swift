//: Playground - noun: a place where people can play

import UIKit

//Enumerados
enum NombreDelEnumerado {
    //Aquí decalaríamos los posibles valores del enumerado
}


enum CompassPoint {
    case north
    case south
    case east
    case west
}


enum Planet {
    case mercurio, venus, tierra, marte, jupiter, saturno, urano, neptuno
}


var directionToGo = CompassPoint.north
directionToGo     = .west

var planet : Planet = .tierra


switch directionToGo {
case .north:
    print("Hace mucho frio en el norte")
case .south:
    print("Los alemanes veranean en el sur")
case .east:
    print("Cuidado con los orcos del este!")
case .west:
    print("Allá, al oeste es territorio desconocido")
}

switch planet {
case .tierra:
    print("Se vive bien aquí en la tierra")
default:
    print("No se ha detectado vida aún en este planeta")
}


enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(6, 71680, 01362, 4)
print(productBarcode)

productBarcode = .qrCode("A68JFJAMXO·(JF(KGj/H")
print(productBarcode)

switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check)")
case .qrCode(let productCode):
    print("QR Code: \(productCode)")
}
