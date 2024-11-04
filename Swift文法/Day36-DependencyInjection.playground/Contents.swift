// Dependency Injection 의존성 주입
import UIKit

// protocl = 약속 / 무언가를 강제한다.
protocol Talking {
    var saying : String {get set}
    func sayHi()
}

class TalkingImplementation: Talking {
    var saying: String = "Nice Talk!"
    func sayHi() {
        print("Great Job!")
    }
}

class BestTalk: Talking {
    var saying: String = "Best Talk!"
    func sayHi() {
        print("How are you?")
    }
}

class OldTalk: Talking {
    var saying: String = "Old Talk!"
    func sayHi() {
        print("Long Time No See~")
    }
}

class Friend{
    var talkProvider: Talking
    
    var saying : String{
        get{
            talkProvider.saying
        }
    }
    
    init(_ talkProvider : Talking){
        self.talkProvider = talkProvider
    }
    
    func setTalkProvider(_ newprovider : Talking){
        self.talkProvider = newprovider
    }
    
    func sayHi(){
        talkProvider.sayHi()
    }
}

let myBestFriend = Friend(BestTalk())
myBestFriend.sayHi()
myBestFriend.saying

let myOldFriend = Friend(OldTalk())
myOldFriend.sayHi()
myOldFriend.saying

myOldFriend.setTalkProvider(TalkingImplementation())
myOldFriend.sayHi()
myOldFriend.saying
