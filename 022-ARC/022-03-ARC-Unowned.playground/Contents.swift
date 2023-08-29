class Customer {
    let name: String
    var card : CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit {
        print("\(name) está siendo desinicializado")
    }
}

class CreditCard {
    let number : UInt64
    unowned let customer : Customer
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
    }
    deinit {
        print("La tarjeta de crédito #\(number) está siendo desinicializada")
    }
}

var jb : Customer?
jb = Customer(name: "Juan Gabriel")

jb!.card = CreditCard(number: 1234_5678_9012_3456, customer: jb!)

jb = nil
