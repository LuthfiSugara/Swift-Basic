import Foundation

//AutoClosure is closure which is automatically generated to discard expressions passed as arguments to a function
//Closure won't take any argument
//When closure called, it will return expression value wrapped in it
//Autoclosure is possible to delay evaluation process, so the code will not run until you call the closure

var customersInline = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
print(customersInline.count)

let customerProvider = { customersInline.remove(at: 0) }
print(customersInline.count)

print("Now Serving \(customerProvider())!")
print(customersInline.count)


//Though first element of array customerinline deleted by closure, element of array will not deleted until closure previously called
//If closure never called, then the expression in it will never be evaluated. It Mean, element array never deleted
var customerInline2 = ["Alex", "Ewa", "Barry", "Daniella"]
func serve(customer customerProvider2: () -> String){
    print("Now Serving \(customerProvider2())!")
}
serve(customer: { customerInline2.remove(at: 0) })

//autoclosure
var customerInline3 = ["Alex", "Ewa", "Barry", "Daniella"]
func serve(customer customerProvider3: @autoclosure () -> String){
    print("Now Serving \(customerProvider3())!")
}
serve(customer: { customerInline3.remove(at: 0) })


//autoclosure and escaping
var customersInLine4 = ["Barry", "Daniella"]

var customerProviders4: [() -> String] = []
func collectCustomerProviders4(_ customerProvider4: @autoclosure @escaping () -> String) {
   customerProviders4.append(customerProvider4)
}
collectCustomerProviders4(customersInLine4.remove(at: 0))
collectCustomerProviders4(customersInLine4.remove(at: 0))

print("Collected \(customerProviders4.count) closures.")

for customerProvider4 in customerProviders4 {
   print("Now serving \(customerProvider4())!")
}

print("Customer count \(customersInLine4.count).")
