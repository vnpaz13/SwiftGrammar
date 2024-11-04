import UIKit // Set isSubset, isSuperset

let totalFriends = ["a","b","c","d"]
let foreignFriends = ["c","d"]
let koreanFriends = ["a","b","f"]

let totalFriendsSet = Set(totalFriends)
let foreignFriendsSet = Set(foreignFriends)
let koreanFriendsSet = Set(koreanFriends)

// isSubset 내가 속해 있는지 확인
let isForeignFriendsIsInTotalFriends =
foreignFriendsSet.isSubset(of: totalFriendsSet)

// isSuperset 내가 포함하고 있는지 체크
let isTotalFriendsHasForeignFriends = totalFriendsSet.isSuperset(of: foreignFriendsSet)

let isTotalFriendsHasKoreanFriends = koreanFriendsSet.isSuperset(of: foreignFriendsSet)

let isKoreanFriendsIsInTotalFriends = koreanFriendsSet.isSubset(of: totalFriendsSet)
