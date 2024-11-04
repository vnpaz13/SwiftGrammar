import UIKit

class MyFriend {
    
    var name : String
    
    init(_ name: String = "이름없음"){
        self.name = name
        print("init() MyFriend가 메모리에 올라갔다. -")
    }
    
    deinit{
        print("deinit() 메모리에서 사라짐 = VNPAZ ")
    }
    
    
    // deinit 검증을 위해 작성
    var calledTimes = 0
    let MAX_TIMES = 5
    
    static var instancesOfSelf = [MyFriend]()
    
    class func destroySelf(object: MyFriend){
        instancesOfSelf = instancesOfSelf.filter{ (aFriend : MyFriend) in
            aFriend !== object
        }
    }
    
    func call (){
        calledTimes += 1
        print("called \(calledTimes)")
        if calledTimes > MAX_TIMES {
            MyFriend.destroySelf(object: self)
        }
    }
}
        
    
    
    var myFriend = MyFriend("vnpaz")
    let aFriend = MyFriend()
    
    // Unmanaged.passUnretained(객체).toOpaque()
    // 로 해당 객체의 메모리 주소를 프린트 할 수 있다.
    
    let anObjectMemoryAddress = Unmanaged.passUnretained(aFriend).toOpaque()
    
    let secondMemoryAddress = Unmanaged.passUnretained(myFriend).toOpaque()
    
    print(anObjectMemoryAddress)
    
    print(secondMemoryAddress)
    
    weak var aFriendToBeDestroyed = MyFriend("vnPAZ")
    
    if aFriendToBeDestroyed != nil {
        aFriendToBeDestroyed!.call()
    } else {
        print("객체가 더 이상 메모리에 없습니다.")
    }
    

