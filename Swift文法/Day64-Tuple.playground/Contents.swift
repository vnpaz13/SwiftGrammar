import UIKit

// (key1: value1, key2: value2) = tuple

var myPet = (name: "Woffy", kind: "dog", age: 1)

var myCat = ("Guffy", "cat", age: 1)


print(myPet.name)
print(myPet.kind)
print(myPet.age)
print("===============")

print(myCat.0)
print(myCat.1)
print(myCat.2) // print("myCat.age") 와 같다.
print("===============")
// print(myCat.4) = 항목이 없는 카테고리는 입력 시 에러 발생.

