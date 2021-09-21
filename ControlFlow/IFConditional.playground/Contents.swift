import Foundation

let finalScore = 90
if finalScore < 40{
    print("E")
}else if finalScore > 40 && finalScore < 59{
    print("D")
}else if finalScore > 60 && finalScore < 69{
    print("C")
}else if finalScore > 70 && finalScore < 79{
    print("B")
}else if finalScore > 80{
    print("A")
}else {
    print("Something Wrong!")
}

