import UIKit

final class Friend{            // 상속 차단
    var name : String
    init(name:String){
        self.name=name
    }
}

class BestFriend : Friend {
    override init(name:String) {
        super.init(name: "BF"+name)
    }
}

let myFriend = Friend(name:"vinny")
let myBestFriend = BestFriend(name : "paz")
