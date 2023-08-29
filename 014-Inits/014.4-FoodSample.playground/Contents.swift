class Food {
    var name: String
    
    init(name: String){
        self.name = name
    }
    
    convenience init(){
        self.init(name: "[Desconocido]")
    }
}


let singleFood = Food(name: "Jamón York")
singleFood.name
let misteryFood = Food()
misteryFood.name


class RecipeIngredient : Food {
    
    var quantity : Int
    
    init(name: String, quantity: Int){
        self.quantity = quantity
        
        super.init(name: name)
    }
    
    override convenience init(name: String){
        self.init(name: name, quantity: 1)
    }
}


let oneMisteryIngredient = RecipeIngredient()
let oneBacon = RecipeIngredient(name: "Bacon")
let sixEggs = RecipeIngredient(name: "Huevos", quantity: 6)


class ShoppingListItem : RecipeIngredient {
    var purchased = false
    
    var description : String {
        var output = "\(quantity) x \(name) "
        output += (purchased ? "OK" : "X")
        return output
    }
}

var breakfastList = [
    ShoppingListItem(),
    ShoppingListItem(name: "Bacon"),
    ShoppingListItem(name: "Huevos", quantity: 6)
]

breakfastList[0].name = "Zumo de naranja"
breakfastList[0].quantity = 1
breakfastList[0].purchased = true

for item in breakfastList {
    print(item.description)
}




