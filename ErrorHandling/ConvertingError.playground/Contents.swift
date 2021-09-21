import Foundation

//Converting Errors to Optional Values
//You use try? to handle an error by converting it to an optional value.
//If an error is thrown while evaluating the try? expression, the value of the expression is nil.

func someThrowingFunction() throws -> Int {
    // ...
}

let x = try? someThrowingFunction()

let y: Int?
do {
    y = try someThrowingFunction()
} catch {
    y = nil
}


func fetchData() -> Data? {
    if let data = try? fetchDataFromDisk() { return data }
    if let data = try? fetchDataFromServer() { return data }
    return nil
}


//Disabling Error Propagation
//Sometimes you know a throwing function or method won’t, in fact, throw an error at runtime.
//On those occasions, you can write try! before the expression to disable error propagation and wrap the call in a runtime assertion that no error will be thrown.
let photo = try! loadImage(atPath: "./Resources/John Appleseed.jpg")
