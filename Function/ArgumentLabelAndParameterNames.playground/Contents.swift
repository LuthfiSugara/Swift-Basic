import Foundation

//Specifying argument labels
func greet(person: String, from hometown: String) -> String{
    return "Hello \(person)! Glad you could visit from \(hometown)"
}

greet(person: "Luthfi", from: "Indonesia")


//Omitting argument label
//if don't want an argument label for parameter, write an underscore (_)
func someFunction(_ firstParameter: Int, secondParameter: Int) -> Int{
    return firstParameter + secondParameter
}

someFunction(1, secondParameter: 2) //3

//Default parameter values
func anotherSomeFunction(firstParameter: Int, secondParameter: Int = 12) -> Int{
    return firstParameter + secondParameter
}

anotherSomeFunction(firstParameter: 1, secondParameter: 2) //3
anotherSomeFunction(firstParameter: 1) //13


//Variadic parameter
//A variadic parameter accepts zero or more values of a specified type
//The parameter can be passed a varying number of input values when the function is called
//A variadic parameter with a name of numbers and a type of Double...is made available within the function's body as a constant array called numbers of type [Double]
func arithmeticMean(_ numbers: Double...) -> Double{
    var total: Double = 0
    for number in numbers{
        total += number
    }
    return total / Double(numbers.count)
}

arithmeticMean(1, 2, 3, 4, 5) //3.0
arithmeticMean(3, 8.25, 18.75) //10.0

func combineString(_ strings: String...) -> String{
    var sentence = ""
    for string in strings{
        sentence += string + " "
    }
    return sentence
}

combineString("luthfi", "sugara", "ios", "developer")


//In-Out parameters
//Function parameter are constant by default
//Trying to change the value of a function parameter from witihin the body od that function results in a compile-time-error
//This mean you can't change the value of a parameter by mistake
//If you want a function to modify a parameters value, define that parameter as an in-out parameter instead
//An in-out parameter has a value that's passed in to the function, is modified by the function, and is passed back out of the function to replcase the original value
//You can only pass a varibale as the argument for an in-out parameter
//You can't pass a constant or literal value as the argument, because constant and literal can't be modified
//You place an ampersand (&) directly before the varibale name when you pass it as an argument to in-out paramater, to indicate that can be modified by the function

func swapTwoInts(_ a: inout Int, _ b: inout Int){
    let temp = a
    a = b
    b = temp
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt) and anotherInt is now \(anotherInt)") //someInt is now 107 and anotherInt is now 3
