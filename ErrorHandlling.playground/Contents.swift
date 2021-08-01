import Foundation

//Propagating error using throwing functions
enum VendingMachineError: Error{
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}

struct Item{
    var price: Int
    var count: Int
}

class VendingMachine{
    var inventory = [
        "Candy Bar": Item(price: 12, count: 7),
        "Chips": Item(price: 10, count: 4),
        "Pretzels": Item(price: 7, count: 11)
    ]
    var coinsDeposited = 0
    
    func vend(itemNamed name: String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.outOfStock
        }
        
        guard item.count > 0 else {
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }
        
        coinsDeposited -= item.price
        
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        
        print("Dispensing \(name)")
    }
}


let favoriteSnack = [
    "Alice": "Chips",
    "Bob": "Licorice",
    "Eve": "Pretzels"
]

func buyFavoriteSnack(person: String, vendingMachine: VendingMachine) throws {
    let snackName = favoriteSnack[person] ?? "Candy Bar"
    try vendingMachine.vend(itemNamed: snackName)
}


struct PurchasedSnack{
    let name: String
    init(name: String, vendingMachine: VendingMachine) throws {
        try vendingMachine.vend(itemNamed: name)
        self.name = name
    }
}


//Handling Error using Do-Catch
var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 8
do {
    try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
    print("Success")
}catch VendingMachineError.invalidSelection{
    print("Invalid Selection")
}catch VendingMachineError.outOfStock{
    print("Out Of Stock")
}catch VendingMachineError.insufficientFunds(let coinsNeeded){
    print("Insufficient funds, Please insert an additional \(coinsNeeded) coins")
}catch{
    print("Unexpected Error!")
}


func eat(item: String) throws {
    do {
        try vendingMachine.vend(itemNamed: item)
    } catch VendingMachineError.invalidSelection, VendingMachineError.insufficientFunds, VendingMachineError.outOfStock {
        print("Invalid selection, out of stock, or not enough money.")
    }
}


//Creating Error to Optional Value
func someThrowingFunction() throws -> Int{
    return 0
}

let x = try? someThrowingFunction()

let y: Int?
do{
    y = try someThrowingFunction()
}catch{
    y = nil
}


//func fetchData() -> Data?{
//    if let data = try? fetchDataFromDisk() { return data }
//    if let data = try? fetchDataFromServer() { return data }
//    return nil
//}


//Disabling Error Propagation
//let photo = try! loadingImage(atPath: "Resource/error.png")


//Specifying cleanup action
//func processFile(filename: String) throws {
//    if exists(filename) {
//        let file = open(filename)
//        defer {
//            close(file)
//        }
//        while let line = try file.readline() {
//            // Work with the file.
//        }
//        // close(file) is called here, at the end of the scope.
//    }
//}

