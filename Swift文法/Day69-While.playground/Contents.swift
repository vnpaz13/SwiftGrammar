import UIKit // while

var count : Int = 0

while count < 5 {
    count += 1 // count = count + 1
            // 줄일 때는 count = count - 1
    print("count: \(count)")

    if count == 3 {
        break
    }
}

print("Finish")
