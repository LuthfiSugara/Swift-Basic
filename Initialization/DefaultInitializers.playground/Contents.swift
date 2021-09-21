import Foundation

//Default Initilizers
//Swift provides a default initializer for any structure or class that provides default values for all of its properties and doesn’t provide at least one initializer itself.
//The default initializer simply creates a new instance with all of its properties set to their default values.
class ShoppingListItem{
    var name: String?
    var quantity = 1
    var purchased = false
}
var item = ShoppingListItem()


//Memberwiae initializers for structure type
///Structure types automatically receive a memberwise initializer if they don’t define any of their own custom initializers.
///Unlike a default initializer, the structure receives a memberwise initializer even if it has stored properties that don’t have default values.
struct Size{
    var width = 0.0, height = 0.0
}
let twoByTwo = Size(width: 2.0, height: 2.0)

let zeroByTwo = Size(height: 2.0)
print(zeroByTwo.width, zeroByTwo.height) //Points 0.0 2.0

let zeroByZero = Size()
print(zeroByZero.width, zeroByZero.height) //Points 0.0 0.0
