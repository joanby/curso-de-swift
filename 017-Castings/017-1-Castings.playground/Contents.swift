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

let library = [
    Movie(name: "Avatar", director: "James Cameron"),
    Song(name: "I Just Called to Say I Love You", artist: "Stevie Wonder"),
    Movie(name: "Pesadilla antes de Navidad", director: "Tim Burton"),
    Song(name: "One", artist: "U2"),
    Movie(name: "Ciudadano Kane", director: "Orson Welles"),
    Song(name: "My Heart Will Go On", artist: "Celine Dion")
]

for item in library {
    print("\(item.name)")
}


//is -> type check operator

var movieCount = 0
var songCount = 0

for item in library {
    if item is Movie {
        movieCount += 1
    } else if item is Song {
        songCount += 1
    }
}

print("Nuestra librería contiene \(movieCount) peliculas y \(songCount) canciones.")


//as? as! -> type cast operator
for item in library {
    if let movie = item as? Movie { //movie es de tipo Movie?
        print("La película es '\(movie.name)' y su director es \(movie.director)")//aquí movie es de tipo Movie
    } else if let song = item as? Song { //song es de tipo Song?
        print("La canción es '\(song.name)' de \(song.artist)") //aquí song es de tipo Song
    }
}
