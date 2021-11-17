import UIKit

// 클로저란? 코드에서 전달 및 사용할 수 있는 독립 기능 블록이며, 일급객체의 역할을 할 수 있음
// -> 이름 없는 함수 이다.

// 클로저는 1급객체의 역할을 할 수 있다.
// -> 매개변수, 상수/변수 저장, 반환 값 등

let info = { () -> () in // 이 부분을 클로저 헤드라고 부르며, 매개변수와 반환 값을 지정한다. in을 통해 헤드와 바디를 구별한다.
    print("information") // 이 부분을 클로러 바디라고 부르며, 실행 코드를 적는다.
}
info()


func personInfo(person: (String) -> ()){
    person("이윤수")
}

personInfo(person: { (name:String) -> () in // 클로저는 전달인자 레이블을 사용하지 않는다.
    print(name)
})


func phone(model: () -> ()){
    model()
}

phone { // 후행클로저
    // 파라미터와 반환 값이 없는 경우 위와 같이 표현하며, 하나의 매개변수만 받는 경우 ()도 생략한다. 매개변수 이름(model)도 생략한다.
    print("iPhone 12 Pro Max")
}

func friend(name: ()->(), city: ()->()){
    name()
    city()
}
friend { // 다중 후행클로저: 첫번째 매개변수 이름은 생략한다.
    print("이예슬")
} city: {
    print("성남")
}


// 클로저 단축 표현법
func birth(day:(Int, Int ,Int)->(String)){
    print(day(2001, 01, 01))
}

// 기본 형식
birth(day: {(y:Int, m:Int, d:Int) -> String in
    return "\(y)년\(m)월\(d)일이 생일입니다."
})

// 파라미터, 반환 타입을 생략할 수 있다.
birth(day: {(y, m, d) in
    return "\(y)년\(m)월\(d)일이 생일입니다."
})

// 매개변수 이름을 생략하고 $0으로 표기한다.(1씩 증가)
// in을 제거한다.
birth(day: {
    return "\($0)년\($1)월\($2)일이 생일입니다."
})

// 단일 구문인 경우 return을 생략한다.
birth(day: {
  "\($0)년\($1)월\($2)일이 생일입니다."
})

// 클로저가 마지막 파라미터면 후행클로저를 이용한다.
birth{
    "\($0)년\($1)월\($2)일이 생일입니다."
}


// 오토클로저는 파라미터로 전달된 함수, 일반구문을 클로저로 래핑하는 것
// -> 함수나 일반구문을 써도 자동으로 클로저화 됨
// @autoclosure는 매개변수 이름 다음에 쓴다.

// 오토클로저를 이용할 경우 지연되서 실행된다.
// 함수 내에서 클로저를 호출해야 실행됨
func auto(clo: @autoclosure () -> ()){
    clo()
}

auto(clo: print("오토 클로저 실행"))

// 기존 클로저는 파라미터로 받은 클로저를 상수, 변수에 대입할 수 없고
// 클로저만 따로 실행이 불가능하다.
// escaping 키워드를 이용하면 가능하다.
func esc(escaping: @escaping () -> ()){
    let a = escaping()
}
