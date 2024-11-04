import UIKit

// 키 : 값
var myFriends = ["bestFriend" : "vinny",
                 "highschool" : "paz"
                 ]

let myBestFriend = myFriends["bestFriend"]
let highSchoolFriend = myFriends["highschool"]

//let youtubeFriend = myFriends["youtube"] // data가 없어서 nil 값이 뜬다.
let youtubeFriend = myFriends["youtube", default: "친구없음"]

myFriends["bestFriend"] = "vinny pazienza"

let myBF = myFriends["bestFriend"]

myFriends["newFriend"] = "duran"

let newFriend = myFriends["newFriend"]

myFriends.updateValue("suzan", forKey: "girlFriend")
let girlFriend = myFriends["girlFriend"]

myFriends.updateValue("jackson", forKey: "bestFriend")

let myBestFriend2 = myFriends["bestFriend"]

// let emptyDictionary : [String : Int] = [:]
let emptyDictionary : [String : Int] = [String : Int]()

let emptyDictionary2 : [String : Int] = Dictionary<String, Int>()

// ---------------------------------------------------------------------------------------

myFriends.count

for item in myFriends {
    print("item : ",item)
}
