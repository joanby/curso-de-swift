struct BlackjackCard {
    
    //Enumerado anidado del palo de la carta
    enum Suit : Character {
        case spades = "♠", hearts = "♥", diamonds = "♦", clubs = "♣"
    }
    
    //Enumerado anidado con el valor de la carta
    enum Rank : Int {
        case two = 2, three, four, five, six, seven, eight, nine, ten
        case jack, queen, king, ace
        //Estructura para saber los puntos de cada carta
        struct Values {
            let first: Int, second: Int?
        }
        
        var values : Values {
            switch self {
            case .ace:
                return Values(first: 1, second: 11)
            case .jack, .queen, .king:
                return Values(first: 10, second: nil)
            default:
                return Values(first: self.rawValue, second: nil)
            }
        }
        
    }
    
    
    let rank: Rank, suit: Suit
    
    var description : String{
        
        var output = "palo: \(suit.rawValue), "
        output += "el valor es \(rank.values.first)"
        
        if let secondValue = rank.values.second {
            output += " o bien \(secondValue)"
        }
        
        return output
    }
    
}

let aceOfSpades = BlackjackCard(rank: .ace, suit: .spades)
print("La carta es : \(aceOfSpades.description)")

let randomCard = BlackjackCard(rank: .king, suit: .hearts)
print("La carta es \(randomCard.description)")


let hearts = BlackjackCard.Suit.hearts.rawValue

