import Foundation

let someCharacter: Character = "A"

//Example 1
switch someCharacter {
case "a":
    print("The First Letter of the Alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Another Character")
}

//Example 2
switch someCharacter {
case "a", "A":
    print("The First Letter of the Alphabet")
case "z", "Z":
    print("The last letter of the alphabet")
default:
    print("Another Character")
}

//Example 3
//Interval Matching
let number = 50
let naturalCount: String
switch number{
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}

print(naturalCount)

//Example 4
//Tuples
let somePoint = (1,1)
switch somePoint {
case (0,0):
    print("\(somePoint) is at the origin")
case (_,0):
    print("\(somePoint) is on the x-axis")
case (0,_):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) is inside the box")
default:
    print("\(somePoint) is outside of the box")
}

//Example 5
//Value Bindings
let anotherPoint = (2,0)
switch anotherPoint {
case (let x, 0):
    print("on the x-axis with an x value of \(x)")
case (0, let y):
    print("on the y-axis with a y value of \(y)")
case let ( x, y):
    print("somewhere else at (\(x), \(y)")
}


//Example 6
//Where
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x,y) where x == -y:
    print("(\(x), \(y) is on the line x == -y")
case let (x,y):
    print("(\(x), \(y)) is just some arbitrary point")
}


//Example 7
//Compound Cases
let someCharacter: Character = "e"
switch someCharacter {
case "a", "i", "u", "e", "o":
    print("\(someCharacter) is a vocal")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacter) is a consonant")
default:
    print("\(someCharacter) isn't a vocal or a constant")
}


//Example 8
let stillAnotherPoint = (9,0)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("On an Axis, \(distance) from the origin")
default:
    print("Not on an Axis")
}
