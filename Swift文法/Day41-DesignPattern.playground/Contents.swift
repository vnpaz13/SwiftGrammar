// design pattern & builder pattern

import UIKit

struct Pet {
    var name: String? = nil
    var age : Int? = nil
    init(){}
    init(builder: PetBuilder2){
        self.name = builder.name
        self.age = builder.age
    }
}

class PetBuilder2 {
    var name: String? = nil
    var age: Int? = nil
    
    typealias BuilderClosure = (PetBuilder2) -> ()
    
    init(buildClosure: BuilderClosure){
        buildClosure(self)
    }
}


class PetBuilder {
    private var pet : Pet = Pet()
    func withName(_ name: String) -> Self{
        pet.name = name
        return self
    }
    
    func withAge(_ age: Int) -> Self{
        pet.age = age
        return self
    }
    
    func build() -> Pet {
        return self.pet
    }
}

let myPet = PetBuilder()
    .withName("meow")
    .withAge(3)
    .build



//-------------------------------------------

let petBuilder = PetBuilder2 { builder in
    builder.name = "dog"
    builder.age = 10
}

let myPet2 = Pet(builder : petBuilder)
