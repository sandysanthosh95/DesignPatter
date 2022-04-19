import UIKit

// Factory method is a creational design pattern which solves the problem of creating product objects without specifying their concrete classes.

protocol Factory {
    associatedtype T
    func add(_ a: T, _ b: T)
    func subtract(_ a: T, _ b: T)
    func multiply(_ a: T, _ b: T)
    func divide(_ a: T, _ b: T)
}

extension Factory {
    func add(_ a: T, _ b: T) {}
}


class Arithmatic<T>: Factory {
    func add(_ a: T, _ b: T) {
        
    }
    
    func subtract(_ a: T, _ b: T) {
        
    }
    
    func multiply(_ a: T, _ b: T) {
        
    }
    
    func divide(_ a: T, _ b: T) {
        
    }
    
    typealias T = T

}


class ArithmaticSubClass<T>: Arithmatic<T> {
    override func add(_ a: T, _ b: T) {
        
    }
}
