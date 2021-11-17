import UIKit

// 옵셔널은 ?로 선언한다.
// 옵셔널 타입을 지정할 때 초기값을 지정하지 않으면 nil이 들어간다.
var name:String?

// 옵셔널과 옵셔널이 아닌 타입은 다르다.
var Opname:String
// Opname = name (오류발생)

// 옵셔널이 붙은 값은 옵셔널을 감싸고 나온다.
var old:Int? = 1
print(old)

// 옵셔널 강제 바인딩
// !를 이용해 강제적으로 값을 꺼낸다.
var answer:String? = "정답"
print(answer!)

// 옵셔널 비강제 바인딩
// if, guard를 통해 값을 꺼낸다.
// if의 경우 꺼낸 변수를 if 구문 안에서만 쓸 수 있다.
if let Iaw = answer {
    print(Iaw)
}else{
    print("실패")
}
// print(Iaw) (오류발생)

// guard문의 else에서는 항상 return이 있어야한다.
// guard문으로 바인딩 할 경우 else아래 구문에서 꺼낸 변수를 쓸 수 있다.
func GawFunc(){
    guard let Gaw = answer else {
        return
    }
    print(Gaw)
}
GawFunc()


// 컴파일러 옵셔널 해제
// 비교연산자를 이용해 비교할 경우 컴파일러가 자동적으로 꺼냄
var value:Int? = 5
if value == 5{
    print("5")
}else{
    print("Not 5")
}

// 묵시적 옵셔널 해제
// 값을 사용할 때는 자동으로 옵셔널을 해제하는 것
// 형식상 옵셔널로 정의해야 하지만, 실제로 사용할 때는 nil 값이 대입되지 않을 때 사용
var ygOld:Int! = 21

var va: Int! = Int("123")

