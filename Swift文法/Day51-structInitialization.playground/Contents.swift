import UIKit

struct Pet {
    var name: String
        // init(){
        //     name = "hihihi"
        // }
        // init(name : String = "dog"){
        //     self.name = name
        // }
}

extension Pet{
    init(){
        name = "hohoho"
    }
}

let myCat = Pet(name: "hihihi")

// let myDog = Pet()
