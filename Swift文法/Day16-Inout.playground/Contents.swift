import UIKit

// inout : 상수로 들어온 값을 바꾸는 명령



func sayName(_ name: String){
    print("hi?! i am \(name)")
}

sayName("vinny")

//----------------------------------------------------------------------

func sayHi(_ name: inout String){  // inout 붙여주기
    name = "dev " + name // 변경 구문
    print("hi?! i am \(name)")
}

var name = "vinny"  // 변수 선언 후,  &붙여주기
sayHi(&name)
