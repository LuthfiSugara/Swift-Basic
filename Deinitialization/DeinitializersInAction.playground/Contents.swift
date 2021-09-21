import Foundation

//Deinitialization
///A deinitializer is called immediately before a class instance is deallocated.
///You write deinitializers with the deinit keyword, similar to how initializers are written with the init keyword.
///Deinitializers are only available on class types.
class Bank{
    static var coinsInBank = 10_000
    static func distribute(coins numberOfCoinsRequested: Int) -> Int{
        let numberOfCoinsToVend = min(numberOfCoinsRequested, coinsInBank)
        coinsInBank -= numberOfCoinsRequested
        return numberOfCoinsToVend
    }
    static func receive(coins: Int){
        coinsInBank += coins
    }
}

class Player{
    var coinsInPurse: Int
    init(coins: Int) {
        coinsInPurse = Bank.distribute(coins: coins)
    }
    func win(coins: Int) {
        coinsInPurse += Bank.distribute(coins: coins)
    }
    deinit {
        Bank.receive(coins: coinsInPurse)
    }
}

var playerOne: Player? = Player(coins: 100)
print("A new player has joined the game wiht \(playerOne!.coinsInPurse)")
// Prints "A new player has joined the game with 100 coins"
print("There are now \(Bank.coinsInBank) coins left in the Bank")
// Prints "There are now 9900 coins left in the bank"


playerOne!.win(coins: 2_000)
print("PlayerOne won 2000 coins and now has \(playerOne!.coinsInPurse)")
// Prints "PlayerOne won 2000 coins & now has 2100 coins"
print("The bank now only has \(Bank.coinsInBank) coins left")
// Prints "The bank now only has 7900 coins left"

playerOne = nil
print("PlayerOne has left the game")
// Prints "PlayerOne has left the game"
print("The bank now has \(Bank.coinsInBank) coins")
// Prints "The bank now has 10000 coins"
