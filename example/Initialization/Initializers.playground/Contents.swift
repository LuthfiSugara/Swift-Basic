import Foundation

//Initialization
///Is the process of preparing an instance of a class, structure, or enumeration for use.
///This process involves setting an initial value for each stored property on that instance and performing any other setup or initialization that’s required before the new instance is ready for use.

struct Fahreinheit{
    var temperature: Double
    init() {
        temperature = 32.0
    }
}
var f = Fahreinheit()
print("The default temperature is \(f.temperature) Fahreinheit") // Prints "The default temperature is 32.0° Fahrenheit"


//Default Property Values
///Specify a default property value as part of the property’s declaration.
///You specify a default property value by assigning an initial value to the property when it’s defined.

struct Fahrenheit2 {
    var temperature = 32.0
}


