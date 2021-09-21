import Foundation

//Calling an asynchronous function with await runs only one piece of code at a time.
//While the asynchronous code is running, the caller waits for that code to finish before moving on to run the next line of code.

let firstPhoto = await downloadPhoto(named: photoNames[0])
let secondPhoto = await downloadPhoto(named: photoNames[1])
let thirdPhoto = await downloadPhoto(named: photoNames[2])

let photos = [firstPhoto, secondPhoto, thirdPhoto]
show(photos)

//To call an asynchronous function and let it run in parallel with code around it, write async in front of let when you define a constant, and then write await each time you use the constant.
async let firstPhoto = downloadPhoto(named: photoNames[0])
async let secondPhoto = downloadPhoto(named: photoNames[1])
async let thirdPhoto = downloadPhoto(named: photoNames[2])

let photos = await [firstPhoto, secondPhoto, thirdPhoto]
show(photos)
