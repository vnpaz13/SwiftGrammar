import UIKit            // 중첩타입 Nested Type
import Foundation


struct MyPet {
    enum Kind {
        case cat
        case dog
        var value: String {
            switch self{
            case .cat:
                return "Cat"
            case .dog:
                return "Dog"
            }
        }
        var name: String {
            switch self{
            case .cat:
                return "Doggy"
            case .dog:
                return "Happy"
                
            }
        }
    } // Kind enum
    
    let kind: Kind
    var description: String {
        return "My house \(kind.value) \(kind.name)"
    }
}

let myCat = MyPet(kind: .cat)
print(myCat.description)

if myCat.kind == MyPet.Kind.cat {
    print("This is Catt")
}

let myDog = MyPet(kind: .dog)
print(myDog.description)
