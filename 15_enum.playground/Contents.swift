import UIKit

// 열거형이란 연관성 있는 값을 모아놓는 사용자 정의 자료형이다.
// "enum" 키워드로 정의한다.
// case는 하나의 값이지만, 원시값을 가실 수 있다.
// enum 이름 뒤 : 타입을 적어주면 된다.
enum Ierror:String{
    case batterLow = "배터리 부족"
    case display = "디스플레이 손상"
    case speaker = "스피커 손상"
}

// 변수에 열거형을 넣을 경우 자동으로 타입이 정해져 이름을 쓰지 않고 "."으로 접근 할 수 있다.
// 원시값은 rawValue로 접근할 수 있다.
var iPhone = Ierror.batterLow
iPhone = .display
iPhone.rawValue

// switch와 사용하면 더 다양하게 사용할 수 있다.
switch iPhone {
case .batterLow:
    print(iPhone.rawValue)
case .display:
    print(iPhone.rawValue)
case .speaker:
    print(iPhone.rawValue)
}

// 원시 값을 통해 열거형(case)를 반환할 수 있다.
// 열거형을 인스턴스화 할 때 매개변수로 원시 값을 넘긴다.
// 만약 없을 경우 nil 값이 반환된다.
let ipad = Ierror(rawValue: "배터리 부족")
print(ipad!.rawValue)


// 열거형은 연관 값을 받을 수 있다.
// case 이름 뒤에 (타입)을 적어주면 된다.
enum MacError{
    case cpu(String)
    case ram
}
// 변수에 열거형을 넣을 때 매개변수로 전달한다.
let macBook = MacError.cpu("CPU 손상")
print(macBook)

// 연관 값을 참조할 때는 switch, if 로 참조한다.
switch macBook {
// 연관 값이 있는 경우 가로 안에 받을 상수를 선언해준다.
case .cpu(let error):
    print(error)
case .ram:
    print("램 오류")
}
