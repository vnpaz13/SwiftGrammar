import UIKit // union

let myFriends = ["a","b","c","d"]

let yourFriends = ["abc","def","ghi"]

let myFriendsSet = Set(myFriends)

let yourFriendsSet = Set(yourFriends)

let totalFriends = myFriendsSet.union(yourFriendsSet)
let totalFriends2 = myFriendsSet.union(yourFriends)
let totalFriends3 = yourFriendsSet.union(myFriends)
let totalFriends4 = yourFriendsSet.union(myFriendsSet)


print(totalFriends)
print(totalFriends2)
print(totalFriends3)
print(totalFriends4)
