import UIKit

class MyClass {

    // instance Method   객체 인스턴스를 만들다 = 메모리에 올리다
    func saySomething() {
        print("saySomething")
    }

    // class Method 상속이 가능하다
    class func sayHi() {
        print("Hi?!")
    }
        
    // static,final 상속이 가능하지 않다.
    static func sayHello() {
        print("Hello Guys!!!")
    }
    final class func sayHelloWorld() {
        print("Hi Guys What's up!!!")
    }
}

class MySubClass : MyClass{
    override class func sayHi(){
        super.sayHi()
        print("MySubClass.sayHi - called")
}
}

MySubClass.sayHi()

MyClass.sayHi()

print(MyClass.sayHi())
print(MyClass.sayHello())
print(MyClass.sayHelloWorld())

