import Foundation

//Chaining on Mehthod with Optional Return Values
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

if let johnsStreet = john.residence?.address?.street {
    print("John's street name is \(johnsStreet).")
} else {
    print("Unable to retrieve the address.")
}
// Prints "Unable to retrieve the address."


let johnsAddress = Address()
johnsAddress.buildingName = "The Larches"
johnsAddress.street = "Laurel Street"
johnsAddress.buildingNumber = "29"
john.residence?.address = johnsAddress

if let johnsStreet = john.residence?.address?.street {
    print("John's street name is \(johnsStreet).")
} else {
    print("Unable to retrieve the address.")
}
// Prints "John's street name is Laurel Street."



if let buildingIdentifier = john.residence?.address?.buildingIdentifier(){
    print("John's building identifier is \(buildingIdentifier).")
}
// Prints "John's building identifier is The Larches."



if let beginsWithThe =
    john.residence?.address?.buildingIdentifier()?.hasPrefix("The") {
    if beginsWithThe {
        print("John's building identifier begins with \"The\".")
    } else {
        print("John's building identifier doesn't begin with \"The\".")
    }
}
// Prints "John's building identifier begins with "The"."
