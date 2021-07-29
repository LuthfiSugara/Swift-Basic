import Foundation

print("Array")
print("=============")
var someInts: [Int] = []
print("SomeInts is of type [Int] with \(someInts.count) items")
someInts.append(3)

var anotherArray = Array(repeating: 2, count: 3)

var shoppingList: [String] = ["Egg", "Snack"]
shoppingList[1]
shoppingList.append("Milk")
shoppingList += ["Chocolate"]

shoppingList[1...2] = ["Banana", "Apple"]
shoppingList.insert("Syrup", at: 0)

shoppingList.remove(at: 0)
shoppingList.removeLast()

print("Iterating Over an Array")
print("=====================")
for item in shoppingList{
    print(item)
}

for (index, value) in shoppingList.enumerated() {
    print("Item \(index) : \(value)")
}


print("Set")
print("=======")
var letter = Set<Character>()
letter.insert("a")
print(letter)


print("Creating Set with Array Literal")
print("===============================")
var favoriteGenre: Set<String> = ["Rock", "Jazz", "Pop"]
favoriteGenre.remove("Jazz")
favoriteGenre.insert("Metal")
favoriteGenre.contains("Rock")


print("Dictionary")
print("==================")
var airports: [String: String] = ["XYZ": "Soekarno Hatta", "ABC": "KutaiKartanegara"]
airports["XYZ"]

airports.updateValue("Kualanamu", forKey: "ABC")
airports
airports["ABC"] = "International Airport"
airports

airports.removeValue(forKey: "ABC")
airports

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)")
}
