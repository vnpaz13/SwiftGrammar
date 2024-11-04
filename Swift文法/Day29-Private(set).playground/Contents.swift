import UIKit // private(set) -> 밖에서 못 바꿈

struct MyPet {              //class로 해도 상관 없음
    
    var title :String = "no title"
    
    private(set) var name :String = "이름없음"

    mutating func setName(to newName: String){
        self.name = newName
    }
}

var myPet = MyPet()
//myPet.name
//myPet.title
//myPet.title = "hi"
//myPet.title
//myPet.name = "abcd"
//myPet.name
myPet.setName(to: "hello")
myPet.name
