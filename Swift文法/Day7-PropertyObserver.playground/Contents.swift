import UIKit

var myAge = 0 {
    willSet{
        print("값이 설정될 예정이다. myAge: \(myAge)")
    }
    didSet{
        print("값이 설정되었다. myAge: \(myAge)")
    }
}

myAge = 25
myAge = 30
// 프로퍼티 옵저버

