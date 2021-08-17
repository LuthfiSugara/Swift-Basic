import Foundation

//Stored Properties will save constant or variable value as part of instance
//Only available by class and struct

struct FixedLengthRange{
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
//rangeOfFourItems.firstValue = 6 //error cause constant


//Lazy Property useful when first value need complex setting, so you can't do that until needed
class DataImporter{
    var filename = "data.txt"
}

class DataManager{
    lazy var importer = DataImporter()
    var data: [String] = []
}

let manager = DataManager()
manager.data.append("some data")
manager.data.append("Another data")
print(manager.importer.filename)
