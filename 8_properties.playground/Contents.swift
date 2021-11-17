import UIKit

// 프로퍼티 : 클래스, 구조체 또는 열거형 등에 관련된 값을 뜻한다.


// 저장프로퍼티: 구조체, 클래스 내에 선언된 변수나 상수를 뜻한다.
struct Person{
    var name:String // 저장 프로퍼티
    let age:Int // 저장 프로퍼티
}

var person1 = Person(name: "이윤수", age: 21)
// person1.age = "22"
// 상수로 선언된 프로퍼티는 수정이 불가능하다.

let person2 = Person(name: "이예슬", age: 21)
// person2.name = "이승민"
// 구조체의 인스턴스가 상수로 선언된 경우 수정이 불가능하다.

class Dog{
    var name:String // 저장 프로퍼티
    let age:Int // 저장 프로퍼티
    
    init(name:String, age: Int){
        self.name = name
        self.age = age
    }
}
let dog1 = Dog(name: "퍼피", age: 2)
dog1.name = "강아지"
print(dog1.name)
// 클래스의 경우 인스턴스가 상수로 선언되도 수정이 가능하다. 단, 저장 프로퍼티가 상수인 경우 안됨
// 구조체는 값 타입, 클래스는 참조타입


// 연산프로퍼티 : 값을 직접적으로 저장하지 않고, 다른 프로퍼티 값에 접근해 사용한다.
struct Card{
    var money:Double
    var month:Double
    var total:Double {
        get{
            return money/month
        }
        set(old){
            money = 0
            month = 0
            print("초기화 완료")
        }
    }
}
// get, set을 통해 접근
// get만 구현해 읽기 전용으로 사용가능
// set의 매개변수를 안적으면 newValue로 사용가능
var card1 = Card(money: 20000, month: 5)
print(card1.total)
card1.total = 0
print(card1)

// 옵저버프로퍼티 : 프로퍼티의 값이 변경되거나, 수정될 때 호출됨
struct Money{
    var total:Int {
        willSet(new){
            print("\(new)의 금액이 입금요청됨") // 값이 변경되기 전 (매개변수: 새로운 값)
        }
        didSet(old){
            print("\(old) 금액이 사라짐") // 값이 변경된 후 (매개변수 : 변경되기 전 값)
        }
    }
}
var money = Money(total: 1000)
money.total = 10000


// 타입프로퍼티 : 인스턴스 생성 없이 객체 내 프로퍼티에 바로 접근할 수 있게 하는 것
//
class Boss{
    static var name:String = "이윤수"
}
print(Boss.name)
// static 키워드를 이용해 사용
