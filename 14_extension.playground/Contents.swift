import UIKit

// extension은 기존의 클래스, 구조체, 열거형등에 기능을 추가하는 것
// 저장프로퍼티는 추가할 수 없으며, 연산프로퍼티/메서드/생성자 등을 추가할 수 있다.
// 프로토콜을 준수하게 할 수 있다.
extension String{
    func IntToString() -> Int?{
        // 값을 지칭할 때는 self를 쓴다.
        return Int(self)
    }
}

var answer:String = "12"
print(answer.IntToString()!+1)
