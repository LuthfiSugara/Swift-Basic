import Foundation

//Deinitialization in Action
class Bank{
    static var coinsInBank = 10_000
    static func distribute(coins numberOfCoinsRequest: Int) -> Int{
        let numberOfCoinsToVend = min(numberOfCoinsRequest, coinsInBank)
        coinsInBank -= numberOfCoinsToVend
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
print("A new player has join the game with \(playerOne!.coinsInPurse)")
print("There are now \(Bank.coinsInBank) coins left in bank")


playerOne!.win(coins: 2_000)
print("PlayerOne win 2000 coins & now has \(playerOne!.coinsInPurse) coins")
print("The Bank now only has \(Bank.coinsInBank) coins left")

playerOne = nil
print("PlayerOne has left the game")
print("The bank now has \(Bank.coinsInBank) coins")
