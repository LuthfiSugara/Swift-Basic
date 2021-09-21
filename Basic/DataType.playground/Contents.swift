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

//Example to access tuples
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")

print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")


let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
print("The status message is \(http200Status.description)")
