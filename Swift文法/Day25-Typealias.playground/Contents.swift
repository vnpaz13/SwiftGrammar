// typealias : 별칭

import UIKit

protocol Naming {
    func getName() -> String
}

protocol Aging {
    func getAge() -> Int
}


typealias Friendable = Naming & Aging


typealias FullNaming = Naming



struct Friend : Naming & Aging {     // struct Friend : Friendable 과 같은 의미가 되도록 typealias 사용
    
    func getName() -> String {
        return self.name
    }
    
    func getAge() -> Int {
        return self.age
    }
    
    var name : String
    var age : Int
    
}

typealias FriendName = String

var friendName : FriendName = "Vnpaz"

//---------------------------------------------

typealias Frineds = [Friend]

var myFriendsArray : [Friend] = [] // : Friends = [] 과 같다

//-------------------------------------------

typealias StringBlock = (String) -> Void
func sayHi(completion : StringBlock) {
    print("Hi?")
    completion("G00D?")
}

sayHi(completion: {saying in
    print("Caught : ", saying)
})

typealias MYType = MyClass.MY_Type

class MyClass {
    enum MY_Type {
        case DOG
        case CAT
        case BIRD
    }
    var myType = MY_Type.DOG
}

var myClass = MyClass()
myClass.myType =  MYType.DOG//MyClass.MY_Type.DOG


// shift + cmd + f : 전체 검색

