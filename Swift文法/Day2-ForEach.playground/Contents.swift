import UIKit

// Collection: 데이터를 모아둔 것
// Collection 종류 : Array, Sets, Dictionary, tuple
// 배열
var myArray : [Int] =
    [0,1,2,3,4,5,6,7,8,9,10]

//foreach

for item in myArray {
    print("item : \(item)")
}

for item in myArray where item > 5 {
    print("5보다 큰수 : \(item)")
}

for item in myArray where item % 2 == 0 {
    print("짝수 : \(item)")
}

for item in myArray where item % 2 != 0 {
    print("홀수 : \(item)")
}

 
// 자꾸 까먹는데 주석 처리 단축키 --------> cmd + /
// 외워놓자
