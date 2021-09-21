import Foundation

//Class Inheritance and Initialization
///All of a class’s stored properties—including any properties the class inherits from its superclass—must be assigned an initial value during initialization.
///Swift defines two kinds of initializers for class types to help ensure all stored properties receive an initial value. These are known as designated initializers and convenience initializers.

//Designted Initializer and Covinience initializers
///Designated initializers are the primary initializers for a class. A designated initializer fully initializes all properties introduced by that class and calls an appropriate superclass initializer to continue the initialization process up the superclass chain.

///Convenience initializers are secondary, supporting initializers for a class. You can define a convenience initializer to call a designated initializer from the same class as the convenience initializer with some of the designated initializer’s parameters set to default values. You can also define a convenience initializer to create an instance of that class for a specific use case or input value type.

//Initializer Inheritance and Overriding
///Swift subclasses don’t inherit their superclass initializers by default..
///If you want a custom subclass to present one or more of the same initializers as its superclass, you can provide a custom implementation of those initializers within the subclass.
///When you write a subclass initializer that matches a superclass designated initializer, you are effectively providing an override of that designated initializer. Therefore, you must write the override modifier before the subclass’s initializer definition. This is true even if you are overriding an automatically provided default initializer, as described in Default Initializers.

class Vehicle{
    var numberOfWheels = 0
    var description: String{
        return "\(numberOfWheels) wheel(s)"
    }
}

let vehicle = Vehicle()
print("vehicle: \(vehicle.description)")

class Bicycle: Vehicle{
    override init(){
        super.init()
        numberOfWheels = 2
    }
}

let bicycle = Bicycle()
print("Bycicle: \(bicycle.description)")// Bicycle: 2 wheel(s)


class Hoverboard: Vehicle{
    var color: String
    init(color: String) {
        self.color = color
        // super.init() implicitly called here
    }
    override var description: String{
        return "\(super.description) in a beautiful \(color)"
    }
}

let hoverboard = Hoverboard(color: "silver")
print("Hoverboard: \(hoverboard.description)") // Hoverboard: 0 wheel(s) in a beautiful silver


//Designated and Convenience initializers in action
class Food{
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init(){
        self.init(name: "[Unnamed]")
    }
}

let namedMeat = Food(name: "Bacon") // namedMeat's name is "Bacon"

let mysteryMeat = Food() // mysteryMeat's name is "[Unnamed]"
class RecipeIngredient: Food{
    var quantity: Int
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String){
        self.init(name: name, quantity: 1)
    }
}

let oneMysteryItem = RecipeIngredient()
let oneBacon = RecipeIngredient(name: "Bacon")
let sixEggs = RecipeIngredient(name: "Eggs", quantity: 6)


class ShoppingListItem: RecipeIngredient{
    var purchased = false
    var description: String{
        var output = "\(quantity) x \(name)"
        output += purchased ? " ✔" : " ✘"
        return output
    }
}


var breakfastlist = [
    ShoppingListItem(),
    ShoppingListItem(name: "Bacon"),
    ShoppingListItem(name: "Eggs", quantity: 6)
]
breakfastlist[0].name = "Orange Juice"
breakfastlist[0].purchased = true
for item in breakfastlist{
    print(item.description)
}
// 1 x Orange juice ✔
// 1 x Bacon ✘
// 6 x Eggs ✘
