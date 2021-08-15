import Foundation

//Continue
//The continue statement tells a loop to stop what it's doing and start again at the beginning of the next iteration through the loop
let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "i", "u", "e", "o", " "]
for character in puzzleInput{
    if charactersToRemove.contains(character){
        continue
    }
    puzzleOutput.append(character)
}
print(puzzleOutput)


//Break
//The break statement ends execution of an entire control flow statement immediately
//Can used inside a switch or loop statement when you want to terminate the execution of the switch or loop statement
let character: Character = "a"
switch character {
case "a", "i", "u", "e", "o":
    print("\(character) is vocal")
    break
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(character) is consonant")
default:
    break
}


//Fallthrough
//Used to keep running the next case, so thath switch does not only execute one case
let integerToDescribe = 5
var description = "The number \(integerToDescribe)"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer"
}
