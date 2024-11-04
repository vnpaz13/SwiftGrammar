import UIKit

    // 함수, 메소드 정의
func myFunction(name: String) -> String{
    return "안녕하세요?! \(name) 입니다!"
}

    // 함수, 메소드를 호출한다. call
myFunction(name: "박교정")




// 함수, 메소드 정의
func myFunctionSecond(with name: String) -> String{
    return "안녕하세요?! \(name) 입니다!"
    
}
myFunctionSecond(with: "vnpaz")

    
// 함수, 메소드 정의 -----------------------------> parameter 쓰기 싫을 때 그냥 _(언더바)
func myFunctionThird(_ name: String) -> String{
    return "안녕하세요?! \(name) 입니다!"
        
}
    
myFunctionThird("Vnpaz")


//---------------------------------------------

print(myFunction(name: "박교정"))
print(myFunctionSecond(with : "vnpaz"))
print(myFunctionThird("Vnpaz"))
