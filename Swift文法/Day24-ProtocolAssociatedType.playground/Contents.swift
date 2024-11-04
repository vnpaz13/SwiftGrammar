// protocol associatedType

import UIKit

protocol PetHaving {
    associatedtype T // generic 형태 : 어떠한 값도 받을 수 있다.
    var pets: [T] {get set}
    mutating func gotNewPet(_ newPet: T)
}

extension PetHaving {
    mutating func gotNewPet(_ newPet: T){
        self.pets.append(newPet)
    }
}


enum Animal {
    case cat, dog, bird
}


struct Friend : PetHaving {
    var pets: [Animal] = [] // [Animal] = [Animal]() 로 표현해도 된다
}

struct Family : PetHaving {
    var pets: [String] = [] // [Animal] = [Animal]() 로 표현해도 된다
}


var myFriend = Friend()

myFriend.gotNewPet(Animal.bird)
myFriend.gotNewPet(Animal.cat)
myFriend.gotNewPet(Animal.dog)
myFriend.pets


var myFamily = Family()
myFamily.gotNewPet("turtle")
myFamily.gotNewPet("rabbit")
myFamily.gotNewPet("pony")
myFamily.pets
