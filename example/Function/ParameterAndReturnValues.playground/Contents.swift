import Foundation

//Functions Withour Parameter
func sayHelloWorld() -> String{
    return "Hello World"
}
print(sayHelloWorld())


//Function with multiple parameter
func greet(person: String) -> String{
    return "Hello, " + person + "!"
}

func greetAgain(person: String) -> String{
    return "Hello again, " + person + ""
}

func greet(person: String, alreadyGreeting: Bool) -> String{
    if alreadyGreeting{
        return greetAgain(person: person)
    }else{
        return greet(person: person)
    }
}

greet(person: "Luthfi", alreadyGreeting: true) //Hello again Luthfi


//Function without return value
func sayHi(person: String){
    print("hello, " + person + "!")
}
sayHi(person: "Luthfi") //Hello Luthfi


//The return value of a function can be ignored when it's called
func printAndCount(string: String) -> Int{
    print(string)
    return string.count
}

func printWithoutCounting(string: String){
    let _ = printAndCount(string: string)
}

printAndCount(string: "hello, world") //hello, world and return a value of 12
printWithoutCounting(string: "hello, world") //hello world but doesn't return a value


//Function with multiple return values
func minMax(data: [Int]) -> (min: Int, max: Int){
    var currentMin = data[0]
    var currentMax = data[0]
    
    for value in data[1..<data.count]{
        if value < currentMin{
            currentMin = value
        }else if value > currentMax{
            currentMax = value
        }
    }
    
    return (currentMin, currentMax)
}

let bounds = minMax(data: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)") //min is -6 and max is 109


//Optional Tuple Return Types
func minMaxWithOptional(data: [Int]) -> (min: Int, max: Int)?{
    if data.isEmpty {return nil}
    var currentMin = data[0]
    var currentMax = data[0]

    for value in data[1..<data.count]{
        if value < currentMin{
            currentMin = value
        }else if value > currentMax{
            currentMax = value
        }
    }

    return (currentMin, currentMax)
}

let bounds2 = minMaxWithOptional(data: [])
print("min is \(bounds2.min) and max is \(bounds2.max)") //nil


//Functions with an implicit return
func hello(for name: String) -> String{
    "Hello, " + person + "!"
}
print(hello(for: "Luthfi")) // Hello Luthfi

func anotherHello(for name: String) -> String{
    return "Hello, " + name + "!"
}
print(anotherHello(for: "Luthfi"))
