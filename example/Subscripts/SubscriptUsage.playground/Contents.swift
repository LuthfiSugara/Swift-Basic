import Foundation

//Subscript Usage
///The exact meaning of “subscript” depends on the context in which it’s used.
///Subscripts are typically used as a shortcut for accessing the member elements in a collection, list, or sequence.
///You are free to implement subscripts in the most appropriate way for your particular class or structure’s functionality.

var numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
numberOfLegs["bird"] = 2

print("NumberOfLegs \(numberOfLegs)")
