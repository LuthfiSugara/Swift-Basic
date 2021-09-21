import Foundation


//Initializer Requirement
///Protocols can require specific initializers to be implemented by conforming types.
///You write these initializers as part of the protocol’s definition in exactly the same way as for normal initializers, but without curly braces or an initializer body.
protocol SomeProtocol {
    init(someParameter: Int)
}

//Class Implementations of Protocol Initializer Requirements
///You can implement a protocol initializer requirement on a conforming class as either a designated initializer or a convenience initializer.
///In both cases, you must mark the initializer implementation with the required modifier.
class SomeClass: SomeProtocol {
    required init(someParameter: Int) {
        // initializer implementation goes here
    }
}

///If a subclass overrides a designated initializer from a superclass, and also implements a matching initializer requirement from a protocol, mark the initializer implementation with both the required and override modifiers
protocol SomeProtocol2 {
    init()
}

class SomeSuperClass {
    init() {
        // initializer implementation goes here
    }
}

class SomeSubClass: SomeSuperClass, SomeProtocol2 {
    // "required" from SomeProtocol conformance; "override" from SomeSuperClass
    required override init() {
        // initializer implementation goes here
    }
}
