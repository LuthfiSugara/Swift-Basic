import Foundation

//FUndamental Set Operations
let oddDigits: Set = [1, 3, 5, 7, 9, 0, 4]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

// union is to make a new Set by retrieving all data from both set value
print("oddDigits.union(evenDigits) : \(oddDigits.union(evenDigits).sorted())")

//intersection is to make a new set base on the same value from both set
print("oddDigits.intersection(evenDigits) : \(oddDigits.intersection(evenDigits).sorted())")

//subtracting is to make a new set base on unequal values in both set
print("oddDigits.substracting(singleDigitPrimeNumbers) : \(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())")

//symmetricDifference is to make a new set by retrieving all data from both set, except same value is not entered into this new set
print("oddDIgits.symmetricDIfference(singleDigitPrimeNumbers) : \(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())")


//Set MemberShip and Equality
let houseAnimals: Set = ["dog", "cat"]
let farmAnimals: Set = ["cow", "chicken", "goat", "dog", "cat"]
let cityAnimals: Set = ["bird", "mouse"]

var animal = farmAnimals == houseAnimals

//isSubset is to determine whether all values of the Set are in the specified Set
print("houseAnimals.isSubset(of: farmAnimals) : \(houseAnimals.isSubset(of: farmAnimals))")

//isSuperset is to determine whether a Set contains all the values in particular Set
print("farmAnimals.isSuperset(of: houseAnimals) : \(farmAnimals.isSuperset(of: houseAnimals))")

//isDisjoint is to determine whether two data do not have the same value
print("farmAnimals.isDisjoint(of: cityAnimals) : \(farmAnimals.isDisjoint(with: cityAnimals))")
