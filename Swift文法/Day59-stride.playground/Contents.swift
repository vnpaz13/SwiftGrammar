import UIKit // stride = 범위 안에서 반복처리

for countdown in stride(from: 5, to: 0, by:-1) {
    print("CountDown : \(countdown)")
}

print("==================")
//for countup in stride(from: 0, to: 5, by:1) {
//    print("CountUp : \(countup)")
//}

for countdown in stride(from: 5, through: 0, by:-1) {
    print("CountDown : \(countdown)")
}
 

extension Array {
    func chunks(_ chunkSize: Int) -> [[Element]] {
        return stride(from:0, to: self.count, by:chunkSize).map{
            return Array(self[$0..<Swift.min($0 + chunkSize, self.count)])
        }
    }
}


let numbers = Array(1...10)
let chunkedArray = numbers.chunks(3)
