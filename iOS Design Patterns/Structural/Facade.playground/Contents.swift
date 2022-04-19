import UIKit

// Facade is a structural design pattern that provides a simplified (but limited) interface to a complex system of classes, library or framework.

protocol FacadeInterface {
    func viewDidload()
}

class ViewModel: FacadeInterface {
    func viewDidload() {
        
    }
    
    private func test() {}
}
class ViewController {
    var vm: FacadeInterface // Only access for interface
    
    init(vm: FacadeInterface) {
        self.vm = vm
    }
    
    func viewDidLoad() {
        vm.viewDidload()
    }
}
