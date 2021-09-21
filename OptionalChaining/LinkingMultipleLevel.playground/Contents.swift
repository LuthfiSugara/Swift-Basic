import Foundation

//Linking Multiple Level of Chaining
///You can link together multiple levels of optional chaining to drill down to properties, methods, and subscripts deeper within a model.
///However, multiple levels of optional chaining don’t add more levels of optionality to the returned value.

//To Put It Another Way
///If the type you are trying to retrieve isn’t optional, it will become optional because of the optional chaining.
///If the type you are trying to retrieve is already optional, it will not become more optional because of the chaining.

//Therefore
///If you try to retrieve an Int value through optional chaining, an Int? is always returned, no matter how many levels of chaining are used.
///Similarly, if you try to retrieve an Int? value through optional chaining, an Int? is always returned, no matter how many levels of chaining are used.

class Person {
    var residence: Residence?
}

class Residence{
    var rooms: [Room] = []
    var numberOfRooms: Int{
        return rooms.count
    }
    subscript(i: Int) -> Room{
        get{
            return rooms[i]
        }set{
            rooms[i] = newValue
        }
    }
    
    func printNumberOfRooms(){
        print("The number of rooms \(numberOfRooms)")
    }
    var address: Address?
}

class Room{
    let name: String
    init(name: String) {
        self.name = name
    }
}

class Address{
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if let buildingNumber = buildingNumber, let street = street{
            return "\(buildingNumber) \(street)"
        }else if buildingName != nil{
            return buildingName
        }else{
            return nil
        }
    }
}

let john = Person()
if let johnsStreet = john.residence?.address?.street{
    print("John's street name is \(johnsStreet).")
} else {
    print("Unable to retrieve the address.")
}
// Prints "Unable to retrieve the address."

let johnsAddress = Address()
johnsAddress.buildingName = "The Larches"
johnsAddress.street = "Laurel Street"
john.residence?.address = johnsAddress

if let johnsStreet = john.residence?.address?.street {
    print("John's street name is \(johnsStreet).")
} else {
    print("Unable to retrieve the address.")
}
// Prints "John's street name is Laurel Street."

