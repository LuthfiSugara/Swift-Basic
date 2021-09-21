import Foundation

//Like classes, actors are reference types, so the comparison of value types and reference types in Classes Are Reference Types applies to actors as well as classes.
//Unlike classes, actors allow only one task to access their mutable state at a time, which makes it safe for code in multiple tasks to interact with the same instance of an actor.

actor TemperatureLogger {
    let label: String
    var measurements: [Int]
    private(set) var max: Int

    init(label: String, measurement: Int) {
        self.label = label
        self.measurements = [measurement]
        self.max = measurement
    }
}

//You introduce an actor with the actor keyword, followed by its definition in a pair of braces. The TemperatureLogger actor has properties that other code outside the actor can access, and restricts the max property so only code inside the actor can update the maximum value.

//You create an instance of an actor using the same initializer syntax as structures and classes. When you access a property or method of an actor, you use await to mark the potential suspension point
let logger = TemperatureLogger(label: "Outdoors", measurement: 25)
print(await logger.max)
// Prints "25"

//In this example, accessing logger.max is a possible suspension point. Because the actor allows only one task at a time to access its mutable state, if code from another task is already interacting with the logger, this code suspends while it waits to access the property.
extension TemperatureLogger {
    func update(with measurement: Int) {
        measurements.append(measurement)
        if measurement > max {
            max = measurement
        }
    }
}
