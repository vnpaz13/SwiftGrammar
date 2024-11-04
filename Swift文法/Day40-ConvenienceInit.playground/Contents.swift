import UIKit // convenience init

// additional init

class Friend {
    var name : String
    var age : Int
    init (name: String){
        self.name = name
        self.age = 10
    }
    convenience init(name: String, age : Int) {
        self.init(name: name)
        self.age = age
    }
}

let myFriend = Friend(name : "hihi", age : 100)
myFriend.age
