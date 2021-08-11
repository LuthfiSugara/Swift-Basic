import Foundation

//Integers
let minValue = UInt8.min
let maxValue = UInt8.max

//Floating and Double
let pi = 3.14159
let anotherPi = 3 + 0.14159

//Numeric Literal
let decimalInterger = 17
let binaryInteger = 0b10001 // 17 in binary notation
let octalInteger = 0o21 // 17 in octal notation
let hexadecimalInteger = 0x11 //17 in hexadecimal notation

let oneMillion = 1_000_000

//Integer Convertion
//let cannotBeNegative: UInt8 = -1 // error : UInt8 can't store negative numbers
//let tooBig: Int8 = Int8.max + 1 //error : cant't store number larger than its maximum value

//Integer and Floating-Point Convertion
let three = 3
let pointFiveFourFiveNine = 0.14159
let pi1 = Double(three) + pointFiveFourFiveNine
print(pi1)

let intergerPi = Int(pi)
print(intergerPi)

//Type Alias
typealias randomNumber = UInt8

let anotherNumber = randomNumber.min
print(anotherNumber)
//let randomNumber = 4
//print(randomNumber)


//Boolean
let orangesAreOrang = true
let turnipsAreDelicious = false

//Tuples
let http404Error = (404, "Not Found")

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// Prints "The status code is 404"
print("The status message is \(statusMessage)")
// Prints "The status message is Not Found"

let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
// Prints "The status code is 404"

print("The status code is \(http404Error.0)")
// Prints "The status code is 404"
print("The status message is \(http404Error.1)")
// Prints "The status message is Not Found"

let http200Status = (statusCode: 200, description: "OK")

print("The status code is \(http200Status.statusCode)")
// Prints "The status code is 200"
print("The status message is \(http200Status.description)")
// Prints "The status message is OK"


//Optionals
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// convertedNumber is inferred to be of type "Int?", or "optional Int"

var serverResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404
serverResponseCode = nil
// serverResponseCode now contains no value

var surveyAnswer: String?
// surveyAnswer is automatically set to nil


//Implicity Unwrapped Optionals
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation point

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation point

let optionalString = assumedString
