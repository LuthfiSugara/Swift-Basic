import Foundation

//Extensions add new functionality to an existing class, structure, enumeration, or protocol type.
//This includes the ability to extend types for which you don’t have access to the original source code (known as retroactive modeling).

extension SomeType {
    // new functionality to add to SomeType goes here
}

//An extension can extend an existing type to make it adopt one or more protocols. To add protocol conformance, you write the protocol names the same way as you write them for a class or structure
extension SomeType: SomeProtocol, AnotherProtocol {
    // implementation of protocol requirements goes here
}
