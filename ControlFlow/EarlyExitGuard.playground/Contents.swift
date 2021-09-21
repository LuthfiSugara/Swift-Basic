import Foundation

//Guard is a atatement similiar to the if statement
//which will execute a statement that depends on a boolean value
func greet(person: [String: String]){
    guard let name = person["name"] else{
        return
    }
    
    print("Hello \(name)")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    
    print("I hope the weather is nice in \(location)")
    
    guard let valid = person["valid"] else {
        print("Nil")
        return
    }
    
    print("Not nil \(valid)")
}

greet(person: ["name": "jhon"])
greet(person: ["name": "Jane", "location": "Cupertino"])
greet(person: ["name": "Jack", "location": "California", "valid": "Point"])
greet(person: ["name": "Jack", "location": ""])
