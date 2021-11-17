import UIKit

// 구조체는 struct라는 키워드로 정의된다.
// 구조체 안에는 프로퍼티와 함수를 넣을 수 있다.
struct User{
    var name:String
    var age:Int
    
    func info(){
        print(name, age)
    }
}

// 정의한 구조체를 사용하려면 인스턴스를 생성해야한다.
// 인스턴스란 정의한 구조체를 실제로 사용하기 위해 메모리에 올리는 것을 뜻한다.
// 생성자를 생성하지 않아도 기본적으로 만들어준다.
var user = User(name: "이윤수", age: 21)

// 인스턴스 안에 있는 구조체에 접근하려면 .으로 접근한다.
user.name
user.info()
