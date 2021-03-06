import Foundation

//Type Subscript
///You also define subscripts that are called on the type itself. This kind of subscript is called a type subscript.
///You indicate a type subscript by writing the static keyword before the subscript keyword.
///Classes can use the class keyword instead, to allow subclasses to override the superclass’s implementation of that subscript.

enum Planet: Int{
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    static subscript(n: Int) -> Planet {
        return Planet(rawValue: n)!
    }
}

let mars = Planet[4]
print(mars)
