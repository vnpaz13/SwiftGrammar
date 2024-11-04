import UIKit

var count : Int = 6 // 조건과 상관 없이 먼저 실행부터 시키는 repeat
// var count : Int = 0  이 원문
let max = 5

// 일단 실행 -> 조건 체크
repeat {
    count += 1
    print("count: \(count)")
} while count < max
print("완료")

// // 조건 먼저 -> 실행  var count = 6 이면 실행 안됨
// while count < max {
//     count += 1
//     print("count : \(count)")
// }

// print("Finish")

