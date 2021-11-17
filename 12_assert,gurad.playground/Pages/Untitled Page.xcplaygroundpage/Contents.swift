import UIKit

// assert 문은 특정 조건을 체크하고 조건에 맞지 않으면 메세지와 오류를 출력하게 하는 함수
var value = 0
assert(value == 0, "0이 아님")
value = 2
// assert(value == 0, "0이 아님")


// 뭔가를 검사하여 그 다음에 오는 코드를 실행할 지 말지 결정하는 것, 조건이 False 일 때 else 구문이 실행 됨, 함수 내에서만 사용 가능
func valueTest(value:Int){
    guard value == 0 else {
        print("0이 아님")
        return
    }
    print("0이 맞음")
}

valueTest(value: 0)
valueTest(value: 1)

// guard는 옵셔널 바인딩도 가능하다.
// guard를 통해 나온 상수는 조건문 밖에서도 사용이 가능하다.
func opTest(int:Int?){
    guard let int = int else {
        print("nil")
        return
    }
    print(int)
}

opTest(int: 1)
opTest(int: nil)
