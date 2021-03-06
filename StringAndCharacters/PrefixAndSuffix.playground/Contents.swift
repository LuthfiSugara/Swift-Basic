import Foundation

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]


//Prefix
var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1"){
        act1SceneCount += 1
    }
}

print("There are \(act1SceneCount) scenes in act 1") //There 5 scene in act 1


//Suffix
var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion"){
        mansionCount += 1
    }else if scene.hasSuffix("Friar Lawrence's cell"){
        cellCount += 1
    }
}

print("\(mansionCount) mansion scenes \(cellCount) cell scenes") // 6 mansion scenes 2 cel scene
