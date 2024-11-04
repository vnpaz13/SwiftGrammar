import UIKit // dictionary grouping 콜렉션 데이터 그룹으로 묶기

var greeting = "Hello, playground"

enum FriendType {
    case normal, best
}

struct Friend {
    var name : String
    var type : FriendType
}

var friendList = [
    Friend(name: "Alpha", type: .normal),
    Friend(name: "Bravo", type: .best),
    Friend(name: "Charlie", type: .best),
    Friend(name: "Delta", type: .normal),
]

let groupedFriends = Dictionary(grouping: friendList, by: {
    $0.type})

let groupedFriends2 = Dictionary(grouping: friendList, by: {(friend) -> FriendType in
    return friend.type
})

print(groupedFriends)

groupedFriends[.normal]
groupedFriends[.best]

