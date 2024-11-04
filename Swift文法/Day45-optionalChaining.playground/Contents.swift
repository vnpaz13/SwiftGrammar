import UIKit // Optional Chaining

struct Friend{
    let nickname: String
    let person: Person?
}

struct Person {
    let name: String
    let pet: Pet?
}

struct Pet{
    let name: String?
    let kind: String
}

let pet = Pet(name: "Wolfy", kind: "dog")
let person = Person(name: "VinnyPet", pet: pet)
let friend = Friend(nickname: "Vinny", person: person)


//if let petName = friend.person?.pet?.name{
//    print("petName: \(petName)")
//} else {
//    print("petName : 없음")
//}

func getPetName() {
    guard let petName = friend.person?.pet?.name else{
        print("petName : 없음")
        return
    }
    print("petName : \(petName)")
    }

getPetName()

//if let person = friend.person,
//    let pet = person.pet,
//    let petName = pet.name {
//    print("petName : \(petName)")
//    } else {
//        print("petName : 없음")
//    }



//if let person : Person = friend.person {
//    if let pet = person.pet {
//        if let petName = pet.name {
//            print("petName : \(petName)")
//        } else {
//            print("petName : 없습니다")
//        }
//    }
//}
