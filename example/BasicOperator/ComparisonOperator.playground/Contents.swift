import Foundation

1 == 1 // true
2 != 1 // true
2 > 1 // true
2 < 1 // false
2 <= 3 // true
2 >= 3 // false

(2, "Aplle") < (1, "zebra") // false


//Ternary Operator
let contentHeight = 40
let hasHeader = false
let rowHeight = contentHeight + (hasHeader ? 50 : 20) //90


//Nil Coalesing Operator
let defaultColorName = "red"
var userDefinedColorName: String?

var colorNameToUse = userDefinedColorName ?? defaultColorName //userDefinedColorName is nil, so ColorNameToUse is set to the default of red
