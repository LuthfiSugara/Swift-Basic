import Foundation

//Craeting an Empty Dictionary
var namesOfIntegers: [Int: String] = [:]
namesOfIntegers[16] = "Sixteen"
namesOfIntegers[16]
namesOfIntegers = [:]


//Creating a DIctionary with a Dictionary Literal
var airports: [String: String] = ["XYZ" : "Toronto Pearson", "DUB" : "Dublin"]
var anotherAirports = ["XYZ" : "Toronto Pearson", "DUB" : "Dublin"]


//Accessing and Modifying Dictionary
airports["LHR"] = "London Heathrow"

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB"){
    print("The old value for DUB was \(oldValue)")
}

print("The new value for DUB was \(airports["DUB"])")

airports["APL"] = "Apple International"
airports["APL"] = nil

//remove value
if let removeValue = airports.removeValue(forKey: "DUB"){
    print("The remove airport's name is \(removeValue)")
}else{
    print("The airport's dictionary does not contain a value for DUB")
}

airports["DUB"] //nill


//Iterating over dictionary
for (airportCode, airportName) in airports{
    print("\(airportCode) : \(airportName)")
}

for airportCode in airports.keys{
    print("Airport code : \(airportCode)")
}

for airportName in airports.values{
    print("Airport name : \(airportName)")
}


//if you want to change group of keys or values dictionary into an array
let airportCodes = [String](airports.keys)

let airportNames = [String](airports.values)
