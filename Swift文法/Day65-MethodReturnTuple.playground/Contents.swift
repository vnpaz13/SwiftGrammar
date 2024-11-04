import UIKit 

func someFunction() -> (num1: String, num2: String) {
    return ("111","AAA")
}

func someFunction2() -> (num1: String, String) {
    return ("111","AAA")
}

let result = someFunction()

print(result)
print(result.0)
print(result.1)

print("=============================")

let result2 = someFunction2()

print(result2)
print(result2.0)
print(result2.1)

// (let.#)은 #값만을 호출한다.
