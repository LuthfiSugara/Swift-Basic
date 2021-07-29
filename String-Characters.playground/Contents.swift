import Foundation

print("String Literal")
print("==============")
let someString = "This is String"

print("Multiline String")
print("==============")
let quotation = """
    The White Rabbit put on his spectacles.  "Where shall I begin,
    please your Majesty?" he asked.

    "Begin at the beginning," the King said gravely, "and go on
    till you come to the end; then stop."
    """
print("Special Characters")
print("==============")
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496

print("Initializing an empty String")
print("============================")
var emptyString = ""
var anotherEmptyString = String()

print("String Mutability")
print("=================")
var variableString = "This is String"
variableString += " and another String"

print("String are Value Types")
print("======================")
for i in "Cat!"{
    print(i)
}
let catCharacter: [Character] = ["C", "a", "t", "!"]
let catString = String(catCharacter)
print(catString)

print("Concatenating String and Character")
print("==================================")
let string1 = "Hello"
let string2 = " world!"
var hello = string1 + string2

print("String Interpolation")
print("====================")
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"

print("Unicode")
print("=========")
let eAcute: Character = "\u{E9}"
let combinedEAcute: Character = "\u{65}\u{301}"

print("Count Character")
print("===============")
var countCharacter = "a = b"
countCharacter.count

print("Accessing and Modifying a String")
print("=============================")
let greeting = "Morning Vibes!"
greeting[greeting.startIndex]

greeting[greeting.index(before: greeting.endIndex)]

greeting[greeting.index(after: greeting.startIndex)]

let index = greeting.index(greeting.startIndex, offsetBy: 4)
greeting[index]

print("Inserting and removing String")
print("=============================")
var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)

welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.index(before: welcome.endIndex))

let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)

print("Substring")
print("=========")
let exampleString = "Hello, world!"
let index1 = exampleString.firstIndex(of: ",") ?? exampleString.endIndex
let beginning = exampleString[..<index1]

let newString = String(beginning)

print("Prefix and Suffix Equality")
print("==========================")
let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]

var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        act1SceneCount += 1
    }
}
print("There are \(act1SceneCount) scenes in Act 1")

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")
