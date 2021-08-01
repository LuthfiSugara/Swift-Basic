import Foundation

//Setting Initial Values for Stored Properties

//Initializer
//init(){
//
//}

struct Fahreinheit{
    var temperature: Double
    init() {
        temperature = 32.0 //Default Property value
    }
}
var f = Fahreinheit()
print("The default temperature is \(f.temperature) Fahreinheit")


//Customizing Initialization
//Initialization parameters
struct Celcius{
    var temperatureInCelcius: Double
    init(fromFahreinheit fahreinheit: Double) {
        temperatureInCelcius = (fahreinheit - 32.0) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        temperatureInCelcius = kelvin - 273.15
    }
}

let boilingPointerOfWater = Celcius(fromFahreinheit: 212.0)
let freezingPointOfWater = Celcius(fromKelvin: 273.15)

//Parameter names and argument labels
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

let magneta = Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGray = Color(white: 0.5)
//let veryGreen = Color(0.0, 0.0, 0.0) //compile error argument label are required


//Initializer parameter without argument label
struct Celcius2{
    var temperatureInCelcius: Double
    init(fromFahreinheit fahreinheit: Double) {
        temperatureInCelcius = (fahreinheit - 32.0) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        temperatureInCelcius = kelvin - 273.15
    }
    
    init(_ celcius: Double) {
        temperatureInCelcius = celcius
    }
}

let bodyTemperature = Celcius2(37.0)


//Optional Property Types
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

let cheeseQuestion = SurveyQuestion(text: "Do You Like Cheese?")
cheeseQuestion.ask()
cheeseQuestion.response = "Yes, I do like Cheese."


//Assigning Constant Properties During Initialization
class SurveyQuestion2{
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
cheeseQuestion.ask()
cheeseQuestion.response = "I also like beets. (But not with cheese)"


//Default Initializers
class ShoppingListItem{
    var name: String?
    var quantity = 1
    var purchased = false
}

var item = ShoppingListItem()

struct Size{
    var width = 0.0, height = 0.0
}
let twoByTwo = Size(width: 2.0, height: 2.0)
let zeroByTwo = Size(height: 2.0)

let zeroByZero = Size()
print(zeroByZero.width, zeroByZero.height)


//Initializer delegation for value Types
struct Point{
    var x = 0.0, y = 0.0
}

struct Rect{
    var origin = Point()
    var size = Size()
    init() {}
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

let basicRec = Rect()
let originRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))
let centerRect = Rect(center: Point(x: 4.0, y: 4.0), size: Size(width: 3.0, height: 3.0))
