import UIKit  // map

let friendsArray : [String] = ["a", "b", "c", "d", "e"]

let myFriends = friendsArray.map { aFriend in
    return "alphabet -> " + aFriend
}

let numbers : [Int] = [22, 33, 44, 55]

let myNumbers : [String] = numbers.map { aNumber in
    return "내 숫자 : \(aNumber)"
}

let myNumbers2 : [String] = numbers.map { (aNumber : Int) in
    return "내 숫자 : \(aNumber)"
}

let myNumbers3 : [String] = numbers.map {
    return "내 숫자 : \($0)"
}

let myPetDictionary = ["고양이" : "야옹", "강아지" : "멍멍", "송아지" : "음매"]

let myPets : [String] = myPetDictionary.map { (animal: String, cry: String) in
    return "\(animal)의 울음소리는 \(cry)이다."
}

let myPets2 : [String] = myPetDictionary.map { animal, cry in
    return "\(animal)의 울음소리는 \(cry)이다."
}

let myPets3 : [String] = myPetDictionary.map {
    return "\($0)의 울음소리는 \($1)이다."
}


let numberSet : Set<Int> = [1,1,1,2,3,4,4,4,5]

let myFavoriteNumbers : [Int] = numberSet.map { aNumber in
    return aNumber * 10
}

let myFavoriteNumbers2 : [String] = numberSet.map { aNumber in
    return "\(aNumber * 10)"
}













