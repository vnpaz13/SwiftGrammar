// protocol

import UIKit

// 약속
/// **delegate
/// **able, **ing,

// protocol로 약속
//

protocol Naming {
    var name : String { get set}  // 우리는 이런 변수를 가지고 있을겁니다 라고 약속
    func getName() -> String      // 우리는 이런 메소드를 가지고 있을겁니다 라고 약속
}

//
struct Friend : Naming{
    var name: String
    func getName() -> String {
        return "my friend : " + self.name
    }
}

var myFriend = Friend(name: "vnpaz"
)

myFriend.getName()
