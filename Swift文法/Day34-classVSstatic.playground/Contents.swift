import UIKit // class func vs static func 차이 및 활용법

class Friend {
    func sayHi() {
        print("HI?!")
    }
    
    class func sayBye(){
        print("ByeBye~")
    }
    
    static func sayhoho(){  // static = override가 안됨
        print("LOL!!!")
    }
}

class BestFriend : Friend {
    
    class override func sayBye() {
        super.sayBye()        // super -> 부모-자식 로직 상속 시 필수
        print("Say Bye")
    }
    
    func sayhoho(){
        print("Say HoHo")     // override가 안되서 Friend 값이 출력됨
    }
}

let myFriend = Friend()
myFriend.sayHi()

Friend.sayBye()
Friend.sayhoho()
BestFriend.sayBye()
BestFriend.sayhoho()

