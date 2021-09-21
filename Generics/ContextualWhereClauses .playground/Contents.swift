import UIKit

//You can write a generic where clause as part of a declaration that doesn’t have its own generic type constraints, when you’re already working in the context of generic types. For example, you can write a generic where clause on a subscript of a generic type or on a method in an extension to a generic type. The Container structure is generic, and the where clauses in the example below specify what type constraints have to be satisfied to make these new methods available on a container.

extension Container {
    func average() -> Double where Item == Int {
        var sum = 0.0
        for index in 0..<count {
            sum += Double(self[index])
        }
        return sum / Double(count)
    }
    func endsWith(_ item: Item) -> Bool where Item: Equatable {
        return count >= 1 && self[count-1] == item
    }
}
let numbers = [1260, 1200, 98, 37]
print(numbers.average())
// Prints "648.75"
print(numbers.endsWith(37))
// Prints "true"

extension Container where Item == Int {
    func average() -> Double {
        var sum = 0.0
        for index in 0..<count {
            sum += Double(self[index])
        }
        return sum / Double(count)
    }
}
extension Container where Item: Equatable {
    func endsWith(_ item: Item) -> Bool {
        return count >= 1 && self[count-1] == item
    }
}
