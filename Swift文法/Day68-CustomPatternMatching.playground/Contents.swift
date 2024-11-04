import UIKit

let statusCode = 500

func isValidEmail(_ email: String) -> Bool{
    let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

    let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
    return emailPred.evaluate(with: email)
}

func ~= (pattern: NSPredicate, value : String) -> Bool {
    return pattern.evaluate(with: value)
}

func ~= (pattern: String, value : Int) -> Bool {
    return pattern == "\(value)"
}


let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)

if emailPred ~= "Coding@naver.com" {
    print("Email Type")
} else {
    print("Not Email Type")
}

switch "Codingggg@email.com" {
    case emailPred:
    print("Email Type")
    default:
    print("NOT Email Type - switch")
}

// ----------------------------------------------------------------------

let someValue = 30

if "30" ~= 30 {               // "30" = pattern, 30 = value
    print("This is 30")
} else {
    print("This is not 30")
}

switch someValue {
    case "30":              // case "30" = pattern
        print("This is 30 - switch")
    default:
        print("This is not 30 - switch")

}

if case "30" = someValue {
    print("This is 30 - if case switch")
} else {
    print("This is not 30 - switch")
}


// let statusCode = 400

// // 조건, if, guard, 스위치
// if (400...500) ~= statusCode {
//     print("Included")
// }

// switch statusCode {
//     case(400...500):
//         print("Included - switch")
//     default: break
// }


// if case (400...500) = statusCode {
//     print("Included - is case")
// }

// func doSomeCheck(status: Int) {
//     guard (400...500) ~= status else{
//         print("Not included")
//         return
//     }
//     print("Included")
// }

// doSomeCheck(status: 300)
// doSomeCheck(status: 500)
