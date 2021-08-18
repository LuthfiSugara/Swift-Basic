import Foundation

//Inheritance
/// A class can inherit methods, properties, and other characteristics from another class.
/// When one class inherits from another, the inheriting class is known as a subclass, and the class it inherits from is known as its superclass.
class Vehicle{
    var currentSpeed = 0.0
    var description: String{
        return "Traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise(){
        //do nothing
    }
}

let someVehicle = Vehicle()
print("Vehicle: \(someVehicle.description)")
