import Foundation

//Closed Range Operator
for index in 1...5{
    print("\(index)")
}

//Half Open Range Operator
let count = 5
for i in 1..<count{
    print("\(i)")
}

//One Sided Ranges
let names = ["a", "b", "c", "d", "e"]
for name in names[2...]{
    print(name)
}

print("\n")
for name in names[...2]{
    print(name)
}
