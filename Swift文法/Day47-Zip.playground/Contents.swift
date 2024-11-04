// zip = 두가지 collection을 묶어준다.

// let friends = ["a", "b", "c", "d"]

// let pets = ["abc", "bcd", "cde"]

// let FandP = zip(friends,pets)

// for aPair in FandP {
//     print("\(aPair.0), \(aPair.1)")
// }

import UIKit

let friends = ["a", "b", "c", "d"]

let numbers = (1...Int.max) // 숫자 무제한 ex) 1...2 까지만 하면 2번째에서 멈춘다

let FandP = zip(friends,numbers)

for aPair in FandP {
    print("\(aPair.0), \(aPair.1)")
}

let myArray = Array(FandP)

print(myArray)

