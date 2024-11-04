import UIKit  // lazy

struct Pet {
    init(){
        print("Pet 이 생성되었다.")
    }
}

struct Friend {
    var name: String
    
    lazy var pet : Pet = Pet() // 바로 메모리에 올라가는 것이 아니라 pet이 사용될 때 올리겠다. lazy의 역할
    
    init(_ name: String) {
        self.name = name
        print("Friend가 생성됨")
    }
}

var myFriend = Friend("vnpaz")

// myFriend.pet
