import Foundation

//Protocol
///A protocol defines a blueprint of methods, properties, and other requirements that suit a particular task or piece of functionality.
///The protocol can then be adopted by a class, structure, or enumeration to provide an actual implementation of those requirements.

//Protocoll Syntax
///You define protocols in a very similar way to classes, structures, and enumerations
protocol SomeProtocol {
    // protocol definition goes here
}

///Multiple protocols can be listed, and are separated by commas:
struct SomeStructure: FirstProtocol, AnotherProtocol {
    // structure definition goes here
}


///If a class has a superclass, list the superclass name before any protocols it adopts, followed by a comma:
class SomeClass: SomeSuperclass, FirstProtocol, AnotherProtocol {
    // class definition goes here
}
