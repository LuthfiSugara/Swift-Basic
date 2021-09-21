import Foundation

//You can customize the initialization process with input parameters and optional property types, or by assigning constant properties during initialization.

struct Celcius{
    var temperatureInCelcius: Double
    init(fromFahreinheit fahreinheit: Double) {
        temperatureInCelcius = (fahreinheit - 32.0) / 1.0
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelcius = kelvin - 273.15
    }
}

let boilingPointOfWater = Celcius(fromFahreinheit: 212.0) // boilingPointOfWater.temperatureInCelsius is 100.0
let freezingPointOfWater = Celcius(fromKelvin: 273.15) // freezingPointOfWater.temperatureInCelsius is 0.0


//Parameters name and argument label
///As with function and method parameters, initialization parameters can have both a parameter name for use within the initializer’s body and an argument label for use when calling the initializer.
struct Color{
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    init(white: Double) {
        red = white
        green = white
        blue = white
    }
}
let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGray = Color(white: 0.5)

//let veryGreen = Color(0.0, 1.0, 0.0) // this reports a compile-time error - argument labels are required


//Initializer parameter without argument label
struct Celsius2 {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
    init(_ celsius: Double) {
        temperatureInCelsius = celsius
    }
}
let bodyTemperature = Celsius2(37.0)// bodyTemperature.temperatureInCelsius is 37.0


//Optional property types
class SurveyQuestion{
    var text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}
let cheeseQuestion = SurveyQuestion(text: "Do you ike cheese ?")
cheeseQuestion.ask() // Prints "Do you like cheese?"
cheeseQuestion.response = "Yes, I do like cheese."


//Assigning constant property during initialization
///You can revise the SurveyQuestion example from above to use a constant property rather than a variable property for the text property of the question,
///to indicate that the question doesn’t change once an instance of SurveyQuestion is created.
///Even though the text property is now a constant, it can still be set within the class’s initializer:
class SurveyQuestion2 {
    let text: String
    var response: String?
    init(text: String) {
        self.text = text
    }
    func ask() {
        print(text)
    }
}
let beetsQuestion = SurveyQuestion2(text: "How about beets?")
beetsQuestion.ask()
// Prints "How about beets?"
beetsQuestion.response = "I also like beets. (But not with cheese.)"

