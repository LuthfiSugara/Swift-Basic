import Foundation

//Trailing closure are writen after the function calls the parentheses, even though they are still argument to the function
//When use trailing closure syntax, don't write a label argument for the closure as part of the functional


func someFunctionThatTakesAClosure(closure: () -> Void){
    //Function body
}

//call this function without using a trailing closure
someFunctionThatTakesAClosure(closure: {
    //closure body
})


//call this function with a trailing closure instead
someFunctionThatTakesAClosure(){
    //closure body
}


//CLosure in the previously module is part of closure expression syntax, on the code closure is writen outside the brackets method sorted(by:) as trailing closure
//reversedNames = names.sorted() { $0 > $1 }
//If Expression Closure used as argument function and set as trailing closure, no need to write a pair of brackets ()
//reversedNames = names.sorted { $0 > $1 }

let digitNames = [
    0: "Zero", 1: "One", 2: "Two",   3: "Three", 4: "Four",
    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
 ]

let numbers = [16, 58, 510]

let strings = numbers.map { (number) -> String in
    var number = number
    var output = ""
    repeat{
        output = digitNames[number % 10]! + output
        number /= 10
    }while number > 0
    return output
}
print("strings bertipe data array string dan memiliki nilai \(strings).")
