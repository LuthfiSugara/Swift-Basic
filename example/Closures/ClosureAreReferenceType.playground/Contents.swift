import Foundation

//Everytime you set a function or closure to vatiable or constant, actualli you already referred it to the function or closure.

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
   var runningTotal = 0
   func incrementer() -> Int {
       runningTotal += amount
       return runningTotal
   }
   return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
print(incrementByTen())
print(incrementByTen())
print(incrementByTen())

let incrementBySeven = makeIncrementer(forIncrement: 7)
print(incrementBySeven())

print(incrementByTen())
print(incrementBySeven())


let alsoIncrementByTen = incrementByTen
print(alsoIncrementByTen())
print(incrementByTen())
