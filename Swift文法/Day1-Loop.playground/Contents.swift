import UIKit

// 다크 모드 여부                                     cmd+/ => 구역 선택 후 주석달기

var isDarkModeOn : Bool = true
// isDarkModeOn -> 변수 자리에, true나 false값을 지정한다.

// 조건
if (isDarkModeOn == true) {
    print("다크모드 입니다")
} else {                                   /// else는 반대값 일때
    print("다크모드가 아닙니다")
}

if (isDarkModeOn != true) {                /// i=  -> false와 같은 값, 역치라고 보면됨
    print("다크모드가 아닙니다.")
} else {
    print("다크모드 입니다.")
}

if isDarkModeOn == true {
    print("다크모드 입니다.")
}

if isDarkModeOn {                          /// == 가 없어도 true인 명제로 받아들인다.
    print("다크모드 입니다.")
}

if !isDarkModeOn {
 print("다크모드가 아닙니다.")
}

var title : String = isDarkModeOn == true ? "다크모드 입니다." : "다크모드가 아닙니다."
print ("title: \(title)")    /// ?  = 해당하는 조건인지 묻는다  : (콜론) = else 와 같은 뜻 ,  == true 를 안써도

/// 부정문임을 묻고 싶을땐? -> 조건값에 ! 을 붙인다. ! + isDarkModeOn
