import Foundation

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber) // convertedNumber is inferred to be of type "Int?", or "optional Int"

var serverResponseCode: Int? = 404 // serverResponseCode contains an actual Int value of 404
print("Server Response Code : \(serverResponseCode)")
serverResponseCode = nil // serverResponseCode now contains no value

var surveyAnswer: String? // surveyAnswer is automatically set to nil


//Implicity Unwrapped Optionals
let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation point

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation point
print("\(implicitString)")
let optionalString = assumedString

