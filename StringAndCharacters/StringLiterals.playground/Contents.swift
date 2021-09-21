import Foundation

//String Literal
let someString = "Some String Literal Value"

//Multiline String Literals
let quotation = """
    The White Rabbit put on his spectacles.  "Where shall I begin,
    please your Majesty?" he asked.

    "Begin at the beginning," the King said gravely, "and go on
    till you come to the end; then stop."
"""


//Special Characters in String Literals
// (\0) null character
// \\ backslash
// \t horixzontal tab
// \n new line
// \r carriage return
// \" double quotation mark
// \' single quotation mark

// Unicode Scalar value
let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496


//Empty String
var emptyString = ""
var anotherEmptyString = String()
