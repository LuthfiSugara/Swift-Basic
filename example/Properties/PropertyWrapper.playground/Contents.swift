import Foundation

//A property wrapper adds a layer of separation between code that manages how a property is stored and the code that defines a property.
//When you use a property wrapper, you write the management code once when you define the wrapper, and then reuse that management code by applying it to multiple properties.
//To define a property wrapper, you make a structure, enumeration, or class that defines a wrappedValue property.

@propertyWrapper
struct TwelveOrLess{
    private var number = 0
    var wrappedValue: Int{
        get { return number }
        set { number = min(newValue, 12) }
    }
}

struct SmallRectangle{
    @TwelveOrLess var height: Int
    @TwelveOrLess var width: Int
}

var rectangle = SmallRectangle()
print(rectangle.height) // Prints "0"

rectangle.height = 10
print(rectangle.height) // Prints "10"

rectangle.height = 24
print(rectangle.height) // Prints "12"


//Another Way to use property wrapper
struct SmallRectangle2 {
    private var _height = TwelveOrLess()
    private var _width = TwelveOrLess()
    var height: Int {
        get { return _height.wrappedValue }
        set { _height.wrappedValue = newValue }
    }
    var width: Int {
        get { return _width.wrappedValue }
        set { _width.wrappedValue = newValue }
    }
}

var rectangle2 = SmallRectangle2()
print(rectangle2.height) //0

rectangle2.height = 10 //10
print(rectangle2.height)

rectangle2.height = 20 //12
print(rectangle2.height)


//Setting initial values for wrapped properties
@propertyWrapper
struct SmallNumber{
    private var maximum: Int
    private var number: Int
    
    var wrappedValue: Int{
        get { return number }
        set{ number = min(newValue, maximum) }
    }
    
    init() {
        maximum = 12
        number = 0
    }
    
    init(wrappedValue: Int) {
        maximum = 12
        number = 0
    }
    
    init(wrappedValue: Int, maximum: Int) {
        self.maximum = maximum
        number = min(wrappedValue, maximum)
    }
}

struct ZeroRectangle{
    @SmallNumber var height: Int
    @SmallNumber var width: Int
}

var zeroRectangle = ZeroRectangle()
print(zeroRectangle.height, zeroRectangle.width) //0 0

struct UnitRectangle{
    @SmallNumber var height: Int = 1
    @SmallNumber var width: Int = 1
}

var unitRectangle = UnitRectangle()
print(unitRectangle.height, unitRectangle.width) //1 1


//When you write arguments in parentheses after the custom attribute, Swift uses the initializer that accepts those arguments to set up the wrapper
struct NarrowRectangle {
    @SmallNumber(wrappedValue: 2, maximum: 5) var height: Int
    @SmallNumber(wrappedValue: 3, maximum: 4) var width: Int
}

var narrowRectangle = NarrowRectangle()
print(narrowRectangle.height, narrowRectangle.width) // 2 3

narrowRectangle.height = 100
narrowRectangle.width = 100
print(narrowRectangle.height, narrowRectangle.width) // 5 4


//When you include property wrapper arguments, you can also specify an initial value using assignment.
//Swift treats the assignment like a wrappedValue argument and uses the initializer that accepts the arguments you include.
struct MixedRectangle {
    @SmallNumber var height: Int = 1
    @SmallNumber(maximum: 9) var width: Int = 2
}

var mixedRectangle = MixedRectangle()
print(mixedRectangle.height) // 1

mixedRectangle.height = 20
print(mixedRectangle.height) //12


//if you try to set the property to a number that’s too large, the property wrapper adjusts the number before storing it.
//The code below adds a projectedValue property to the SmallNumber structure to keep track of whether the property wrapper adjusted the new value for the property before storing that new value.
@propertyWrapper
struct SmallNumber2 {
    private var number = 0
    var projectedValue = false
    var wrappedValue: Int {
        get { return number }
        set {
            if newValue > 12 {
                number = 12
                projectedValue = true
            } else {
                number = newValue
                projectedValue = false
            }
        }
    }
}
struct SomeStructure {
    @SmallNumber2 var someNumber: Int
}
var someStructure = SomeStructure()

someStructure.someNumber = 4
print(someStructure.someNumber)
print(someStructure.$someNumber) //false

someStructure.someNumber = 55
print(someStructure.$someNumber) //true

