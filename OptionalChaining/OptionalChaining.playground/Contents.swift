import Foundation

//Optional Chaining
///Optional chaining is a process for querying and calling properties, methods, and subscripts on an optional that might currently be nil.
///If the optional contains a value, the property, method, or subscript call succeeds; if the optional is nil, the property, method, or subscript call returns nil.
///Multiple queries can be chained together, and the entire chain fails gracefully if any link in the chain is nil.


//Optional chaining as an alternative to forced unwrapping
///You specify optional chaining by placing a question mark (?) after the optional value on which you wish to call a property, method or subscript if the optional is non-nil.
///This is very similar to placing an exclamation point (!) after an optional value to force the unwrapping of its value.
///The main difference is that optional chaining fails gracefully when the optional is nil, whereas forced unwrapping triggers a runtime error when the optional is nil.
class Person{
    var residence: Residence?
}

class Residence{
    var numberOfRooms = 1
}

let john = Person()
//let roomCount = john.residence!.numberOfRooms // this triggers a runtime error

if let roomCount = john.residence?.numberOfRooms{
    print("Jhon's residence has \(roomCount) room(s).")
}else{
    print("Unable to retreive the number of rooms")
}
// Prints "Unable to retrieve the number of rooms."
