import Foundation

//Compare Struct and Class

//Equality between Struct and Class
//Can define property to save values
//Can define method to provide functionallity
//Can define subscript to give access to toher value used subscript syntax
//Can define initializer to set initial state
//Can extend to expand functionallity
//Can adapt with protocol to provide standard functionallity from kind certain


//Class have additional abilities, which are owned structure
//Inheritance is possible one characterictic class from another class
//Type Casting is possible to check and translate data type instance when runtime
//Deinitializers is possible to free any resource that has been assigned
//Reference Counting is possible more than one reference to instance class


//Definition Syntax
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


//Access Property
let someResolution = Resolution()
print("The width of someResolution is \(someResolution.width)")

let someVideoMode = VideoMode()
print("The width of someVideoMode is \(someVideoMode.resolution.width)")


//Memberwise initializer for structure types
let vga = Resolution(width: 640, height: 480)
print(vga)

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048
print("cinema is now \(cinema.width) pixels wide")
print("cinema is now \(hd.width) pixels wide")


//CLass is data type reference
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0

print("The frameRate property of tenEighty is now \(tenEighty.frameRate)")
print("The frameRate property of alsoTenEighty is now \(alsoTenEighty.frameRate)")
