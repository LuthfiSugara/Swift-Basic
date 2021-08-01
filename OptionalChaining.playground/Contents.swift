import Foundation

//Oprional chaining as an alternaive to forced unwrapping
class Person{
    var residence: Residence?
}

class Residence{
    var numberOfRooms = 1
}

let jhon = Person()

//let roomCount = jhon.residence!.numberOfRooms
// error : because no there's no residence value to unwrap

jhon.residence = Residence()
if let roomCount = jhon.residence?.numberOfRooms{
    print("John's residence has \(roomCount) room(s)")
}else{
    print("Unable to retreive the number of rooms")
}


//Defining Model Classes for Optional Chaining
class Person2{
    var residence: Residence2?
}

class Residence2{
    var rooms: [Room] = []
    var numberOfRooms: Int{
        return rooms.count
    }
    
    subscript(i: Int) -> Room{
        get{
            return rooms[i]
        }
        set{
            rooms[i] = newValue
        }
    }
    
    func printNumberOfRooms() {
        print("The number of rooms is \(numberOfRooms)")
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


//Accessing Properties Through Optional Chaining
let jhon2 = Person2()
if let roomCount = jhon.residence?.numberOfRooms{
    print("Jhon's residence has \(roomCount) rooms(s)")
}else{
    print("Unable to retrieve the number of rooms")
}

let someAddress = Address()
someAddress.buildingNumber = "29"
someAddress.street = "Aracia Road"
jhon2.residence?.address = someAddress


//Calling Methods Through Optional Chaining
//func printNumberOfRooms(){
//    print("The number of rooms is \(number)")
//}
