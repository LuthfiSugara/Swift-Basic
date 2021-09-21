import Foundation

//Assertions
//this function an expression that evaluates to true or false and a message to display if the result of the condition is false
let age = -3
assert(age >= 0, "A person's age can't be less than zero.")
assert(age >= 0)


//Preconditions
//Use Precondition whenever a condition has a potential to be false , but must definietly be true for your code to continue execution
let index = -3
precondition(index > 0, "Index must be greater than zero.")
