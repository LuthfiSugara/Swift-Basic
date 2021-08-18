import Foundation

//Type Method
///You can define methods that are called on the type itself. These kinds of methods are called type methods.
///You indicate type methods by writing the static keyword before the method’s func keyword.
///Classes can use the class keyword instead, to allow subclasses to override the superclass’s implementation of that method.
///Type methods are called with dot syntax, like instance methods. However, you call type methods on the type, not on an instance of that type.

struct LevelTracker{
    static var highestUnlockedLevel = 1
    var currentLevel = 1
    
    static func unlock(_ level: Int){
        if level > highestUnlockedLevel{
            highestUnlockedLevel = level
        }
    }
    
    static func isUnlocked(_ level: Int) -> Bool{
        return level <= highestUnlockedLevel
    }
    
    @discardableResult
    mutating func advance(to level: Int) -> Bool{
        if LevelTracker.isUnlocked(level){
            currentLevel = level
            return true
        }else{
            return false
        }
    }
}

class Player{
    var tracker = LevelTracker()
    let playerName: String
    
    func complete(level: Int) {
        LevelTracker.unlock(level + 1)
        tracker.advance(to: level + 1)
    }
    
    init(name: String) {
        playerName = name
    }
}

var player = Player(name: "Argyrios")
player.complete(level: 1)
print("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")

player = Player(name: "Beto")
if player.tracker.advance(to: 6){
    print("player is now level 6")
}else{
    print("level 6 hasn't been unlocked") //level 6 hasn't been unlocked
}

