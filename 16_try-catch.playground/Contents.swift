import UIKit

// 스위프트에서 에러의 정의는 에러 프로토콜을 따르는 열거형으로 표현한다.
enum PhoneError : Error{ // Error 프로토콜을 채택해야 한다.
    case Display
    case Battery(Level:Int)
}

// throw는 오류를 발생시킨다.(오류를 던진다.)
// throw PhoneError.Display

func phoneCheck(d:Bool, b:Int) throws -> String{ // 함수에서 오류가 발생할 것 같을 때 사용
    // 오류 발생 시 함수를 호출시킨 곳으로 에러를 전파함
    guard d else {
        throw PhoneError.Display
    }
    guard b != -1 else {
        throw PhoneError.Battery(Level: b)
    }
    
    return "이 폰은 오류가 발생하지 않았습니다."
}

// throws가 붙은 함수는 do-catch, try?,! 로 에러를 처리해줘야 한다.

// do에는 오류 발생 가능 코드를 적고, catch에 오류 패턴에 따른 해결 코드를 적는다.
do{
    try phoneCheck(d: false, b: 23)
}catch PhoneError.Display{
    print("디스플레이가 파손되어 있습니다.")
}catch PhoneError.Battery(let Level){
    print("배터리에 문제가 있습니다. 현재 배터리 잔량:\(Level)")
}
catch{ // 오류 패턴에 걸리지 않은 오류
    print("오류를 확인할 수 없음 \(error)") // 오류의 종류를 명시하지 않아도 error라는 지역 상수가 에러 내용으로 들어옴
}

// try?는 에러 발생 시 nil를 반환함
// 반환 값은 옵서녈타입
var test = try? phoneCheck(d: true, b: -1)
print(test)

// try!는 에러 발생 시 런타임 오류
// 에러가 발생하지 않는다고 생각시 사용
// var test2 = try! phoneCheck(d: true, b: -1)
// print(test2)

