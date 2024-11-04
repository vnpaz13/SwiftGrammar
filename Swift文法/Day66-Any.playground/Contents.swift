import UIKit

class Animal {              // class,struct 결과 값은 같다

}

var someValue : Any = "AAA"

someValue = Animal()

print(type(of: someValue))

print(123, "hihihi", Animal()) // 매개변수를 클래스에 상관없이 여러개 집어 넣을 수 있다.

// var someValue : Any = "AAA"

// someValue = 111 // 중간에 자료형 변환
// someValue = () -> Void  --------> 반환이 없는 closure도 가능
// someValue = ("ABC","DEF") ------> tuple,dictionary 가능

// print(type(of: someValue))  // 자료형 반환

