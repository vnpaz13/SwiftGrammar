import UIKit //symetricDifference = 중복 제거

let myFriends = ["a","b","c","d"]

let yourFriends = ["a","b","GGGG","KKKK"]

let myFriendsSet = Set(myFriends)
let yourFriendsSet = Set(yourFriends)


let Diff = myFriendsSet.symmetricDifference(yourFriends)
let Diff2 = yourFriendsSet.symmetricDifference(myFriends)
let Diff3 = myFriendsSet.symmetricDifference(yourFriendsSet)
let Diff4 = yourFriendsSet.symmetricDifference(myFriendsSet)


print(Diff)
print(Diff2)
print(Diff3)
print(Diff4)
