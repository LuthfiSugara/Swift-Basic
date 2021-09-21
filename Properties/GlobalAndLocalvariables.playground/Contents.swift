import Foundation

//Global variables are variables that are defined outside of any function, method, closure, or type context.
//Local variables are variables that are defined within a function, method, or closure context.
//You can apply a property wrapper to a local stored variable, but not to a global variable or a computed variable.

func someFunction() {
    @SmallNumber var myNumber: Int = 0

    myNumber = 10
    // now myNumber is 10

    myNumber = 24
    // now myNumber is 12
}

