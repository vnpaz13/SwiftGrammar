import UIKit

enum School {
    case elementary
    case middle
    case high
    // 아래와 같이 한 줄 표현 가능
//case elementary, middle, high -> 위의 3줄을 한줄로 축약 할 수 있음
}

// var = 변수, let = 상수
let yourSchool = School.elementary // 데이터가 담김.(case)
print("yourSchool : \(yourSchool)")
//print("yourSchool : ", yourSchool) -> 다음과 같이도 표현함

enum Grade : Int {
    case first = 1
    case second = 2
}

let yourGrade = Grade.first
print("yourGrade : \(yourGrade.rawValue)")
// let yourGrade = Grade.second.rawValue
// print("yourGrade : \(yourGrade)")

enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    case high(name: String)
    
    func getName() -> String {
        switch self {
        case .elementary(let name):
            return name
        case let .middle(name):
            return name
        case .high(let name):
            return name
        }
    }
}
let yourhighSchoolName = SchoolDetail.high(name:
    "박교정고등학교")

print("yourhighSchoolName: \(yourhighSchoolName.getName())")


