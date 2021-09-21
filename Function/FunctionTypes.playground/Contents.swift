import Foundation

func addTwoInts(_ a: Int, _ b: Int) -> Int{
    return a + b
}

func multiplyTwoInts(_ a: Int, _ b: Int) -> Int{
    return a * b
}

//Using Function Types
var mathFunction: (Int, Int) -> Int = addTwoInts
mathFunction(2,3) //5
mathFunction = multiplyTwoInts
mathFunction(3,3)//9


//Funtion type as parameter type
func printMathFunction(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int){
    print(mathFunction(a,b))
}
printMathFunction(addTwoInts, 3, 3) //9


//Function type as return types
func stepForward(_ input: Int) -> Int{
    return input + 1
}

func stepBackward(_ input: Int) -> Int{
    return input - 1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int{
    return backward ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)

print("Counting to zero:")
while currentValue != 0{
    print("\(currentValue)...")
    currentValue = moveNearerToZero(currentValue)
}
print("zero")


//Nested Function
func chooseStepFunction2(backward2: Bool) -> (Int) -> Int{
    func stepForward2(input: Int) -> Int { return input + 1 }
    func stepBackward2(input: Int) -> Int { return input - 1 }
    return backward2 ? stepForward2 : stepBackward2
}

var currentValue2 = -4
let moveNearerToZero2 = chooseStepFunction2(backward2: currentValue2 > 0)
while currentValue2 != 0{
    print("\(currentValue2)...")
    currentValue2 = moveNearerToZero2(currentValue2)
}
print("zero")
