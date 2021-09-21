import Foundation

let greeting = "hello, world!, Bro"
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<index]

let newString = String(beginning) // Convert the result to a String for long-term storage


//Comparing String
let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
    print("true")
}else{
    print("false")
}
