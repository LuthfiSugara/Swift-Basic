import Foundation

// Creating Empty Set
var letters = Set<String>()
print("letters is of type Set<Character> with \(letters.count) items")

letters.insert("a") // now set has 1 value
letters = [] // set is empty

// Creating a Set with an Array Literal
var favoriteGenres: Set<String> = ["Rock", "Jazz", "Metal"]

//There is no need to write the data type of the Set element directly if there is only one data type
var favoriteBand: Set = ["Metallica", "Gun's and Roses"]

//Accessing and Modifying a Set
print("I have \(favoriteBand.count) favorite music genres")

if favoriteGenres.isEmpty {
    print("Nothing Genre available")
}else{
    print("Some music genre i like")
}

// Insert
favoriteGenres.insert("Pop")

// Remove
favoriteGenres.remove("Rock")

//Contains is check particular item exist or not
favoriteGenres.contains("Jazz")

//Iterating over Set
for genre in favoriteGenres {
    print(genre)
}
