import Foundation

//Failable Initializer
///It’s sometimes useful to define a class, structure, or enumeration for which initialization can fail.
///You write a failable initializer by placing a question mark after the init keyword (init?).
///A failable initializer creates an optional value of the type it initializes. You write return nil within a failable initializer to indicate a point at which initialization failure can be triggered.

//For instance, failable initializers are implemented for numeric type conversions.
//To ensure conversion between numeric types maintains the value exactly, use the init(exactly:) initializer.
//If the type conversion can’t maintain the value, the initializer fails.
let wholeNumber: Double = 12345.0
let pi = 3.14159

if let valueMaintained = Int(exactly: wholeNumber){
    print("\(wholeNumber) convertion to Int maintains value of \(valueMaintained)")
    // Prints "12345.0 conversion to Int maintains value of 12345"
}

let valueChanged = Int(exactly: pi) // valueChanged is of type Int?, not Int

if valueChanged == nil{
    print("\(pi) convertion to Int doesn't maintain a value")
    // Prints "3.14159 conversion to Int doesn't maintain value"
}


struct Animal{
    let species: String
    init?(species: String) {
        if species.isEmpty{ return nil }
        self.species = species
    }
}

let someCreature = Animal(species: "Giraffe") // someCreature is of type Animal?, not Animal

if let giraffe = someCreature{
    print("An animal was initialized with a species of \(giraffe.species)")
}
// Prints "An animal was initialized with a species of Giraffe"

let anonymousCreature = Animal(species: "")
// anonymousCreature is of type Animal?, not Animal

if anonymousCreature == nil{
    print("The anonymous creature couldn't be initialized")
}
// Prints "The anonymous creature couldn't be initialized"


//Failable initializers for enumeration
enum TemperatureUnit{
    case kelvin, celcius, fahreinheit
    init?(symbol: Character) {
        switch symbol {
        case "K":
            self = .kelvin
        case "C":
            self = .celcius
        case "F":
            self = .fahreinheit
        default:
            return nil
        }
    }
}

let fahrenheitUnit = TemperatureUnit(symbol: "F")
if fahrenheitUnit != nil {
    print("This is a defined temperature unit, so initialization succeeded.")
}
// Prints "This is a defined temperature unit, so initialization succeeded."

let unknownUnit = TemperatureUnit(symbol: "X")
if unknownUnit == nil {
    print("This isn't a defined temperature unit, so initialization failed.")
}
// Prints "This isn't a defined temperature unit, so initialization failed."



//Failable Initializers for Enumerations with Raw Values
enum TemperatureUnit2: Character {
    case kelvin = "K", celsius = "C", fahrenheit = "F"
}

let fahrenheitUnit2 = TemperatureUnit2(rawValue: "F")
if fahrenheitUnit2 != nil {
    print("This is a defined temperature unit, so initialization succeeded.")
}
// Prints "This is a defined temperature unit, so initialization succeeded."

let unknownUnit2 = TemperatureUnit2(rawValue: "X")
if unknownUnit2 == nil {
    print("This isn't a defined temperature unit, so initialization failed.")
}
// Prints "This isn't a defined temperature unit, so initialization failed."


//Propagation of Initialization on Failure
class Product {
    let name: String
    init?(name: String) {
        if name.isEmpty { return nil }
        self.name = name
    }
}

class CartItem: Product {
    let quantity: Int
    init?(name: String, quantity: Int) {
        if quantity < 1 { return nil }
        self.quantity = quantity
        super.init(name: name)
    }
}

if let twoSocks = CartItem(name: "sock", quantity: 2) {
    print("Item: \(twoSocks.name), quantity: \(twoSocks.quantity)")
}
// Prints "Item: sock, quantity: 2"

if let zeroShirts = CartItem(name: "shirt", quantity: 0) {
    print("Item: \(zeroShirts.name), quantity: \(zeroShirts.quantity)")
} else {
    print("Unable to initialize zero shirts")
}
// Prints "Unable to initialize zero shirts"


if let oneUnnamed = CartItem(name: "", quantity: 1) {
    print("Item: \(oneUnnamed.name), quantity: \(oneUnnamed.quantity)")
} else {
    print("Unable to initialize one unnamed product")
}
// Prints "Unable to initialize one unnamed product"


//Overriding a Failable Initializer
class Document {
    var name: String?
    // this initializer creates a document with a nil name value
    init() {}
    // this initializer creates a document with a nonempty name value
    init?(name: String) {
        if name.isEmpty { return nil }
        self.name = name
    }
}

class AutomaticallyNamedDocument: Document {
    override init() {
        super.init()
        self.name = "[Untitled]"
    }
    override init(name: String) {
        super.init()
        if name.isEmpty {
            self.name = "[Untitled]"
        } else {
            self.name = name
        }
    }
}

class UntitledDocument: Document {
    override init() {
        super.init(name: "[Untitled]")!
    }
}

