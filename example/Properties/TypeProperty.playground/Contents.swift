import Foundation

//You define type properties with the static keyword.
//For computed type properties for class types, you can use the class keyword instead to allow subclasses to override the superclass’s implementation.
struct SomeStructure {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 1
    }
}
enum SomeEnumeration {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 6
    }
}
class SomeClass {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 27
    }
    class var overrideableComputedTypeProperty: Int {
        return 107
    }
}


//Querying and setting type properties
print(SomeStructure.storedTypeProperty) // Prints "Some value."

SomeStructure.storedTypeProperty = "Another value."
print(SomeStructure.storedTypeProperty) // Prints "Another value."

print(SomeEnumeration.computedTypeProperty) // Prints "6"

print(SomeClass.computedTypeProperty) // Prints "27"


//Another Example
struct AudioChannel {
    static let thresholdLevel = 10
    static var maxInputLevelForAllChannels = 0
    var currentLevel: Int = 0 {
        didSet {
            if currentLevel > AudioChannel.thresholdLevel {
                // cap the new audio level to the threshold level
                currentLevel = AudioChannel.thresholdLevel
            }
            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                // store this as the new overall maximum input level
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
}

var leftChannel = AudioChannel()
var rightChannel = AudioChannel()

leftChannel.currentLevel = 7
print(leftChannel.currentLevel) // Prints "7"
print(AudioChannel.maxInputLevelForAllChannels)// Prints "7"


rightChannel.currentLevel = 11
print(rightChannel.currentLevel) // Prints "10"
print(AudioChannel.maxInputLevelForAllChannels) // Prints "10"

