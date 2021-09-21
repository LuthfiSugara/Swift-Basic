import Foundation

//Defining Model Classes for optional chaining
///You can use optional chaining with calls to properties, methods, and subscripts that are more than one level deep.
///This enables you to drill down into subproperties within complex models of interrelated types, and to check whether it’s possible to access properties, methods, and subscripts on those subproperties.

class Person{
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
