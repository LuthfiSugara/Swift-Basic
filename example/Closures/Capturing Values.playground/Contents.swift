import Foundation

//Closure can capture variable and constant from the surrounding context when it is defined
//Closure can refer and moduify values from the body

func makeIncrementer(forIncrementer amount: Int) -> () -> Int{
    var runningTotal = 0
    func incrementer() -> Int{
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrementer: 10)
print(incrementByTen())
print(incrementByTen())
print(incrementByTen())

//Call original incrementer (incrementByTen) back will cause value of the variable runningTotal increase however that wouldn't influence captured variable by incrementBySeven
let incrementBySeven = makeIncrementer(forIncrementer: 7)
print(incrementBySeven())
