class HTMLElement {
    
    let name: String
    let text: String?
    
    
    lazy var asHTML : () -> String = {
        [unowned self] in
        if let text = self.text {
            return "<\(self.name)>\(text)</\(self.name)>" //<p>Texto del párrafo</p>
        } else {
            return "<\(self.name)/>" //<p/>
        }
    }
    
    
    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }
    
    deinit {
        print("\(name) está siendo desinicializado")
    }
}

let heading = HTMLElement(name: "h1")
let defaultText = "Texto por defecto"
heading.asHTML = {
    return "<\(heading.name)> \(heading.text ?? defaultText) </\(heading.name)>"
}

print(heading.asHTML())



var paragraph : HTMLElement? = HTMLElement(name: "p", text: "Esto es un párrafo de bienvenida!")
print(paragraph!.asHTML())

paragraph = nil







class SomeProtocol{
    
}

class SomeClass {
    var delegate : SomeProtocol?

    lazy var someCLosure : (Int, String) -> String = {
        
        [unowned self, weak dlg = self.delegate!]
        (index: Int, stringToProcess: String) -> String in
        
        return "hola"
    }
    
    lazy var anotherClosure : () -> String = {
        [unowned self, weak delegate = self.delegate!] in
        return "hola"
    }

}






