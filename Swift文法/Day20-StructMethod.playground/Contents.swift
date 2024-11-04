import UIKit

struct Friend {
    var age : Int
    var name : String
    func sayHello() -> String {
        print("sayHello()")
        return "I am \(age), and \(name)"
    }
}

var myFriend = Friend(age: 10, name: "vnapz")  // struct -> 따로 생성자 만들 필요 없이 자동 생성
myFriend.sayHello()

// struct도 class처럼 똑같이 메소드를 가질 수 있다.
