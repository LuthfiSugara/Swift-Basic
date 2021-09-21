import Foundation

//Overriding
///A subclass can provide its own custom implementation of an instance method, type method, instance property, type property, or subscript that it would otherwise inherit from a superclass. This is known as overriding.
///To override a characteristic that would otherwise be inherited, you prefix your overriding definition with the override keyword.

//An overridden method named someMethod() can call the superclass version of someMethod() by calling super.someMethod() within the overriding method implementation.
//An overridden property called someProperty can access the superclass version of someProperty as super.someProperty within the overriding getter or setter implementation.
//An overridden subscript for someIndex can access the superclass version of the same subscript as super[someIndex] from within the overriding subscript implementation.


//Overriding Methods
class Vehicle{
    var currentSpeed = 0.0
    var description: String{
        return "Traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise(){
        //do nothing
    }
}

class Train: Vehicle{
    override func makeNoise() {
        print("Cho Choo")
    }
}

let train = Train()
train.makeNoise() //Cho Choo


//Overriding Property Getters and Setters
class Car: Vehicle{
    var gear = 1
    override var description: String{
        return super.description + " in gear \(gear)"
    }
}

let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car: \(car.description)") // Car: traveling at 25.0 miles per hour in gear 3


//Overriding Property observer
class AutomaticCar: Car{
    override var currentSpeed: Double{
        didSet{
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("Automatic: \(automatic.description)") // AutomaticCar: traveling at 35.0 miles per hour in gear 4

