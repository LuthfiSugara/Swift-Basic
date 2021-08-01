import Foundation

//Definition Syntax
print("==================")
struct Resolution{
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}


//Structure and Class Instances
print("=============================")
let someResolution = Resolution()
let someVideoMode = VideoMode()

//Accessing Properties
print("The width of someResolution is \(someResolution.width)")
print("The width of someVideo Resolution is \(someVideoMode.resolution.width)")
someVideoMode.resolution.width = 10
print("The width of someVideo Resolution is \(someVideoMode.resolution.width)")


//Memberwise initializers for structure types
let vga = Resolution(width: 640, height: 480)


//Structures and Enumeration are value types
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048

enum CompassPoint{
    case north, south, east, west
    mutating func turnNorth(){
        self = .north
    }
}

var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection
currentDirection.turnNorth()

print("The current direction is \(currentDirection)")
print("The remembered direction is \(rememberedDirection)")


//Classes are references types
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
print("The framerate property of tenEighty is now \(tenEighty.frameRate)")


//Identity Operators
if tenEighty === alsoTenEighty{
    print("tenEighty and alsoTenEighty refer to the same VideoMode instance")
}
