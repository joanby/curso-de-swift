struct FixedLengthRange{
    var firstValue: Int
    let lenght: Int
}


var rangeOfFourItems = FixedLengthRange(firstValue: 0, lenght: 4)
//El rango contendría los valores enteros 0, 1, 2 y 3


rangeOfFourItems.firstValue = 6
//El rango contendría los valores enteros 6, 7, 8 y 9


let newRangeOfFourItems = FixedLengthRange(firstValue: 0, lenght: 4)
//El rango contiene los valores enteros 0, 1, 2 y 3

//newRangeOfFourItems.firstValue = 6
//Esto da error porque cambiamos una variable de una struct declarada como constante

//Lazy Stored Properties
//======================

class DataImporter{
    /*
     Data importer es una clase que importaría
     datos desde un fichero externo (o fuente).
     
     La clase se asume que no es una tarea fácil
     ni trivial, y por eso tarda mucho tiempo en
     descargar y importar el fichero.
     */
    var filename = "mydata.txt"
    //La funcionalidad para importar el fichero de nombre
    //filename iría implementada a partir de aquí...
    
}

class DataManager{
    //El Data Manager, se encargará de trabajar con el fichero importado
    lazy var importer = DataImporter()
    var data = [String]()
    //El resto de la funcionalidad del Data Manager, aquí...
}

let manager = DataManager()
manager.data.append("Hace un buen día")
manager.data.append("para leer un fichero que aún no se cual será...")

//Como la variable importer, de tipo lazy aún no ha sido usada
//en nuestro data manager, esta aún no ha sido siquiera creada

print(manager.importer.filename)
//Justo en este momento, accedemos al Data importer para consultar
//sus variables y métodos, entonces ahora es cuando el manager lo inicializa...
