import Foundation

//Subsclass
///Subclassing is the act of basing a new class on an existing class.
///The subclass inherits characteristics from the existing class, which you can then refine.
///You can also add new characteristics to the subclass.

class Vehicle{
    var currentSpeed = 0.0
    var description: String{
        return "Traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise(){
        //do nothing
    }
}

class Bycicle: Vehicle{
    var hasBasket = false
}

let bycicle = Bycicle()
bycicle.hasBasket = true

bycicle.currentSpeed = 15.0
print("Bycicle: \(bycicle.description)") //Bicycle: traveling at 15.0 miles per hour

class Tandem: Bycicle{
    var currentNumberOfPassengers = 0
}

let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
print("Tandem: \(tandem.description)") // Tandem: traveling at 22.0 miles per hour

