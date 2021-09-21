import Foundation

//Property Requirement
///A protocol can require any conforming type to provide an instance property or type property with a particular name and type.
///The protocol doesn’t specify whether the property should be a stored property or a computed property—it only specifies the required property name and type.
///The protocol also specifies whether each property must be gettable or gettable and settable.
///Property requirements are always declared as variable properties, prefixed with the var keyword.
///Gettable and settable properties are indicated by writing { get set } after their type declaration, and gettable properties are indicated by writing { get }.

protocol SomeProtocol {
    var mustBeSettable: Int { get set }
    var doesNotNeedToBeSettable: Int { get }
}

///Always prefix type property requirements with the static keyword when you define them in a protocol.
///This rule pertains even though type property requirements can be prefixed with the class or static keyword when implemented by a class
protocol AnotherProtocol {
    static var someTypeProperty: Int { get set }
}

//An example of a protocol with a single instance property requirement
///The FullyNamed protocol requires a conforming type to provide a fully qualified name.
///The protocol doesn’t specify anything else about the nature of the conforming type—it only specifies that the type must be able to provide a full name for itself.
///The protocol states that any FullyNamed type must have a gettable instance property called fullName, which is of type String.
protocol FullyNamed {
    var fullName: String { get }
}

//An example of a simple structure that adopts and conforms to the FullyNamed protocol
struct Person: FullyNamed {
    var fullName: String
}
let john = Person(fullName: "John Appleseed")
print(john.fullName)
// john.fullName is "John Appleseed"


//A complex class, which also adopts and conforms to the FullyNamed protocol
class Starship: FullyNamed {
    var prefix: String?
    var name: String
    init(name: String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    var fullName: String {
        return (prefix != nil ? prefix! + " " : "") + name
    }
}
var ncc1701 = Starship(name: "Enterprise", prefix: "USS")
print(ncc1701.fullName)
// ncc1701.fullName is "USS Enterprise"
