// set

import UIKit

var myNumberSet : Set<Int> = Set<Int>()

myNumberSet.insert(1)
myNumberSet.insert(2)
myNumberSet.insert(2)
myNumberSet.insert(3)
myNumberSet.insert(3)

myNumberSet.count          // set의 카운팅은 종류 카운팅과 같다
myNumberSet

for item in myNumberSet{
    print("Number : ", item)
}

var myFriends : Set<String> = ["a", "b", "c"] // set은 배열처럼 정해져 있지 않고 계속 바뀐다
myFriends.contains("a") // contains = 가지고 있는지 없는지 반환하는 명령

var myBestFriends : [String] = ["1","2","3"]  // 일반 배열에서도 지원한다.
myBestFriends.contains("3")

if let indexToRemove = myFriends.firstIndex(of: "c") { // set에서 요소 값 제거
    print("indexToRemove: ", indexToRemove)
    myFriends.remove(at: indexToRemove)
}

myFriends
myBestFriends
