import UIKit

// 상속 메소드만 가질 수 있는 고유 특징
// 상속이란 클래스가 다른 클래스의 프로퍼티, 메서드, 특성을 상속받는 것
class Mac{ // 부모, 슈퍼 클래스
    var name:String = "mac"
    var cpu:Int = 0
    var performance:String {
        get{
            return "이 맥의 CPU는 \(cpu)"
        }
        set{
            cpu = Int(newValue)!
        }
    }
    func info(){
        print("이 맥은 \(name)이다.")
    }
}

class Imac:Mac{ //자식, 서브 클래스
    // 상속을 받을 때는 : 뒤에 부모 클래스를 쓴다.
}

// 상속 받은 자식 클래스는 부모 클래스의 프로퍼티, 클래스, 속성에 바로 접근 할 수 있다.
var imac = Imac()
imac.name = "iMac 2019"
print(imac.name)
imac.performance = "10"
print(imac.performance)

class MacBook:Mac{
    var old:Int = 0
    
    // 부모 클래스의 프로퍼티, 클래스, 속성를 수정해서 사용할 수 있다.
    // 수정 시 override 라는 키워드를 쓴다.
    override func info() {
        print("이 맥북의 년식은 \(old)입니다.")
        // 슈퍼 클래스의 속성을 쓰고 싶을 경우 super라는 키워드를 쓴다.
        super.info()
    }
    
    
}
var macBook = MacBook()
macBook.name = "맥북"
macBook.old = 2
macBook.info()


class MacMini:Mac{
    // 프로퍼티를 재정의 하는 것은 프로퍼티의 get, set, 옵저버를 재정의 하는 것이다.
    // 저장 프로퍼티의 저장속성 추가가 목적인 재정의는 할 수 없다.
    override var name: String{
        didSet{
            print("예전 이름인\(oldValue)")
        }
    }
    override var performance: String{
        get{
            return "이 맥미니의 CPU는 \(cpu)"
        }
        set{
            cpu = Int(newValue)! + 5
        }
    }
    final var ram:Int = 8 // final 을 붙이면 재정의를 막을 수 있다.
}

var macmini = MacMini()
macmini.performance = "5"
macmini.name = "맥미니"
print(macmini.performance)

class MacPro:MacMini{
    // override var ram:String // final이 붙은 속성은 ovrride 할 수 없다.
}
var macPro = MacPro()
print(macPro.ram)
