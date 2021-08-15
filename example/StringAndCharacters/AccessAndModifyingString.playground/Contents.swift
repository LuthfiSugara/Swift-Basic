import Foundation

let greeting = "Good Morning"
greeting[greeting.startIndex] // G
greeting[greeting.index(before: greeting.endIndex)] // g
greeting[greeting.index(after: greeting.startIndex)] // o
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index] // r

// greeting[greeting.endIndex] // Error
// greeting.index(after: greeting.endIndex) // Error

// Use indicies property to access all of the indices of individual characters in a string
for index in greeting.indices {
    print("\(greeting[index]) ", terminator: "")
}


//Insert
var welcome = "Hello"
welcome.insert("!", at: welcome.endIndex)

welcome.insert(contentsOf: " there", at: welcome.index(before: welcome.endIndex)) // hello there!

//Remove
welcome.remove(at: welcome.index(before: welcome.endIndex)) //hello there
let range = welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex
welcome.removeSubrange(range)
