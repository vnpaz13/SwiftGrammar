import UIKit

// 에러 타입 설정
enum MismatchError : Error {
    case nameMisMatch
    case numberMisMatch
}

// throw를 통해 에러를 밖으로 던진다.
// 에러를 밖으로 보낸다고 메소드 반환 부분에 throws

//에러를 던지는 메소드
func guessMyName(name input: String) throws {
    print("guessMyName() called")
    if input != "vnpaz" {
        print("Wrong!!")
        throw MismatchError.nameMisMatch
        // return //로직 처리를 여기까지만 한다. 일종의 break와 같음
    }
    print("Correct!")
}
//--------------------------------------------------

try guessMyName(name: "vnpaz")  // ?가 붙으면 에러가 생겨도 무시하고 내려간다. 정확하게 말하면 에러를 굳이 걸지 않겠다.
                                  // !가 붙으면 반드시 에러가 없을 것 이라고 읽는다. 하지만 에러가 생기면 표시한다.
do {
    try guessMyName(name: "vnpazi")
}   catch {
        print("Caught Error : \(error)")
}

// guessMyName(name: "vnpaz"  : 실행결과 Correct!



//----------------------------------------------------------------------
// alt + cmd + / : 구체적 주석 처리
///  번호를 맞춘다
/// - Parameter input: 사용자 숫자 입력
/// - Returns: bool 참 거짓 여부

func guessMyNumber(number input: Int) throws -> Bool {
    print("guessMyname() called")
    
    if input != 10 {
        print("Wrong!!")
        throw MismatchError.numberMisMatch
    }
    print("Correct!")
    return true
}

do {
    try guessMyNumber(number: 9)
}   catch {
        print("Caught Error : \(error)")
}

//----------------------------------------------------------------------------

do {
    let receivedValue = try guessMyNumber(number: 9)
} catch {
    print("Caught Error: \(error)")
}
