import Foundation


print("For-in Loops")
print("=============")
let names = ["Luthfi", "Sugara"]
for name in names{
    print("Hello \(name)")
}

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 8]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName) have \(legCount) legs")
}

for index in 1...5{
    print(index)
}


print("While Loops")
print("================")
var limit = 0
let maximum = 5
while limit < maximum {
    print(limit)
    limit += 1
}
print("While End")


print("Repeat While")
print("===============")
var min = 0
var max = 5
repeat {
    print(min)
    min += 1
}while min < max

print("Repeat End")


print("Conditional Statements")
print("======================")
var temperature = 20
if temperature >= 20 {
    print("Hot")
}else if(temperature < 20){
    print("cool")
}else{
    print("freez")
}


print("Switch")
print("==============")
let someCharacter: Character = "z"
switch someCharacter {
    case "a":
        print("First letter of the alphabet")
    case "z":
        print("End letter of the alphabet")
    default:
        print("Other character")
}

print("Interval MAtching")
print("=================")
var speed = 100

switch speed {
case 0..<30:
    print("Slow")
case 31..<60:
    print("Standard")
case 61..<80:
    print("Fase")
case 81...:
    print("Very Fast")
default:
    print("Unkown")
}


print("Tuples")
print("==========")
let somePoint = (1,1)
switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}

print("Value Binding")
print("=================")
let anotherPoint = (2, 0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let (x, y):
    print("somewhere else at (\(x), \(y))")
}

print("Where")
print("==========")
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}


print("Compund Case")
print("================")
let anotherCharacter: Character = "e"
switch anotherCharacter {
case "a", "e", "i", "o", "u":
    print("\(anotherCharacter) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(anotherCharacter) is a consonant")
default:
    print("\(anotherCharacter) isn't a vowel or a consonant")
}

print("Continue")
print("============")
let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u", " "]
for character in puzzleInput {
    if charactersToRemove.contains(character) {
        continue
    }
    puzzleOutput.append(character)
}
print(puzzleOutput)

print("Break")
print("==========")
let numberSymbol: Character = "三"  // Chinese symbol for the number 3
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
    possibleIntegerValue = 1
case "2", "٢", "二", "๒":
    possibleIntegerValue = 2
case "3", "٣", "三", "๓":
    possibleIntegerValue = 3
case "4", "٤", "四", "๔":
    possibleIntegerValue = 4
default:
    break
}

if let integerValue = possibleIntegerValue {
    print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
    print("An integer value couldn't be found for \(numberSymbol).")
}


print("FallThrough")
print("==============")
let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)

print("Early Exit")
print("=============")
func greet(person: [String: String]){
    guard let name = person["name"] else {
        return
    }
    
    print("Hello \(name)!")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    
    print("I hope the weather is nice in \(location).")
}

greet(person: ["name" : "jhon"])

greet(person: ["name" : "Jane", "location": "Indonesia"])
