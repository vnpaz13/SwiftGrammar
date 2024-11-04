import UIKit // reduce


import UIKit

struct Friend : Hashable {
    var name: String
    var age: Int
}

let myFriends = [
    Friend(name: "a", age: 18),
    Friend(name: "b", age: 18),
    Friend(name: "c", age: 22),
    Friend(name: "d", age: 22),
    Friend(name: "e", age: 24),
]

let totalAge = myFriends.reduce(0) { partialResult, aFriend in
    return partialResult + aFriend.age
}
// reduce(초기값)
totalAge
//

//[:]
let groupedFriends = myFriends.reduce(into: [:]) {
    partialResult, aFriend in
    partialResult[aFriend.age] = myFriends.filter{ $0.age == aFriend.age}
}

groupedFriends
