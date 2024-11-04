// 고차함수

import UIKit

func getName(_ name: String) -> String {
    return "내 이름은 \(name)"
}

var getNameClosure : (String) -> String

func sayHello( getName: (String) -> String, name: String)
    -> String {
    return getName(name)
}
            // 메소드인데 매개변수로써 클로저를 받고, 그 클로저를 반환하면서 형태도 변환한다.


let resultOne = sayHello(getName: getName(_:), name: "Vnpaz")


// sayhello 실행 -> getname으로 들어옴 -> return 클로저는 또 매개변수를 받음 -> vnpaz를 받음


let numbers = [3,7,4,-2,9,-6,10,1]

let stringNumbers = numbers.map{(aNumber: Int) -> String in
    return "\(aNumber)입니다."}

//---------------------

let evenNumbers : [Int] = numbers.filter {aNumber in
    return aNumber % 2 == 0
}

let oddNumbers : [Int] = numbers.filter {aNumber in
    return aNumber % 2 != 0
}
