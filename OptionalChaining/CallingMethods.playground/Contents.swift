import Foundation

//Calling Method Through Optional Chaining

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
if john.residence?.printNumberOfRooms() != nil{
    print("It was possible to print the number of rooms.")
} else {
    print("It was not possible to print the number of rooms.")
}
// Prints "It was not possible to print the number of rooms."

let someAddress = Address()
if (john.residence?.address = someAddress) != nil {
    print("It was possible to set the address.")
} else {
    print("It was not possible to set the address.")
}
// Prints "It was not possible to set the address."
