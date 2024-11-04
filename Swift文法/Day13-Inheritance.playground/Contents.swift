import UIKit

class Friend {
    var name : String
    
    init(_ name: String){
        self.name = name
    }
    
    func sayHi(){
        print("안녕?! 난 \(self.name) 라고 해")
    }
}

// 상속 시 코드

class BestFriend : Friend {

    // override로 모체의 메소드를 가져왔다.
    override init(_ name: String) {

        super.init("베프 " + name) // super : 모체 \\  b.f가 f가 가진 init을 호출
    }
    
    override func sayHi() {
        super.sayHi()
    }
}

let myFriend = Friend("VnPaz")

myFriend.sayHi()

let myBestFriend = BestFriend("영희")

myBestFriend.sayHi()

myBestFriend.name
