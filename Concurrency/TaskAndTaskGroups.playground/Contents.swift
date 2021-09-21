import Foundation

//A task is a unit of work that can be run asynchronously as part of your program.
//All asynchronous code runs as part of some task.
//The async-let syntax described in the previous section creates a child task for you.
//You can also create a task group and add child tasks to that group, which gives you more control over priority and cancellation, and lets you create a dynamic number of tasks.
await withTaskGroup(of: Data.self) { taskGroup in
    let photoNames = await listPhotos(inGallery: "Summer Vacation")
    for name in photoNames {
        taskGroup.async { await downloadPhoto(named: name) }
    }
}

//Unstructured Concurrency
//Unlike tasks that are part of a task group, an unstructured task doesn’t have a parent task. You have complete flexibility to manage unstructured tasks in whatever way your program needs, but you’re also completely responsible for their correctness.
//To create an unstructured task that runs on the current actor, call the Task.init(priority:operation:) initializer.
//To create an unstructured task that’s not part of the current actor, known more specifically as a detached task, call the Task.detached(priority:operation:) class method. Both of these operations return a task handle that lets you interact with the task

let newPhoto = // ... some photo data ...
let handle = Task {
    return await add(newPhoto, toGalleryNamed: "Spring Adventures")
}
let result = await handle.value
