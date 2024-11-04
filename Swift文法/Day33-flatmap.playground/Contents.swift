import UIKit // 고차함수 flatMap (2차원 배열 -> 1차원 배열로 납작하게 만들기)

let myFriends = [["a"],["b"],["c","d"],["e","f"],["g","h"]]

let flatMapped = myFriends.flatMap { (item: [String]) in
    return item
}

print(flatMapped)
 
