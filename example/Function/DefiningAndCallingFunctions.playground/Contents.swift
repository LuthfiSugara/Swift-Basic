import Foundation

func greet(person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}

greet(person: "Luthfi") //Hello Luthfi
greet(person: "Sugara") //Hello Sugara

func greetAgain(person: String) -> String{
    return "Hello again, " + person "!"
}

greetAgain(person: "Luthfi") //Hello again Luthfi
