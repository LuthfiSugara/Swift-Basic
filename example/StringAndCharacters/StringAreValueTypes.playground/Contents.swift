import Foundation

for character in "Cat!"{
    print(character)
}

let someChar: Character = "a"

let catCharacter: [Character] = ["C", "a", "t", "!"]
let catString = String(catCharacter)
print(catString)

//Concatening String and Character
var string1 = "hello"
var string2 = " world!"
var welcome = string1 + string2
string1 += string2


// String Interpolation
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"


//Unicode
let eAcute: Character = "\u{E9}"
let combineEAcute: Character = "\u{65}\u{301}"

let sayHI = "Hi, Good Morning"
print(sayHI.count)
