import Foundation

//Use case iterable to get all data in enumeraiton
//To activated it write :CaseIterable after enumeration name

enum Beverage: CaseIterable{
    case coffee, tea, juice
}

for beverage in Beverage.allCases{
    print(beverage)
}


//Associate Value
//Have different data type, Example enum {1, 2, "Luthfi"}
//Value made base on variable and constant
//Variation and can be state every time
enum Barcode{
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(1, 12345, 123123, 9)
productBarcode = Barcode.qrCode("Luthfi Sugara")

switch productBarcode{
case let .upc(numberSystem, manufacturer, product, check):
    print("UPC : \(numberSystem), \(manufacturer), \(product), \(check)")
case let .qrCode(productCode):
    print("QR code: \(productCode)")
}


//Raw value
//Data TYpe must be same, Example enum {1, 4, 3}
//Value is already filled in
//Value same

enum Planet: Int{
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

enum CompassPoint: String{
    case north, south, easr, west
}

let earthsOrder = Planet.earth.rawValue
print("earths Order Value is : \(earthsOrder)")

let sunsetDirection = CompassPoint.west.rawValue
print("sunset directions is : \(sunsetDirection)")


//Initializing from a Raw Value
let positionToFind = 3
if let somePlanet = Planet(rawValue: positionToFind){
    switch somePlanet {
    case .earth:
        print("Mostly harmless")
    default:
        print("Not a safe place for humans")
    }
}else{
    print("There isn't planet in the position \(positionToFind)")
}
