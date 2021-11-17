import UIKit

// protocol 이란 특정 역할을 하기 위한 메서드, 프로퍼티등의 청사진이다. -> 정의만 미리 해두는 것
// 정의된 프로토콜을 채택한 클래스나 구조체는 프로토콜에서 정의한 메서드, 프로퍼티를 준수해야 한다.

protocol Person{
    // protocol의 프로퍼티를 정의할 때는 get, set을 구분지어 정의한다.
    // 프로퍼티는 변수만 가능하며, 타입프로퍼티는 static 키워드를 붙인다.
    // 또한 저장, 계산 프로퍼티의 구별을 하지 않으며, get(읽기전용) 프로퍼티는 모든 종류의 프로퍼티가 될 수 있다.
    var name:String { get set }
    static var age:Int {get set}
    
    // protocol의 메서드를 정의할 때는 {} 및 코드를 적지 않지만, 매개변수는 정의한다.
    // 인스턴스, 타입 메서드 둘 다 선언이 가능하다.
    func talk(word:String)
    
    init(name:String, age:Int)
    
}

// protocol를 채택할 때는 : 를 통해 채택한다. 여러개를 채택할 경우 ,로 구분지어 채택한다.
struct Usa:Person{
    var name: String
    static var age: Int = 0
    
    func talk(word: String) {
        print(word)
    }
    init(name: String, age: Int) {
        self.name = name
    }
}
// class 에서 protocol를 채택할 때도 : 를 통해 채택하지만, 상속을 받을 경우 슈퍼클래스를 맨 앞에 정의한다.
class Korea:Person{
    var name: String
    static var age: Int = 0
    
    func talk(word: String) {
        print(word)
    }
    
    // class에서 init을 채택할 때는 required 키워드를 붙여한다.
    // 단 final class는 키워드를 붙이지 않아도 된다.
    required init(name:String, age:Int){
        self.name = name
    }
}

class Sibal{
    var talk:String
    
    init(talk:String){
        self.talk = talk
    }
}

var sibal = Sibal(talk: "시발")
print(sibal.talk)
