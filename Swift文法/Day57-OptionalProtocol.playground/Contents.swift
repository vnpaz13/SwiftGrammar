import UIKit // Optional Protocol

@objc protocol Animal {               // object-C 를 이용하여 해결
    @objc optional func doMoreCry()
}


protocol Pet {
    func doCry()
}

extension Pet {          // extension을 통해 doCry를 정의를 미리 해놓기. 나중에 클래스에서 호출해도 재정의 필요없음
    func doCry(){}
}

class Cat : Animal {
    }
