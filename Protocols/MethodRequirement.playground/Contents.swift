import Foundation

//Method Requirement
///Protocols can require specific instance methods and type methods to be implemented by conforming types.
///These methods are written as part of the protocol’s definition in exactly the same way as for normal instance and type methods, but without curly braces or a method body.
///As with type property requirements, you always prefix type method requirements with the static keyword when they’re defined in a protocol.

protocol SomeProtocol {
    static func someTypeMethod()
}

//An example defines a protocol with a single instance method requirement
protocol RandomNumberGenerator {
    func random() -> Double
}

//This protocol, RandomNumberGenerator, requires any conforming type to have an instance method called random, which returns a Double value whenever it’s called.
//Although it’s not specified as part of the protocol, it’s assumed that this value will be a number from 0.0 up to (but not including) 1.0.
//This class implements a pseudorandom number generator algorithm known as a linear congruential generator
class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c)
            .truncatingRemainder(dividingBy:m))
        return lastRandom / m
    }
}
let generator = LinearCongruentialGenerator()
print("Here's a random number: \(generator.random())")
// Prints "Here's a random number: 0.3746499199817101"
print("And another one: \(generator.random())")
// Prints "And another one: 0.729023776863283"
