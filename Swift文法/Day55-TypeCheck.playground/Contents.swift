import UIKit // guard = if의 반대 명령

class Cat {}
class Dog {}

let myCat = Cat()
let myDog = Dog()

if myCat is Cat {
    print("Cat !!!")
}

func checkIfSheIsCat(){
    guard myCat is Cat else{
        print("Not Cat!!!")
        return
    }
    print("This is Cat!!")
}

checkIfSheIsCat()


switch myDog {
    case is Dog:
    print("This is Dog123")
    case let myKitty as Cat:
    print("This is Cat")
}

if case is Cat = myCat {
    print("This is Cat 44")
}

func checkIfSheIsDog(){
    guard case is Dog = myDog else{
        print("This is not a Dog")
        return
    }
    print("This is Dog!!")
}

checkIfSheIsDog()
