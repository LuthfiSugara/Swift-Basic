import Foundation

//CLosure is said to be a function esacape when closure passed as argument to another function
//When declaring a function with parameter a closure, add keyword @escaping before dataType parameter to indicate that is a closure escaping
//One of the way to to make closure escaping by save define variable out of function

var completionHandlers: [() -> Void] = []

func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void){
    completionHandlers.append(completionHandler)
}

func SomeFunctionWithNoneEscapingClosure(closure: () -> Void){
    closure()
}

class SomeClass{
    var x = 10
    func doSomething(){
        someFunctionWithEscapingClosure { self.x = 100 }
        SomeFunctionWithNoneEscapingClosure { x = 200 }
    }
}

let instance = SomeClass()

//Refrence without escaping closure
instance.doSomething()
print(instance.x)

//Reference with escaping closure
completionHandlers.first?()
print(instance.x)
