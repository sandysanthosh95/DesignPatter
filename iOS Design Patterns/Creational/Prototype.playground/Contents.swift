import Foundation

// Prototype is a creational design pattern that allows cloning objects, even complex ones, without coupling to their specific classes.

class Prototype: NSCopying {
    
    var age: Int
    var name: String
    
    init(age: Int, name: String) {
        self.age = age
        self.name = name
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        return Prototype(age: age, name: name) // Returns new copy of the object
    }
}


let prototype = Prototype(age: 20, name: "John")

let newPrototype: Prototype = prototype.copy() as! Prototype

prototype.age = 30

print(prototype.age, newPrototype.age)
