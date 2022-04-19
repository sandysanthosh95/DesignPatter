import UIKit

// Memento is a behavioral design pattern that allows making snapshots of an object’s state and restoring it in future.

class Memento {
    var storage: [Int] = []
    
    func save(val: Int) {
        storage.append(val)
    }
    func undo() -> Int {
        return storage.removeLast()
    }
}
