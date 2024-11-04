import UIKit

//String을 반환하는 클로저

let myName : String = {
    // myName 으로 들어간다.
    return "vnpaz"
}()

print(myName)

// 클로저 정의
let  myRealName: (String) -> String = { (name: String) -> String in
    return "개발하는 \(name)"
}

myRealName("VNpaz")

//  반환 값이 없을 시 Void로 대체한다.

let myRealNameLogic : (String) -> Void = { (name: String) in
    print("developing \(name)")
}

myRealNameLogic("VNPAZ")
