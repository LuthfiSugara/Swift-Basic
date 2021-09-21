import Foundation

enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(Needed: Int)
    case outOfStock
}

struct Item {
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
    
    func vend(itemName name: String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.outOfStock
        }
        
        guard item.count > 0 else {
            throw VendingMachineError.insufficientFunds(Needed: item.price - coinsDeposited)
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
    try vendingMachine.vend(itemName: snackName)
}

//struct PurchasedSnack{
//    let name: String
//    init(name: String, vendingMachine: VendingMachine) throws {
//        try vendingMachine.vend(itemName: name)
//        self.name = name
//    }
//}

//Handling Error Using Do-Catch
var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 8

do{
  try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
    print("Success")
}catch VendingMachineError.invalidSelection{
    print("Invalid Selection")
}catch VendingMachineError.outOfStock {
    print("Out Of Stock")
}catch VendingMachineError.insufficientFunds(let coinsNeeded){
    print("Insuffiecient funds, Please insert an additional \(coinsNeeded) coins")
}catch{
    print("Unexpected Error")
}
