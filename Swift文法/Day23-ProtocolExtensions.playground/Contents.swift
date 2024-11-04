import UIKit

protocol Naming {
    var lastname: String {get set}
    var firstname: String {get set}
    func getName() -> String                    // 단순 선언, 로직 집어넣기 불가
}


extension Naming {                                         // 로직을 넣기 위해 extension 활용

    func Fullname() -> String{
        return self.lastname + " " + self.firstname
    }
}
struct Friend : Naming {
    var lastname: String
    var firstname: String
    func getName() -> String {
        return self.lastname
    }
}


let myFriend = Friend(lastname : "Vn", firstname: "Paz")

myFriend.getName()
myFriend.Fullname()


// ------------- protocol 과 extension 같은 func 값을 받고 싶다면


protocol Naming2 {
    var lastname: String {get set}
    var firstname: String {get set}
    func Fullname() -> String
}

extension Naming2 {
    func Fullname() -> String{
        return self.lastname + " " + self.firstname
    }
}
struct Friend2 : Naming2 {
    var lastname: String
    var firstname: String

}


let myFriend2 = Friend(lastname : "AB", firstname: "DEF")

myFriend2.Fullname()
