import UIKit

// generic -> 어떠한 자료형이라도 받겠다

struct MyArray<SomeElement>{// ----> <> = generic 표현 .... 보통은 SomeElement 대신에 T로 대입을 많이함
    
// generic을 담은 빈 배열
var elements : [SomeElement] = [SomeElement]()
    
// 생성자 메소드
init(_ elements: [SomeElement]){
    self.elements = elements
    }
}
    
  
    struct Friend {
        var name: String
    }
    
    struct Pazienza{
        var name: String
    }
    

    var mySomeArray = MyArray([1,2,3])
    print("mySomeArray : \(mySomeArray)")
    
    var myStringArray = MyArray(["가","나","다"])
    print("myStringArray : \(myStringArray)")

   
    let friend_01 = Friend(name: "철수")
    let friend_02 = Friend(name: "민수")
    let friend_03 = Friend(name: "영희")
    
    var myFriendsArray = MyArray([friend_01, friend_02, friend_03])
    print("myFriendsArray: \(myFriendsArray)")

