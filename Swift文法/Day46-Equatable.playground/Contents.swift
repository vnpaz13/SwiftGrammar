import UIKit

struct Pet : Equatable {
    let id: String
    let name: String
    
    // static func == (lhs: Pet, rhs: Pet) -> Bool{
    //     return lhs.id == rhs.id
    // }

    static func != (lhs: Pet, rhs: Pet) -> Bool{
         return lhs.id != rhs.id
    }

}

let myPet1 = Pet(id: "01", name : "cat")
let myPet2 = Pet(id: "02", name : "dog")
let myPet3 = Pet(id: "01", name : "doggy cat")

// if myPet1.id == myPet3.id {
//     print("These are same ")
// }

// if myPet1 == myPet2 {
//     print("These are same ")
// }


if myPet1 != myPet2 {
    print("These aren't same ")
}
