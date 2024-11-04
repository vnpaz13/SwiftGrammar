import UIKit

protocol Naming{
    var name: String {get set}
}

class Cat : Naming {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Dog : Naming {
    var name: String
    init(name: String) {
        self.name = name
    }
}

extension Naming where Self : Cat {
    func sayName(){
        print("\(self.name) meow~")
    }
}

extension Naming where Self : Dog {
    func sayName(){
        print("\(self.name) woff woff")
    }
}


// 축약형

// extension Naming {
//     func sayName() where Self : Dog {
//         print("\(self.name) woff woff")
//     }
//     func sayName() where Self : Cat {
//         print("\(self.name) meow~")
//     }
// }


let myDog = Dog(name: "doggggg")
let myCat = Cat(name: "doggy CCat")
myDog.sayName()
myCat.sayName()

