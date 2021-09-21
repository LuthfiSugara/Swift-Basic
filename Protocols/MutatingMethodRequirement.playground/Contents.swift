import Foundation

//Mutating Method Requirement
///For instance methods on value types (that is, structures and enumerations) you place the mutating keyword before a method’s func keyword to indicate that the method is allowed to modify the instance it belongs to and any properties of that instance.
///If you define a protocol instance method requirement that’s intended to mutate instances of any type that adopts the protocol, mark the method with the mutating keyword as part of the protocol’s definition.
///This enables structures and enumerations to adopt the protocol and satisfy that method requirement.

protocol Togglable {
    mutating func toggle()
}

enum OnOffSwitch: Togglable {
    case off, on
    mutating func toggle() {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}
var lightSwitch = OnOffSwitch.off
lightSwitch.toggle()
// lightSwitch is now equal to .on
