import UIKit

// class 라는 단어로 정의

class Person{
    var name:String
    var age:Int
    
    func info(){
        print(name,age)
    }
    
    // 생성자는 init라는 단어로 정의
    // 생성자는 인스턴스가 생성될 때 프로퍼티, 함수에 초기값&설정을 하기 위함
    init(name:String, age:Int){
        self.name = name
        self.age = age
    }
    
    // 매개변수의 이름, 타입, 개수에 따라 호출되는 생성자를 다르게 할 수 있다.
    init(age:Int){
        self.name = "이름없음"
        self.age = age
    }
    // 인스턴스가 종료될 때 실행할 구문은 deinit에 적는다.
    deinit {
        print("인스턴스 종료")
    }
    
}
var person1 = Person(name: "이윤수", age: 21)
person1.name
person1.age

var person2 = Person(age: 30)
person2.name
person2.age

var person3:Person? = Person(name: "이예슬", age: 30)
person3?.name
person3?.age
person3 = nil
person3?.name
person3?.age
