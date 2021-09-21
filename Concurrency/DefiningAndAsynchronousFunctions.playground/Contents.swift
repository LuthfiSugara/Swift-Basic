import Foundation

//Swift has built-in support for writing asynchronous and parallel code in a structured way.
//Asynchronous code can be suspended and resumed later, although only one piece of the program executes at a time.

//Defining and Calling Asynchronous Functions
///An asynchronous function or asynchronous method is a special kind of function or method that can be suspended while it’s partway through execution.
///To indicate that a function or method is asynchronous, you write the async keyword in its declaration after its parameters, similar to how you use throws to mark a throwing function.
/// If the function or method returns a value, you write async before the return arrow (->).
func listPhotos(inGallery name: String) async -> [String] {
    let result = // ... some asynchronous networking code ...
    return result
}


//When calling an asynchronous method, execution suspends until that method returns. You write await in front of the call to mark the possible suspension point.
//This is like writing try when calling a throwing function, to mark the possible change to the program’s flow if there’s an error.
//Inside an asynchronous method, the flow of execution is suspended only when you call another asynchronous method—suspension is never implicit or preemptive—which means every possible suspension point is marked with await.
let photoNames = await listPhotos(inGallery: "Summer Vacation")
let sortedNames = photoNames.sorted()
let name = sortedNames[0]
let photo = await downloadPhoto(named: name)
show(photo)

//Because the listPhotos(inGallery:) and downloadPhoto(named:) functions both need to make network requests, they could take a relatively long time to complete.
//Making them both asynchronous by writing async before the return arrow lets the rest of the app’s code keep running while this code waits for the picture to be ready.

func listPhotos(inGallery name: String) async -> [String] {
    await Task.sleep(2 * 1_000_000_000)  // Two seconds
    return ["IMG001", "IMG99", "IMG0404"]
}

