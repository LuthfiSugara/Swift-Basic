import Foundation

let names = ["Anna", "Alex", "Brian", "Jack"]
//Example 1
for name in names{
    print(name)
}

//Example 2
for(index, name) in names.enumerated(){
    print("Index \(index) = \(name)")
}

//Example 3
for index in 1...5{
    print(index)
}

//Example 4
let base = 3
let power = 10
var answer = 1
for _ in 1...power{
    answer *= base
    print("answer \(answer) *= base \(base) = \(answer)")
}
print("\(base) to the power of \(power) is \(answer)")

//Example 5
//Use the stride(from: to: by:)
let minutes = 60
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval){
    print(tickMark)
}

//Example 7
//stride(from: through: by:)
let hours = 12
let hourInterval = 3
for tickMark in stride(from: 3, through: hours, by: hourInterval){
    print(tickMark)
}
