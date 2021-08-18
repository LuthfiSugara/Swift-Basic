import Foundation

//Subscript
///Classes, structures, and enumerations can define subscripts, which are shortcuts for accessing the member elements of a collection, list, or sequence.
///You use subscripts to set and retrieve values by index without needing separate methods for setting and retrieval.

struct TimesTable{
    let multiplier: Int
    subscript(index: Int) -> Int{
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print("six time three is \(threeTimesTable[6])") //six time three is 18





