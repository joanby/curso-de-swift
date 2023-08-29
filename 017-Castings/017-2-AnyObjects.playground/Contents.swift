//Any       -> representa una instancia de cualquier tipo de dato, incluyendo las funciones
//AnyObject -> represeta una instancia de cualquier Clase


class MediaType {
    var name:String
    init(name: String) {
        self.name = name
    }
}


class Movie : MediaType {
    var director : String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song : MediaType {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}


var things = [Any]()

things.append(0)
things.append(0.0)
things.append(29)
things.append(-3.14159265)
things.append("Hola que tal")
things.append((3.0, 5.2))
things.append(Movie(name: "Titanic", director: "James Cameron"))
things.append(Song(name: "Like a Virgin", artist: "Madonna"))
things.append({(name: String) -> String in "Hola \(name)"})

let optionalDouble : Double? = -8.5
things.append(optionalDouble as Any) //Si añadimos casting a Any desaparece el warning!!!

for thing in things {
    switch thing {
    case 0 as Int:
        print("Tengo el cero como entero")
    case 0 as Double:
        print("Tengo el cero como decimal")
    case let someInt as Int:
        print("Tengo un número entero: \(someInt)")
    case let someDouble as Double where someDouble>0:
        print("Tengo un número decimal positivo: \(someDouble)")
    case is Double:
        print("Tengo un decimal probablemente negativo...")
    case let someString as String:
        print("Tenemos el String: \(someString)")
    case let (x,y) as (Double, Double):
        print("Tenemos un punto (x,y) = (\(x), \(y))")
    case let movie as Movie:
        print("Vamos a ver la película \(movie.name) del director \(movie.director)")
    case let song as Song:
        print("Vamos a escuchar la canción \(song.name) del artista \(song.artist)")
    case let stringConverter as (String) -> String:
        print(stringConverter("Juan Gabriel"))
    default:
        print("No se que me ha entrado, así que pasando...")
    }
}




