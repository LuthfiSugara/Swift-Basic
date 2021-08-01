import Foundation

struct FixedLengthRange{
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6

//Store Properties of Constant Structure Instances
var rangeOfFoutItems = FixedLengthRange(firstValue: 0, length: 4)
//rangeOfFourItems.firstValue = 6 //This will report an error cause length is imutable


//Lazy Store Properties
class DataImporter{
    var filename = "data.txt"
}

class DataManager{
    lazy var importer = DataImporter()
    var data: [String] = []
}

let manager = DataManager()
manager.data.append("Some Data")
manager.data.append("Some more data")
print(manager.importer.filename)


//Computed Properties
struct Point{
    var x = 0.0
    var y = 0.0
}

struct Size{
    var width = 0.0, height = 0.0
}

struct Rect{
    var origin = Point()
    var size = Size()
    var center: Point{
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter){
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - size.height / 2
        }
    }
}
var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
square.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y)")


//Shorthand Seeter declaration
struct AlternativeRect{
    var origin = Point()
    var size = Size()
    var center: Point{
        get{
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set{
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.x - (size.height / 2)
        }
    }
}


//Shorthand Getter Declaration
struct CompactRect{
    var origin = Point()
    var size = Size()
    var center: Point{
        get{
            Point(x: origin.x + (size.width / 2),
                  y: origin.y + (size.height / 2))
        }set{
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}


//Read Only Computed properties
struct Cuboid{
    var width = 0.0, height = 0.0, dept = 0.0
    var volume: Double{
        return width * height * dept
    }
}

let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, dept: 2.0)
print("The value of fourByFiveByTwo is \(fourByFiveByTwo.volume)")


//Properties Observers
class StepCounter{
    var totalSteps: Int = 0 {
        willSet(newTotalSteps){
            print("About to set totalsteps to \(newTotalSteps)")
        }
        didSet{
            if totalSteps > oldValue{
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 400
stepCounter.totalSteps = 300


//Properti Wrappers
@propertyWrapper
struct TwelveOrLess{
    private var number = 0
    var wrappedValue: Int{
        get{ return number }
        set{ number = min(newValue, 12)}
    }
}

struct SmallRectangle{
    @TwelveOrLess var height: Int
    @TwelveOrLess var width: Int
}

var rectangle = SmallRectangle()
print(rectangle.height)

rectangle.height = 10
print(rectangle.height)

rectangle.height = 20
print(rectangle.height)

struct SmallRectangle2{
    private var _height = TwelveOrLess()
    private var _width = TwelveOrLess()
    var height: Int{
        get{ return _height.wrappedValue }
        set{ _height.wrappedValue = newValue }
    }
    var width: Int{
        get{ _width.wrappedValue }
        set{ _width.wrappedValue = newValue }
    }
    
}

var rectangle2 = SmallRectangle2()
print(rectangle2.height)

rectangle2.height = 11
print(rectangle2.height)

rectangle2.height = 21
print(rectangle2.height)


//Setting Initial Value for wrapped properties
@propertyWrapper
struct SmallNumber{
    private var maximum: Int
    private var number: Int
    
    var wrappedValue: Int{
        get { return number }
        set { number = min(newValue, maximum) }
    }
    
    init() {
        maximum = 12
        number = 0
    }
    
    init(wrappedValue: Int) {
        maximum = 12
        number = min(wrappedValue, maximum)
    }
    
    init(wrappedValue: Int, maximum: Int) {
        self.maximum = maximum
        number = min(wrappedValue, maximum)
    }
}


//When dont specify initial the value
struct ZeroRectangle{
    @SmallNumber var height: Int
    @SmallNumber var width: Int
}

var zeroRectangle = ZeroRectangle()
print(zeroRectangle.height, zeroRectangle.width)


//When specify initial value
struct UnitRectangle{
    @SmallNumber var height: Int = 1
    @SmallNumber var width: Int = 1
}

var unitRectangle = UnitRectangle()
print(unitRectangle.height, unitRectangle.width)


//When write arguments in parentheses after the custom attribute
struct NarrowRectangle{
    @SmallNumber(wrappedValue: 2, maximum: 5) var height: Int
    @SmallNumber(wrappedValue: 3, maximum: 4) var width: Int
}

var narrowRectangle = NarrowRectangle()
print(narrowRectangle.height, narrowRectangle.width)
narrowRectangle.height = 100
narrowRectangle.width = 100
print(narrowRectangle.height, narrowRectangle.width)


//When inclued property wrapper arguments, you can specify an initial value using assignment
struct MixedRectangle{
    @SmallNumber var height: Int = 1
    @SmallNumber(maximum: 9) var widht: Int = 2
}

var mixedRectangle = MixedRectangle()
print(mixedRectangle.height)

mixedRectangle.height = 20
print(mixedRectangle.height)


//Projecting a value from a property wrapper
@propertyWrapper
struct SmallNumber2 {
    private var number = 0
    var projectedValue = false
    var wrappedValue: Int{
        get{return number}
        set{
            if newValue > 12 {
                number = 12
                projectedValue = true
            }else{
                number = newValue
                projectedValue = false
            }
        }
    }
}

struct SomeStructure{
    @SmallNumber2 var someNumber: Int
}
var someStructure = SomeStructure()

someStructure.someNumber = 4
print(someStructure.$someNumber)

someStructure.someNumber = 55
print(someStructure.$someNumber)

//When access a projected value from code thats part of the type,
//like a property getter or an instance method
enum Size2{
    case small, large
}

struct SizedRectangle{
    @SmallNumber2 var height: Int
    @SmallNumber2 var width: Int
    
    mutating func resize(to size: Size2) -> Bool{
        switch size {
        case .small:
            height = 10
            width = 20
        case .large:
            height = 100
            width = 200
        }
        
        return $height || $width
    }
}


//Global and Local variables
//func someFunction(){
//    @SmallNumber2 var myNumber1: Int
//
//    myNumber1 = 10
//
//    myNumber1 = 24
//}


//Type Properties
struct SomeStructure2{
    static var storedTypeProperty = "Some value"
    static var computedTypeProperty: Int {
        return 1
    }
}

enum SomeEnumeration{
    static var storedTypeProperty = "Some Value"
    static var computedTypeProperty: Int {
        return 6
    }
}

class SomeClass{
    static var  storedTypeProperty = "Some Value"
    static var computedTypeProperty: Int {
        return 27
    }
    
    class var overrideableComputedTypeProperty: Int {
        return 107
    }
}


//Querying and Setting Type Properties
print(SomeStructure2.storedTypeProperty)
// Prints "Some value."
SomeStructure2.storedTypeProperty = "Another value."
print(SomeStructure2.storedTypeProperty)
// Prints "Another value."
print(SomeEnumeration.computedTypeProperty)
// Prints "6"
print(SomeClass.computedTypeProperty)
//Prints "27"


struct AudioChannel{
    static let thresholdlevel = 10
    static var maxInputLevelForAllChannels = 0
    var currentLevel: Int = 0 {
        didSet{
            if currentLevel > AudioChannel.thresholdlevel{
                currentLevel = AudioChannel.thresholdlevel
            }
            
            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
}

var leftChannel = AudioChannel()
var rightChannel = AudioChannel()

leftChannel.currentLevel = 7
print(leftChannel.currentLevel)

print(AudioChannel.maxInputLevelForAllChannels)

rightChannel.currentLevel = 11
print(rightChannel.currentLevel)
print(AudioChannel.maxInputLevelForAllChannels)
