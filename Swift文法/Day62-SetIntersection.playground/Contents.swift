import UIKit // Set => intersection

let myFriends = ["a","b","c","d"]

let yourFriends = ["a","b","CCC","DDD"]

let myFriendsSet = Set(myFriends)

let yourFriendsSet = Set(yourFriends)

let sharedFriends = myFriendsSet.intersection(yourFriends)
let sharedFriends2 = yourFriendsSet.intersection(myFriends)
let sharedFriends3 = myFriendsSet.intersection(yourFriendsSet)
let sharedFriends4 = yourFriendsSet.intersection(myFriendsSet)


print(sharedFriends)
print(sharedFriends2)
print(sharedFriends3)
print(sharedFriends4)
