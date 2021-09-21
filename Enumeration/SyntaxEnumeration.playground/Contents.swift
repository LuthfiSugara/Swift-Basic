import Foundation

//Enumemeration define general data type to a group of related values and allow you work with that values at the same time
enum CompasPoint{
    case north
    case south
    case east
    case west
}


var directionToHead = CompasPoint.west
directionToHead = .west
directionToHead = .east

print(directionToHead)

//Match value of enumeration with switch
enum Planet{
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let somePlanet = Planet.earth
switch somePlanet{
case .earth:
    print("Mostly harmless")
default:
    print("Not a safe place for humans")
}
