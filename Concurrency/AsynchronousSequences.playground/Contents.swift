import Foundation

let handle = FileHandle.standardInput
for try await line in handle.bytes.lines {
    print(line)
}

//Instead of using an ordinary for-in loop, the example above writes for with await after it.
//Like when you call an asynchronous function or method, writing await indicates a possible suspension point.
//A for-await-in loop potentially suspends execution at the beginning of each iteration, when it’s waiting for the next element to be available
