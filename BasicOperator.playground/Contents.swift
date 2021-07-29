import Foundation

print("Assignment Operator")
print("===================")
let a = 10
var b = 5
b = a

print("Arithmetic Operator")
print("===================")
10 + 5
10 - 5
10 * 5
10 / 5
"Hello " + "World"
10 % 5

print("Unary Minus & Plus Operator")
print("===================")
let three = 3
let minusThree = -three
let plusThree = -three

let minusSix = -6
let alsoMinusSix = +minusSix

print("Compound Assignment Operator")
print("===================")
var c = 1
c += 2

print("Comparison Operator")
print("===================")
(1, "zebra") == (2, "apple")


print("Ternary Conditional Operator")
print("===================")
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)

print("Nil Coalescing Operator")
print("===================")
let defaultColorName = "red"
var userDefinedColorName: String?
var colorNameToUse = userDefinedColorName ?? defaultColorName


print("Range Operator")
print("===================")
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

print("Logical Operator")
print("================")
let status = true
var data: String?
if status == true {
    print("OK")
}else if status != true{
    print("Something Wrong")
}else if status == true && data != nil{
    print("Data Not Nil")
}else{
    print("Data Nil")
}
