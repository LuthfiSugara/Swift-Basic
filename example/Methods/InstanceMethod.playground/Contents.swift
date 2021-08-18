import Foundation

//Methods are functions that are associated with a particular type.
//Classes, structures, and enumerations can all define instance methods, which encapsulate specific tasks and functionality for working with an instance of a given type.
//Classes, structures, and enumerations can also define type methods, which are associated with the type itself.


//Instance Method
///Instance methods are functions that belong to instances of a particular class, structure, or enumeration.
class Counter{
    var count = 0
    func increment() {
        count += 1
    }
    
    func increment(by amount: Int) {
        count += 1
    }
    
    func reset() {
        count = 0
    }
}

let counter = Counter()
counter.increment() //counter = 1
counter.increment(by: 5) //counter = 6
counter.reset() //counter = 0


//Self Property
struct Point{
    var x = 0.0, y = 0.0
    func isToTheRightOf(x: Double) -> Bool {
        return self.x > x
    }
}

let somePoint = Point(x: 4.0, y: 5.0)
if somePoint.isToTheRightOf(x: 1.0){
    print("This point is to the right of the line where x == 1.0")
}


//Modifying value types from within instance methods
///Structures and enumerations are value types
///By default, the properties of a value type can’t be modified from within its instance methods.
///if you need to modify the properties of your structure or enumeration within a particular method, you can opt in to mutating behavior for that method.
struct Point2{
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) { //error without mutating
        x += deltaX
        y += deltaY
    }
}
var somePoint2 = Point2(x: 1.0, y: 1.0)
somePoint2.moveBy(x: 2.0, y: 3.0)
print("The point is now at (\(somePoint.x), \(somePoint.y))")


//Assigning to self within a mutating method
struct Point3{
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double){
        self = Point3(x: x + deltaX, y: y + deltaY)
    }
}

var somePoint3 = Point3()
somePoint3.moveBy(x: 2.0, y: 3.0)
print(somePoint3.self)


//Mutating method with enumeration
enum TriStateSwitch{
    case off, low, high
    mutating func next(){
        switch self {
        case .off:
            self .low
        case .low:
            self .high
        case .high:
            self .off
        }
    }
}

var ovenLight = TriStateSwitch.low
ovenLight.next() //.high
ovenLight.next() //.off
