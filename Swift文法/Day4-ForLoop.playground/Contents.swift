import UIKit

// 0...5 -> 0,1,2,3,4,5 를 의미함, range
// 0..<5 -> 0,1,2,3,4
for i in 0...5 {
    print("호호 i: \(i)")
}

// 반복을 뜻하는 iterate 때문에 i로 쓰는게 일반적
// i가 처음에는 0부터 시작
// 0..<5 --> (5보다 작은 수 까지 반복)
for i in 0..<5 {
    print("호호 i: \(i)")
}

// 0~4 까지 짝수인 것만
for i in 0..<5 where i % 2 == 0 {
    print("호호 i : \(i)")
}
 
var randomInts: [Int] = []
// var randomInsts: [Int] = [Int]()
// 변수라고 생각하면 된다.
// i 는 사용하지 않으면 _ 언더바 로 쓰면 된다.
for _ in 0..<25 {
    let randomNumber = Int.random(in: 0...100)
    randomInts.append(randomNumber)
}
print("randomInts : \(randomInts)")
 
