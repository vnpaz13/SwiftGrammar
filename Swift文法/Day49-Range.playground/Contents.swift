import UIKit

let myRange = 0...2 // 0,1,2

let myRange2 = 0..<2 // 0,1

let myRange3 = 0...Int.max

let myFriends = ["a","b","c","d"]

let myFriendRange = 2...3

// for index in myRange3{
//     print("index : \(index)")
// }

print(myFriends[myRange2])
print(myFriends[myFriendRange])

if myRange2.contains(2) {
    print("Included")
} else {
    print("Not Included")
}

