import Foundation

//Closure are self-contained block of functionally that can be passed around and use in your code
//Closure in swift are similiar to blocks in C and ocjective-C and to lambdas in other programming languages
//Closure are take on three forms
//Global function are closures that have a name and dont capture any values
//Nested Function are closure that have a name and can capture values from their enclosing function
//Clusure expressions are unnamed closures writen in a lightweight syntax that can captures value from their surrounding context




//Closure Expression
//Swift standard library provides a method  called sorted(by:), which sort an array of values of a kown type
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

func backward(_ s1: String, _ s2: String) -> Bool{
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)


//Closure Expressio Syntax
reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 })
print(reversedNames)


//Inferring Type From Context
reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )
print(reversedNames)


//Implicit returns from single-Expression closure
reversedNames = names.sorted(by: { s1, s2 in s1 > s2 })
print(reversedNames)


//Shorthand argument names
reversedNames = names.sorted(by: {$0 > $1})
print(reversedNames)


//Operator Method
reversedNames = names.sorted(by: >)
print(reversedNames)
