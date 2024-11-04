// struct mutating

import UIKit

class Friend {
    var name : String
    func changeName(newName : String){
        self.name = "wass up! " + self.name
    }
    init(_ name: String){
        self.name = name
    }
}

var myFriend = Friend("vnpaz")

myFriend.changeName(newName :  "Dev Change")

myFriend.name


//-----------------------------------------------------
//
//struct BestFriend {
//    var name : String
//
////    func changeName(newName : String){
////        self.name = "wass up! " + self.name
////    }
////    init(_ name: String){
////        self.name = name
////    }
//}
//
//var myBestFriend = BestFriend(name: "vinipaz")

// struct 같은 경우 생성자를 일일이 써줄 필요가 없다. 쓸 수도 있지만 안 써도 된다.


struct BestFriend {
    
    var name : String
    
    mutating func changeName(newName : String){       // struct 안에 있는 멤버 변수를 변경하기 위해 mutating을 붙인다.
//        self.name = "wass up! " + self.name
        print("newName: ", newName)
    }
//    init(_ name: String){
//        self.name = name
//    }
}

var myBestFriend = BestFriend(name: "vinipaz")

myBestFriend.changeName(newName: "vinny!")
