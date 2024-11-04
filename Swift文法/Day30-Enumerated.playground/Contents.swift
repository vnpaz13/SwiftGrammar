import UIKit // foreach 문에서 인덱스 같이 가져오기 (enumerated)

let myFriendsArray : [String] = ["ab","cd","ef","gh","ij"]

var friendsWithIndex : [String] = []

for (index, aFriend) in myFriendsArray.enumerated() {
    print("index: \(index), item: \(aFriend)")
    friendsWithIndex.append("\(index).번 \(aFriend)")
}


