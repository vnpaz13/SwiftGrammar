import UIKit

// optional? = 값이 있을 수도 있고 없을 수도 있다. 모르는 상태
var someVariable : Int? = nil // ?가 없으면 = 값이 있다

if someVariable == nil {
    someVariable = 90
}

print("someVaraible: ", someVariable)
// unwrapping? = 감싸져있는 것을 벗기는 것

if let otherVariable = someVariable {
    print("값이 있다. otherVaraible : \(otherVariable)")
} else {
    print("값이 없다.")
}

someVariable = nil

// someVaraible 이 비어있으면 즉 값이 없으면 기본값으로 넣겠다.
let myValue = someVariable ?? 10 // 값이 없으면 10을 넣겠다
print("myValue: \(myValue)")

var firstValue : Int? = 30
var secondValue : Int? = 50

print("firstValue: \(firstValue)")
print("secondValue: \(secondValue)")

unwrap(parameter: firstValue)         // unwrap(firstValue)
unwrap(parameter: secondValue)        // unwrap(secondValue)


func unwrap(parameter: Int?){         // parameter를 쓰지 않으려면 unwrap(_ parameter: Int?)
    print("unwrap() called")
    // 값이 없으면 리턴 해버린다.
    guard let unWrappedParam = parameter else{
        return 
    }
    print("unWrappedParam: \(unWrappedParam)")
}
