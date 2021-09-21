import Foundation

//Computed properties will count a value
//Only available by class, struct and enumeration
//Computed property available getter and optional setter to manipulate property and value

struct Point{
    var x = 0.0, y = 0.0
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
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
square.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")


//Computed property which have getter but not have setter, as known as read-only computed property
//Always return value and can accessible via dot syntax, but value can't change
struct Cuboid{
    var width = 0.0, height = 0.0, dept = 0.0
    var volume : Double{
        return width * height * dept
    }
}

var fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, dept: 2.0)
print("The volume of fourByFiveByTwo is \(fourByFiveByTwo)")
print(fourByFiveByTwo.width = 5)
