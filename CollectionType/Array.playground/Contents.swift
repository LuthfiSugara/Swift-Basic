import Foundation

//Empty Array
var someInts: [Int] = []
print("SomeInsts is of type [Int] with \(someInts.count) items")
someInts.append(3) // someInts now contains 1 value of type Int
someInts = []  // now someInts is Empty


//Creatig an Array with Default Value
var arr = [1,2,3]
arr[1]

var threeDoubles = Array(repeating: 0.0, count: 3)


// Creating an Array by Adding Two Arrays Together
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)

var sixDoubles = threeDoubles + anotherThreeDoubles


//Creating an Array with Array Literal
var shoppingList: [String] = ["Eggs", "Milk"]
var anotherShoppingList = ["Tea", "Coffee"]

//Access and Modifying an Array
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate", "Ice Cream", "Snack"]

var firstItem = shoppingList[0]

shoppingList[0] = "Six Eggs" // Use Subscript Syntax to change an exixting value
shoppingList
shoppingList[1...2] = ["Apple", "Banana"]
shoppingList


//Insert an Item into the array at specific index
shoppingList.insert("Syrup", at: 0)

//Remove an Item with specific Index
shoppingList.remove(at: 0)
shoppingList
shoppingList.removeLast() //the last index in array has been removed


//Iterating Over an Array
for item in shoppingList{
    print(item)
}

for (index, item) in shoppingList.enumerated() {
    print("Index \(index) : \(item)")
}
