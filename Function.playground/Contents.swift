import Foundation

print("Function")
print("==========")
func greet(person : String) -> String{
    let greeting = "Hello" + person + "!"
    return greeting
}

greet(person: "Luthfi")

print("Function with multiple parameter")
print("=================================")
func sayHi(person: String, alreadyGreeted: Bool) -> String{
    if alreadyGreeted {
        return "person \(person)"
    }else{
        return "person \(person)"
    }
}

print(sayHi(person: "Tim", alreadyGreeted: true))

print("Funciton Type")
print("==============")
func addTwoInt(_ a:Int, _ b:Int) -> Int{
    return a + b
}

func multiplyTwoInt(_ a: Int, _ b: Int) -> Int{
    return a * b
}

addTwoInt(2, 2)
multiplyTwoInt(5, 5)

print("Function Type as parameter Types")
print("================================")
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int){
    print("Result: \(mathFunction(a,b))")
}

printMathResult(addTwoInt, 3, 3)


print("Function Type as return Type")
print("============================")
func stepForward(_ input: Int) -> Int{
    return input + 1
}

func stepBackward(_ input: Int) -> Int{
    return input + 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int{
    return backward ? stepForward : stepBackward
}

print("Nested Function")
print("================")
func chooseStepFunctionNested(backward: Bool) -> (Int) -> Int{
    func stepForward(input: Int) -> Int {return input + 1}
    func stepBackward(input: Int) -> Int {return input - 1 }
    return backward ? stepBackward : stepForward
}

var currentValue = -4
let moveNearerToZero = chooseStepFunctionNested(backward: currentValue > 0)

while currentValue != 0 {
    print("\(currentValue)....")
    currentValue = moveNearerToZero(currentValue)
}
print("zero")
