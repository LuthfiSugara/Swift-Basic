import Foundation

print("Constant")
//Imutable
print("===================================")
let maximunLoginAttempt = 10

print("Variable")
//Mutable
print("===================================")
var currentLoginAttempt = 5

print("Type Annotation")
//declare with dataType
print("===================================")
var helloWorld: String
let helloSwift: String

helloWorld = "Hello World"
helloSwift = "Hello Swift"
//helloSwift = "Hello IOS" //Cannot be initialize because constant is imutable

print(helloWorld)
print(helloSwift)

print("Numeric Literal")
print("===================================")
let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

//For Exponent Number with an exponent number of exp. the base number is multiplied by 10exp
let example1 = 1.25e2 //means 1.25 x 10 pangkat 2
let example2 = 1.25e-2 //means 1.25 x 10 pangkat -2

print("Numeric Type Convertion")
print("===================================")
//let cannotBeNegative: UInt8 = -1 //UInt8 Cannot store negative number
//let tooBig: Int8 = Int8.max + 1 //Int8 cannot store more than maximum value

print("Integer and FLoating Point Convertion")
print("===================================")
let three = 3
let point = 0.12345
let pi = Double(three) + point
let integerPi = Int(pi)

print("Type ALiases")
print("===================================")
typealias number = UInt16
var maxNumber = number.max

print("Boolean")
print("===================================")
let status = true
if status{
    print("OK, That's Good")
}else{
    print("Something Wrong")
}

print("Tuples")
print("===================================")
let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("Status Code is \(statusCode)")
print("Status Message is \(statusMessage)")

let (justStatusCode, _) = http404Error
print("Status Code is \(justStatusCode)")

print("Status Code is \(http404Error.0)")
print("Status Message is \(http404Error.1)")

let errorStatus = (code: 404, status: "Not Found")
print("Status Code is \(errorStatus.code)")
print("Status Message is \(errorStatus.status)")

print("Optionals")
print("===================================")
let optionalValue: String? = "123"
let optionalValue2: String? = "123asd"
print(Int(optionalValue!))
print(Int(optionalValue2!))

print("Implicity Unwrapped Optional")
print("===================================")
let possibleString: String? = "An Optional String"
let forceString: String = possibleString!

let assumedString: String! = "An implicity Unwrapped optional string"
let implicitString: String = assumedString

print("error Handling")
print("===================================")
enum RocketError: Error{
    case insufficientFuel
    case insufficientAstrounaut(needed: Int)
    case unknownError
}

func igniteRockets(fuel: Int, astronauts: Int) throws{
    if fuel < 999{
        throw RocketError.insufficientFuel
    }else if(astronauts < 3){
        throw RocketError.insufficientAstrounaut(needed: 3)
    }
    
    print("3...2..1. Lets Rock!!!")
}

do{
    try igniteRockets(fuel: 10, astronauts: 2)
}catch RocketError.insufficientFuel{
    print("Fuel not Enough!!!")
}catch RocketError.insufficientAstrounaut(needed: 3){
    print("There must be 3 astronauts in the plane!!!")
}catch{
    print("Unknown Error!!!")
}


print("Assertions and Preconditions")
print("===================================")
func checkAssert(_ age: Int) {
    assert(age >= 0, "Age can't be a negative value")

    print("Age is: ", age)
}

//checkAssert(-1)

func checkAssertionFailure(_ age: Int) {
    guard age >= 0 else {
        assertionFailure("Age can't be a negative value")
        return
    }
    print("Age is: ", age)
}

//checkAssertionFailure(-1)


func checkPrecondition(_ age: Int) {
    precondition(age >= 0, "Age can't be a negative value")
    
    print("Age is: ", age)
}

//checkPrecondition(-1)

func checkPreconditionFailure(_ age: Int) {
    guard age >= 0 else {
        preconditionFailure("Age can't be a negative value")
    }
    print("Age is: ", age)
}

//checkPreconditionFailure(-1)

func checkFatalError(_ age: Int) {
    guard age >= 0 else {
        fatalError("Age can't be a negative value")
    }
    print("Age is: ", age)
}

//checkFatalError(-1)
